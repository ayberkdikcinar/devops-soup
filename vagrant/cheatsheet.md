# Vagrant Cheatsheet

## Definition

**Vagrant** is an open-source tool for building and managing virtualized development environments. It enables developers and DevOps engineers to create, configure, and provision virtual machines (VMs) or containers with ease, ensuring consistent environments across different platforms.

## Purpose

1. **Development Environment Isolation:** Vagrant isolates development environments in virtual machines or containers, preventing conflicts between projects and dependencies.

2. **Consistency:** It ensures that all team members have the same development environment, reducing "It works on my machine" issues.

3. **Portability:** Vagrant environments can be easily shared and reproduced on different systems, making it ideal for collaboration.

4. **Automation:** You can automate the setup and configuration of environments using provisioning tools like Ansible, Puppet, or Shell scripts.

## Basic Structure

- **Vagrantfile:** A configuration file written in Ruby that defines the virtual machine or container settings, such as the base box, network configuration, and provisioning scripts.
- **Box:** A pre-packaged image that serves as the base for creating virtual machines or containers.
- **Provisioning:** The process of setting up and configuring the environment using tools like Ansible, Shell scripts, or Puppet.
- **Provider:** The platform that Vagrant uses to create and manage virtual machines, such as VirtualBox, VMware, or Docker.

## Basic Commands

Initialize a new Vagrant project.

- vagrant init

Create and boot up a virtual machine.

- vagrant up

Apply changes made to the Vagrantfile.

- vagrant reload

Connect the vm via ssh.

- vagrant ssh

Gracefully shutdown vm.

- vagrant halt

Delete the vm, but keep the configuration.

- vagrant destroy

Check the status of the vm.

- vagrant status

Run provisioning scripts to configure the vm.

- vagrant provision

Suspend the virtual machine to save its state and resume it later.

- vagrant suspend
- vagrant resume

## Example Vagrantfiles

### Multiple Virtual Machines

```
Vagrant.configure("2") do |config|
  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/bionic64"
  end
  config.vm.define "db" do |db|
    db.vm.box = "centos/7"
  end
end
```

### Provision with shell script

```
Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "bootstrap.sh"
end
```

### Configure network settings

```
Vagrant.configure("2") do |config|
  config.vm.network "private_network", type: "dhcp"
end
```

### Port forwarding

```
Vagrant.configure("2") do |config|
  config.vm.network "forwarded_port", guest: 80, host: 8080
end
```
