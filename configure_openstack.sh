#!/bin/bash

# copy our git controlled configuration into the appropraite openstack services and restart them
sudo su -

openstack-config --set /etc/ceilometer/ceilometer.conf notification store_events true
openstack-config --set /etc/nova/nova.conf DEFAULT notification_driver messagingv2

systemctl restart openstack-ceil*
systemctl restart openstack-nova*


echo "-------------------------------------"
echo "http://localhost:8080 for the web UI"
echo -n "admin user password is: "
cat /root/keystonerc_admin | grep PASSWORD

