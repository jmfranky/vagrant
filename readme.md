What
====
Vagrant/Chef files

Prerequisites
===

* Ruby 1.9.3+
* RVM
* Brew

*Not in any particular order*

How
===
1. Install [Vagrant](http://vagrantup.com/)

```Shell
gem install vagrant
```

2. Download and Install [VirtualBox](http://www.virtualbox.org/)
3. Install Chef

```Shell
gem install chef
```

4. Install Librarian

```Shell
gem install librarian-chef
```

5. Clone this repo & choose a setup
6. Run


```Shell
librarian-chef install
vagrant up
vagrant ssh
```