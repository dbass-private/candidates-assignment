#!/usr/bin/env bash
#add fix to exercise3 here
sed -i "s/denied/granted/" /etc/apache2/sites-available/000-default.conf
apache2ctl restart
