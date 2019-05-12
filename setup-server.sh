#!/bin/bash

# Unfortunently, this script is not for automation
# Since some commands are build as interfactive command such as `mysql_secure_installation`

[ "$(whoami)" != "root" ] && echo "Run this script as root" >&2 && exit 1

# Install all required softwares
amazon-linux-extras install -y tomcat8.5
yum update -q -y
yum install -q -y \
    git \
    java-1.8.0-openjdk \
    maven \
    mariadb-server \
    httpd

cat > /etc/my.cnf.d/encoding.cnf <<EOF
[mysqld]
character-set-server=utf8mb4

[mysqld_safe]
default-character-set=cp932
EOF

systemctl start mariadb
# sad, but it's interactive
mysql_secure_installation
