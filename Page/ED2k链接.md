> 本文内容由[ED2k链接](https://zh.wikipedia.org/wiki/ED2k链接)转换而来。


**eD2k链接**（eD2k links (ed2k://) ）是一种超链接，用于指示在[eDonkey网络上存储的文件](https://zh.wikipedia.org/wiki/eDonkey网络 "wikilink")。包括[eDonkey2000](https://zh.wikipedia.org/wiki/eDonkey2000 "wikilink")、[eMule](https://zh.wikipedia.org/wiki/eMule "wikilink")、[MLDonkey](../Page/MLDonkey.md "wikilink")、[aMule等在内的许多使用了eDonkey文件共享协议的客户端软件](https://zh.wikipedia.org/wiki/aMule "wikilink")，都可以用eD2k链接来管理网络上的文件。

浏览器可以识别eD2k链接，并递交到eMule、eDonkey2000或其他的eD2k软件中进行传输。eD2k链接是最早被引入P2P文件网络的链接之一。[Magnet链接现在也与eD](https://zh.wikipedia.org/wiki/Magnet链接 "wikilink")2k链接类似，但Magnet链接不仅限于[eD2k Hash](https://zh.wikipedia.org/wiki/#eD2k_Hash "wikilink")，而是可以使用其他的[Hash](https://zh.wikipedia.org/wiki/散列函数 "wikilink")，诸如[SHA或](https://zh.wikipedia.org/wiki/SHA_家族 "wikilink")[MD5](../Page/MD5.md "wikilink")等。

这些Hash码，主要用于确保相同的文件在网络上具有的相同的唯一标识，即使这些文件储存在不同的地方或拥有不同的名字。它通过使用该文件的Hash函数（[散列函数](https://zh.wikipedia.org/wiki/散列函数 "wikilink")）来计算其[校验和](https://zh.wikipedia.org/wiki/校验和 "wikilink")。

eD2k链接和很多[URI协议一样](https://zh.wikipedia.org/wiki/URI "wikilink")，可以被网络浏览器配置为自动关联处理。安装某些eD2k软件时，“ed2k://”协议可能被自动注册。于是在浏览器中点击文件的eD2k链接时，就能自动打开eD2k软件并进行此文件的下载。

## 链接格式

eD2k链接的大致格式形如：

  -
    '''<ed2k://>|<类型>|<其他信息>|/

使用“|”分隔开各个区域。

注释：

  - <ed2k://：协议处理方法。指明该协议是>[eD2k协议](https://zh.wikipedia.org/wiki/eD2k协议 "wikilink")。
  - <类型>：链接类型。有三种：file（文件）、server（服务器）、serverlist（服务器列表）。
  - <其他信息>：具体的其他信息。

### 文件链接

  - 典型的、基础的eD2k文件链接只包含必要的三样信息：文件名、文件大小、文件的eD2k Hash。形如：

<!-- end list -->

  -
    **[ed2k://|file](ed2k://%7Cfile)|<文件名>|<文件大小>|<文件Hash>|/**

以下是大小为2868871字节（约2.7MB）的官方eMule v0.49c zip压缩包的eD2k链接的例子\[1\]：

  -
    **[ed2k://|file|eMule0.49c.zip|2868871|0F88EEFA9D8AD3F43DABAC9982D2450C|/](ed2k://%7Cfile%7CeMule0.49c.zip%7C2868871%7C0F88EEFA9D8AD3F43DABAC9982D2450C%7C/)**

<!-- end list -->

  - eD2k链接也可以包含一个或多个来源的IP地址与端口，形如：

<!-- end list -->

  -
    **[ed2k://|file](ed2k://%7Cfile)|<文件名>|<文件大小>|<文件Hash>|/|sources,<IP:端口>|/**

例如：

  -
    **[ed2k://|file|eMule0.49c.zip|2868871|0F88EEFA9D8AD3F43DABAC9982D2450C|/|sources,202.89.123.6:4662|/](ed2k://%7Cfile%7CeMule0.49c.zip%7C2868871%7C0F88EEFA9D8AD3F43DABAC9982D2450C%7C/%7Csources,202.89.123.6:4662%7C/)**

<!-- end list -->

  - 在eMule中，eD2k链接也可以包含根Hash（Root Hash）值。根Hash提供了一个可靠的值用于AICH（高级智能损坏处理），在传输的文件有损坏或错误时进行纠正恢复。包含根Hash的eD2k链接形如：

<!-- end list -->

  -
    **[ed2k://|file](ed2k://%7Cfile)|<文件名>|<文件大小>|<文件Hash>|h=<根Hash>|/**

例如：

  -
    **[ed2k://|file|eMule0.49c.zip|2868871|0F88EEFA9D8AD3F43DABAC9982D2450C|h=SQ7LUTYUSMDBP2TVE2M7T6VUBLU324KF|/](ed2k://%7Cfile%7CeMule0.49c.zip%7C2868871%7C0F88EEFA9D8AD3F43DABAC9982D2450C%7Ch=SQ7LUTYUSMDBP2TVE2M7T6VUBLU324KF%7C/)**

<!-- end list -->

  - 完整的Hashset可以确保文件的正确，也可帮助发布新的与罕见的文件。包含Hashset的eD2k链接形如：

<!-- end list -->

  -
    **[ed2k://|file](ed2k://%7Cfile)|<文件名>|<文件大小>|<文件Hash>|p=<Hash Set>|/**

<!-- end list -->

  - 带主机的eD2k链接形如：

<!-- end list -->

  -
    **[ed2k://|file](ed2k://%7Cfile)|<文件名>|<文件大小>|<文件Hash>|/|sources,<主机名:端口>|/**

<!-- end list -->

  - eMule也可兼容带HTTP来源的eD2k链接，形如：

<!-- end list -->

  -
    **[ed2k://|file](ed2k://%7Cfile)|<文件名>|<文件大小>|<文件Hash>|s=<文件的HTTP地址>|/**

### 服务器链接

eDonkey服务器的eD2k链接和文件的eD2k链接类似，它可以指示一个eDonkey服务器地址，格式形如：

  -
    **[ed2k://|server](ed2k://%7Cserver)|<IP>|<端口>|/**

例如：

  -
    **[ed2k://|server|207.44.222.51|4242|/](ed2k://%7Cserver%7C207.44.222.51%7C4242%7C/)**\[2\]

### 服务器列表链接

服务器列表链接，用于从一个固定的HTTP地址添加server.met服务器列表文件。格式形如：

  -
    **[ed2k://|serverlist](ed2k://%7Cserverlist)|<HTTP地址>|/**

<HTTP地址>：server.met文件的HTTP地址。\[3\]

### Kad节点列表链接

Kad节点列表链接，用于从一个固定的HTTP地址添加nodes.dat Kad节点文件。格式形如：

  -
    **[ed2k://|nodeslist](ed2k://%7Cnodeslist)|<HTTP地址>|/**

<HTTP地址>：nodes.dat文件的HTTP地址。\[4\]

### 好友链接

好友链接，根据用户Hash来添加好友。格式形如：

  -
    **[ed2k://|friend](ed2k://%7Cfriend)|<用户名>|<用户Hash>|/**

官方eMule不支持eD2k好友链接添加好友功能，仅[Xtreme及Xtreme的Mods](https://zh.wikipedia.org/wiki/eMule_Xtreme_Mod "wikilink")（如[ScarAngel](https://zh.wikipedia.org/wiki/eMule_ScarAngel_Mod "wikilink")、[Mephisto等](https://zh.wikipedia.org/wiki/eMule_Mephisto_Mod "wikilink")）、[CN Mod等部分](https://zh.wikipedia.org/wiki/eMule_CN_Mod "wikilink")[eMule Mods支持此功能](https://zh.wikipedia.org/wiki/eMule_Mods "wikilink")。

## eD2k Hash

eD2k Hash 算法是一种MD4算法的变体。其函数是一个MD4 Hash列表（MD4 Hash List）的[MD4根Hash](https://zh.wikipedia.org/wiki/MD4 "wikilink")，但与MD4 Hash的结果不同:

文件数据被分割成多个9500[KB的](https://zh.wikipedia.org/wiki/KB "wikilink")*chunks*块（9728000字节或大约9.28MB）和剩余的一个chunk。每个chunk都要计算**128-bit MD4 [校验和](https://zh.wikipedia.org/wiki/校验和 "wikilink")**。如果文件长度正好是9500KB的整倍数，剩余的大小为0的chunk依然存在于Hash列表的末尾。将这些chunk的MD4校验和按顺序联合起来，并使用MD4计算Hash，可得到eD2k Hash。对于仅由一个chunk组成的文件（即文件大小小于9500KB），MD4和eD2k Hash是完全相同的。\[5\]

这种方法可以直接将Hash列表与原eD2k Hash进行验证，而无需使用文件块来验证。

## 参见

  - [MD4](https://zh.wikipedia.org/wiki/MD4 "wikilink")
  - [散列函数](https://zh.wikipedia.org/wiki/散列函数 "wikilink")
  - [校验和](https://zh.wikipedia.org/wiki/校验和 "wikilink")
  - [Magnet链接](https://zh.wikipedia.org/wiki/Magnet链接 "wikilink")
  - [URI](https://zh.wikipedia.org/wiki/URI "wikilink")
  - [eDonkey网络](https://zh.wikipedia.org/wiki/eDonkey网络 "wikilink")

## 注釋

## 参考资料

## 外部链接

  - [aMule wiki: ed2k link](https://web.archive.org/web/20091012100030/http://wiki.amule.org/index.php/Ed2k_link)
  - [eD2k链接在线分析验证工具](https://web.archive.org/web/20100703091222/http://emulefans.com/ed2k-link-analyse)

### eMule官方网站上的帮助

  - [eD2k Links](http://www.emule-project.net/home/perl/help.cgi?l=1&rm=show_topic&topic_id=422)
  - [官方eMule小组的eD2k链接产生工具](http://sourceforge.net/projects/emule/files/LinkCreator)
  - [AICH损坏处理](http://www.emule-project.net/home/perl/help.cgi?l=16&rm=show_topic&topic_id=590)
  - [eD2k链接](http://www.emule-project.net/home/perl/help.cgi?l=16&topic_id=509&rm=show_topic)
  - [浏览器关联eD2k链接的问题](http://www.emule-project.net/home/perl/help.cgi?l=16&topic_id=280&rm=show_topic)

[Category:EDonkey网络](https://zh.wikipedia.org/wiki/Category:EDonkey网络 "wikilink")

1.  <http://contentdb.emule-project.net/view.php?pid=35>
2.  <http://www.emule-project.net/home/perl/help.cgi?l=1&rm=show_topic&topic_id=422>
3.
4.
5.  根据[eMule源代码](https://zh.wikipedia.org/wiki/eMule "wikilink")，method CKnownFile::CreateFromFile。