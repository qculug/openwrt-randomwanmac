# openwrt-randomwanmac

The project is based on [janost/openwrt-wan-mac](https://github.com/janost/openwrt-wan-mac) .

## How to build

```
$ cd openwrt
$ git clone https://github.com/qculug/openwrt-randomwanmac.git package/randomwanmac
$ make menuconfig #choose Network -> randomwanmac
$ make -j $(($(nproc) + 1)) V=s
```
