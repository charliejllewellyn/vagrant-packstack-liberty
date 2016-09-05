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

## Accessing OpenStack

### UI access
The UI is avaialble on:

http://localhost:8080/dashboard/auth/login/

The credentials will be output after vagrant finishes running.

### API access
To access the API login to the vagrant box by running:

```
vagrant ssh
```

You can then source the admin users details

```
sudo -i
source keystonerc_admin
```

You can now run commands against OpenStack

e.g. list networks

```
openstack network list
```
