> 本文内容由[P0f](https://zh.wikipedia.org/wiki/P0f)转换而来。


**p0f** 是一个多功能工具，用于被动式获取 操作系统指纹 以识别远程主机操作系统，并且可以穿透防火墙。

p0f可以检测远程主机的连接方式、距离、运行时间，并且可以用于检测企业环境中未授权的网络连接。p0f可以检测到某些类型的数据包过滤器和[NAT设置](../Page/网络地址转换.md "wikilink")，有时可以确定其他[ISP的名称](https://zh.wikipedia.org/wiki/ISP "wikilink")。 p0f使用被动式获取操作系统指纹，因此不增加网络负载。没有名称搜索、没有直接通信、不使用[ARIN查询](https://zh.wikipedia.org/wiki/ARIN "wikilink")、没有[Traceroute](../Page/Traceroute.md "wikilink")。

## 功能

p0f支持：

  - 反连SYN模式
  - 正连SYN+ACK模式
  - 空连RST+模式
  - 碎片ACK模式

此外，p0f还支持检测：

  - 是否运行于防火墙之后
  - 是否运行于NAT模式
  - 是否运行于负载均衡模式
  - 远程系统距离及其运行时间
  - 远程系统的DSL和ISP信息

## 优点

p0f被动式检测的特点使其在检测过程中不增加任何直接或间接的网络负载。它通过捕获数据包进行分析的方法确定远程主机的操作系统，远程主机不能检测到自己的数据包被捕获。

## 原理

p0f捕获数据包并进行分析，包括IPv4和IPv6头、TCP头、TCP握手以及应用层的数据。

## 用法

p0f没有图形界面，可以从命令行运行。

`Usage: p0f [ ...options... ] [ 'filter rule' ]`

`Network interface options:`

`  -i iface  - listen on the specified network interface`
`  -r file   - read offline pcap data from a given file`
`  -p        - put the listening interface in promiscuous mode`
`  -L        - list all available interfaces`

`Operating mode and output settings:`

`  -f file   - read fingerprint database from 'file' (/etc/p0f/p0f.fp)`
`  -o file   - write information to the specified log file`
`  -s name   - answer to API queries at a named unix socket`
`  -u user   - switch to the specified unprivileged account and chroot`
`  -d        - fork into background (requires -o or -s)`

`Performance-related options:`

`  -S limit  - limit number of parallel API connections (20)`
`  -t c,h    - set connection / host cache age limits (30s,120m)`
`  -m c,h    - cap the number of active connections / hosts (1000,10000)`

`Optional filter expressions (man tcpdump) can be specified in the command`
`line to prevent p0f from looking at incidental network traffic.`

## 参考

## 外部链接

  - [Official p0f homepage](http://lcamtuf.coredump.cx/p0f.shtml)
  - [p0f compiled for Windows](http://www.info-sec.ca/p0f.html)

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink")