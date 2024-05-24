#!/bin/sh

openssl req -x509 -nodes -out $CERTIFICATE_PATH -keyout $CERTIFICATE_PATH_KEY -subj "/C=$COUNTRY/ST=$STATE/L=$CITY/O=$ORGANIZATION/OU=$ORGANIZATION_UNIT/CN=$DOMAIN/UID=$USER_ID"

nginx -g "daemon off;"