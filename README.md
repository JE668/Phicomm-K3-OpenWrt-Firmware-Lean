
# Phicomm K3 OpenWrt Firmware [lean]


[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/JE668/Phicomm-K3-OpenWrt-Firmware-Lean/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/JE668/Phicomm-K3-OpenWrt-Firmware-Lean.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/JE668/Phicomm-K3-OpenWrt-Firmware-Lean.svg?style=flat-square&label=Forks&logo=github)

### 源码

- https://github.com/coolsnowwolf/lede

- https://github.com/kenzok8

- https://github.com/kongfl888/luci-app-adguardhome

- https://github.com/yangxu52/luci-app-k3screenctrl

- https://github.com/yangxu52/k3screenctrl_build

- https://github.com/yangxu52/Phicomm-k3-Wireless-Firmware

- ······


### 主要插件

- **Adguardhome**

- **SSR-Plus**
  

### **无线功率调整**  
1.系统-启动项-本地启动脚本

2.复制以下代码至 "exit 0" 之前   
```shell
iwconfig wlan0 txpower 20
iwconfig wlan1 txpower 20
```  
3.保存应用

### 致谢

- [Lean](https://github.com/coolsnowwolf)
- [Lienol](https://github.com/Lienol)
- [lwz322](https://github.com/lwz322)
- [kenzok8](https://github.com/kenzok8)
- [P3TERX](https://github.com/P3TERX)
- [kongfl888](https://github.com/kongfl888)
- [yangxu52](https://github.com/yangxu52)
- ......
