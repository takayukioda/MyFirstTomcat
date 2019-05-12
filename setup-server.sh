#!/bin/bash

# Unfortunently, this script is not for automation
# It's because some commands are build as interfactive command
# such as `mysql_secure_installation`

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

# Setup mysql (mariadb)
# Add encoding settings
# Because course textbook did all the work based on Windows-31J (a.k.a. cp932)
# Still, store things in a server with utf8
cat > /etc/my.cnf.d/encoding.cnf <<EOF
[mysqld]
character-set-server=utf8mb4

[client]
default-character-set=cp932
EOF

systemctl start mariadb

# sad, but it's interactive
# for root password, use '1qazXSW@' if its ok
# because trainee will need to use them to create their own database
mysql_secure_installation

# Setup tomcat
# Adding `copyXML` attribute
# Original:
#       <Host name="localhost"  appBase="webapps"
#             unpackWARs="true" autoDeploy="true">
# After sed:
#       <Host name="localhost"  appBase="webapps" copyXML="true"
#             unpackWARs="true" autoDeploy="true">
sed -i -e 's/\(<Host.*appBase="webapps"\)$/\1 copyXML="true"/' /etc/tomcat/server.xml

# Remove `Connector` setting in server.xml where opens port 8080, since we'll use ajp instead
echo "Comment out unnecessary port open; port 8080"

# Install tomcat dbcp to load datasource from context.xml
curl -o /usr/share/tomcat/lib/tomcat-dbcp.jar -sS http://central.maven.org/maven2/org/apache/tomcat/tomcat-dbcp/8.5.40/tomcat-dbcp-8.5.40.jar

cat > /etc/httpd/conf.d/ajp.conf <<EOF
ProxyPass / ajp://localhost:8009
EOF