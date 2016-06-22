#!/bin/bash

echo "-------------------------------------"
echo "----------- Funk you up -------------"
echo ""
echo ""
echo "http://localhost:8080 for the web UI"
echo -n "admin user password is: "
cat /root/keystonerc_admin | grep PASSWORD
echo ""
echo ""
echo "-------------------------------------"
