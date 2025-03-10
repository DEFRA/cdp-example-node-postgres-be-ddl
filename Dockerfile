FROM liquibase/liquibase:4.31-alpine

USER root
RUN apk add --no-cache aws-cli
USER liquibase:liquibase

COPY ./entrypoint.sh /liquibase/docker-entrypoint.sh
COPY ./changelog /changelog

ENV LIQUIBASE_COMMAND_CHANGELOG_FILE=/changelog/db.changelog.xml
ENV LIQUIBASE_SEARCH_PATH=/

