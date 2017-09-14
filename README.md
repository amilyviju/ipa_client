# ipa_client
#Preparing to run the scripts

You can change the hosts file entry and installation options by editing the following commands in the default.rb recipe:

command 'echo 10.0.1.84 awsfreipa.rean.internal awsfreipa >> /etc/hosts'

command 'ipa-client-install -U --domain=rean.internal --force-ntpd  --force -p admin -w password@123 --server=awsfreipa.rean.internal'
