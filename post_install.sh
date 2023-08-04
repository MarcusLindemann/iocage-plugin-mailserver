#!/bin/sh
#
# setup the mail server after installation of packages
#

sysrc dovecot_enable=YES
service dovecot start
