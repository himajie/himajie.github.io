#!/usr/bin/env bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

uname -r &&

echo 'net.core.default_qdisc=fq' | sudo tee -a /etc/sysctl.conf &&

echo 'net.ipv4.tcp_congestion_control=bbr' | sudo tee -a /etc/sysctl.conf &&

sudo sysctl -p &&

sudo sysctl net.ipv4.tcp_available_congestion_control &&

sudo sysctl -n net.ipv4.tcp_congestion_control &&

lsmod | grep bbr
