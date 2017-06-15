FROM alpine:latest

RUN set -x && \
    apk update && \
    apk add curl && \
    apk add php7 && \
    apk add php7-phar && \
    apk add php7-json && \
    apk add php7-ctype && \
    apk add wget && \
    apk add gzip && \
    apk add gcc && \
    apk add autoconf && \
    apk add postgresql-dev && \
    apk add build-base && \
    apk add libxml2-dev && \
    apk add bzip2-dev && \
    apk add libmcrypt-dev && \
    apk add readline-dev && \
    apk add libxslt-dev && \
    curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew && \
    chmod +x phpbrew && \
    mv phpbrew /usr/local/bin/phpbrew && \
    phpbrew init && \
    phpbrew self-update && \
    phpbrew update && \
    phpbrew app get composer && \
    phpbrew known --update && \
    phpbrew known --old
