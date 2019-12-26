**Zen 2** 是[AMD的](https://zh.wikipedia.org/wiki/AMD "wikilink")[Zen](../Page/AMD_Zen.md "wikilink") 和 [Zen+](https://zh.wikipedia.org/wiki/Zen+ "wikilink") [微架构的下一代微架构的代号](https://zh.wikipedia.org/wiki/微架构 "wikilink") ，使用[TSMC](https://zh.wikipedia.org/wiki/TSMC "wikilink")7nm制程制造 ，作为第三代Ryzen处理器(Ryzen3xxx）的微结构。Zen2 计划于2018年末采样, 2019年7月正式发布。\[1\]\[2\] 在[2019Computex台北电脑展](https://zh.wikipedia.org/wiki/Computex "wikilink"), AMD 2019年7月7日正式发布（桌面平台）。\[3\]

Zen 2 计划从硬件根本上修复[Spectre 安全漏洞](../Page/幽灵漏洞.md "wikilink").\[4\] 基于 Zen 2 EPYC 服务器处理器(代号 "Rome") 使用了多处理器[裸晶](../Page/裸晶.md "wikilink")（die）设计 (最多8个) 。在每个 [多芯片模组](https://zh.wikipedia.org/wiki/多芯片模组 "wikilink") 封装中，处理器[裸晶](../Page/裸晶.md "wikilink")（die）使用7nm制程制造，I/O[裸晶](../Page/裸晶.md "wikilink")（die）使用12nm（桌面）或14nm（服务器）制程制造。通过这样设计,理论上至多64个物理核心128个线程 ([超线程](https://zh.wikipedia.org/wiki/simultaneous_multithreading "wikilink"))可以在单个socket上实现。\[5\] 在 2019 CES, AMD展示了第三代 Ryzen 工程预览处理器，单个裸晶块（[Chiplet](https://zh.wikipedia.org/wiki/Chiplet "wikilink")）包含了8个核心 16线程 \[6\] 。[苏姿丰](https://zh.wikipedia.org/wiki/苏姿丰 "wikilink") 曾说希望在最终的裸晶块([Chiplet](https://zh.wikipedia.org/wiki/Chiplet "wikilink")）中超过8个核心.\[7\] 在 [Computex台北电脑展](https://zh.wikipedia.org/wiki/Computex "wikilink") 2019，AMD透露 ''' Zen 2 '''桌面平台（Matisse）的单个裸晶块最高将有12核心，而在 E3 2019 中又宣称将会有16核心。\[8\]\[9\]

## 架构设计

  - 改用 256bit Single-Op 浮點單元
  - μOps Cache 容量倍增至 4096 byte
  - 全新的 TAGE 預測分支設計
  - 增至 3 組 AGU 單元
  - 增加 Load/Store Bandwidth
  - L3 Cache 容量提升 1 倍
  - 改良 Fetch 及 Pre-Fetch 能力
  - 改良 ALU 及 AGU Schedulers
  - 增加 Register File 容量
  - IMC 控制器改良、提升至 DDR4-3200+

## 处理器列表

2019年5月26日,AMD 宣布了6款 Zen 2 桌面处理器，包括： 6核 Ryzen 5 和 8核 Ryzen 7 产品线，以及新产品线第一条12核和16核 Ryzen 9 主流桌面处理器。 2019年8月8日，AMD第二代[EPYC处理器](https://zh.wikipedia.org/wiki/EPYC "wikilink") （Rome）发布。

### 桌面平台

<table>
<thead>
<tr class="header">
<th><p>型号</p></th>
<th><p>发布时间 价格</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/核心" title="wikilink">核心</a>(<a href="../Page/线程.md" title="wikilink">线程</a>)</p></th>
<th><p><a href="../Page/时钟频率.md" title="wikilink">时钟频率</a> (单位:GHz)</p></th>
<th><p><a href="../Page/缓存.md" title="wikilink">缓存</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/CPU_socket" title="wikilink">接口</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/PCIe" title="wikilink">PCIelanes</a></p></th>
<th><p>内存支持</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/TDP" title="wikilink">TDP</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基础</p></td>
<td><p>最大</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/L1缓存" title="wikilink">L1</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/L2缓存" title="wikilink">L2</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/L3缓存" title="wikilink">L3</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>主流</p></td>
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
<td><p>Ryzen 5 3600</p></td>
<td><p>July 7, 2019<br />
US $199</p></td>
<td><p>6 (12)</p></td>
<td><p>3.6</p></td>
<td><p>4.2</p></td>
<td><p>64 KiB<br />
per core</p></td>
<td><p>512 KiB<br />
per core</p></td>
<td><p>32 MiB</p></td>
<td><p><a href="../Page/Socket_AM4.md" title="wikilink">AM4</a></p></td>
</tr>
<tr class="even">
<td><p>Ryzen 5 3600X</p></td>
<td><p>July 7, 2019<br />
US $249</p></td>
<td><p>3.8</p></td>
<td><p>4.4</p></td>
<td><p>95 W</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>性能</p></td>
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
<td><p>Ryzen 7 3700X</p></td>
<td><p>July 7, 2019<br />
US $329</p></td>
<td><p>8 (16)</p></td>
<td><p>3.6</p></td>
<td><p>4.4</p></td>
<td><p>64 KiB<br />
per core</p></td>
<td><p>512 KiB<br />
per core</p></td>
<td><p>32 MiB</p></td>
<td><p><a href="../Page/Socket_AM4.md" title="wikilink">AM4</a></p></td>
</tr>
<tr class="odd">
<td><p>Ryzen 7 3800X</p></td>
<td><p>July 7, 2019<br />
US $399</p></td>
<td><p>3.9</p></td>
<td><p>4.5</p></td>
<td><p>105 W</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>发烧</p></td>
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
<td><p>Ryzen 9 3900X</p></td>
<td><p>July 7, 2019<br />
US $499</p></td>
<td><p>12 (24)</p></td>
<td><p>3.8</p></td>
<td><p>4.6</p></td>
<td><p>64 KiB<br />
per core</p></td>
<td><p>512 KiB<br />
per core</p></td>
<td><p>64 MiB</p></td>
<td><p><a href="../Page/Socket_AM4.md" title="wikilink">AM4</a></p></td>
</tr>
<tr class="even">
<td><p>Ryzen 9 3950X</p></td>
<td><p>Sep, 2019<br />
US $749</p></td>
<td><p>16 (32)</p></td>
<td><p>3.5</p></td>
<td><p>4.7</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 服务器平台

参见[EPYC](https://zh.wikipedia.org/wiki/EPYC "wikilink")

## 参见

  - [AMD K9](../Page/AMD_K9.md "wikilink")
  - [AMD K10](https://zh.wikipedia.org/wiki/AMD_K10 "wikilink")
  - [EPYC](https://zh.wikipedia.org/wiki/EPYC "wikilink")
  - [Ryzen](https://zh.wikipedia.org/wiki/Ryzen "wikilink")
  - [AMD Zen](../Page/AMD_Zen.md "wikilink")
  - [Zen+](https://zh.wikipedia.org/wiki/Zen+ "wikilink")

## 参考资料

## 外部連結

处理器评测

  - anandtech[1](https://www.anandtech.com/show/14605/the-and-ryzen-3700x-3900x-review-raising-the-bar/20)
  - Reddit目录[2](https://www.reddit.com/r/Amd/comments/c9ncvh/3rd_generation_ryzen_reviews_megathread/)

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink") [Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")

1.
2.  <https://www.heise.de/newsticker/meldung/AMD-Ryzen-3000-12-Kernprozessoren-fuer-den-Mainstream-4432392.html>
3.
4.
5.
6.
7.
8.
9.