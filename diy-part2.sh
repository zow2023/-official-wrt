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
#
git clone https://github.com/CrazyPegasus/luci-app-accesscontrol-plus package/luci-app-accesscontrol-plus
git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol
git clone https://github.com/QiuSimons/luci-app-daed package/dae 

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/E8450/g' package/base-files/files/bin/config_generate
