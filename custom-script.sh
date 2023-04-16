#cloud-config
package_upgrade: true
packages:
  - epel-release
  - httpd
runcmd: 
  -	systemctl start httpd
  -	systemctl status httpd
  -	hostname -I
  
   
# ====================
 

#!/bin/sh
sudo yum update -y
sudo yum install epel-release -y
sudo yum install nodejs -y
node --version
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl status httpd
hostname -I