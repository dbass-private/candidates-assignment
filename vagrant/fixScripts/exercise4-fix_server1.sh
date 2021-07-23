#!/usr/bin/env bash
#add fix to exercise4-server1 here
echo "192.168.100.11 server2" >> /etc/hosts
echo "PasswordAuthentication yes" >/etc/ssh/sshd_config.d/password.conf
service sshd restart
