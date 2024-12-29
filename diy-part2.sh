#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.

 
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
# git clone https://github.com/sbwml/luci-theme-argon package/luci-theme-argon
# git clone https://github.com/fullcone-nat-nftables/nft-fullcone  package/nft-fullcone

# rm -rf feeds/packages/net/natmap
# rm -rf feeds/luci/applications/luci-app-natmap
#git clone https://github.com/muink/openwrt-natmapt.git package/natmapt
#git clone https://github.com/muink/openwrt-stuntman.git package/stuntman
#git clone https://github.com/muink/luci-app-natmapt.git package/luci-app-natmapt

# git clone https://github.com/muink/openwrt-einat-ebpf.git package/einat-ebpf
# git clone https://github.com/muink/luci-app-einat.git package/luci-app-einat

# rm -rf feeds/luci/applications/luci-app-smartdns
# rm -rf feeds/packages/net/smartdns  
# git clone https://github.com/pymumu/openwrt-smartdns feeds/packages/net/smartdns
# git clone https://github.com/pymumu/luci-app-smartdns feeds/luci/applications/luci-app-smartdns

# 移除 openwrt feeds 自带的核心包
# rm -rf feeds/packages/net/{xray*,v2ray*,v2ray*,sing*}
rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
# git clone https://github.com/zow2023/openwrt_helloworld package/helloworld


#git clone https://github.com/DNSCrypt/dnscrypt-proxy.git feeds/packages/net/dnscrypt-proxy2

# git clone https://github.com/peter-tank/openwrt-minisign.git package/minisign
# git clone https://github.com/peter-tank/luci-app-dnscrypt-proxy2 package/luci-app-dnscrypt-proxy2
#git clone https://github.com/kenzok78/openwrt-minisign.git package/minisign

# git clone https://github.com/izilzty/openwrt-chinadns-ng.git package/chinadns-ng
# git clone https://github.com/izilzty/luci-app-chinadns-ng.git package/luci-app-chinadns-ng


git clone https://github.com/xiaoxiao29/luci-app-adguardhome package/luci-app-adguardhome
# git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol
# git clone https://github.com/4IceG/luci-app-timecontrol package/luci-app-timecontrol

#git clone https://github.com/sirpdboy/luci-app-wizard package/luci-app-wizard
#git clone https://github.com/DevOpenWRT-Router/luci-app-mqos package/luci-app-mqos   

#git clone https://github.com/CrazyPegasus/luci-app-accesscontrol-plus package/luci-app-accesscontrol-plus

#git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
#git clone https://github.com/sbwml/autocore-arm package/autocore-arm 

# git clone https://github.com/gSpotx2f/luci-app-cpu-status package/luci-app-cpu-status
git clone https://github.com/gSpotx2f/luci-app-cpu-perf package/luci-app-cpu-perf
git clone https://github.com/muink/luci-app-tn-netports package/luci-app-tn-netports
git clone https://github.com/gSpotx2f/luci-app-temp-status package/luci-app-temp-status
# git clone https://github.com/gSpotx2f/luci-app-interfaces-statistics package/luci-app-interfaces-statistics
# git clone https://github.com/muink/luci-app-tinyfilemanager package/luci-app-tinyfilemanager

# git clone -b main --single-branch https://github.com/lxz1104/openwrt-fullconenat package/fullconenat

git clone https://github.com/QiuSimons/luci-app-daed package/dae     
  
# rm -rf feeds/packages/net/chinadns-ng 
# rm -rf feeds/luci/applications/luci-app-passwall

git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall/luci
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall/packages

#rm -rf feeds/package/helloworld
#git clone https://github.com/fw876/helloworld.git -b master package/helloworld

#rm -rf feeds/luci/applications/luci-app-mosdns
#rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
#rm -rf feeds/packages/utils/v2dat

# rm -rf feeds/packages/lang/node
# git clone https://github.com/sbwml/feeds_packages_lang_node-prebuilt -b packages-23.05 feeds/packages/lang/node
rm -rf feeds/packages/lang/node
git clone https://github.com/sbwml/feeds_packages_lang_node-prebuilt -b packages-24.10 feeds/packages/lang/node

rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/JAYLINK/g' package/base-files/files/bin/config_generate
