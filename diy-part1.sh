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

rm -rf feeds/luci/applications/luci-app-mosdns 


# 添加 Openclash 插件
rm -rf feeds/luci/applications/luci-app-openclash
wget -O package/openclash.zip https://codeload.github.com/vernesong/OpenClash/zip/refs/heads/master
unzip -d package/openclash package/openclash.zip
cp -r package/openclash/OpenClash-master/luci-app-openclash package/lean/luci-app-openclash
rm -rf package/openclash
rm -f package/openclash.zip

# 添加 onliner 插件
git clone https://github.com/nhhqgirl/luci-app-onliner.git package/lean/luci-app-onliner

# 添加 mosdns 插件
git clone https://github.com/nhhqgirl/luci-app-mosdns.git package/lean/luci-app-mosdns
git clone https://github.com/nhhqgirl/v2dat.git package/lean/v2dat


# 添加 PowerOff 插件
git clone https://github.com/nhhqgirl/luci-app-poweroff.git package/lean/luci-app-poweroff

# 添加 opentomcat 主题
git clone --depth=1 https://github.com/nhyoungboy/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat
