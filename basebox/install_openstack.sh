#!/bin/bash
echo "--------------------"
echo ""
echo ""
echo "Installing OpenStack"
echo ""
echo ""
echo "--------------------"

sudo yum install -y centos-release-openstack-liberty

sudo yum update -y

sudo yum install -y openstack-packstack

packstack --allinone --os-neutron-lbaas-install=y

sudo yum install -y vim mlocate

echo "--------------------------"
echo ""
echo ""
echo " Vanilla Instal All Done! "
echo ""
echo ""
echo "--------------------------"

echo "http://localhost:8080 for the web UI"

echo "admin user password is:"
sudo cat /root/keystonerc_admin | grep PASSWORD
