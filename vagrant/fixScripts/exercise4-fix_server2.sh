#!/usr/bin/env bash
#add fix to exercise4-server2 here
echo "192.168.100.10 server1" >> /etc/hosts
echo "PasswordAuthentication yes" >/etc/ssh/sshd_config.d/password.conf
service sshd restart
