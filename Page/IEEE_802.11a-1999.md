**IEEE 802.11a**或标准称之为**IEEE
802.11a-1999**，是[802.11](../Page/IEEE_802.11.md "wikilink")[原始标准的一个修订标准](../Page/IEEE_802.11_\(原始标准\).md "wikilink")，于1999年获得批准。

## 描述

802.11a标准采用了与原始标准相同的核心协议，工作频率为5GHz，使用52个[正交频分多路复用副载波](https://zh.wikipedia.org/wiki/OFDM "wikilink")，最大原始数据传输率为54Mb/s，这达到了现实网络中等吞吐量（20Mb/s）的要求。如果需要的话，数据率可降为48，36，24，18，12，9或者6Mb/s。802.11a拥有12条不相互重叠的频道，8条用于室内，4条用于点对点传输。它不能与[IEEE
802.11b进行互操作](https://zh.wikipedia.org/wiki/IEEE_802.11b "wikilink")，除非使用了对两种标准都采用的设备。

由于2.4GHz频带已经被到处使用，采用5GHz的频带让802.11a具有更少冲突的优点。然而，高载波频率也带来了负面效果。802.11a几乎被限制在直线范围内使用，这导致必须使用更多的接入点；同样还意味着802.11a不能传播得像802.11b那么远，因为它更容易被吸收。

尽管2003年的世界无线电通信会议让802.11a在全球的应用变得更容易，不同的国家还是有不同的规定支持。[美国](../Page/美国.md "wikilink")和[日本](../Page/日本.md "wikilink")已经出现了相关规定对802.11a进行了认可，但是在其它地区，如[欧盟](https://zh.wikipedia.org/wiki/欧盟 "wikilink")，管理机构却考虑使用欧洲的[HIPERLAN标准](https://zh.wikipedia.org/wiki/HIPERLAN "wikilink")，而且在2002年中期禁止在欧洲使用802.11a。在美国，2003年中期[联邦通信委员会](../Page/联邦通信委员会.md "wikilink")的决定可能会为802.11a提供更多的频谱。

在52个[OFDM副载波中](https://zh.wikipedia.org/wiki/OFDM "wikilink")，48个用于传输数据，4个是[引示副载波](https://zh.wikipedia.org/wiki/引示副载波 "wikilink")（pilot
carrier），每一个带宽为0.3125MHz（20MHz/64），可以是[二相](https://zh.wikipedia.org/wiki/二相移相键控 "wikilink")[移相键控](https://zh.wikipedia.org/wiki/相位偏移调变 "wikilink")（BPSK），[四相移相键控](https://zh.wikipedia.org/wiki/四相移相键控 "wikilink")（QPSK），16-[QAM或者](https://zh.wikipedia.org/wiki/QAM "wikilink")64-QAM。总带宽为20MHz，占用带宽为16.6MHz。符号时间为4微秒，保护间隔0.8微秒。实际产生和解码正交分量的过程都是在基带中由DSP完成，然后由发射器将频率提升到5GHz。每一个副载波都需要用复数来表示。时域信号通过[逆向快速傅里叶变换产生](https://zh.wikipedia.org/wiki/IFFT "wikilink")。接收器将信号降频至20MHz，重新采样并通过[快速傅里叶变换来重新获得原始系数](https://zh.wikipedia.org/wiki/FFT "wikilink")。使用OFDM的好处包括减少接收时的多路效应，增加了频谱效率。

802.11a产品于2001年开始销售，比802.11b的产品还要晚，这是因为产品中5GHz的组件研制成功太慢。由于802.11b已经被广泛采用了，802.11a没有被广泛的采用。再加上802.11a的一些弱点，和一些地方的规定限制，使得它的使用范围更窄了。802.11a设备厂商为了应对这样的市场匮乏，对技术进行了改进（现在的802.11a技术已经与802.11b在很多特性上都很相近了），并开发了可以使用不止一种802.11标准的技术。现在已经有了可以同时支持802.11a和b，或者a、b、g都支持，以及a、b、g、n都支持的双频无线网卡，它们可以自动根据情况选择标准。同样，也出现了移动适配器和接入设备能同时支持所有的这些标准。

## OFDM速率表

<table>
<thead>
<tr class="header">
<th><p>数据率<br />
<em>(Mbit/s)</em></p></th>
<th><p>调制方式</p></th>
<th><p>编码率</p></th>
<th><p><em>Ndbps</em></p></th>
<th><p>1472字节传输时间<br />
<em>(µs)</em></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>6</p></td>
<td><p>BPSK</p></td>
<td><p>1/2</p></td>
<td><p>24</p></td>
<td><p>2012</p></td>
</tr>
<tr class="even">
<td><p>9</p></td>
<td><p>BPSK</p></td>
<td><p>3/4</p></td>
<td><p>36</p></td>
<td><p>1344</p></td>
</tr>
<tr class="odd">
<td><p>12</p></td>
<td><p>4-QAM</p></td>
<td><p>1/2</p></td>
<td><p>48</p></td>
<td><p>1008</p></td>
</tr>
<tr class="even">
<td><p>18</p></td>
<td><p>4-QAM</p></td>
<td><p>3/4</p></td>
<td><p>72</p></td>
<td><p>672</p></td>
</tr>
<tr class="odd">
<td><p>24</p></td>
<td><p>16-QAM</p></td>
<td><p>1/2</p></td>
<td><p>96</p></td>
<td><p>504</p></td>
</tr>
<tr class="even">
<td><p>36</p></td>
<td><p>16-QAM</p></td>
<td><p>3/4</p></td>
<td><p>144</p></td>
<td><p>336</p></td>
</tr>
<tr class="odd">
<td><p>48</p></td>
<td><p>64-QAM</p></td>
<td><p>2/3</p></td>
<td><p>192</p></td>
<td><p>252</p></td>
</tr>
<tr class="even">
<td><p>54</p></td>
<td><p>64-QAM</p></td>
<td><p>3/4</p></td>
<td><p>216</p></td>
<td><p>224</p></td>
</tr>
</tbody>
</table>

## 标准全文

\[1\]

## 参考资料

[Category:IEEE_802.11](https://zh.wikipedia.org/wiki/Category:IEEE_802.11 "wikilink")

1.