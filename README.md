# Learning Puppet

[Learning Puppet - Kindle Edition](https://www.amazon.com/Learning-Puppet-Bill-Ward-ebook/dp/B01F4T7LBM)


## Launch Puppet through Vagrant

### Choose Puppet v3 or v4

In the files `agent.sh` and `master.sh` is defined which Puppet version is used. 

**Puppet Agent** Remove the hashes, for the version to install 

	# Puppet 4
	#wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
	#dpkg -i puppetlabs-release-pc1-trusty.deb
	#apt-get update
	#apt-get install -y puppet-agent
	
	# Puppet 3
	#wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
	#dpkg -i puppetlabs-release-trusty.deb
	#apt-get update
	#apt-get install -y puppet

**Puppet Master** Remove the hashes, for the version to install 

	# Puppet 4
	#wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
	#dpkg -i puppetlabs-release-pc1-trusty.deb
	
	# Puppet 3
	#wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
	#dpkg -i puppetlabs-release-trusty.deb
	
	apt-get update
	apt-get install -y puppetserver


### Launch / Stop / Remove the Puppet Agent and Master

Once the environment is launched, the files from this directory are synchronized with the
Virtual Machines. In the VM they are located in `/vagrant`. 


**Launch the environment** Installs and starts the agent and master as Virtual Machines

	vagrant up

**Stop the environment** Stops the agent and master Virtual Machines. 

	vagrant halt

**Remove the environment** Stops the agent and master and removes the Virtual Machines.

	vagrant destroy

**Loggin into environment**

	vagrant ssh agent
	vagrant ssh puppet

