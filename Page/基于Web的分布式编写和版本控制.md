**基于Web的分布式编写和版本控制**（）是[超文本传输协议](../Page/超文本传输协议.md "wikilink")（HTTP）的扩展，有利于用户间协同编辑和管理存储在[万维网服务器文档](../Page/万维网.md "wikilink")。WebDAV由[互联网工程任务组的工作组在](../Page/互联网工程任务组.md "wikilink")中定义。

WebDAV协议为用户在[服务器上创建](../Page/服务器.md "wikilink")，更改和移动文档提供了一个框架。WebDAV协议最重要的功能包括维护作者或修改日期的属性、[命名空间管理](../Page/命名空间.md "wikilink")、集合和覆盖保护。维护属性包括创建、删除和查询文件信息等。**命名空间管理**处理在服务器名称空间内复制和移动网页的能力。**集合**（）处理各种资源的创建、删除和列举。**覆盖保护**处理与锁定文件相关的方面。

许多现代[操作系统为WebDAV提供了内置的客户端支持](../Page/操作系统.md "wikilink")。

## 历史

WebDAV始于1996年，当时[加州大學爾灣分校博士毕业生](../Page/加州大學爾灣分校.md "wikilink")[Jim
Whitehead与](../Page/Jim_Whitehead_\(professor\).md "wikilink")[W3C共同主办了两场会议](../Page/万维网联盟.md "wikilink")，与感兴趣的人讨论万维网上的分布式创作问题。\[1\]\[2\]
[蒂姆·伯纳斯-李对网络的最初看法是涉及阅读和写作的](../Page/蒂姆·伯纳斯-李.md "wikilink")[媒介](../Page/儲存裝置.md "wikilink")。事实上，Berners
Lee的第一个[Web浏览器](../Page/网页浏览器.md "wikilink")（[WorldWideWeb](../Page/WorldWideWeb.md "wikilink")），可以查看和编辑[網頁](../Page/網頁.md "wikilink")；但是，随着网络的成长，对大多数用户来说成为了只读媒介。怀特黑德和其他志同道合的人想超越这个限制。\[3\]

W3C会议决定成立一个[IETF工作组](../Page/互联网工程任务组.md "wikilink")，因为新的工作将导致对[HTTP进行扩展](../Page/超文本传输协议.md "wikilink")，而当时IETF已经开始对HTTP进行标准化。

随着协议的工作开始，很明显，同时处理分布式创作和[版本控制将涉及太多的工作](../Page/版本控制.md "wikilink")，并且任务将不得不分开。WebDAV小组专注于分布式创作，将版本控制留作以后研究。(The
[Delta-V extension](../Page/Delta-V_extension.md "wikilink") added
versioning later see the Extensions section below.)

在（IESG）接受的增量更新之后，WebDAV工作组在2007年3月结束了其工作。当时还没有完成的其他扩展，比如，已经由其独立作者独立于正式工作组完成。

## 实现

WebDAV扩展了[request方法所允许的标准HTTP谓词和HTTP头](../Page/超文本传输协议#请求信息.md "wikilink")。增加的谓词包括：

  - COPY
    将资源从一个[URI复制到另一个URI](../Page/统一资源标志符.md "wikilink")
  - LOCK
    [锁定一个资源](../Page/锁_\(计算机科学\).md "wikilink")。WebDAV支持共享锁和互斥锁。
  - MKCOL
    创建集合（即[目录](../Page/目录_\(文件系统\).md "wikilink")）
  - MOVE
    将资源从一个[URI移动到另一个URI](../Page/统一资源标志符.md "wikilink")
  - PROPFIND
    从中检索以[XML格式存储的属性](../Page/XML.md "wikilink")。它也被[重载](../Page/函数重载.md "wikilink")，以允许一个检索远程系统的集合结构（也叫目录层次结构）。
  - PROPPATCH
    在单个中更改和删除资源的多个属性
  - UNLOCK
    解除资源的锁定

### 服务器支持

  - [Apache HTTP
    Server提供基于](../Page/Apache_HTTP_Server.md "wikilink")[davfs和](../Page/davfs.md "wikilink")[Apache
    Subversion (svn)的WebDAV模块](../Page/Subversion.md "wikilink")。
  - [微软的](../Page/微软.md "wikilink")[IIS也有WebDAV模块](../Page/網際網路資訊服務.md "wikilink")。
  - [Nginx有非常有限的可选WebDav模块](../Page/Nginx.md "wikilink")\[4\]和第三方模块\[5\]
  - [SabreDAV是一个PHP应用程序](../Page/SabreDAV.md "wikilink")，可以在Apache或Nginx上使用，代替它们的捆绑模块
  - [Nextcloud是一个云存储PHP应用程序](../Page/Nextcloud.md "wikilink")，它提供了完整的WebDAV支持\[6\]
  - [lighttpd有一个可选的WebDav模块](../Page/lighttpd.md "wikilink")\[7\]

### 客户端支持

  - [Git支持写入HTTP远端](../Page/Git.md "wikilink")，尽管需要特殊服务器支持的HTTP的“智能”Git协议已经成为WebDAV的首选协议

  - [Linux通过](../Page/Linux.md "wikilink")[GVfs](../Page/GVfs.md "wikilink")（包括[GNOME文件](../Page/Nautilus檔案瀏覽器.md "wikilink")）或通过[KIO](../Page/KIO.md "wikilink")（包括[Konqueror和](../Page/Konqueror.md "wikilink")[Dolphin](../Page/Dolphin_\(軟體\).md "wikilink")）支持WebDAV

  - [macOS对](../Page/macOS.md "wikilink")[CalDAV和](../Page/CalDAV.md "wikilink")[CardDAV有原生支持](../Page/CardDAV.md "wikilink")，其设计基于WebDAV

  - [Microsoft
    Windows](../Page/Microsoft_Windows.md "wikilink")，其[Explorer有原生支持](../Page/檔案總管.md "wikilink")

  - [Microsoft Office](../Page/Microsoft_Office.md "wikilink")

  -
## 参见

  - [內容管理](../Page/內容管理.md "wikilink")
  - [集群文件系统](../Page/集群文件系统.md "wikilink")

## 参考文献

## 外部链接

  - [WebDAV
    Resources](https://web.archive.org/web/20120626092812/http://webdav.org/)
  - [Davfs2 project](http://savannah.nongnu.org/projects/davfs2)
  - [Fusedav project](http://0pointer.de/lennart/projects/fusedav)
  - [WebDAV Apache
    modules](http://httpd.apache.org/docs/2.4/mod/mod_dav.html)
  - [WebDAV Drive Mapping
    Tool](https://www.drivehq.com/help/features/webdav.aspx)

[Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink")
[Category:W3C标准](https://zh.wikipedia.org/wiki/Category:W3C标准 "wikilink")
[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")
[Category:协作软件](https://zh.wikipedia.org/wiki/Category:协作软件 "wikilink")
[Category:网络文件系统](https://zh.wikipedia.org/wiki/Category:网络文件系统 "wikilink")

1.
2.
3.
4.
5.
6.
7.