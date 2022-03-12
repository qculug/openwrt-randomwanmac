#
# Copyright (C) 2021-2022 Roald Clark <roaldclark@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=randomwanmac
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Roald Clark <roaldclark@gmail.com>

PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/randomwanmac
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Simple script to generate random MAC address for WAN
	URL:=https://github.com/qculug/openwrt-randomwanmac
	PKGARCH:=all
endef

define Package/randomwanmac/description
	Simple script for OpenWRT/LEDE to generate random MAC address for WAN,
	only need base system environment.
endef

define Build/Compile
endef

define Package/randomwanmac/install
	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) $(CURDIR)/files/randomwanmac.init $(1)/etc/init.d/randomwanmac
endef

$(eval $(call BuildPackage,randomwanmac))
