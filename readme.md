![vagrant](https://camo.githubusercontent.com/51b172d944dd3848632774f14a6c02a6feae467b/687474703a2f2f6572696b6168656964692e636f6d2f7468656d652f6661746361747a2f696d616765732f76616772616e742f6c6f676f5f76616772616e742e706e67)

What
====
Vagrant/Chef configurations

Prerequisites
===

* Ruby 1.9.3+
* RVM
* Brew

How
===
1. Download and Install [VirtualBox](http://www.virtualbox.org/)
2. Download and Install [Vagrant](http://vagrantup.com/)
3. Install the Chef gem

  ```shell
  gem install chef
  ```

4. Install the Librarian gem

  ```shell
  gem install librarian-chef
  ```

5. Clone this repo & choose a setup
6. Configure & customize any settings in the Vagrantfile 
7. Run

  ```shell
  librarian-chef install
  vagrant up
  vagrant ssh
  ```

===

For more help see [Vagrant Documentation](https://docs.vagrantup.com/v2/)
