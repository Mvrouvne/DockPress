FROM debian:bullseye

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install wget
RUN apt-get -y install php7.4 php7.4-fpm php7.4-mysql mariadb-client


COPY conf/www.conf /etc/php/7.4/fpm/pool.d/

# install WP-CLI
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/wp-setup.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/wp-setup.sh

WORKDIR /var/www/html

CMD ["wp-setup.sh"]

