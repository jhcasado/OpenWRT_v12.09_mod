#! /bin/bash
sed -i 's|p910nd - Printer server|Printer Server|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-p910nd/luasrc/controller/p910nd.lua
sed -i 's|p910nd - Printer server|Printer Server|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-p910nd/luasrc/model/cbi/p910nd.lua
sed -i 's|First you have to install the packages to get support for USB (kmod-usb-printer) or parallel port (kmod-lp).|p910nd Printer Server is a small non-spooling printer daemon intended for disk-less workstations.|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-p910nd/luasrc/model/cbi/p910nd.lua
sed -i 's|translate("enable")|translate("Enable")|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-p910nd/luasrc/model/cbi/p910nd.lua
sed -i 's|_("hd-idle"),|_("HD-Idle"),|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-hd-idle/luasrc/controller/hd_idle.lua
sed -i 's|hd-idle is a utility program|HD-Idle is a utility program|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-hd-idle/luasrc/model/cbi/hd_idle.lua
sed -i 's|Map("hd-idle", "hd-idle"|Map("hd-idle", "HD-Idle"|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-hd-idle/luasrc/model/cbi/hd_idle.lua
sed -i 's|_("UPNP")|_("UPnP")|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-upnp/luasrc/controller/upnp.lua
sed -i 's|height: 1em;|height: 2em;|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/themes/bootstrap/htdocs/luci-static/bootstrap/cascade.css
sed -i 's|height: 1em;|height: 2em;|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/themes/bootstrap/dist/www/luci-static/bootstrap/cascade.css
sed -i 's|height: 1em;|height: 2em;|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/root-ar71xx/www/luci-static/bootstrap/cascade.css

#rm $HOME/openwrt/TL-WR1043ND/attitude_adjustment/target/linux/ar71xx/base-files/lib/upgrade/dir825.sh
#rm $HOME/openwrt/TL-WR1043ND/attitude_adjustment/target/linux/ar71xx/base-files/lib/upgrade/allnet.sh
#rm $HOME/openwrt/TL-WR1043ND/attitude_adjustment/target/linux/ar71xx/base-files/etc/defconfig/wndr3700/network
#rm $HOME/openwrt/TL-WR1043ND/attitude_adjustment/target/linux/ar71xx/base-files/etc/defconfig/wndr3700 -rf
#rm $HOME/openwrt/TL-WR1043ND/attitude_adjustment/target/linux/ar71xx/base-files/etc/defconfig/wzr-hp-g301nh -rf
#rm $HOME/openwrt/TL-WR1043ND/attitude_adjustment/target/linux/ar71xx/base-files/etc/uci-defaults/wrt160nl

sed -i 's|/etc/init.d/miniupnpd disable|/etc/init.d/miniupnpd start|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/ipkg-ar71xx/luci-app-upnp/etc/uci-defaults/luci-upnp
sed -i 's|/etc/init.d/miniupnpd disable|/etc/init.d/miniupnpd start|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-upnp/root/etc/uci-defaults/luci-upnp
sed -i 's|/etc/init.d/miniupnpd disable|/etc/init.d/miniupnpd start|g' $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/applications/luci-upnp/dist/etc/uci-defaults/luci-upnp
#sed -i 's"service_start /usr/sbin/nmbd -D"egrep -q 'disable.+netbios.*=.*(true|yes|1)' /var/etc/smb.conf || service_start /usr/sbin/nmbd -D"g'
cp  $HOME/openwrt/TL-WR1043ND/attitude_adjustment/Modified_LuCI_Files/*.lua /$HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/modules/admin-full/luasrc/model/cbi/admin_network/
touch $HOME/openwrt/TL-WR1043ND/attitude_adjustment/build_dir/target-mips_r2_uClibc-0.9.33.2/luci-0.11+svn9874/modules/admin-core/root/etc/init.d/luci_fixtime
