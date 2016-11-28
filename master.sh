#!/bin/bash

# Puppet 4
#wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
#dpkg -i puppetlabs-release-pc1-trusty.deb

# Puppet 3
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb

apt-get update
apt-get install -y puppetserver