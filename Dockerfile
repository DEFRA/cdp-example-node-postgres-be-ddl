FROM liquibase/liquibase:4.31-alpine

COPY ./entrypoint.sh /liquibase/docker-entrypoint
COPY ./get-rds-token /usr/local/bin/get-rds-token
COPY ./changelog /changelog

ENV LIQUIBASE_COMMAND_CHANGELOG_FILE=/changelog/db.changelog.xml
ENV LIQUIBASE_SEARCH_PATH=/

