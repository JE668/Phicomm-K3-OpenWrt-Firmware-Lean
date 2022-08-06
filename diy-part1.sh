#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

echo '添加pass dependencies'
sed -i '$a src-git passpack https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
echo '=========Add feed source OK!========='

echo '添加bypass软件源'
sed -i '$a src-git bypass https://github.com/kiddin9/openwrt-bypass' feeds.conf.default
cat feeds.conf.default |grep bypass
echo '=========Add bypass source OK!========='

echo '添加dnsfilter'
rm -rf package/lean/luci-app-dnsfilter 
git clone https://github.com/kiddin9/luci-app-dnsfilter package/lean/luci-app-dnsfilter 
echo '=========Add dnsfilter source OK!========='

echo '添加OpenClash'
rm -rf package/lean/luci-app-openclash
svn checkout https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/lean/luci-app-openclash
echo '=========Add OpenClash source OK!========='

echo '添加ikoolproxy'
rm -rf package/lean/luci-app-ikoolproxy
git clone https://github.com/1wrt/luci-app-ikoolproxy.git package/lean/luci-app-ikoolproxy
echo '=========Add ikoolproxy source OK!========='

echo '添加jerrykuku的argon-mod主题'
rm -rf package/lean/luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
echo '=========Add argon-mod OK!========='

echo '添加tinktip的neobird主题'
rm -rf package/lean/luci-theme-neobird
git clone https://github.com/thinktip/luci-theme-neobird.git package/lean/luci-theme-neobird
echo '=========Add neobird-theme OK!========='

echo '添加lwz322的K3屏幕插件'
rm -rf package/lean/luci-app-k3screenctrl
git clone https://github.com/yangxu52/luci-app-k3screenctrl.git package/lean/luci-app-k3screenctrl
echo '=========Add k3screen plug OK!========='

echo '替换lwz322的K3屏幕驱动插件'
rm -rf package/lean/k3screenctrl
git clone https://github.com/yangxu52/k3screenctrl_build.git package/lean/k3screenctrl/
echo '=========Replace k3screen drive plug OK!========='

echo '移除bcm53xx中的其他机型'
sed -i '421,453d' target/linux/bcm53xx/image/Makefile
sed -i '140,412d' target/linux/bcm53xx/image/Makefile
sed -i 's/$(USB3_PACKAGES) k3screenctrl/luci-app-k3screenctrl/g' target/linux/bcm53xx/image/Makefile
# sed -n '140,146p' target/linux/bcm53xx/image/Makefile
echo '=========Remove other devices of bcm53xx OK!========='

#1.'asus_dhd24' 2.'ac88u_20' 3.'69027'
firmware='ac88u_20'
echo '替换K3的无线驱动为asus-dhd24'
wget -nv https://github.com/yangxu52/Phicomm-k3-Wireless-Firmware/raw/master/brcmfmac4366c-pcie.bin.${firmware} -O package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
echo '=========Replace k3 wireless firmware OK!========='
