FROM debian:buster

RUN apt update
RUN apt install nginx -y
RUN apt install vim -y
RUN apt install curl -y
RUN mkdir -p /etc/nginx/ssl/
RUN apt install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/dockpressCert.ctl -keyout /etc/nginx/ssl/dockpressPrivate.key -subj "/C=MA/ST=Rehamna/L=Benguerir/O=1337/OU=1337/CN=machaiba.42.fr/UID=machaiba"
# RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]

