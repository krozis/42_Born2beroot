#42_Born2beroot
Born2beroot project for school 42 Cursus.


OS Choosen : Debian 11 Bullseye (latest stable version) x64
hostname : stelie42

langages : US
region : France
Keymap : US

root pass (at install) : Qwerty42$
user fullname: stelie
username : stelie
pass (at install) : Qwerty42$

##After install:

TO DO IN "SU" mode:

* apt update
* apt install git
* git clone the Born2berootfolder
* uninstall GIT
* bash 0.sh
* reboot

------------------------
* sudo bash 1.sh
* change passwords:
passwd (stelie) and sudo passwd (root)
new pass (both) : AdventureTimes42$
* reboot
------------------------
* sudo bash 2.sh
* en root, crontab -e, choose editor, change "*/10" to "*/1" and test, if ok change back "*/10"
------------------------
* sudo bash 3.sh
* on browser: go localhost:8080 (http port chosen in Virtualbox) and install wordpress.
* check if Cockpit works on localhost:9090



