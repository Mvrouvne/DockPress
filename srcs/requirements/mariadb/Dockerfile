FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY  touls/mariadb-script.sh .

RUN chmod 755 mariadb-script.sh

CMD [ "./mariadb-script.sh" ]