FROM eclipse-temurin:17-jdk AS build

WORKDIR /app

COPY . /app

ARG APP_ENV=dev

RUN ./mvnw test \
  "-Dkarate.env=$APP_ENV" \
  "-Dkarate.tags=@all"

FROM nginx:1.27.1-alpine

COPY --from=build /app/target/karate-reports/ /usr/share/nginx/html/
COPY --from=build /app/target/karate-reports/karate-summary.html /usr/share/nginx/html/index.html

EXPOSE 80
