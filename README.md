自建shadowsocks docker版本,方便ip被封后迁移

## 介绍

基础镜像使用:https://hub.docker.com/r/mritd/shadowsocks/ 后续考虑使用官方自建
ss 参数：https://github.com/shadowsocks/shadowsocks-libev

## 构建&使用：
参考scripts

## more：
宿主机开启魔改bbr加速

```shell
wget --no-check-certificate https://raw.githubusercontent.com/tcp-nanqinlang/general/master/General/CentOS/bash/tcp_nanqinlang-1.3.2
```

```shell
bash tcp_nanqinlang-1.3.2.sh
```