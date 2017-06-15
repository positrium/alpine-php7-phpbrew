FROM imasami/alpine-php7-phpbrew:latest

RUN phpbrew switch php-5.4.45 && \
    phpbrew install php-5.4.45 +default +pdo +mysql +pgsql && \
    phpbrew switch php-5.4.45 && \
    php -v
