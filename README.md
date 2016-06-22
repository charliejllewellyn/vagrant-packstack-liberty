# OpenStack Vagrant Project
This project is to give a development reference deployment for OpenStack
PackStack on CentOS7 was the simplest full install

## Metering for billing
This box was initally created to enable a billing endpoint. This is provided by an OpenStack project called ceilometer. The image that is downloaded is specifically configured to enable the required billing events. Advanced details for configuring Ceilometer can be found here https://www.rdoproject.org/install/ceilometerquickstart/

## openstack-dev
This is the top level Vagrant file and can be started/deployed using the standard vagrant command

```
vagrant up
```
