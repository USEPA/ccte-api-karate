FROM eclipse-temurin:17-jdk AS build

WORKDIR /app

COPY . /app

ARG APP_ENV=dev
ARG BASE_URL=
ARG KARATE_TAGS=@all

# Keep the report-serving image build alive for test failures, but fail for
# Maven, dependency, compilation, or report-generation failures.
RUN set +e; \
  ./mvnw test \
    "-Dkarate.env=$APP_ENV" \
    "-Dkarate.tags=$KARATE_TAGS" \
    "-DbaseUrl=$BASE_URL"; \
  status=$?; \
  if [ ! -f target/karate-reports/karate-summary.html ]; then \
    echo "Maven did not produce a Karate summary report; failing the image build." >&2; \
    exit 1; \
  fi; \
  if [ "$status" -ne 0 ]; then \
    echo "Karate tests failed; keeping the generated report in the image." >&2; \
  fi; \
  exit 0

FROM registry1.dso.mil/ironbank/opensource/nginx/nginx-alpine:1.31.6

# switch to nginx user for security reasons
COPY --chown=1001:1001 --from=build /app/target/karate-reports/ /etc/nginx/html/
COPY --chown=1001:1001 --from=build /app/target/karate-reports/karate-summary.html /etc/nginx/html/index.html

EXPOSE 8080
