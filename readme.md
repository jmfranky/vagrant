![vagrant](https://camo.githubusercontent.com/51b172d944dd3848632774f14a6c02a6feae467b/687474703a2f2f6572696b6168656964692e636f6d2f7468656d652f6661746361747a2f696d616765732f76616772616e742f6c6f676f5f76616772616e742e706e67)

Create and configure lightweight, reproducible, and portable development environments. [Vagrant](http://www.vagrantup.com/) is an amazing tool for managing virtual machines via a simple to use command line interface.



## Install

Vagrant uses [Virtualbox](https://www.virtualbox.org/) to manage the virtual dependencies. You can [directly download virtualbox](https://www.virtualbox.org/wiki/Downloads) and install or use [homebrew](http://brew.sh/) for it.

```shell
$ brew cask install virtualbox
```

Now install Vagrant either [from the website](http://www.vagrantup.com/downloads.html) or use [homebrew](http://brew.sh/) for installing it.

```shell
$ brew cask install vagrant
```



## Usage

Run the Vagrant provisioning script.

```shell
curl -sL https://raw.githubusercontent.com/Mullen/vagrant/master/scripts/provision.sh | bash
```

===

For more help see [Vagrant Documentation](https://docs.vagrantup.com/v2/)
