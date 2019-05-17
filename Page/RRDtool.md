RRDtool (輪替型資料庫工具, round-robin database tool)
旨在處理[時間序列資料](../Page/時間序列.md "wikilink")，例如網路頻寬、溫度或CPU負載。
資料儲存在[環形緩衝區為基底的資料庫中](../Page/環形緩衝區.md "wikilink")，因此系統儲存佔用量隨時間保持恆定。不同於[循環制的計算機科學概念](https://zh.wikipedia.org/wiki/循環制 "wikilink")。

也包括以圖形格式提取循環資料的工具。
綁定程式語言Perl、Python、Ruby、Tcl、PHP和Lua。有一個獨立且完整的Java實施稱為rrd4j。

## 歷代發行

| 顏色 | 代表      |
| -- | ------- |
| 紅  | 停止支援的版本 |
| 綠  | 持續支援的版本 |
| 藍  | 未來發行版本  |

RRDTool 從 1.2 版起接受贊助，每次發行必定附加贊助名單。

下列表格為 **RRDtool 歷代主要發行版本**

| 版號  | 日期               | 連結                                                                                                                                                                                                              | 值得注意的變化                                                                                                                                                                                                               |
| --- | ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1.0 | July 16, 1999    | [Full release notes](https://archive.is/20130115201059/http://oss.oetiker.ch/rrdtool-trac/browser/tags/1.0/program/NEWS), [Announce](https://lists.oetiker.ch/pipermail/rrd-announce/1999-July/000007.html)     | First release. Basically [MRTG](https://zh.wikipedia.org/wiki/Multi_Router_Traffic_Grapher "wikilink") "done right".                                                                                                  |
| 1.1 | April 25, 2005   | [Full release notes](https://archive.is/20130116023956/http://oss.oetiker.ch/rrdtool-trac/browser/tags/1.2.0/NEWS), [Announce](https://lists.oetiker.ch/pipermail/rrd-announce/2005-April/000071.html)          | libart; output EPS, PDF & SVG; VDEF; trends; percentiles; updatev; Holt-Winters Forecasting; COMPUTE; .rrd format change.                                                                                             |
| 1.3 | June 11, 2008    | [Full release notes](https://archive.is/20130115190608/http://oss.oetiker.ch/rrdtool-trac/browser/tags/1.3.0/NEWS), [Announce](https://lists.oetiker.ch/pipermail/rrd-announce/2008-June/000109.html)           | Safer & faster file access; cairo/pango; anti-aliasing; TEXTALIGN; dashed lines; new HWPREDICT; libxml; i18n; XML dump;                                                                                               |
| 1.4 | October 27, 2009 | [Full release notes](https://raw.githubusercontent.com/oetiker/rrdtool-1.x/894d009df2ee64daa21e1fe03a987b3755c4d7f9/NEWS), [Announce](https://lists.oetiker.ch/pipermail/rrd-announce/2009-October/000134.html) | Caching daemon; VDEF PERCENTNAN; CDEF PREDICT & PREDICTSIGMA; libDBI; graph legends positioning; [Lua](https://zh.wikipedia.org/wiki/Lua_\(programming_language\) "wikilink") bindings; 3D border width; and more ... |
| 1.5 | April 16, 2015   | [Full release notes](https://archive.is/20150429194236/http://oss.oetiker.ch/rrdtool-trac/browser/tags/1.5.0/NEWS), [Announce](http://oss.oetiker.ch/rrdtool/forum.en.html#nabble-td7582894)                    | Use data from callback functions; Population of new rrd files with data from old ones; [.NET bindings](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")                                                       |
| 1.6 | May 9, 2016      | [Full release notes](https://github.com/oetiker/rrdtool-1.x/blob/1.6/NEWS), [Announce](http://oss.oetiker.ch/rrdtool/forum.en.html#nabble-f937719)                                                              | Thread Safety                                                                                                                                                                                                         |

## 使用 RRDtool 作為 DBMS 以及圖形子系統的其他工具

  - BackupPC
  - Cacti
  - Cherokee
  - collectd
  - Ganglia – system monitor clusters and grids
  - Lighttpd
  - Lpar2rrd
  - Monitorix
  - MRTG
  - Munin
  - Nagios
  - Nmon
  - NMIS
  - ntop
  - Observium
  - OpenNMS
  - pfSense
  - ServersCheck
  - SmokePing: Network latency monitor
  - SNM: System and network monitor
  - SysUsage: the sysstat and sar grapher
  - Stor2rrd
  - Xymon
  - Zenoss

## 外部連結

[官方網站](http://oss.oetiker.ch/rrdtool/)