FROM alpine:latest

RUN set -x && \
    apk update && \
    apk add curl && \
    apk add php7 && \
    apk add php7-phar && \
    curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew && \
    chmod +x phpbrew && \
    mv phpbrew /usr/local/bin/phpbrew

