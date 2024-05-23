FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install nginx -y
RUN apt install vim -y
RUN apt install curl -y
RUN mkdir -p /etc/nginx/ssl/
RUN apt install openssl -y

COPY tools/nginx-script.sh .

RUN chmod +x nginx-script.sh
RUN ./nginx-script.sh
# RUN openssl req -x509 -nodes -out /etc/nginx/ssl/dockpressCert.ctl -keyout /etc/nginx/ssl/dockpressPrivate.key -subj "/C=$COUNTRY/ST=$STATE/L=$CITY/O=$ORGANIZATION/OU=$ORGANIZATION_UNIT/CN=DOMAIN/UID=USER_ID"
# RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]