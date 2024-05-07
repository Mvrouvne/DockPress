FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install wget
RUN apt-get -y install php7.3 php-fpm php-mysql mariadb-client
RUN mkdir -p /var/www
RUN wget https://wordpress.org/wordpress-6.5.2.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.5.2.tar.gz && rm -rf wordpress-6.5.2.tar.gz
RUN chown -R root:root /var/www/wordpress

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

# install WP-CLI
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/wp-setup.sh /var/www/wordpress

WORKDIR /var/www/wordpress

RUN chmod 755 wp-setup.sh

CMD [ "./wp-setup.sh" ]