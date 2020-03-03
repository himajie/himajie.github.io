#!/usr/bin/env bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

clear
echo
echo "#############################################################"
echo "#                     google bbr                            #"
echo "#############################################################"


#firewall-cmd --permanent --zone=public --add-port=8080/tcp &&

#firewall-cmd --reload &&

uname -r &&

sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org &&

sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm &&

sudo yum --enablerepo=elrepo-kernel install kernel-ml -y &&

rpm -qa | grep kernel &&

sudo egrep ^menuentry /etc/grub2.cfg | cut -f 2 -d \' &&

sudo grub2-set-default 1 &&

reboot

