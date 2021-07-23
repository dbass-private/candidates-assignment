#!/usr/bin/env bash
#add fix to exercise5-server1 here
sudo -u vagrant ssh-keygen -q -f ~vagrant/.ssh/id_rsa -N ''
cp -p ~vagrant/.ssh/id_rsa ~vagrant/.ssh/id_rsa.pub /vagrant
cat /vagrant/id_rsa.pub >> ~vagrant/.ssh/authorized_keys
#echo "StrictHostKeyChecking no" >/etc/ssh/sshd_config.d/checkkey.conf
#service sshd restart
