![vagrant](https://camo.githubusercontent.com/51b172d944dd3848632774f14a6c02a6feae467b/687474703a2f2f6572696b6168656964692e636f6d2f7468656d652f6661746361747a2f696d616765732f76616772616e742f6c6f676f5f76616772616e742e706e67)

Updates 2016-08-23
===
* All boxes now use CentOS 7.2 from Bento, no longer using Mullen builds.
* Bash has been moved to shared files instead of inline.
* Bash is now served from Github.
* Installed checks now use hash instead of if.

Updates 2016-07-19
===
* All boxes now are pure bash and no longer user librarian and chef

Updates 2016-01-10
===
* Converted all boxes to use modern ruby syntax
* Boxes using MySQL have been switched to MariaDB
* Removed redundant boxes
* LAMP box now includes Node.js, Grunt, and SCSS
* Removed unnecessary  git dependancies from Cheffiles
* Standardized syntax across all boxes


What
====
Vagrant configurations

Prerequisites
===

* Ruby 1.9.3+
* RVM
* Brew

How
===
1. Download and Install [VirtualBox](http://www.virtualbox.org/)
2. Download and Install [Vagrant](http://vagrantup.com/)
3. Clone this repo & choose a setup
4. Configure & customize any settings in the Vagrantfile
5. Run

  ```shell
  vagrant up
  vagrant ssh
  ```

===

For more help see [Vagrant Documentation](https://docs.vagrantup.com/v2/)
