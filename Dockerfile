FROM eclipse-temurin:17-jdk AS build

WORKDIR /app

COPY . /app

ARG APP_ENV

# `|| true` so build doesn't fail when a test fails
RUN for app in bioactivity chemical hazard; do \
     sh /app/karate -e $APP_ENV --output result/$app ccte-api/$app || true; \
  done

FROM httpd:2.4.58

COPY --from=build /app/result /usr/local/apache2/htdocs/result
COPY --from=build /app/index.html /usr/local/apache2/htdocs/index.html
COPY --from=build /app/httpd.conf /usr/local/apache2/conf/

EXPOSE 80
