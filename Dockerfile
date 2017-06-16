FROM imasami/alpine-php7-phpbrew:latest

RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
    phpbrew install php-7.1.6 +default +pdo +mysql +pgsql && \
    phpbrew switch php-7.1.6 && \
    php -v

