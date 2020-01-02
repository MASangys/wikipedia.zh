> 本文内容由[BitTorrent \(协议\)](https://zh.wikipedia.org/wiki/BitTorrent_\(协议\))转换而来。


[BitTorrent_DNAの動作説明2.PNG](https://zh.wikipedia.org/wiki/File:BitTorrent_DNAの動作説明2.PNG "fig:BitTorrent_DNAの動作説明2.PNG") **BitTorrent协议**（简称**BT**，俗称**比特洪流**、**BT下载**）是用在[对等网络中](https://zh.wikipedia.org/wiki/对等网络 "wikilink")[文件分享的](https://zh.wikipedia.org/wiki/文件分享 "wikilink")[网络协议](https://zh.wikipedia.org/wiki/网络协议 "wikilink")[程序](../Page/计算机程序.md "wikilink")。和[点对点](../Page/点对点协议.md "wikilink")（point-to-point）的协议[程序不同](../Page/计算机程序.md "wikilink")，它是用户群对用户群（peer-to-peer），而且用户越多，下载同一檔案的人越多，下載该档案的速度越快。且下载後，繼續維持上传的狀態，就可以“分享”，成为其用户端节点下载的[种子文件](../Page/种子文件.md "wikilink")（.torrent），同時上传及下载。

## 歷史

該技術由美國的程式設計師[布萊姆·科亨於](https://zh.wikipedia.org/wiki/布萊姆·科亨 "wikilink")2001年4月時發布，並於2001年7月2日時首次正式應用。

## 原理簡述

[Torrentcomp_small.gif](https://zh.wikipedia.org/wiki/File:Torrentcomp_small.gif "fig:Torrentcomp_small.gif")

普通的[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")／[FTP下載使用](https://zh.wikipedia.org/wiki/FTP "wikilink")[TCP/IP协议](https://zh.wikipedia.org/wiki/TCP/IP协议 "wikilink")，BitTorrent協定是架構於TCP/IP協定之上的一個[P2P檔案傳輸](https://zh.wikipedia.org/wiki/P2P "wikilink")[通訊協定](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")，處於TCP/IP結構的[應用層](https://zh.wikipedia.org/wiki/應用層 "wikilink")。BitTorrent協定本身也包含了很多具體的内容協定和擴展協定，並在不斷擴充中。

根据BitTorrent协议，文件发布者会根据要发布的文件生成提供一个.torrent文件，即[种子文件](../Page/种子文件.md "wikilink")，也简称为“种子”。

种子文件本质上是[文本文件](../Page/文本文件.md "wikilink")，包含Tracker信息和文件信息两部分。Tracker信息主要是BT下载中需要用到的Tracker服务器的地址和针对Tracker服务器的设置，文件信息是根据对目标文件的计算生成的，计算结果根据BitTorrent协议内的[Bencode](../Page/Bencode.md "wikilink")规则进行编码。它的主要原理是需要把提供下载的文件虚拟分成大小相等的块，块大小必须为2k的整数次方（由于是虚拟分块，硬盘上并不产生各个块文件），并把每个块的索引信息和[Hash验证码写入种子文件中](https://zh.wikipedia.org/wiki/Hash "wikilink")；所以，种子文件就是被下载文件的“索引”。

下载者要下载文件内容，需要先得到相应的种子文件，然后使用BT客户端软件进行下载。

下载时，BT客户端首先解析种子文件得到Tracker地址，然后连接Tracker服务器。Tracker服务器回应下载者的请求，提供下载者其他下载者（包括發布者）的IP。下载者再连接其他下载者，根据种子文件，两者分别告知对方自己已经有的块，然后交换对方所没有的数据。此时不需要其他服务器参与，分散了单个线路上的数据流量，因此减轻了服务器负担。

下载者每得到一个块，需要算出下载块的Hash验证码与种子文件中的对比，如果一样则说明块正确，不一样则需要重新下载这个块。这种规定是为了解决下载内容准确性的问题。

一般的HTTP/FTP下載，发布文件仅在某个或某几个服务器，下載的人太多，服务器的[带宽](../Page/带宽.md "wikilink")很易不勝負荷，變得很慢。而BitTorrent协议下载的特点是，下載的人越多，提供的带宽也越多，下載速度就越快。同时，拥有完整文件的用户也会越来越多，使文件的“寿命”不断延长。

为了解决某些用户“下完就跑”的现象，在非官方BitTorrent协议中还存在一种慢慢开放下载内容的[超级种子的](https://zh.wikipedia.org/wiki/超级种子 "wikilink")[算法](../Page/算法.md "wikilink")。

## DHT网络

目前，又发展出[DHT网络技术](https://zh.wikipedia.org/wiki/分布式散列表 "wikilink")，可以在无Tracker的情況下下载。

DHT全称为分布式-{zh-hans:哈希; zh-hant:雜湊;}-表（Distributed Hash Table），是一种分布式存储方法。在不需要服务器的情况下，每个客户端负责一个小范围的[路由](../Page/路由.md "wikilink")，并负责存储一小部分数据，从而实现整个DHT网络的寻址和存储。使用支持该技术的BT下载软件，用户无需连上Tracker就可以下载，因为软件会在DHT网络中寻找下载同一文件的其他用户并与之通讯，开始下载任务。

有些软件（如[比特精灵](../Page/比特精灵.md "wikilink")）还会自动通过DHT搜索种子资源，构成[种子市场](https://zh.wikipedia.org/wiki/种子市场 "wikilink")。

另外，这里使用的DHT算法叫[Kademlia](../Page/Kademlia.md "wikilink")（在[eMule中也有使用](https://zh.wikipedia.org/wiki/eMule "wikilink")，称为[Kad网络](https://zh.wikipedia.org/wiki/Kad网络 "wikilink")，具体实现协议有所不同）。

这种技术好处十分明显，就是大大减轻了Tracker的负担（甚至不需要）。用户之间可以更快速建立通讯（特别是与[Tracker连接不上的时候](https://zh.wikipedia.org/wiki/Tracker "wikilink")）。

## BT中相关概念

  - [Tracker](https://zh.wikipedia.org/wiki/Tracker "wikilink")：收集下载者信息的服务器，并将此信息提供给其他下载者，使下载者们相互连接起来，传输数据。
  - [种子](../Page/种子文件.md "wikilink")：指一个下载任务中所有文件都被某下载者完整的下载，此时下载者成为一个种子。发布者本身发布的文件就是原始种子。
  - 做种：发布者提供下载任务的全部内容的行为；下载者下载完成后继续提供给他人下载的行为。

## BitTorrent與自由軟件

BitTorrent對於大型文档和[自由軟件如](https://zh.wikipedia.org/wiki/自由軟件 "wikilink")[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")的發佈幫助很大。對於發佈數百[MiB以至數十](https://zh.wikipedia.org/wiki/MiB "wikilink")[GiB的檔案時](https://zh.wikipedia.org/wiki/GiB "wikilink")，如[Fedora](../Page/Fedora.md "wikilink")的[光碟镜像格式檔](https://zh.wikipedia.org/wiki/光碟镜像格式 "wikilink")，BitTorrent的使用能大大減低[伺服器的](https://zh.wikipedia.org/wiki/伺服器 "wikilink")[数据流量從而減低發佈的](https://zh.wikipedia.org/wiki/数据流量 "wikilink")[成本](../Page/成本.md "wikilink")。另外，一般有新版本軟件推出時，链接该服务器的人数必定非常庞大，使用BitTorrent也能大大減低繁忙時間伺服器的負擔。

## 历史

2002年，[布莱姆·科亨](../Page/布莱姆·科亨.md "wikilink")在[CodeCon初次露面](https://zh.wikipedia.org/wiki/CodeCon "wikilink")，發表首個BT軟件[BitTorrent](../Page/BitTorrent_\(软件\).md "wikilink")。它以[Python](../Page/Python.md "wikilink")寫成，以[MIT許可證](../Page/MIT許可證.md "wikilink")發布。

## 影响

以線上遊戲為例，有些線上遊戲的線上更新（如[魔獸世界](https://zh.wikipedia.org/wiki/魔獸世界 "wikilink")）就是採用BT的技術。所以當每次有改版時，動輒數百MiB的更新檔，透過遊戲廠商所提供的更新程式，以BT的方式進行下載分流。這為以往的其他種線上遊戲，每次重大改版就必須重新壓製光碟，或是等待單一下載點的下載方式，帶來另一種節省成本的經營模式。

BT下载方式目前引起社会的广泛讨论。利用BT免费发布版权内容肯定损害版权所有者的合法权益，但传播非收费性内容的好处有目共睹。争论的焦点是，是否应因此立法全面禁止BT，并且对从事BT下载的人作出惩罚。目前为止，[中国大陆](../Page/中国大陆.md "wikilink")和[西欧](../Page/西欧.md "wikilink")等地区的国家，对BT仍没有任何法律上的约束。不过2009年12月，[国家广播电影电视总局](../Page/国家广播电影电视总局.md "wikilink")曾大范围打击和封锁在中国的Tracker服务器，以BTChina为代表的一批知名Tracker服务器均因此停止服务。

在[香港](../Page/香港.md "wikilink")，[陳乃明](../Page/陳乃明.md "wikilink")因为发布[电影](../Page/电影.md "wikilink")的种子而被海关拘捕。2005年10月24日，香港司法機關裁定陳乃明的侵權罪成立，需要即時監禁三個月。香港工商貿易部門領導曾俊華與[海關關長湯顯明對今次裁決感到滿意](../Page/香港海關.md "wikilink")，並表示香港政府和業界將不容忍任何侵權行為的存在，同時政府亦會隨時與商人合作打擊侵權行為。香港海關再於2008年9月及2009年4月先後拘捕兩人，分別為一名27歲任職收銀員的女性及一名38歲無業的男性。他們都被懷疑以BT非法上載兩套外國電影而被捕，其中男疑犯涉及的電影為英國電影《[故園風雨後](../Page/故園風雨後_\(電影\).md "wikilink")》（Brideshead Revisited）及美國電視電影《[十級颶風](https://zh.wikipedia.org/wiki/十級颶風 "wikilink")》（NYC: Tornado Terror）。他們成為當局自2007年中啟用，24小時運作的「網線監察系統」（Lineament Monitoring System）以來首兩名被捕者，使香港因以BT非法上載而被捕人士的總數提升至三名。\[1\]\[2\]\[3\]。

而在[台灣](https://zh.wikipedia.org/wiki/台灣 "wikilink")，由於需受到美國[特別301报告報復的壓力](https://zh.wikipedia.org/wiki/特別301报告 "wikilink")，因此經常與[IFPI及](https://zh.wikipedia.org/wiki/IFPI "wikilink")[商業軟體聯盟](../Page/商業軟體聯盟.md "wikilink")（[BSA](https://zh.wikipedia.org/wiki/BSA "wikilink")）等商業版權組織合作查緝提供BT來源的網站及討論區，台灣論壇首度因為供應BT下載遭到被捕，卡提諾王國為全台灣最大的BT及違法分享的分享平台，也於不久後被法務部調查。

由於佔大部分的BT下載都是歌曲或影片，尤以後者為多。舉個例子，一集電視劇集的大小約200至300[MiB](../Page/Mebibyte.md "wikilink")，而電影則是幾百[MiB至幾](../Page/Mebibyte.md "wikilink")[GiB](https://zh.wikipedia.org/wiki/Gibibyte "wikilink")（1GiB=1024MiB），在以前沒有BT技術前，要下載這些類影片是頗困難和花時間的。因此BT的發展使互聯網用戶下載影片的數量大大增加。除了下載本地的歌曲影片外，用戶同時也能下載其他國家地區的歌曲影片，一些在其他國家播放的電視劇或綜藝節目，次日BT網站已能提供下載。所以BT的發展也促使互聯網用戶更加快地能接觸到其他國家的影視，而不需等待自己國家購買回來播放或出版[VCD](../Page/VCD.md "wikilink")/[DVD才能看](https://zh.wikipedia.org/wiki/DVD "wikilink")。這樣使用戶多了選擇，不需只跟隨本地電視台或電影院播映什麼，就只看什麼。同樣地，他們的[偶像也漸漸由本地化轉為國際化](https://zh.wikipedia.org/wiki/偶像 "wikilink")，以[大中华区為例](https://zh.wikipedia.org/wiki/大中华区 "wikilink")，年輕人追棒的偶像越來越多是來自其他國家，如[日本](../Page/日本.md "wikilink")、[韓國等](https://zh.wikipedia.org/wiki/韓國 "wikilink")。而這或多或少和他們能透過BT下載其電視電影，更快和更多地接觸外地資訊娛樂有關。

## 支持此协议的软件

## 相關條目

  - [BitTorrent协议规范](https://zh.wikipedia.org/wiki/BitTorrent协议规范 "wikilink")
  - [Bencode](../Page/Bencode.md "wikilink")
  - [PT下載](../Page/PT下載.md "wikilink")
  - [字幕組](../Page/字幕組.md "wikilink")

## 參考文獻

<div class="references-small">

<references/>

</div>

## 外部連結

  - [BT官方網站](http://bittorrent.com/)

  - [Official BitTorrent Specification](http://www.bittorrent.org/beps/bep_0003.html)

  - [BitTorrent非官方協議](http://wiki.theory.org/BitTorrentSpecification)

  -
  - [Interview with chief executive Ashwin Navin](https://web.archive.org/web/20061230021548/http://streaming.scmp.com/podcasting/upload/News_BitTorrent_june15.mp3)

  - [Unofficial BitTorrent Location-aware Protocol 1.0 Specification](http://wiki.theory.org/BitTorrent_Location-aware_Protocol_1.0_Specification) at wiki.theory.org

  - Michal Czerniawski, [Responsibility of Bittorrent Search Engines for Copyright Infringements](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=1540913), at [SSRN](https://zh.wikipedia.org/wiki/SSRN "wikilink")（December 2009）

  - [Under the hood of BitTorrent](http://www.stanford.edu/class/ee380/Abstracts/050216.html)—lecture given by BitTorrent protocol designer, Bram Cohen at [Stanford University](https://zh.wikipedia.org/wiki/Stanford_University "wikilink")（[video archive](https://web.archive.org/web/20120218161156/http://stanford-online.stanford.edu/courses/ee380/050216-ee380-100.asx)）。

  - [Tiny perl script to view contents inside torrent files](https://web.archive.org/web/20130510071407/http://wiki.gotux.net/downloads/btview)

  - [P2P極速下載誰最受傷？](http://blog.yam.com/BTnews/article/14420692)

  - [透視BT（一）——── BT的基本運作原理](https://web.archive.org/web/20071229091506/http://mmdays.com/2007/04/06/bt1/)

[Category:BitTorrent](https://zh.wikipedia.org/wiki/Category:BitTorrent "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")

1.
2.
3.