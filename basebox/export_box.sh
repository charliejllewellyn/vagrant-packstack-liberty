#!/bin/bash

echo "Exporting OpenStack VM base box"
vagrant package --base openstackbase --output openstackbase.box
