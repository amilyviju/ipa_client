# ipa_client
#Preparing to run the scripts

You can change the hosts file entry and installation options by editing the following commands in the default.rb recipe:

command 'echo <server-pvt-ip> <server-FQDN> <hostname> >> /etc/hosts'

command 'ipa-client-install -U --domain=<domain-name> --force-ntpd  --force -p <administrative-user> -w <admin-password> --server=<server-FQDN>'
