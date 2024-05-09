#!/bin/sh

openssl req -x509 -nodes -out /etc/nginx/ssl/dockpressCert.ctl -keyout /etc/nginx/ssl/dockpressPrivate.key -subj "/C=$COUNTRY/ST=$STATE/L=$CITY/O=$ORGANIZATION/OU=$ORGANIZATION_UNIT/CN=$DOMAIN/UID=$USER_ID"