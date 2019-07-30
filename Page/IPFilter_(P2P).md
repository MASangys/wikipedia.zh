**IPFilter**是一种过滤阻擋不安全[IP的功能](../Page/IP地址.md "wikilink")，它被很多[P2P](https://zh.wikipedia.org/wiki/P2P "wikilink")[檔案分享](../Page/檔案分享.md "wikilink")客户端和[防火牆軟體所使用](https://zh.wikipedia.org/wiki/防火牆 "wikilink")。

## 目的

这些P2P檔案分享客户端使用IPFilter的目的包括：防止来自某些IP的恶意攻击、虚假文件的传送和某些反P2P的[版权组织收集P](https://zh.wikipedia.org/wiki/版权 "wikilink")2P网络上传输有版权文件的信息数据等。\[1\]

## 支持

IPFilter被很多[防火牆軟體](https://zh.wikipedia.org/wiki/防火牆 "wikilink")、[eDonkey网络客户端与](https://zh.wikipedia.org/wiki/eDonkey网络 "wikilink")[BitTorrent协议客户端所使用](https://zh.wikipedia.org/wiki/BitTorrent协议 "wikilink")，支持IPFilter的软件包括\[2\]\[3\]：

  - eDonkey网络客户端：[aMule](https://zh.wikipedia.org/wiki/aMule "wikilink")、[eMule与其](https://zh.wikipedia.org/wiki/eMule "wikilink")[Mod](https://zh.wikipedia.org/wiki/eMule_Mod "wikilink")（修改版）、[eMule Plus](https://zh.wikipedia.org/wiki/eMule_Plus "wikilink")、[MLDonkey](../Page/MLDonkey.md "wikilink")、[Shareaza](../Page/Shareaza.md "wikilink")、[Lphant](../Page/Lphant.md "wikilink")、[JMule](../Page/JMule.md "wikilink")等
  - BitTorrent协议客户端：[μTorrent](https://zh.wikipedia.org/wiki/μTorrent "wikilink")、[Vuze](../Page/Vuze.md "wikilink")、[BitTorrent](../Page/BitTorrent_\(软件\).md "wikilink")、[BitSpirit](https://zh.wikipedia.org/wiki/BitSpirit "wikilink")、[BitComet](../Page/BitComet.md "wikilink")、[Halite等](https://zh.wikipedia.org/wiki/Halite "wikilink")

eMule等一些客户端也具有自动更新IPFilter的功能。

ipfilter.dat格式的IPFilter可以拥有过滤级别，但仅有eMule与其Mod和少数客户端支持设置区分过滤级别，其他多数支持IPFilter的软件都无法支持或完全无法使用带有过滤级别的ipfilter.dat。\[4\]

## 格式

IPFilter通常的格式包括**ipfilter.dat**格式和**guarding.p2p**格式。其中常用的ipfilter.dat格式由「IP段」、「过滤级别」、「注解」三個項目依序構成，分別以[半形](https://zh.wikipedia.org/wiki/半形 "wikilink")[逗號](../Page/逗號.md "wikilink")「,」為分界。IP僅可使用阿拉伯數字，以32位地址表示區段或單一主機，零不可被省略，以半形[連接號](https://zh.wikipedia.org/wiki/連接號 "wikilink")「-」為分界。\[5\]

### 範例

    001.000.000.000 - 001.255.255.255 , 000 , Internet Assigned Numbers Authority.
    140.113.000.000 - 140.113.255.255 , 255 , Republic of China, National Chiao Tung University.
    208.080.152.002 - 208.080.152.002 , 255 , www.wikipedia.org

## 参考

## 外部链接

  - [eMule IPFilter（IP过滤库）详解](https://web.archive.org/web/20100712095052/http://emulefans.com/emule-ipfilter-intro/)
  - [eMule的IP过滤数据库（IPFilter.dat）](https://web.archive.org/web/20101104212949/http://emulefans.com/news/plugin/ipfilter/)
  - [eMule IPFilter](http://www.emule-mods.de/?mods=ipfilter)
  - [ipfilter updater](https://web.archive.org/web/20100829045348/http://ipfilterupdater.sourceforge.net/)

[Category:網路安全](https://zh.wikipedia.org/wiki/Category:網路安全 "wikilink") [Category:P2P](https://zh.wikipedia.org/wiki/Category:P2P "wikilink")

1.
2.

3.  [ipfilter updater](http://ipfilterupdater.sourceforge.net/)

4.
5.