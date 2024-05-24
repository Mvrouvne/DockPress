FROM debian:bullseye

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY  tools/mariadb-script.sh .
# COPY tools/init.sql /etc/mysql/init.sql

RUN mkdir /run/mysqld

CMD [ "./mariadb-script.sh" ]