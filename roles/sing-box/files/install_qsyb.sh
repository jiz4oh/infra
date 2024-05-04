#!/bin/bash
#https://qiushuiyibing.com/666.html

apt-get update
apt-get -y install lsb-release ca-certificates curl gnupg
curl -fsSL https://dl.lamp.sh/shadowsocks/DEB-GPG-KEY-Teddysun | gpg --dearmor --yes -o /usr/share/keyrings/deb-gpg-key-teddysun.gpg
chmod a+r /usr/share/keyrings/deb-gpg-key-teddysun.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/deb-gpg-key-teddysun.gpg] https://dl.lamp.sh/shadowsocks/debian/ $(lsb_release -sc) main" >/etc/apt/sources.list.d/teddysun.list
apt-get update
