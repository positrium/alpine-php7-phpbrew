FROM imasami/alpine-php7-phpbrew:latest

RUN phpbrew install php-7.1.6 +default +pdo +mysql +pgsql && \
    phpbrew switch php-7.1.6 && \
    php -v

