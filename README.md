
# K3-OpenWrt-Firmware 【🌟 Star 🌟】
[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/JE668/Phicomm-K3-OpenWrt-Firmware-Lean/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/JE668/Phicomm-K3-OpenWrt-Firmware-Lean.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/JE668/Phicomm-K3-OpenWrt-Firmware-Lean.svg?style=flat-square&label=Forks&logo=github)

Phicomm K3 OpenWrt firmware Compile by Github Actions


## Instruction | 介绍


### Source Code | 源码使用

- https://github.com/coolsnowwolf/lede

- https://github.com/lwz322/k3screenctrl_build

- https://github.com/yangxu52/Phicomm-K2P-K3-OpenWrt-Firmware

- https://github.com/kenzok8

- ······


### Including Applictions | 包含插件

- **Remove all USB support**  
USB interface only has charging function. **Important !**  

- **Network Turbo ACC**  
Base on Qualcomm Short-FE, significantly improve forwarding ability. 

- **Add IPv6 full support**  

- **Add Phicomm K3's LCD screen full support**  

- **Add AdguardHome**  
Remove ads base on DNS.  

- **Others**


### Use Guide | 使用指南  
#### **Language | 语言**  
1.Open [Web Admin](http://10.0.0.1) (default: 10.0.0.1) in your browser and login (default: `root` `password`).  
2.Open Menu `(系统|System)` -> `(系统|System)`, swith tab `(语言和界面|Language and Style)`  
3.Change the `Language` select's option. (auto=English)  
4.Click the `(保存&应用|SAVE&APPLY)` button to save. Finally,refresh browser.   
&emsp;

#### **Wireless Power | 无线功率**  
1.Open [Web Admin](http://10.0.0.1) (default: 10.0.0.1) in your browser and login (default: `root` `password`).  
2.Open Menu `(系统|System)` -> `(启动项|Startup)`, slide to the bottom.  
3.Add some shell command in `(本地启动脚本|Local Startup Script)`, before `exit 0`  
```shell
iwconfig wlan0 txpower 20
iwconfig wlan1 txpower 20
```  
The `wlan0` represent 2.4G,`wlan1` represent 5G. `20` reresent submit power (max:`31`).  
Recommend: Between `20` and `27`.Power is proportional to signal and inversely proportional to wireless throughput.  
4.Click the `(保存&应用|SAVE&APPLY)` button to save. Finally,refresh browser.  
&emsp;

#### **Network Turbo ACC | 网络加速**  
1.Open [Web Admin](http://10.0.0.1) (default: 10.0.0.1) in your browser and login (default: `root` `password`).  
2.Open Menu (网络|Network) -> (Turbo ACC Center|Turbo ACC 网络加速).  
3.Selected the `Shortcut-FE flow offloading | Shortcut-FE 流量分载` and `BBR CCA | BBR 拥塞控制算法`.Change `FullCone NAT | 全锥型 NAT`'s Option to `High Performing Mode | 高性能模式`  
4.Click the `(保存&应用|SAVE&APPLY)` button to save.  
&emsp;


## Thanks | 致谢

- [Lean](https://github.com/coolsnowwolf)
- [Lienol](https://github.com/Lienol)
- [jerrykuku](https://github.com/jerrykuku)
- [lwz322](https://github.com/lwz322)
- [kenzok8](https://github.com/kenzok8)
- [P3TERX](https://github.com/P3TERX)
- [yangxu52](https://github.com/yangxu52)
- [vernesong](https://github.com/vernesong)
- And Every Source Contributor!
