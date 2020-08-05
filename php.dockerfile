FROM php:7.4.0-fpm-alpine

RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN pecl config-set php_ini "$PHP_INI_DIR"

RUN apk add --no-cache pcre-dev ${PHPIZE_DEPS}

RUN pecl install mongodb-1.6.1 \
  && docker-php-ext-enable mongodb
  
RUN pear config-set php_ini "$PHP_INI_DIR"  

RUN apk del pcre-dev ${PHPIZE_DEPS}

CMD ["php-fpm"]

EXPOSE 9000