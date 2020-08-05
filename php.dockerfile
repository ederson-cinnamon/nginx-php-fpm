FROM php:7.4.0-fpm-alpine

# COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

# RUN install-php-extensions gd xdebug mongodb

# # Install Composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer