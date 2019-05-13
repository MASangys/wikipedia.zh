**Micro Transport
Protocol**或稱**µTP**是一個由[µTorrent完成的](../Page/µTorrent.md "wikilink")[BitTorrent協定](../Page/BitTorrent_\(协议\).md "wikilink")。

它原本被設計用於當BitTorrent下載與一般應用程式衝突時，自動降低BitTorrent的點對點下載速率\[1\]。例如，它應能自動調節BitTorrent下載與瀏覽網頁所用頻寬。

希臘字母*mu*可能不是那麼好打出，µTP通常被寫為uTP。

## 開發

µTP是由[BitTorrent公司開發](../Page/BitTorrent公司.md "wikilink")，但沒有投入更廣泛的網路社群。\[2\]它首先於µTorrent
1.8.x beta加入，並於[µTorrent](../Page/µTorrent.md "wikilink") 1.9
Alpha中正式對外公開。\[3\]\[4\]

在µTorrent中加入的µTP功能被分割到libutp函式庫中，並以[MIT許可證發布](../Page/MIT許可證.md "wikilink")。\[5\]\[6\]

第一個支援µTP的[自由軟體客戶端是](../Page/自由軟體.md "wikilink")[KTorrent](../Page/KTorrent.md "wikilink")
4.0。\[7\]\[8\][libtorrent](../Page/libtorrent.md "wikilink")（一个实现BitTorrent协议的API）目前在一个开发分支中实现了不完全的µTP协议。\[9\]\[10\]\[11\]
Azureus（現在叫做[Vuze](../Page/Vuze.md "wikilink")）Bittorrent客戶端也支援µTP（在微軟Windows和MAC
OS X 10.5或更新版本上的Azureus 4.5.0.5以後）。\[12\]
[Transmission從](../Page/Transmission.md "wikilink")2.30版開始支援µTP。\[13\]

自由软件社区中有人认为，如果将µTP的拥塞控制加入现有的TCP协议中，将比为某个应用程序专门设计一种机制能更好的达成uTP的开发目标。\[14\]另一些人提出，尽管TCP协议有许多优点，但由于协议与操作系统内核紧密结合，在其中加入新的功能特性需要很长时间才能在应用程序中发挥作用。

## 運作

µTP由兩個部分所組成：一个框架机制，以及一种相比TCP协议较低侵略性的拥塞控制算法。

### µTP的框架机制

µTP在UDP分组中以自己的框架机制来储存数据。这种机制与TCP具有大致相同的功能（同样带有时间戳和使用选择性确认分组SACK），但以一种独特的方式实现。

有评论认为µTP的框架机制有诸多不完善之处。\[15\]

### µTP的拥塞控制

µTP的拥塞控制被称为[LEDBAT](../Page/LEDBAT.md "wikilink")，旨在减少当延迟不严重时，应用程序使用µTP来最大化可用带宽造成的延迟。\[16\]\[17\]此外，µTP的拥塞控制器提供的信息可用于选择TCP连接的传输率。\[18\]

IETF在互联网草案中描述了LEDBAT算法，\[19\] 但µTP具体的实现方法有别于这些草案。\[20\]

## 相關條目

  - [µTorrent](../Page/µTorrent.md "wikilink")
  - [BitTorrent](../Page/BitTorrent_\(协议\).md "wikilink")
  - [TCP拥塞控制算法](../Page/TCP拥塞控制.md "wikilink")

## 参考文献

## 外部链接

  - [BitTorrent Enhancement
    Proposal 29](http://bittorrent.org/beps/bep_0029.html) - µTorrent
    transport protocol

[Category:BitTorrent](https://zh.wikipedia.org/wiki/Category:BitTorrent "wikilink")

1.  <http://forum.bittorrent.org/viewtopic.php?pid=762#p762>

2.

3.  [µTorrent's switch to UDP and why the sky isn't
    falling](http://arstechnica.com/news.ars/post/20081201-utorrents-switch-to-udp-and-why-the-sky-isnt-falling.html)

4.  [uTorrent shifts towards UDP to make it work
    better](http://www.thinkbroadband.com/news/3807-utorrent-shifts-towards-udp-to-make-it-work-better.html)

5.  [libutp, an open source implementation of µTP, has now been
    released](http://forum.utorrent.com/viewtopic.php?id=76640)

6.  <https://github.com/bittorrent/libutp>

7.  <http://torrentfreak.com/ktorrent-first-bittorrent-client-to-adopt-open-source-utp-100528/>

8.  <http://ktorrent.org/?q=node/42>

9.  <https://libtorrent.svn.sourceforge.net/svnroot/libtorrent/branches/libtorrent_utp/>

10. <http://libtorrent.svn.sourceforge.net/viewvc/libtorrent/branches/libtorrent_utp/>

11. <http://code.google.com/p/libtorrent/issues/detail?id=6>

12. <http://azureus.sourceforge.net/plugin_details.php?plugin=azutp>

13. <https://trac.transmissionbt.com/ticket/2338>

14. <http://forum.bittorrent.org/viewtopic.php?pid=764#p764>

15. <http://forum.bittorrent.org/viewtopic.php?id=131>

16.
17.

18.

19.

20. <http://forum.bittorrent.org/viewtopic.php?pid=753#p753>