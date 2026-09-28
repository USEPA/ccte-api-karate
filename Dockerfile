FROM eclipse-temurin:17-jdk AS build

WORKDIR /app

COPY . /app

ARG APP_ENV=dev
ARG BASE_URL=
ARG KARATE_TAGS=@all

RUN ./mvnw test \
  "-Dkarate.env=$APP_ENV" \
  "-Dkarate.tags=$KARATE_TAGS" \
  "-DbaseUrl=$BASE_URL"

FROM registry1.dso.mil/ironbank/opensource/nginx/nginx-alpine:1.31.6

# switch to nginx user for security reasons
COPY --chown=1001:1001 --from=build /app/target/karate-reports/ /etc/nginx/html/
COPY --chown=1001:1001 --from=build /app/target/karate-reports/karate-summary.html /etc/nginx/html/index.html

EXPOSE 8080
