
# Phicomm K3 OpenWrt Firmware 🚀


[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/JE668/Phicomm-K3-OpenWrt-Firmware-Lean/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/JE668/Phicomm-K3-OpenWrt-Firmware-Lean.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/JE668/Phicomm-K3-OpenWrt-Firmware-Lean.svg?style=flat-square&label=Forks&logo=github)


该项目提供了针对 Phicomm K3 路由器的 OpenWrt 固件，旨在提供更多功能和定制选项。

该固件基于 [Lean 的 OpenWrt 源码](https://github.com/coolsnowwolf/lede)，并整合了以下主要插件及功能。

### 一、主要插件

- [Adguardhome](https://github.com/kongfl888/luci-app-adguardhome) 🛡️
- [SSR-plus](https://github.com/kenzok8/openwrt-packages) 🌐
- [K3 Screen](https://github.com/yangxu52/luci-app-k3screenctrl) 🖥️


### 二、无线功率调整

如果需要调整无线功率，可以按照以下步骤进行操作：

1. 进入系统-启动项-本地启动脚本
2. 复制以下代码至 "exit 0" 之前:
```shell
iwconfig wlan0 txpower 20
iwconfig wlan1 txpower 20
```
3. 保存应用
4. 重启路由器


### 三、感谢 🙏

- [Lean](https://github.com/coolsnowwolf)  [Lienol](https://github.com/Lienol)  [lwz322](https://github.com/lwz322)  [Hill-98](https://github.com/Hill-98)  [kongfl888](https://github.com/kongfl888)  [kenzok8](https://github.com/kenzok8)  [P3TERX](https://github.com/P3TERX)  [yangxu52](https://github.com/yangxu52)


### 四、其他

如果您对该固件有任何疑问或建议，请随时提出 issue 或联系上述贡献者。

**注意：** 该固件为自用测试版，使用前请仔细阅读相关文档和风险提示. 🚨
