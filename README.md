# OpenStack Vagrant Project
This project is to give a development reference deployment for OpenStack
PackStack on CentOS7 was the simplest full install, details for configuring Ceilometer can be found here https://www.rdoproject.org/install/ceilometerquickstart/

## openstackbasebox
The basebox is designed to be the lengthy deployment/install and be preconfigured ready for developer usage.
* create the base box with `./create_base_vm.sh` this will create an ubuntu VM and run the install process for openstack
* export the base box with `./export_box.sh` this will squash the built VM into a vagrant box for later use

## openstack-dev
This is the top level Vagrant file and can be started/deployed with the create_openstack_vm.sh script and the Vagrantfile at that level with the exported box file.
* create your openstack dev instance with `create_openstack_vm.sh` this will look for the box to import and build the top level vagrant instance

### conf
The deafult configuration of nova and ceilometer has been exported and is under version control so that any reference configuration can be shared. The conf folder is copied into place ducring the vagrant provision of openstack-dev box.

#### Notable changes for enabling events
* NOVA (nova.conf) - notification_driver=messaging
* CEILOMETER (ceilometer.conf) - store_events = True

