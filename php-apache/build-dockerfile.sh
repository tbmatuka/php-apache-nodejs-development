#!/bin/bash

cp Dockerfile.template Dockerfile

PHP_VERSIONS="5.6 7.0 7.1 7.2 7.3 7.4 8.0 8.1"

for PHP_VERSION in $PHP_VERSIONS;
do
    PHP_PACKAGES=$(cat "packages-php$PHP_VERSION.txt" | xargs)

    sed -i "s/\#\#php-packages-${PHP_VERSION}\#\#/$PHP_PACKAGES/" Dockerfile
done
