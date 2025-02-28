#!/bin/bash
#
# Copyright (c) 2020-2024 JE668 <https://github.com/JE668>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# File name: beta/diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

echo 'Modify default IP'
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

echo '修改主机名'
sed -i "s/hostname='LEDE'/hostname='Phicomm-K3'/g" package/base-files/files/bin/config_generate
cat package/base-files/files/bin/config_generate |grep hostname=
echo '=========Alert hostname OK!========='

# echo '移除主页跑分信息显示'
# sed -i 's/ <%=luci.sys.exec("cat \/etc\/bench.log") or ""%>//g' package/lean/autocore/files/arm/index.htm
# echo '=========Remove benchmark display in index OK!========='

# echo '移除主页日志打印'
# sed -i '/console.log(mainNodeName);/d' package/lean/luci-theme-argon/htdocs/luci-static/argon/js/script.js
# echo '=========Remove log print in index OK!========='

# echo '修改upnp绑定文件位置'
# sed -i 's/\/var\/upnp.leases/\/tmp\/upnp.leases/g' feeds/packages/net/miniupnpd/files/upnpd.config
# cat feeds/packages/net/miniupnpd/files/upnpd.config |grep upnp_lease_file
# echo '=========Alert upnp binding file directory!========='

# 添加主页的CPU温度显示
# sed -i "/<tr><td width=\"33%\"><%:Load Average%>/a \ \t\t<tr><td width=\"33%\"><%:CPU Temperature%></td><td><%=luci.sys.exec(\"sed 's/../&./g' /sys/class/thermal/thermal_zone0/temp|cut -c1-4\")%></td></tr>" feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
# cat feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm |grep Temperature
# echo "Add CPU Temperature in Admin Index OK====================="
