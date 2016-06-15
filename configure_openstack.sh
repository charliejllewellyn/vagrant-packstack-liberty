#!/bin/bash

# copy our git controlled configuration into the appropraite openstack services and restart them
sudo su -
cp -r /tmp/conf/ceilometer/* /etc/ceilometer/
systemctl restart openstack-ceil*

cp -r /tmp/conf/nova/* /etc/nova/
systemctl restart openstack-nova*

echo "-------------------------------------"
echo "http://localhost:8080 for the web UI"
echo -n "admin user password is: "
cat /root/keystonerc_admin | grep PASSWORD

