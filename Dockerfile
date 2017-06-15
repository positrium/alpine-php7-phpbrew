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
    curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew && \
    chmod +x phpbrew && \
    mv phpbrew /usr/local/bin/phpbrew && \
    phpbrew init && \
    phpbrew self-update && \
    phpbrew update && \
    phpbrew known --update && \
    phpbrew known --old
