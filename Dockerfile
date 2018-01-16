FROM php:7.2-fpm
RUN apt update \
&& apt-get install -y libxml2-dev \
&& docker-php-ext-install -j$(nproc) pdo xml opcache tokenizer \
&& docker-php-ext-enable pdo xml opcache tokenizer
RUN rm -rf /var/lib/apt/lists/*
