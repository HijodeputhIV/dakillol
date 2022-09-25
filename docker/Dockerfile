# Pull php-fpm image
FROM php:8.1-fpm-alpine

# Install php extensions
RUN docker-php-ext-install pdo pdo_mysql

# Install xdebug when on debug mode
ARG WITH_XDEBUG=true

RUN if [ "${WITH_XDEBUG}" = "true" ] ; then \
	pecl install xdebug; \
	docker-php-ext-enable xdebug; \
	echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; \
	echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; \
	echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; \
fi

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# File permissions
RUN chown -R www-data:www-data /var/www
RUN chmod 755 /var/www
