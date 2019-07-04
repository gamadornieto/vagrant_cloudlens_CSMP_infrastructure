# Description

This script was created as part of the lab "Cloudlens Sensor Technical Deep Dive Hands on"
as a didactic example on how to automate the creation of the VMs required
to build the Ixia Cloudlens CSMP self hosted infrastructure.

This scripts builds 4 Ubuntu 18.04 LTS machines that will be used as:

-- 1 VM named "registry" -- 192.168.241.53
-- 3 VMs, named: "U1", "U2", "U3"  to build the Docker Swarm cluster -- 192.168.241.53-5

## Prerequisites

Install Vagrant software
Install vagrant-disksize plugin


## Commands

 * create the VMs
vagrant plugin install vagrant-disksize
vagrant up
 * to SSH to any machine type
vagrant ssh U1
 * to destroy the VMs
vagrant destroy --force

If you are already an Ixia customer you should download the Ixia Cloudlens Manager image (.ova for instance) using your Ixia support account.
If you are not an Ixia customer drop me an email. gustavo.amador-nieto@keysight.com
To run the Ansible Playbooks that will configure the Registry and the Docker Swarm, use the CLI commands from the CloudlensManager console/SSH.

## License
MIT / BSD

## Author Information
Created in 2019 Gustavo AMADOR NIETO.
