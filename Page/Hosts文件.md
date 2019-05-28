**hosts文件**（域名解析文件\[1\]）是一个用于储存[计算机网络中各节点信息的计算机文件](../Page/计算机网络.md "wikilink")。这个文件负责将[主機名稱映射到相应的](https://zh.wikipedia.org/wiki/主機名稱 "wikilink")[IP地址](../Page/IP地址.md "wikilink")。hosts文件通常用于补充或取代网络中[DNS的功能](https://zh.wikipedia.org/wiki/DNS "wikilink")。和DNS不同的是，计算机的使用者可以直接对hosts文件进行控制。

最初在[Internet的前身](https://zh.wikipedia.org/wiki/Internet "wikilink")[ARPANET中](../Page/ARPANET.md "wikilink")，其成员手动维护并分享了一个名为HOSTS.TXT的文件，其中就包括主机名称和对应地址。1983年[DNS系统开始开发](https://zh.wikipedia.org/wiki/DNS "wikilink")，1984年得到了发展。\[2\]在网络快速的发展过程中，DNS可以自动提供动态的主机名解析。不过在现代操作系统，hosts文件仍然是一个可以作为备用手段的名称解析机制。

## 历史

在[Internet的前身](https://zh.wikipedia.org/wiki/Internet "wikilink")[ARPANET中并没有对网络中各节点的地址使用DNS进行解析](../Page/ARPANET.md "wikilink")。由于当时对于这个用途并没有中心化的系统，每个网络节点都使用自有的网络节点地图，并指派相应的名称方便用户记忆，当时并没有任何系统来保证网络中的所有系统都用同样的名称表示，也没有方法来读取其他用户的hosts文件并自动复制。

ARPANET的规模较小，这样就也就允许了在很多情况使用hosts文件来命名一些事先约定的名称。其中典型的网络节点都有一个地址，并可能有多个名称。但是当个-{}-人网络不断庞大之后，对hosts文件进行管理的难度也越来越大。

## 文件位置及默认内容

hosts文件在不同[操作系统中的位置如下表所示](../Page/操作系统.md "wikilink")：

<table>
<thead>
<tr class="header">
<th><p>操作系统</p></th>
<th><p>版本</p></th>
<th><p>路径</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Unix" title="wikilink">Unix</a>、<a href="../Page/类Unix系统.md" title="wikilink">类Unix系统</a>（例如<a href="../Page/Linux.md" title="wikilink">Linux等</a>）</p></td>
<td></td>
<td><p><code>/etc/hosts</code></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Microsoft Windows</a></p></td>
<td><p><a href="../Page/Windows_3.x.md" title="wikilink">3.1</a></p></td>
<td><p><a href="../Page/环境变量.md" title="wikilink"><code>%WinDir%</code></a><code>\HOSTS</code></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_95.md" title="wikilink">95</a>、<a href="../Page/Windows_98.md" title="wikilink">98</a>、<a href="../Page/Windows_Me.md" title="wikilink">ME</a></p></td>
<td><p><code>%WinDir%\hosts</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Windows_NT.md" title="wikilink">NT</a>、<a href="../Page/Windows_2000.md" title="wikilink">2000</a>、<a href="../Page/Windows_XP.md" title="wikilink">XP</a>、<a href="../Page/Windows_Server_2003.md" title="wikilink">2003</a>、<a href="../Page/Windows_Vista.md" title="wikilink">Vista</a>、<br />
<a href="../Page/Windows_Server_2008.md" title="wikilink">2008</a>、<a href="https://zh.wikipedia.org/wiki/Windows_7" title="wikilink">7</a>、<a href="../Page/Windows_Server_2012.md" title="wikilink">2012</a>、<a href="https://zh.wikipedia.org/wiki/Windows_8" title="wikilink">8</a>、<a href="../Page/Windows_8.1.md" title="wikilink">8.1</a>、<a href="../Page/Windows_10.md" title="wikilink">10</a></p></td>
<td><p><code>%SystemRoot%\System32\drivers\etc\hosts</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Windows_Mobile.md" title="wikilink">Windows Mobile</a>、<a href="../Page/Windows_Phone.md" title="wikilink">Windows Phone</a></p></td>
<td></td>
<td><p><a href="../Page/注册表.md" title="wikilink">注册表项</a><code>HKEY_LOCAL_MACHINE\Comm\Tcpip\Hosts</code></p></td>
</tr>
<tr class="even">
<td><p>Apple <a href="https://zh.wikipedia.org/wiki/Macintosh" title="wikilink">Macintosh</a></p></td>
<td><p>9或更早版本</p></td>
<td><p><code>Preferences</code>或<code>System</code>目录中</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/OS_X" title="wikilink">Mac OS X</a> 10.0–10.1.5</p></td>
<td><p>通过<code>NetInfo</code>或<code>niload</code>设置</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/OS_X" title="wikilink">Mac OS X</a> 10.2和更新版本</p></td>
<td><p><code>/etc/hosts</code>（指向<code>/private/etc/hosts</code>的<a href="../Page/符号链接.md" title="wikilink">符号链接</a>）</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/NetWare" title="wikilink">Novell NetWare</a></p></td>
<td></td>
<td><p><code>SYS:etc\hosts</code></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/OS/2" title="wikilink">OS/2和</a><a href="https://zh.wikipedia.org/wiki/eComStation" title="wikilink">eComStation</a></p></td>
<td></td>
<td><p><code>"bootdrive":\mptn\etc\</code></p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Symbian" title="wikilink">Symbian</a></p></td>
<td><p>Symbian OS 6.1–9.0</p></td>
<td><p><code>C:\system\data\hosts</code></p></td>
</tr>
<tr class="even">
<td><p>Symbian OS 9.1+</p></td>
<td><p><code>C:\private\10000882\hosts</code></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>NetStack</p></td>
<td><p><code>ENVARC:sys/net/hosts</code></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/AmigaOS.md" title="wikilink">AmigaOS</a></p></td>
<td><p>4</p></td>
<td><p><code>DEVS:Internet/hosts</code></p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><p><code>ENVARC:AROSTCP/db/hosts</code></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/Android.md" title="wikilink">Android</a></p></td>
<td></td>
<td><p><code>/etc/hosts</code>（指向<code>/system/etc/hosts</code>的<a href="../Page/符号链接.md" title="wikilink">符号链接</a>)</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iOS" title="wikilink">iOS</a></p></td>
<td><p>iOS 2.0和更新版本</p></td>
<td><p><code>/etc/hosts</code>（指向<code>/private/etc/hosts</code>的<a href="../Page/符号链接.md" title="wikilink">符号链接</a>)</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p><SYSTEM><code>HOSTS.TXT</code></p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Plan_9" title="wikilink">Plan 9</a></p></td>
<td></td>
<td><p><code>/lib/ndb/hosts</code></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/BeOS.md" title="wikilink">BeOS</a></p></td>
<td></td>
<td><p><code>/boot/beos/etc/hosts</code></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Haiku.md" title="wikilink">Haiku</a></p></td>
<td></td>
<td><p><code>/boot/common/settings/network/hosts</code></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/OpenVMS" title="wikilink">OpenVMS</a></p></td>
<td><p>UCX</p></td>
<td><p><code>UCX$HOST</code></p></td>
</tr>
<tr class="odd">
<td></td>
<td><p><code>TCPIP$HOST</code></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/RISC_OS.md" title="wikilink">RISC OS</a></p></td>
<td><p>3.7, 5</p></td>
<td><p><code>!Boot.Resources.!Internet.files.Hosts</code></p></td>
</tr>
<tr class="odd">
<td><p>later boot sequence</p></td>
<td><p><code>!Boot.Choices.Hardware.Disabled.Internet.Files.Hosts</code>（RISC OS 6.14）</p></td>
<td></td>
</tr>
</tbody>
</table>

在Windows中，默认的hosts文件通常是空白的或包含了[注释语句并使用了一条默认规则](https://zh.wikipedia.org/wiki/注释语句 "wikilink")：

`127.0.0.1       localhost`
`::1             localhost`

## 格式差异

hosts文件在不同的操作系统中格式有所不同，不可直接复制使用。\[3\]

例如，在[Windows和](https://zh.wikipedia.org/wiki/Windows "wikilink")[macOS下](https://zh.wikipedia.org/wiki/macOS "wikilink")，hosts文件采用的换行方式为“”，而[Linux以及](../Page/Linux.md "wikilink")[Android的换行方式则为](../Page/Android.md "wikilink")“”，将hosts文件转换为对应平台的换行方式后才能发挥作用。

## hosts文件的其它用途

hosts文件也可以用于其它情况，例如可以将已知的广告服务器重定向到无广告的机器（通常是該電腦自身的IP地址：[127.0.0.1](../Page/Localhost.md "wikilink")）上来过滤[广告](../Page/网络广告.md "wikilink")。同时也可以通过不下载网络广告，从而减少带宽。使用hosts文件还可以减少对DNS服务器的访问来加快访问速度并减少带宽消耗。

hosts文件的另一个重要用途就是用于拦截一些恶意网站的请求，从而防止访问欺诈网站或感染一些[病毒或](../Page/计算机病毒.md "wikilink")[恶意软件](../Page/恶意软件.md "wikilink")。但同时，这个文件也可能被病毒或恶意软件所利用来阻止用户更新杀毒软件或访问特定网站。

在中国大陆，由于[防火长城的](../Page/防火长城.md "wikilink")[DNS劫持](../Page/域名服务器缓存污染.md "wikilink")，有一些网民也借使用hosts文件来强制将特定网站指定到未封鎖的IP上。但自2018年8月24日起，[防火长城开始启用基于](../Page/防火长城.md "wikilink")[SNI检测和](../Page/服务器名称指示.md "wikilink")[TCP连接重置的手段进行封锁](https://zh.wikipedia.org/wiki/连接重置 "wikilink")。所以修改Hosts绕过封锁的方法，绝大多数网站不再完全适用。

## 参见

  - [AdBlock](../Page/AdBlock.md "wikilink")

  - [ARPANET](../Page/ARPANET.md "wikilink")

  - [计算机病毒](../Page/计算机病毒.md "wikilink")

  - [DNS](https://zh.wikipedia.org/wiki/DNS "wikilink")

  -
  - [恶意软件](../Page/恶意软件.md "wikilink")

  - [间谍软件](../Page/间谍软件.md "wikilink")

  - [TCP/IP协议](https://zh.wikipedia.org/wiki/TCP/IP协议 "wikilink")

  - [特洛伊木马 (电脑)](../Page/特洛伊木马_\(电脑\).md "wikilink")

  - [类Unix系统](../Page/类Unix系统.md "wikilink")

  - [Microsoft
    Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")

  - [Services文件](../Page/Services_\(网络服务配置文件\).md "wikilink")

## 参考文献及注释

## 外部链接

  - [Why Should You Wait for Internet
    Propagation?](http://www.hackernotcracker.com/2007-01/why-should-you-wait-for-internet-propagation.html)
    – hosts的另一个用途

  - [Using a hosts file to remove ads without getting broken
    images](http://cubicspot.blogspot.com/2006/02/eliminating-web-advertisements.html)
    - 使用hosts文件来更方便地浏览网站

  - [一个示例文件](http://vlaurie.com/computers2/Articles/hosts.htm)

  - [修改Hosts，让您的谷歌跑起来](https://web.archive.org/web/20170713170700/https://blog.my-eclipse.cn/host-google.html)（https://web.archive.org/web/20160707075904/http://blog.my-eclipse.cn/hosts.txt
    2016年更新），包含了几乎所有被封锁网站的hosts，包括维基百科的所有项目。

### 自定义hosts文件

  - [Most Valuable Professional (MVP)
    site](http://www.mvps.org/winhelp2002/hosts.htm) 每月更新的自定义HOSTS文件

  - [Dan Pollock's hosts file](http://someonewhocares.org/hosts/)
    几乎每天更新的hosts文件

  - [HPHosts](http://www.hosts-file.net/?s=Download) – 用于广告拦截的hosts文件

  - [The Security Now\! podcast page on the hosts
    file](http://www.grc.com/sn/notes-045.htm)

  - [Mikes Ad-Blocking hosts
    file](http://www.everythingisnt.com/hosts.html) – 可直接下载合并或使用安装程序

  - [SCoooBY’s Hosts
    File](https://web.archive.org/web/20080211182439/http://members.dialmaine.com/drdole/#hosts)
    – 较大的广告服务器列表

  - [Ad Blocking Lists](http://pgl.yoyo.org/adservers/index.php) – Peter
    Lowe的列表

  - [Airelle Lists](http://rlwpx.free.fr/WPFF/hosts.htm) –
    超过500,000个网站的Hosts文件黑名单

  - [lennylxx](https://github.com/lennylxx/ipv6-hosts) – 中国大陆IPV6版的
    hosts 文件（一般适用于[教育网](https://zh.wikipedia.org/wiki/教育网 "wikilink")）

  - [vokins](https://github.com/vokins/yhosts) – 中国大陆屏蔽常见广告的 hosts 文件

  - [googlehosts](https://github.com/googlehosts/hosts/blob/master/hosts-files/hosts)
    – 中国大陆IPv4版的hosts文件

### 管理hosts的应用程序

  - \[//code.google.com/p/hostsx/ HostsX\] – 记事本风格、支持自动更新 Hosts 文件的免费软件

  - [Abelhadigital's
    HostsMan 3.1.55](http://hostsman.abelhadigital.com/) –
    可自动更新hosts文件的免费软件

  - [Kimberly's Hosts
    Manager](https://web.archive.org/web/20080412085655/http://www.bluetack.co.uk/forums/index.php?act=dscript&CODE=showdetails&f_id=5)
    – 管理hosts文件的免费软件

  - [Funkytoad's HostsXpert
    v4.0](https://web.archive.org/web/20080304164846/http://www.funkytoad.com/content/view/13/31/)
    – 用于排列并整理hosts文件的免费软件

  - [Mike Meyer's
    HostsToggle 2.1](http://www.accs-net.com/hosts/HostsToggle/) –
    开放源代码的hosts文件工具

  - [KH
    Blocker](https://web.archive.org/web/20080211182612/http://www.khempire.co.uk/)
    – 管理广告拦截的hosts文件管理器

  - [Ray Marron's Hostess](http://www.raymarron.com/hostess/) –
    免费的hosts文件管理器

[Category:域名](https://zh.wikipedia.org/wiki/Category:域名 "wikilink")
[Category:配置文件](https://zh.wikipedia.org/wiki/Category:配置文件 "wikilink")

1.
2.
3.