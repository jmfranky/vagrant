![vagrant](http://www.hashicorp.com/images/blog/a-new-look-for-vagrant/logo_wide-cab47086.png)

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

  ```Shell
  gem install chef
  ```

4. Install the Librarian gem

  ```Shell
  gem install librarian-chef
  ```

5. Clone this repo & choose a setup
6. Configure & customize any settings in the Vagrantfile 
7. Run

  ```Shell
  librarian-chef install
  vagrant up
  vagrant ssh
  ```

===

For more help see [Vagrant Documentation](https://docs.vagrantup.com/v2/)
