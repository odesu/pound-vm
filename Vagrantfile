# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.box = "debian9"
	config.vm.box_url = "https://just-another-developer-blog.com/wp-febac-content/uploads/2017/12/debian9.3.0_vagrant2.0.1_vbox5.2.4.box"
	config.vm.network :private_network, ip: "10.102.10.10"
	config.vm.network :forwarded_port, guest: 80, host: 80

	config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1024"]
		vb.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
		vb.customize ["modifyvm", :id, "--cpus", "2"]
		vb.customize ["modifyvm", :id, "--pae", "on"]
		vb.customize ["modifyvm", :id, "--audio", "none"]
		vb.customize ["modifyvm", :id, "--usb", "off"]
		vb.customize ["modifyvm", :id, "--mouse", "ps2"]
	end

	config.vm.provision :shell, path: 'setup.sh'
end