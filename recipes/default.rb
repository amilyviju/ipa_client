#
# Cookbook:: client1
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
execute 'install' do
  command 'yum -y install ipa-client'
end
execute 'installation' do
  command 'ipa-client-install -U --domain=rean.local --force-ntpd  --force -p admin -w password --server=awsfreipa.rean.local'
end
