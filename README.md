# 42_Born2beroot
Born2beroot project for school 42 Cursus.


OS Choosen : Debian 11 Bullseye (latest stable version) x64
hostname : stelie42

langages : US
region : France
Keymap : US

root pass : Qwerty42$
user fullname: stelie
username : stelie
pass : Qwerty42$

#Partition setup : bonus part mode.

Manual


Create boot partition (primary, 500Mo, mount point Boot)
Create other partition (Logical, 8GB or "max", Do not mount it)
  -> Configure encrypted volumes -> Yes -> Create encrypted volumes -> /dev/sda5
passphrase : 	42Born2beroot_stelie
Configure the Logical Volume Manager -> yes -> Create volume groupe : "LVMGroup" on /dev/mapper/sda5_crypt
Create Logical Volumes: 
- root -> 2G
- swap -> 1G
- home -> 1G
- var -> 1G
- srv -> 1G
- tmp -> 1G
- var-log -> 2GB

