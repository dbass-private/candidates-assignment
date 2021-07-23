#!/usr/bin/env bash
#add fix to exercise5-server2 here
cp -p /vagrant/id_rsa ~vagrant/.ssh
chmod 600  ~vagrant/.ssh/id_rsa
cat /vagrant/id_rsa.pub >> ~vagrant/.ssh/authorized_keys
#echo "StrictHostKeyChecking no" >/etc/ssh/sshd_config.d/checkkey.conf
#service sshd restart
