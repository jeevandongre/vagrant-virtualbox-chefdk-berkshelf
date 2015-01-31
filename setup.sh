#! /bin/bash 
## Installs vagrant version 1.6.5 
echo "please wait while we are installing vargrant...."
/usr/bin/wget -O vagrant.deb https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5_x86_64.deb
sudo /usr/bin/dpkg -i vagrant.deb

echo "installed vagrant successfully"

echo "please wait while we are installing virtualbox...."
## Installs virtualbox version 4.3.20

##/usr/bin/wget -O virtualbox.deb http://download.virtualbox.org/virtualbox/4.3.20/virtualbox-4.3_4.3.20-96996~Ubuntu~raring_amd64.deb
##sudo /usr/bin/dpkg -i virtualbox.deb
echo "deb http://download.virtualbox.org/virtualbox/debian utopic contrib" | sudo tee -a /etc/apt/sources.list
/usr/bin/wget http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc
sudo apt-key add oracle_vbox.asc
sudo apt-get update
sudo apt-get -y -f install virtualbox-4.3
echo "installed virtualbox successfully"

##Installs berkshelf plugin
echo "please wait while we are installing berkshelf plugin for vagrant...."
/usr/bin/vagrant plugin install vagrant-berkshelf
echo "installed berkshelf vagrant plugin successfully"
##Installs chefdk
echo "Installing chefdk...."
/usr/bin/wget -O chefdk.deb https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.6-1_amd64.deb
sudo /usr/bin/dpkg -i chefdk.deb
echo "chefdk installed"
echo "download vagrant box"
/usr/bin/wget https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box 
echo "successfully downloaded the vagrant box"
