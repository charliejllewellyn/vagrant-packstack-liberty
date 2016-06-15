#!/bin/bash

echo "Building OpenStack VM base box"
vagrant destroy -f;
vagrant up;

