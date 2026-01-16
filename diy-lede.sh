#!/bin/bash
cd openwrt
rm -rf package/lean/luci-theme-argon
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 说明：
# 除了第一行的#!/bin/bash不要动，其他的设置，前面带#表示不起作用，不带的表示起作用了（根据你自己需要打开或者关闭）

# 修改openwrt登陆地址,把下面的192.168.18.1修改成你想要的就可以了，其他的不要动
sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/files/bin/config_generate

#设置登录密码为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings  

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash  #openclash出国软件
