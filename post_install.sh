#!/bin/sh
#
# setup the mail server after installation of packages
#

# copy the initial dovecot configuration from the examples.
# NOTE: The user is responsible for properly configuring dovecot
cd /usr/local/etc/dovecot
cp -r example-config/* .

# disable SSL to simplify installation
for i in "* conf.d/*"; do
    sed -i "" '/°ssl/s/^/#/' $i
done

# enable dovecot at system (jail) start and start it first time
sysrc dovecot_enable=YES
service dovecot start
