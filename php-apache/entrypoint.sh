#!/bin/bash

# use default or specified PHP version
phpVersion="7.4"

if [ -n "${PHP_VERSION}" ] && [[ "${PHP_VERSION}" =~ ^5.6|7.[0-4]|8.[0-3]$ ]]
then
    phpVersion="${PHP_VERSION}"
fi

echo "Using PHP version ${phpVersion}"

sudo update-alternatives --set php "/usr/bin/php${phpVersion}" &>/dev/null
sudo a2dismod 'php*' &>/dev/null
sudo a2enmod "php${phpVersion}" &>/dev/null

set -e

args="$@"

if [[ "$-" =~ i ]]
then
    # interactive
    /bin/bash --login -i -c "${args}"
else
    # non-interactive
    /bin/bash --login -c "${args}"
fi
