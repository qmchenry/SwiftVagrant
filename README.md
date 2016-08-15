# SwiftVagrant - Vagrant setup for exploring Swift on Linux

Using Vagrant (which is significantly cool) and VirtualBox

## Prerequisites:

* Install vagrant from http://vagrantup.com
* Install virtualbox from https://www.virtualbox.org/wiki/Downloads

## To use:

* Launch VirtualBox from Applications
* From a terminal in this directory type  `vagrant up`
* Sit back, enjoy a lovely beverage
* When installed, connect to the instance with `vagrant ssh`
* When finished with work, use `vagrant halt` to turn off the instance
* or `vagrant destroy` to remove all the installed files
 
## Once inside the vagrant instance:
* Swift is installed in a symlinked directory called swift/
* The PATH environment var is setup to search the swift bin dir
* Test with `swift --version`
