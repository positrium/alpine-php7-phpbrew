# docker build -t imasami/alpine-php7-phpbrew:latest .

FROM alpine:latest

RUN set -x && \
    apk update && \
    apk add curl && \
    apk add php7 && \
    apk add php7-phar && \
    apk add php7-json && \
    apk add php7-ctype && \
    apk add php7-openssl && \
    apk add php7-mbstring && \
    apk add php7-iconv && \
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
    apk add zip && \
    wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet && \
    mv composer.phar /usr/local/bin/composer && \
    composer -V && \
    curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew && \
    chmod +x phpbrew && \
    mv phpbrew /usr/local/bin/phpbrew && \
    phpbrew init && \
    apk add bash && \
    echo 'source ~/.phpbrew/bashrc' >> ~/.bashrc && \
    rm /bin/sh && ln -s /bin/bash /bin/sh && \
    /bin/bash -c "source ~/.bashrc" && \
    phpbrew self-update && \
    phpbrew update && \
    phpbrew known --update && \
    phpbrew known --old

