**MariaDB**是[MySQL](../Page/MySQL.md "wikilink")[關聯式資料庫管理系統的一个](https://zh.wikipedia.org/wiki/關聯式資料庫管理系統 "wikilink")[复刻](https://zh.wikipedia.org/wiki/复刻_\(软件开发\) "wikilink")，由社区开发，有商业支持，旨在继续保持在[GNU GPL下](../Page/GNU通用公共许可证.md "wikilink")[开源](../Page/自由及开放源代码软件.md "wikilink")。MariaDB的开发是由MySQL的一些原始开发者领导的，他们担心[甲骨文公司](../Page/甲骨文公司.md "wikilink")收购MySQL后会有一些隐患。\[1\]

MariaDB打算保持与MySQL的高度兼容性，确保具有库二进制奇偶校验的直接替换功能，以及与MySQL [API和命令的精确匹配](../Page/应用程序接口.md "wikilink")。\[2\] MariaDB自带了一个新的[Aria](https://zh.wikipedia.org/wiki/Aria_\(storage_engine\) "wikilink")，它可以替代[MyISAM](../Page/MyISAM.md "wikilink")，成为默认的事务和非事务引擎。\[3\] 它最初使用作为默认存储引擎，\[4\] 并从10.2版本切换回[InnoDB](https://zh.wikipedia.org/wiki/InnoDB "wikilink")。\[5\]

它的首席开发人员是[米卡埃爾·維德紐斯](../Page/米卡埃爾·維德紐斯.md "wikilink")，他是[MySQL AB的创始人之一](../Page/MySQL_AB.md "wikilink")，也是Monty Program AB的创始人。2008年1月16日，MySQL AB 宣布它已经同意被[昇陽電腦](../Page/昇陽電腦.md "wikilink")集团以大约10亿美元的价格收购。该项收购已于2008年2月26日完成。MariaDB是以Monty的小女儿Maria命名的，就像MySQL是以他另一个女儿My命名的一样。\[6\]

## 版本

MariaDB直到5.5版本，均依照MySQL的版本。因此，使用MariaDB5.5的人会从MySQL 5.5中了解到MariaDB的所有功能。

從2012年11月12日起釋出的10.0.0版開始，不再依照MySQL的版號。10.0.x版以5.5版為基礎，加上移植自MySQL 5.6版的功能和自行開發的新功能。

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>原始发布日期</p></th>
<th><p>最新版本</p></th>
<th><p>发布日期</p></th>
<th><p>状态</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>[7]</p></td>
<td><p>5.1.67</p></td>
<td><p>[8]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[9]</p></td>
<td><p>5.2.14</p></td>
<td><p>[10]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[11]</p></td>
<td><p>5.3.12</p></td>
<td><p>[12]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[13]</p></td>
<td><p>5.5.63</p></td>
<td><p>[14]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[15]</p></td>
<td><p>10.0.38</p></td>
<td><p>[16]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[17]</p></td>
<td><p>10.1.38</p></td>
<td><p>[18]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[19]</p></td>
<td><p>10.2.23</p></td>
<td><p>[20]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>[21]</p></td>
<td><p>10.3.13</p></td>
<td><p>[22]</p></td>
<td><p>Stable (GA)</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>[23]</p></td>
<td><p>10.4.3</p></td>
<td><p>[24]</p></td>
<td><p>Release Candidate</p></td>
</tr>
<tr class="even">
<td><p><small></small></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 第三方软件

MariaDB的API和协议兼容MySQL，另外又-{zh-hans:添加; zh-tw:新增}-了一些功能，以支持原生的非阻塞操作和进度报告。这意味着，所有使用MySQL的连接器、程式库和应用程序也将可以在MariaDB下工作。在此基础上，由于担心甲骨文MySQL的一个更加封闭的软件项目，Fedora的计划在Fedora 19中的以MariaDB取代MySQL\[25\]，维基媒体基金会的服务器同样也使用MariaDB取代了MySQL\[26\]。

如下是支持MariaDB的工具：

### 客户端

  - [DBEdit](../Page/DBEdit.md "wikilink") 一个免费的MariaDB数据库和其他数据库管理应用程序。
  - [Navicat](../Page/Navicat.md "wikilink") 一系列Windows、Mac OS X、Linux下专有数据库管理应用程序。
  - [HeidiSQL](../Page/HeidiSQL.md "wikilink") 一个Windows上自由和开放源码的MySQL客户端。它支持MariaDB的5.2.7版本和以后的版本。\[27\]\[28\]
  - [phpMyAdmin](https://zh.wikipedia.org/wiki/phpMyAdmin "wikilink") 一个基于网络的MySQL数据库管理应用程序

### 应用

以下应用程序对MariaDB给予官方支持：\[29\]

  - [Drupal](../Page/Drupal.md "wikilink")
  - [ERP5](https://zh.wikipedia.org/wiki/ERP5 "wikilink")
  - [Kajona](https://zh.wikipedia.org/wiki/Kajona "wikilink")
  - [MediaWiki](../Page/MediaWiki.md "wikilink")
  - [Moodle](../Page/Moodle.md "wikilink")
  - [MONyog](https://zh.wikipedia.org/wiki/MONyog "wikilink")
  - [ownCloud](https://zh.wikipedia.org/wiki/ownCloud "wikilink")
  - [Plone](../Page/Plone.md "wikilink")
  - [WordPress](../Page/WordPress.md "wikilink")
  - [Yii Framework](https://zh.wikipedia.org/wiki/Yii_Framework "wikilink")
  - [Zend Framework](https://zh.wikipedia.org/wiki/Zend_Framework "wikilink")

## 重要用户

  - [LAMP stack](../Page/LAMP.md "wikilink")
  - [Arch Linux](../Page/Arch_Linux.md "wikilink")\[30\]
  - [Chakra Linux](https://zh.wikipedia.org/wiki/Chakra_Linux "wikilink")\[31\]
  - [Fedora](../Page/Fedora.md "wikilink")（从Fedora 19起）\[32\]
  - [GentOS Linux](https://zh.wikipedia.org/wiki/GentOS_Linux "wikilink")\[33\]
  - [Google](../Page/Google.md "wikilink")\[34\]\[35\]
  - [Mozilla基金会](https://zh.wikipedia.org/wiki/Mozilla基金会 "wikilink")\[36\]
  - [OpenBSD](../Page/OpenBSD.md "wikilink")\[37\]\[38\] (from 5.7)
  - [openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink")（从openSUSE 12.3起）\[39\]
  - [Oracle Linux](../Page/Oracle_Linux.md "wikilink")（从第7版起）
  - [Red Hat Enterprise Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")（从RHEL 7起）\[40\]
  - [Slackware](../Page/Slackware.md "wikilink")\[41\]
  - [SaltOS](https://zh.wikipedia.org/wiki/SaltOS "wikilink")\[42\]
  - [Web Of Trust](https://zh.wikipedia.org/wiki/WOT:_Web_of_Trust "wikilink")\[43\]
  - [WPN-XM](https://zh.wikipedia.org/wiki/WPN-XM "wikilink")\[44\]
  - [Zimbra](https://zh.wikipedia.org/wiki/Zimbra "wikilink")（从8.5起）\[45\]
  - [维基媒体基金会](../Page/维基媒体基金会.md "wikilink")\[46\]

## 参阅

  - [关系型数据库管理系统比较](../Page/关系型数据库管理系统比较.md "wikilink")

## 书籍

  - MariaDB Crash Course, , Addison Wesley, 2011, ISBN 0-321-79994-1

## 参考文献

  - 引用

{{-}}

[Category:2009年软件](https://zh.wikipedia.org/wiki/Category:2009年软件 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:開源資料庫管理系統](https://zh.wikipedia.org/wiki/Category:開源資料庫管理系統 "wikilink") [Category:MySQL](https://zh.wikipedia.org/wiki/Category:MySQL "wikilink") [Category:MariaDB](https://zh.wikipedia.org/wiki/Category:MariaDB "wikilink") [Category:使用GPL许可证的软件](https://zh.wikipedia.org/wiki/Category:使用GPL许可证的软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25. [Features / Replace MySQL with MariaDB](https://fedoraproject.org/wiki/Features/ReplaceMySQLwithMariaDB), 2013-01-21
26.
27.
28. [MariaDB 5.2.7 released\!](http://askmonty.org/blog/mariadb-5-2-7-released/) , Monty Program Group Blog
29.
30. <https://www.archlinux.org/news/mariadb-replaces-mysql-in-repositories/> Arch Linux News - 25 March 2013 *MariaDB replaces MySQL in repositories*
31.
32.
33. '
34. '
35.
36.
37.
38.
39.
40.
41.
42.
43.
44.
45.
46.