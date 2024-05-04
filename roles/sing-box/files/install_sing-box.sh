#!/bin/bash

box_ver=${1:-1.5.3}

wget https://github.com/SagerNet/sing-box/releases/download/v"$box_ver"/sing-box_"$box_ver"_linux_amd64.deb

dpkg -i sing-box_"$box_ver"_linux_amd64.deb
rm sing-box_"$box_ver"_linux_amd64.deb
