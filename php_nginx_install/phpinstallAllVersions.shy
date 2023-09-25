#!/bin/bash
phpversion=$1
webserver=$2
echo "first parameter is: $phpversion";
IFS="," read -r -a arr <<< "$phpversion"

sudo add-apt-repository ppa:ondrej/php
sudo apt-get update -y

for PHP_VERSION in "${arr[@]}"
do
    echo "$PHP_VERSION"
    sudo apt-get install -y php${PHP_VERSION}-redis
    sudo apt-get install -y php${PHP_VERSION}-xml
    sudo apt-get install -y php${PHP_VERSION}-cli
    sudo apt-get install -y php${PHP_VERSION}-fpm
    sudo apt-get install -y php${PHP_VERSION}-dev
    sudo apt-get install -y php${PHP_VERSION}-bcmath
    sudo apt-get install -y php${PHP_VERSION}-bz2
    sudo apt-get install -y php${PHP_VERSION}-curl
    sudo apt-get install -y php${PHP_VERSION}-ctype
    sudo apt-get install -y php${PHP_VERSION}-dba
    sudo apt-get install -y php${PHP_VERSION}-dom
    sudo apt-get install -y php${PHP_VERSION}-gd
    sudo apt-get install -y php${PHP_VERSION}-gmp
    sudo apt-get install -y php${PHP_VERSION}-iconv
    sudo apt-get install -y php${PHP_VERSION}-imagick
    sudo apt-get install -y php${PHP_VERSION}-imap
    sudo apt-get install -y php${PHP_VERSION}-intl
    sudo apt-get install -y php${PHP_VERSION}-ldap
    sudo apt-get install -y php${PHP_VERSION}-mbstring
    sudo apt-get install -y php${PHP_VERSION}-memcache
    sudo apt-get install -y php${PHP_VERSION}-memcached
    sudo apt-get install -y php${PHP_VERSION}-mysqlnd
    sudo apt-get install -y php${PHP_VERSION}-opcache
    sudo apt-get install -y php${PHP_VERSION}-readline
    sudo apt-get install -y php${PHP_VERSION}-simplexml
    sudo apt-get install -y php${PHP_VERSION}-soap
    sudo apt-get install -y php${PHP_VERSION}-sqlite3
    sudo apt-get install -y php${PHP_VERSION}-tidy
    sudo apt-get install -y php${PHP_VERSION}-xmlrpc
    sudo apt-get install -y php${PHP_VERSION}-xmlrpc
    sudo apt-get install -y php${PHP_VERSION}-xdebug
    sudo apt-get install -y php${PHP_VERSION}-xsl
    sudo apt-get install -y php${PHP_VERSION}-zip
    echo "php${PHP_VERSION} is installed with all extenstions"
done


echo "second parameter is: $webserver";

if [[ $webserver == 'apache2' ]];
then
   sudo apt install apache2 -y
fi

if [[ $webserver == 'nginx' ]];
then
   sudo apt install nginx -y
fi
