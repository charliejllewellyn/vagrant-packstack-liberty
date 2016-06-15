#!/bin/bash

box_path="basebox/openstackbase.box"
# this is obviously enviroment dependant, due to the file size 100s Mb, this box is not under version control
remote_box_path="//10.1.10.56/share/openstackbase.box"

if [ ! -f $box_path ] ; then
    echo "trying to copy from remote location $remote_box_path"
    if [ ! -f $remote_box_path ] ; then
        echo "Could not find $remote_box_path, please get hold of the remote box"
        exit 1
    fi
    cp "$remote_box_path" "$box_path"
fi

echo "creating openstack instance from vagrant box"
vagrant destroy -f;
vagrant box add --force openstackbasebox $box_path;
vagrant up;

