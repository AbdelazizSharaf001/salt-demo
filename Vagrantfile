#!/usr/bin/env ruby

Vagrant.configure(2) do |config|
	config.vm.define 'demo1' do |demo1|
		demo1.vm.box = 'box-cutter/debian82'
		demo1.vm.hostname = 'demo1'
		demo1.vm.network 'private_network', ip: '10.9.9.11'
	end

	config.vm.define 'demo2' do |demo2|
		demo2.vm.box = 'box-cutter/debian79'
		demo2.vm.hostname = 'demo2'
		demo2.vm.network 'private_network', ip: '10.9.9.12'
	end

	config.vm.define 'demo3' do |demo3|
		demo3.vm.box = 'box-cutter/ubuntu1404'
		demo3.vm.hostname = 'demo3'
		demo3.vm.network 'private_network', ip: '10.9.9.13'
	end

	config.vm.define 'demo4' do |demo4|
		demo4.vm.box = 'box-cutter/centos70'
		demo4.vm.hostname = 'demo4'
		demo4.vm.network 'private_network', ip: '10.9.9.14'
	end

	# insignificant vagrant settings below
	config.vm.synced_folder '.', '/vagrant', disabled: true
	config.ssh.insert_key = false
	config.vm.provider :virtualbox do |vb|
		vb.customize ['modifyvm', :id, '--memory', '512']
		vb.customize ['modifyvm', :id, '--cpus', '1']
		vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
		vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
	end
end
