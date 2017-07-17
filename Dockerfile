FROM mysql:5.7
MAINTAINER kojiro.yamashiro <kojiro.yamashiro@glv.co.jp>

ENV MYSQL_ROOT_PASSWORD="abc123$" \
    MYSQL_PASSWORD="abc123$" \
    MYSQL_USER="mysqluser"

EXPOSE 3306

ADD mysql /etc/mysql
