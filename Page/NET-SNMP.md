> 本文内容由[NET-SNMP](https://zh.wikipedia.org/wiki/NET-SNMP)转换而来。


**NET-SNMP**是一種[开放源代码](../Page/开放源代码.md "wikilink")的[简单网络管理协议](../Page/简单网络管理协议.md "wikilink")（Simple Network Management Protocol）[軟件](https://zh.wikipedia.org/wiki/軟件 "wikilink")。NET-SNMP支持SNMP v1, SNMP v2c 与 SNMP v3，并可以使用 IPV4 及 IPV6 。基于(BSD及BSD like)许可。

## 软件构成

  - 命令行应用程序

<!-- end list -->

1.  从支持SNMP的设备获得数据.支持独立请求 (snmpget, snmpgetnext), 与重复请求 (snmpwalk, snmptable, snmpdelta).
2.  对支持SNMP的设备配置属性.(snmpset).
3.  从支持SNMP的设备获取特定的信息.(snmpdf, snmpnetstat, snmpstatus).
4.  将MIB OIDs的两种表现形式(数字及文字)相互转换.并显示MIB的内容与结构(snmptranslate).

<!-- end list -->

  - 一个图形化的MIB浏览器(tkmib).基于Tk/perl.
  - 一个接收SNMP提示消息(SNMP traps)的守护程序.(snmptrapd).可以将选定的SNMP消息记录到系统日志(syslog),NT 事件日志(NT Event Log),文本文件中.或是转发到其它的SNMP管理程序,也可以传给外部的应用程序.
  - 一个回应SNMP查询的客户端.(snmpd).它集成了大量SNMP的模块.并可通过动态链接库,外部脚本与命令,多路SNMP技术(SMUX),以及可扩客户端协议(AgentX)进行扩展.
  - 一个用来开发SNMP应用程序的程序库.支持C 与 perl 的 APIs.防对方是否

## 操作系统支持

NET-SNMP支持许多UNIX发行版,并支持部分UNIX-like的操作系统.也支持微软的Windows.

**提示** 支持的功能依赖于所使用的操作系统.

## 外部链接

  - [NET-SNMP網址](http://net-snmp.sourceforge.net/)
  - [安裝與設定 NET-SNMP](http://netsnmp-install.netdpi.net/)
  - [《深入理解Net-SNMP》源码](https://github.com/chansonZ/Understanding-the-Net-SNMP)

[Category:SourceForge专案](https://zh.wikipedia.org/wiki/Category:SourceForge专案 "wikilink") [Category:网路管理软件](https://zh.wikipedia.org/wiki/Category:网路管理软件 "wikilink")