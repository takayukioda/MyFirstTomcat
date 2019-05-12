#!/bin/bash

[ "$(whoami)" != "root" ] && echo "Run this script as root" >&2 && exit 1

# Install all required softwares
amazon-linux-extras install tomcat8.5
yum update -q -y
yum install -q -y
    git \
    java-1.8.0-openjdk \
    maven \
    mariadb-server \
    httpd

cat /etc/my.cnf.d/encoding.cnf <<EOF
[mysqld]
character-set-server=utf8mb4

[mysqld_safe]
default-character-set=cp932
EOF

systemctl start mariadb
mysql_secure_installation --use-default
