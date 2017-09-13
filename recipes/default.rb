#
# Cookbook:: client1
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
execute 'install' do
  command 'yum -y install ipa-client'
end
execute 'echo' do
  command 'echo 10.0.1.113 awsfreipa.rean.local awsfreipa >> /etc/hosts'
end
execute 'yum' do
  command 'yum -y install firewalld'
end
execute 'start' do
  command 'systemctl start firewalld'
end
execute 'enable' do
  command 'systemctl enable firewalld'
end
execute 'zone' do
  command 'firewall-cmd --permanent --zone=public --change-interface=eth0'
end
execute 'reload' do
  command 'firewall-cmd --reload'
end
execute 'port1' do
  command 'firewall-cmd --zone=public --add-port=88/tcp'
end
execute 'port2' do
  command 'firewall-cmd --zone=public --add-port=80/tcp'
end
execute 'port3' do
  command 'firewall-cmd --zone=public --add-port=389/tcp'
end
execute 'port4' do
  command 'firewall-cmd --zone=public --add-port=88/udp'
end
execute 'port5' do
  command 'firewall-cmd --zone=public --add-port=464/tcp'
end
execute 'port6' do
  command 'firewall-cmd --zone=public --add-port=464/udp'
end
execute 'port7' do
  command 'firewall-cmd --zone=public --add-port=123/udp'
end
execute 'installation' do
  command 'ipa-client-install -U --domain=rean.local --force-ntpd  --force -p admin -w password --server=awsfreipa.rean.local'
end
