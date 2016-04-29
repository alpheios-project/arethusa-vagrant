# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  # The Capitains Dev environment uses Ubuntu 14.04 32-bit 
  # We use 32 bit instead of 64 bit because some systems require BIOS
  # switch flipping to enable virtualization of 64 bit OS
  config.vm.box = "ubuntu/trusty32"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.

  # Capitains Dev Defaults are set here
  # but can be changed if they conflict with apps you are already
  # runnig locally. In that case, keep the guest ports as configured
  # but change the ports that they map to on the host.  This way
  # all setup scripts for the Capitains Dev Vagrant box will continue
  # to work.

  # For example, if you already have somehing you run on port 8080
  # on your machine, then you might change this line:
  # config.vm.network "forwarded_port", guest: 8080, host: 8080
  # to:
  # config.vm.network "forwarded_port", guest: 8080, host: 8081
  # which would then make eXist from the Vagrant box available 
  # to you at http://localhost:8081

  # 8081 will be the default port for arethusa
  config.vm.network "forwarded_port", guest: 8081, host: 8081

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.


  # this just sets the name of the Vagrant host. Don't change.
  config.vm.define :ArethusaDev do |t|
  end

   config.vm.provider "virtualbox" do |vb|

  # Uncomment the following line if you want to 
  # display the VirtualBox GUI when booting the machine
  #   vb.gui = true

  # You may want to increase the the amount of memory on the VM
  # set to to the number of bytes of RAM you want the box to 
  # be allowed to consume from your local machine
     vb.memory = "1024"

   # The network card defaults for Vagrant to do not work for all
   # machines.  This was needed for working with my Ubuntu Lenovo Laptop
   # It may not be necessary or other values  might be needed on other OS
   # and hardware configurations
     vb.customize ["modifyvm", :id, "--nictype1", "Am79C973"]
   end
 
   # Provisioning for the Capitains Dev Environment
   # these determine the apps and libraries that get installed.
   # Don't change.
   config.vm.provision :shell, :path => "bootstrap.sh"
   config.vm.provision :shell, :path => "apps.sh", :privileged => false
end
