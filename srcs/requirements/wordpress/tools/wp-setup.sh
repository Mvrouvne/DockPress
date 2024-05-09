#!/bin/sh

wp core download --allow-root

wp config create --allow-root \
    --dbname=$SQL_DATABASE \
    --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306

wp core install --allow-root \
    --url='localhost' \
    --title=$WP_TITLE \
    --admin_user=$WP_ADMIN_USR \
    --admin_password=$WP_ADMIN_PASS \
    --admin_email=$WP_ADMIN_EMAIL

wp user create --allow-root \
    $WP_USR $WP_USR_EMAIL \
    --role=author \
    --user_pass=$WP_USR_PASS


# wp theme install --allow-root oceanwp \
#             --force --activate

# wp plugin install --allow-root jetpack \
#             --force --activate

# wp plugin install --allow-root redis-cache \
#             --force --activate

mkdir -p /run/php

# wp redis enable --allow-root

/usr/sbin/php-fpm7.3 -F