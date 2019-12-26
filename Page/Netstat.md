**`netstat`**是一个基于[命令行界面](../Page/命令行界面.md "wikilink")的[网络](../Page/计算机网络.md "wikilink")[实用工具](../Page/实用程序.md "wikilink")，可显示当前的网络状态，包括[传输控制协议](../Page/传输控制协议.md "wikilink")层的连线状况、[路由表](../Page/路由表.md "wikilink")、[网络接口状态和](https://zh.wikipedia.org/wiki/网络接口 "wikilink")[网络协议的统计信息等](https://zh.wikipedia.org/wiki/网络协议 "wikilink")。\[1\]`netstat`命令适用于[类Unix系统](../Page/类Unix系统.md "wikilink")（如[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")、[Linux](../Page/Linux.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")和[BSD](../Page/BSD.md "wikilink")）、[IBM OS/2和](https://zh.wikipedia.org/wiki/IBM_OS/2 "wikilink")[Windows NT操作系统家族](../Page/Windows_NT.md "wikilink")（如[Windows XP](../Page/Windows_XP.md "wikilink")、[Windows Vista](../Page/Windows_Vista.md "wikilink")、[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Windows 8和](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")[Windows 10](../Page/Windows_10.md "wikilink")）。\[2\]\[3\]

`netstat`可用于查找网络中的问题，并可通过计算[网络流量来度量网络性能](https://zh.wikipedia.org/wiki/网络流量 "wikilink")。\[4\]\[5\]尽管该工具仍然被包含在许多[Linux发行版](../Page/Linux发行版.md "wikilink")中，但基本都被看作过时、应被替代的工具。\[6\]\[7\]\[8\]\[9\]

在[Linux](../Page/Linux.md "wikilink")上，推荐使用`ss`替代`netstat`，使用`ip route`替代`netstat -r`，使用`ip -s link`替代`netstat -i`，使用`ip maddr`替代`netstat -g`。\[10\]\[11\]\[12\]\[13\]

## 命令参数

命令`netstat`的[参数必须以](../Page/參數_\(程式設計\).md "wikilink")[连字符](https://zh.wikipedia.org/wiki/连字符 "wikilink")（-）而非[斜杠](https://zh.wikipedia.org/wiki/斜杠 "wikilink")（/）为前缀。并非所有平台都支持某些参数。\[14\]

<table>
<thead>
<tr class="header">
<th><p>参数</p></th>
<th><p>描述</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Windows</a>[15][16]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/ReactOS" title="wikilink">ReactOS</a>[17]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/macOS" title="wikilink">macOS</a>[18][19][20]</p></th>
<th><p><a href="../Page/BSD.md" title="wikilink">BSD</a>[21]</p></th>
<th><p><a href="../Page/NetBSD.md" title="wikilink">NetBSD</a>[22][23]</p></th>
<th><p><a href="../Page/FreeBSD.md" title="wikilink">FreeBSD</a>[24]</p></th>
<th><p><a href="../Page/Linux.md" title="wikilink">Linux</a>[25][26][27]</p></th>
<th><p><a href="../Page/Solaris.md" title="wikilink">Solaris</a>[28]</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/OS/2" title="wikilink">OS/2</a>[29][30]</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>-a</strong></p></td>
<td><p>显示所有活动中的网络连接和<a href="https://zh.wikipedia.org/wiki/电脑" title="wikilink">电脑正在监听的</a><a href="https://zh.wikipedia.org/wiki/TCP/UDP端口列表" title="wikilink">TCP/UDP端口</a>。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-b</strong></p></td>
<td><p>显示每个应用程序所使用的网络连接和监听<a href="../Page/通訊埠.md" title="wikilink">端口</a> 。（仅适用于<a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a>、<a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003或更高版本的</a><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Microsoft Windows操作系统</a>，<a href="../Page/Windows_2000.md" title="wikilink">Windows 2000或更早版本不可用</a>。）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-b</strong></p></td>
<td><p>同<strong>-i</strong>，但计算<a href="https://zh.wikipedia.org/wiki/网络流量" title="wikilink">网络流量的总</a><a href="../Page/字节.md" title="wikilink">字节</a>数。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-e</strong></p></td>
<td><p>显示<a href="../Page/以太网.md" title="wikilink">以太网</a>统计信息，例如发送和接收的字节数及<a href="https://zh.wikipedia.org/wiki/数据包" title="wikilink">数据包数</a>。此参数可以与<strong>-s</strong>组合使用。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-f</strong></p></td>
<td><p>显示外部地址的<a href="https://zh.wikipedia.org/wiki/完整网域名称" title="wikilink">完整网域名称</a>。（仅适用于<a href="../Page/Windows_Vista.md" title="wikilink">Windows Vista和更高版本的</a><a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Microsoft Windows操作系统</a>。）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-f</strong></p></td>
<td><p>限定显示使用特定<a href="https://zh.wikipedia.org/wiki/套接字" title="wikilink">套接字</a>（unix、inet、inet6）的地址族。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-g</strong></p></td>
<td><p>显示<a href="https://zh.wikipedia.org/wiki/多播#IP多播" title="wikilink">多播组信息</a>。（可能仅适用于较新的<a href="../Page/操作系统.md" title="wikilink">操作系统</a>。）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-i</strong></p></td>
<td><p>显示<a href="https://zh.wikipedia.org/wiki/网络接口" title="wikilink">网络接口及统计信息</a>。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-m</strong></p></td>
<td><p>显示<a href="../Page/随机存取存储器.md" title="wikilink">随机存取存储器</a>统计信息。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-n</strong></p></td>
<td><p>显示活动中的<a href="../Page/传输控制协议.md" title="wikilink">TCP连接</a>，但主机地址和<a href="../Page/通訊埠.md" title="wikilink">端口号以数字形式表示</a>，不会尝试确定实际主机名。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-o</strong></p></td>
<td><p>显示活动中的TCP连接，并包含每个连接的<a href="../Page/进程ID.md" title="wikilink">进程ID</a>（）。根据PID，可在<a href="../Page/任务管理器_(Windows元件).md" title="wikilink">Windows任务管理器的</a>“进程”选项卡中找到该应用程序。此参数可以与<strong>-a</strong>、<strong>-n</strong>和<strong>-p</strong>组合使用。如果安装了Windows修补程序，则此参数在<a href="../Page/Windows_XP.md" title="wikilink">Windows XP</a>、<a href="../Page/Windows_Server_2003.md" title="wikilink">Windows Server 2003和</a><a href="../Page/Windows_2000.md" title="wikilink">Windows 2000上可用</a>。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-p</strong></p></td>
<td><p>显示使用指定<a href="https://zh.wikipedia.org/wiki/网络协议" title="wikilink">网络协议的连接</a>。协议可以是TCP、UDP、TCPv6或UDPv6。如果此参数与<strong>-s</strong>组合使用，则协议可以是TCP、UDP、ICMP、IP、TCPv6、UDPv6、ICMPv6或IPv6。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-p</strong></p></td>
<td><p>显示哪些进程正在使用哪些网络接口，类似于<a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Microsoft Windows下的</a><strong>-b</strong>。（需要<a href="https://zh.wikipedia.org/wiki/root权限" title="wikilink">root权限才能执行此操作</a>。）</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-P</strong></p></td>
<td><p>显示使用指定<a href="https://zh.wikipedia.org/wiki/网络协议" title="wikilink">网络协议的连接</a>。协议可以是IP、IPv6、ICMP、ICMPv6、IGMP、UDP、TCP或RawIP。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-r</strong></p></td>
<td><p>显示<a href="../Page/路由表.md" title="wikilink">路由表</a>内容，与<a href="https://zh.wikipedia.org/wiki/Microsoft_Windows" title="wikilink">Microsoft Windows下</a><code>route print</code>命令相同。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-s</strong></p></td>
<td><p>按网络协议显示统计信息。默认情况下，显示TCP、UDP、ICMP和IP协议的统计信息。如果<a href="../Page/Windows_XP.md" title="wikilink">Windows XP安装了IPv</a>6协议，亦可以显示TCPv6、UDPv6、ICMPv6和IPv6协议的统计信息。<strong>-p</strong>参数可用于指定一组协议。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-t</strong></p></td>
<td><p>仅显示TCP连接。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-u</strong></p></td>
<td><p>仅显示UDP连接。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-W</strong></p></td>
<td><p>显示完整<a href="https://zh.wikipedia.org/wiki/主机名" title="wikilink">主机名或IPv</a>6地址。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-v</strong></p></td>
<td><p>与<strong>-b</strong>组合使用时，将显示所有应用程序使用的网络连接和监听<a href="../Page/通訊埠.md" title="wikilink">端口所涉及的组件列表</a>。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>-h</strong></p></td>
<td><p>显示该命令的提示。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>-?</strong></p></td>
<td><p>显示该命令的提示。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>/?</strong></p></td>
<td><p>显示该命令的提示。</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 统计信息

  - ：[网络协议](https://zh.wikipedia.org/wiki/网络协议 "wikilink")，包括[传输控制协议](../Page/传输控制协议.md "wikilink")（）和[用户数据报协议](../Page/用户数据报协议.md "wikilink")（）。\[31\]

  - ：本地计算机的[IP地址](../Page/IP地址.md "wikilink")和正在使用的[端口号](https://zh.wikipedia.org/wiki/通讯埠 "wikilink")。除非使用**-n**参数，否则将显示与IP地址和端口对应的[主机名称](https://zh.wikipedia.org/wiki/主机名称 "wikilink")。如果主机正在侦听所有端口，则主机名显示为[星号](https://zh.wikipedia.org/wiki/星号 "wikilink")（\*）。如果端口尚未建立，则端口号显示为星号。\[32\]

  - ：远程计算机的IP地址和正在使用的端口号。除非指定了**-n**参数，否则将显示与IP地址和端口对应的主机名称。如果端口尚未建立，则端口号显示为星号（\*）。\[33\]

  - ：TCP连接的状态，可能的状态包括、、、、、、、、和。\[34\]

## 命令范例

要仅显示TCP或UDP协议的统计信息，请键入以下命令之一\[35\]：

> `netstat -sp tcp`

> `netstat -sp udp`

[类Unix系统](../Page/类Unix系统.md "wikilink")\[36\]\[37\]\[38\]\[39\]\[40\]：

  -
    显示[进程ID](../Page/进程ID.md "wikilink")为“pid”的进程打开的所有端口：

> `netstat -aop | grep "pid"`

  -
    持续更新活动中的TCP和UDP连接，但主机地址和端口号以数字形式表示，并显示哪些进程正在使用这些连接：

> `sudo netstat -nutpacw`

[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")\[41\]：

  -
    显示活动的TCP连接和关联的进程ID，每5秒为一个更新周期（仅适用于基于[Windows NT的操作系统或装有修补程序的](../Page/Windows_NT.md "wikilink")[Windows 2000](../Page/Windows_2000.md "wikilink")）：

> `netstat -o 5`

  -
    显示活动中的TCP连接和关联的进程ID，但主机地址和端口号以数字形式表示（仅适用于基于Windows NT的操作系统或装有修补程序的Windows 2000）：

> `netstat -no`

## 应用（类UNIX系统）

| 命令                           | 说明\[42\]\[43\]                                                                               |
| ---------------------------- | -------------------------------------------------------------------------------------------- |
| `netstat -a`                 | 显示所有端口（无论被监听或不被监听）、所有网络协议的连接。                                                                |
| `netstat -at`                | 仅显示TCP连接。                                                                                    |
| `netstat -au`                | 仅显示UDP连接。                                                                                    |
| `netstat -ant`               | 显示所有TCP连接，但不进行[域名解析](https://zh.wikipedia.org/wiki/域名系统#域名解析 "wikilink")（即显示IP地址而不显示主机名）。    |
| `netstat -al`                | 显示所有被监听的端口。                                                                                  |
| `sudo netstat -aep`          | 同时显示每个端口相关的进程和进程ID（需要[root权限以运行此命令](https://zh.wikipedia.org/wiki/root权限 "wikilink")）。       |
| `netstat -s > wiki.txt`      | 输出当前计算机网络统计信息到文本文件`wiki.txt`。                                                                |
| `netstat -r`                 | 显示路由表。与`route -e`的输出结果相同。                                                                    |
| `netstat -i`                 | 显示所有[网络接口](https://zh.wikipedia.org/wiki/网络接口 "wikilink")。`netstat -i -e`与`ipconfig`的输出结果类似。 |
| `netstat -ct`                | 显示TCP连接（持续更新）。                                                                               |
| `netstat -g`                 | 显示[多播组信息](https://zh.wikipedia.org/wiki/多播#IP多播 "wikilink")。                                 |
| `netstat -lntu`              | 显示所有监听端口的[守护进程](../Page/守护进程.md "wikilink")和本地计算机上所有空闲的开放端口。                                 |
| `netstat -atnp \| grep ESTA` | 显示所有状态为的TCP连接。                                                                               |
|                              |                                                                                              |

### 通配符

在`netstat`命令的输出结果中，[星号](https://zh.wikipedia.org/wiki/星号 "wikilink")（\*）为通配符，表示“所有”。\[44\]\[45\]

例如：

``` bash
....Local Address Foreign Address State
... *:smtp          *:*   LISTEN
```

在输出结果中，`*:smtp`表示该进程正在本地计算机的所有[网络接口上监听所有](https://zh.wikipedia.org/wiki/网络接口 "wikilink")[映射为](https://zh.wikipedia.org/wiki/端口映射 "wikilink")[SMTP的端口](https://zh.wikipedia.org/wiki/SMTP "wikilink")，此处的星号有时会被代替，意义不改变。`*:*`中的第一个星号表示连接可以来自任何[IP地址](../Page/IP地址.md "wikilink")，第二个星号表示连接可以来自远程计算机上的任何端口。\[46\]\[47\]\[48\]\[49\]

## 参考文献

## 外部連結

  -
  -
  -
{{-}}

[Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink") [Category:Windows命令](https://zh.wikipedia.org/wiki/Category:Windows命令 "wikilink") [Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink") [Category:Windows通信和服务](https://zh.wikipedia.org/wiki/Category:Windows通信和服务 "wikilink") [Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink") [Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")

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
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
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
47.
48.
49.