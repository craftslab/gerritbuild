#!/bin/bash

# Refer to: /path/to/gerrit/contrib/fake_ldap.pl
# Refer to: https://blog.csdn.net/spark_fountain/article/details/7690024
# Refer to: https://blog.csdn.net/xiaoerlang1981/article/details/21888549
# Refer to: https://gerrit-documentation.storage.googleapis.com/Documentation/3.0.0/config-gerrit.html#ldap
# Refer to: https://help.ubuntu.com/lts/serverguide/openldap-server.html
# Refer to: https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-openldap-and-phpldapadmin-on-ubuntu-16-04

# Install LDAP server
apt-get update
apt-get install slapd ldap-utils

# Configure LDAP server
dpkg-reconfigure slapd
ufw allow ldap

# Check LDAP server
ldapsearch -Q -LLL -Y EXTERNAL -H ldapi:/// -b cn=config dn
ldapsearch -x -LLL -H ldap:/// -b dc=example,dc=com dn

# Add user & group
ldapadd -x -D cn=admin,dc=example,dc=com -W -f $PWD/ldap/add_content.ldif

# Check LDAP server
ldapsearch -x -LLL -b dc=example,dc=com 'uid=john' cn gidNumber

# Configure Gerrit
cp $PWD/ldap/gerrit.config /path/to/gerrit/etc/gerrit.config

# Install Ldapadmin
https://sourceforge.net/projects/ldapadmin/files/ldapadmin/1.8.3/LdapAdminExe-w64-1.8.3.zip/download
