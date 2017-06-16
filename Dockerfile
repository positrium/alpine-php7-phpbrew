FROM imasami/alpine-php7-phpbrew:latest

RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
    phpbrew install php-5.4.45 +default +pdo +mysql +pgsql && \
    phpbrew switch php-5.4.45 && \
    php -v
