FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt -y install wget
RUN apt -y install php7.3 php-fpm php-mysql mariadb-client
RUN wget https://wordpress.org/wordpress-6.5.2.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.5.2.tar.gz && rm -rf wordpress-6.5.2.tar.gz
RUN chown -R root:root /var/www/wordpress

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/