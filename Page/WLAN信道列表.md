**WLAN頻道列表**专指[IEEE
802.11網路應該使用的無線](../Page/IEEE_802.11.md "wikilink")[頻道](https://zh.wikipedia.org/wiki/頻道 "wikilink")。[无线局域网](../Page/无线局域网.md "wikilink")（WLAN）分很多種類，其中以IEEE
802.11规範為基礎的[WiFi認證是人們最熟悉的商業標準](https://zh.wikipedia.org/wiki/WiFi "wikilink")。802.11
工作組劃分了4個獨立的頻段：2.4 GHz、3.6 GHz、4.9 GHz 和 5.8
GHz\[1\]，每個頻段又劃分為若干頻道。每個國家自己制定了政策訂出如何使用這些頻段，例如最大的發射功率和配制方式等。

##  2.4 GHz (802.11[b](https://zh.wikipedia.org/wiki/802.11b "wikilink")/[g](https://zh.wikipedia.org/wiki/802.11g "wikilink")/[n](https://zh.wikipedia.org/wiki/802.11n "wikilink"))

[2.4_GHz_Wi-Fi_channels_(802.11b,g_WLAN).svg](https://zh.wikipedia.org/wiki/File:2.4_GHz_Wi-Fi_channels_\(802.11b,g_WLAN\).svg "fig:2.4_GHz_Wi-Fi_channels_(802.11b,g_WLAN).svg")
頻道與頻寬示意圖\]\]
[NonOverlappingChannels2.4GHz802.11-en.svg](https://zh.wikipedia.org/wiki/File:NonOverlappingChannels2.4GHz802.11-en.svg "fig:NonOverlappingChannels2.4GHz802.11-en.svg")
频段示意图\]\]

2.4 GHz 频段范围内有每隔 5 MHz 分隔的频道14个（除了第14頻道与第13頻道相隔了 12
MHz）。\[2\]需要注意的是，802.11g/n 不可能保证
[OFDM](https://zh.wikipedia.org/wiki/OFDM "wikilink")
调制中完全不重叠频道的数量。\[3\]

### 干扰问题

实现协议需要 16.25 MHz 到 22 MHz
的频率间距（如上图所示），否则相邻的頻道重叠将彼此产生干扰。标准的建议明确比较好的解决方法是留下3个到4个頻道的间距避免干扰。\[4\]实际使用时确切的频率间距，取决于頻道的选择以及设备所处的电磁环境以及数据速率。

当2个或更多的 802.11b 发射器在相同的空间操作时，其信号必须被衰减到少于 -50dBr 同时/或频率至少有 22 MHz
的间距以防干扰。\[5\]而事实上，[DSSS算法传送数据时使用](https://zh.wikipedia.org/wiki/DSSS "wikilink")
20 MHz 带宽，剩下 2 MHz
的间隙被用作[保护频带](https://zh.wikipedia.org/wiki/保护频带 "wikilink")，让使用的频率边缘的电磁波衰减避免干扰相邻頻道。

注意：上图中标有 40 MHz 的频段，在许多 WiFi 设备的管理界面中会被识别为 20 MHz
频带扩展部分，使用頻道号+扩展部分显示：Channel 3 =
Channel 1+Upper 或者 Channel5+Lower 和 Channel 11 = Channel 9+Upper 或者
Channel 13+Lower

疑问点：上面的HT40描述中应该是 Channel 3 = Channel 1+Lower 或者 Channel 5+Upper 和
Channel 11 = Channel 9+Lower 或者 Channel 13+Upper

### 頻道列表

很多国家都有法律规管这些頻道的使用，例如在一定频率范围内的最大功率电平等。网络运营商应咨询当地主管部门，因为这些规定可能会过时，世界上绝大多数国家都允许不需要申请许可证使用第1頻道到第13頻道：

<table>
<thead>
<tr class="header">
<th><p>頻道</p></th>
<th><p>頻率<br />
(MHz)</p></th>
<th><p>北美地區[6]</p></th>
<th><p>日本[7]</p></th>
<th><p>巴西</p></th>
<th><p>大部分國家</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1</p></td>
<td><p>2412</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>2417</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>2422</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>2427</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5</p></td>
<td><p>2432</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>6</p></td>
<td><p>2437</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>7</p></td>
<td><p>2442</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>8</p></td>
<td><p>2447</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>2452</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>10</p></td>
<td><p>2457</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>11</p></td>
<td><p>2462</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>12</p></td>
<td><p>2467</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>13</p></td>
<td><p>2472</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>14</p></td>
<td><p>2484</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

实际上在美国是允许第12頻道和第13頻道在低功率的条件下使用的，而只要在 2400 MHz 到 2483.5 MHz
频率范围内\[8\]带宽小于 50-dB
在美国是允许使用扩频调制通讯的，这个范围实质上就包括了第12頻道和第13頻道。[美国联邦通信委员会](https://zh.wikipedia.org/wiki/美国联邦通信委员会 "wikilink")（[FCC](https://zh.wikipedia.org/wiki/FCC "wikilink")）的文件澄清，只有第14頻道的低功率发射机和低增益天线是不被允许的，第12頻道和第13頻道则可以\[9\]。然而，第12頻道和第13頻道通常不会使用，这是因为
2483.5 MHz 到 2500 MHz
需要避免在任何潜在的原因下干扰相邻的正在合法使用的频段\[10\]\[11\]。在加拿大前12个頻道在全功率下都可供使用，而其它的頻道的发射功率则受限。

在日本，14頻道只能使用 [DSSS](https://zh.wikipedia.org/wiki/DSSS "wikilink") 和
[CCK](https://zh.wikipedia.org/wiki/CCK "wikilink") 調制模式，不能使用
[OFDM](https://zh.wikipedia.org/wiki/OFDM "wikilink")
模式（[802.11g](https://zh.wikipedia.org/wiki/802.11g "wikilink")
所使用的調制方式）(IEEE 802.11-2007 §19.4.2)。

## 3.6 GHz ([802.11y](https://zh.wikipedia.org/wiki/802.11y "wikilink"))

*除非另有说明，所有信息取自 IEEE 802.11y-2008 附录 J*

这个范围记录的是只有在美国持有被允许有执照才能使用的频段。

在 40 MHz 的频段里从 3655 MHz 到 3695 MHz 可用，可被分成8个 5 MHz 、4个 10 MHz 或2个 20 MHz
頻道使用，具体如下：

<table>
<thead>
<tr class="header">
<th><p>頻道</p></th>
<th><p>频率<br />
(MHz)</p></th>
<th><p>美国</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>5 MHz</p></td>
<td><p>10 MHz</p></td>
<td><p>20 MHz</p></td>
</tr>
<tr class="even">
<td><p>131</p></td>
<td><p>3657.5</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>132</p></td>
<td><p>3660.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3662.5</p></td>
<td></td>
<td><p>rowspan=2 </p></td>
</tr>
<tr class="odd">
<td><p>133</p></td>
<td><p>3665.0</p></td>
<td><p>rowspan=2 </p></td>
</tr>
<tr class="even">
<td><p>rowspan=2 </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3667.5</p></td>
<td></td>
<td><p>rowspan=4 </p></td>
</tr>
<tr class="even">
<td><p>134</p></td>
<td><p>3670.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3672.5</p></td>
<td></td>
<td><p>rowspan=2 </p></td>
</tr>
<tr class="even">
<td><p>135</p></td>
<td><p>3675.0</p></td>
<td><p>rowspan=2 </p></td>
</tr>
<tr class="odd">
<td><p>rowspan=2 </p></td>
<td><p>rowspan=4 </p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3677.5</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>136</p></td>
<td><p>3680.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>3682.5</p></td>
<td></td>
<td><p>rowspan=2 </p></td>
</tr>
<tr class="odd">
<td><p>137</p></td>
<td><p>3685.0</p></td>
<td><p>rowspan=2 </p></td>
</tr>
<tr class="even">
<td><p>rowspan=2 </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3687.5</p></td>
<td></td>
<td><p>rowspan=3 </p></td>
</tr>
<tr class="even">
<td><p>138</p></td>
<td><p>3690.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3692.5</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 4.9 GHz ([802.11y](https://zh.wikipedia.org/wiki/802.11y "wikilink"))

此类 WLAN
所使用的频段属于[公共安全频段](https://zh.wikipedia.org/wiki/公共安全 "wikilink")。此频段频宽为
50 MHz 范围从 4940 MHz 到 4990 MHz 即 WLAN
第20頻道到第26頻道，它们都被美国公共安全机构使用。在该频谱空间中分配了两个
20 MHz 的非重叠頻道，其中最常用的频道是第22頻道和第26頻道。

##  5 GHz (802.11[a](https://zh.wikipedia.org/wiki/802.11a "wikilink")/[h](https://zh.wikipedia.org/wiki/802.11h "wikilink")/[j](https://zh.wikipedia.org/wiki/802.11j "wikilink")/[n](https://zh.wikipedia.org/wiki/802.11n "wikilink")/[ac](https://zh.wikipedia.org/wiki/802.11ac "wikilink"))\[12\]

<table>
<thead>
<tr class="header">
<th><p>頻道</p></th>
<th><p>频率<br />
(MHz)</p></th>
<th><p>美国</p></th>
<th><p>欧洲</p></th>
<th><p>瑞士[13][14][15]</p></th>
<th><p>日本</p></th>
<th><p>新加坡</p></th>
<th><p>中国</p></th>
<th><p>以色列</p></th>
<th><p>韩国</p></th>
<th><p>土耳其</p></th>
<th><p>澳大利亚</p></th>
<th><p>南非</p></th>
<th><p>巴西</p></th>
<th><p>台湾</p></th>
<th><p>新西兰</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>40/20 MHz[16]</p></td>
<td><p>40/20 MHz</p></td>
<td><p>未知</p></td>
<td><p>40/20 MHz[17]</p></td>
<td><p>10 MHz</p></td>
<td><p>40/20 MHz[18]</p></td>
<td><p>40/20 MHz[19]</p></td>
<td><p>20 MHz[20]</p></td>
<td><p>20 MHz[21]</p></td>
<td><p>40/20 MHz[22]</p></td>
<td><p>40/20 MHz[23]</p></td>
<td><p>40/20 MHz[24]</p></td>
<td><p>40/20 MHz[25]</p></td>
<td><p>40/20 MHz[26]</p></td>
<td><p>40/20 MHz[27]</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>183</p></td>
<td><p>4915</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>184</p></td>
<td><p>4920</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>185</p></td>
<td><p>4925</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>187</p></td>
<td><p>4935</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>188</p></td>
<td><p>4940</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>189</p></td>
<td><p>4945</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>192</p></td>
<td><p>4960</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>196</p></td>
<td><p>4980</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>7</p></td>
<td><p>5035</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>8</p></td>
<td><p>5040</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>9</p></td>
<td><p>5045</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>11</p></td>
<td><p>5055</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>12</p></td>
<td><p>5060</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>16</p></td>
<td><p>5080</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>34</p></td>
<td><p>5170</p></td>
<td></td>
<td></td>
<td></td>
<td><center>
<p>只允许<br />
客户端支持</p>
</center></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[28]<a href="http://www.motc.gov.tw/uploaddowndoc?file=bulletin/201505041349391.pdf&amp;filedisplay=%E9%A0%BB%E7%8E%87%E4%BE%9B%E6%87%89%E8%A8%88%E7%95%AB.pdf&amp;flag=doc">1</a> </ref></p></td>
</tr>
<tr class="odd">
<td><p>36</p></td>
<td><p>5180</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>38</p></td>
<td><p>5190</p></td>
<td></td>
<td></td>
<td></td>
<td><center>
<p>只允许<br />
客户端支持</p>
</center></td>
<td></td>
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
<td><p>40</p></td>
<td><p>5200</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>42</p></td>
<td><p>5210</p></td>
<td></td>
<td></td>
<td></td>
<td><center>
<p>只允许<br />
客户端支持</p>
</center></td>
<td></td>
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
<td><p>44</p></td>
<td><p>5220</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>46</p></td>
<td><p>5230</p></td>
<td></td>
<td></td>
<td></td>
<td><center>
<p>只允许<br />
客户端支持</p>
</center></td>
<td></td>
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
<td><p>48</p></td>
<td><p>5240</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>52</p></td>
<td><p>5260</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>[29]<a href="http://www.ncc.gov.tw/chinese/files/11070/260_1807_110708_1.docx">2</a> </ref></p></td>
</tr>
<tr class="odd">
<td><p>56</p></td>
<td><p>5280</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>60</p></td>
<td><p>5300</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>64</p></td>
<td><p>5320</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>100</p></td>
<td><p>5500</p></td>
<td><p>[30]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>104</p></td>
<td><p>5520</p></td>
<td><p>[31]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>108</p></td>
<td><p>5540</p></td>
<td><p>[32]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>112</p></td>
<td><p>5560</p></td>
<td><p>[33]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>116</p></td>
<td><p>5580</p></td>
<td><p>[34]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>120</p></td>
<td><p>5600</p></td>
<td><p>[35]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>124</p></td>
<td><p>5620</p></td>
<td><p>[36]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>128</p></td>
<td><p>5640</p></td>
<td><p>[37]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>132</p></td>
<td><p>5660</p></td>
<td><p>[38]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>136</p></td>
<td><p>5680</p></td>
<td><p>[39]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>140</p></td>
<td><p>5700</p></td>
<td><p>[40]</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
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
<td><p>149</p></td>
<td><p>5745</p></td>
<td></td>
<td><p>[41]</p></td>
<td></td>
<td></td>
<td></td>
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
<td><p>153</p></td>
<td><p>5765</p></td>
<td></td>
<td><p>[42]</p></td>
<td></td>
<td></td>
<td></td>
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
<td><p>157</p></td>
<td><p>5785</p></td>
<td></td>
<td><p>[43]</p></td>
<td></td>
<td></td>
<td></td>
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
<td><p>161</p></td>
<td><p>5805</p></td>
<td></td>
<td><p>[44]</p></td>
<td></td>
<td></td>
<td></td>
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
<td><p>165</p></td>
<td><p>5825</p></td>
<td></td>
<td><p>[45]</p></td>
<td></td>
<td></td>
<td></td>
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

  - 在欧盟，标准 EN 301 893 规定了 5.15 GHz - 5.725 GHz 的使用。
  - 在美国，2007年FCC开始要求使用 5.250 GHz - 5.350 GHz 和 5.470 GHz - 5.725 GHz
    频段的设备必须采用[动态频率选择和](https://zh.wikipedia.org/wiki/DFS "wikilink")[传输功率控制](https://zh.wikipedia.org/wiki/TPC "wikilink")，这是为了避免干扰[气象雷达和](../Page/气象雷达.md "wikilink")[军事应用](https://zh.wikipedia.org/wiki/军事 "wikilink")\[46\]。在2010年，[联邦通讯委员会进一步明确在](https://zh.wikipedia.org/wiki/联邦通讯委员会 "wikilink")
    5.470 GHz - 5.725 GHz
    频段的使用方法，以避免干扰机场[多普勒天气雷达系统](https://zh.wikipedia.org/wiki/TDWR "wikilink")\[47\]，本声明取消了第120頻道、第124頻道和第128頻道的使用授权，而只要与距离35公里之内的
    TDWR 系统分隔超过 30 MHz（中心频率），那么第116頻道和第132頻道是可以使用的。现在在 5 GHz
    频段内有至少5种雷达正在使用的相关频段。
  - 在德国，5.250 GHz - 5.350 GHz 和 5.470 GHz - 5.725 GHz
    需要采用[动态频率选择和](https://zh.wikipedia.org/wiki/DFS "wikilink")[传输功率控制](https://zh.wikipedia.org/wiki/TPC "wikilink")，5.150
    GHz - 5.350 GHz 只允许在室内使用，5.470 GHz - 5.725 GHz
    才被允许在室内外同时使用\[48\]。这是德国实现欧盟 EU-Rule
    2005/513/EC 的规定\[49\]\[50\]。
  - 在奥地利，他们直接将 Decision 2005/513/EC 本地立法\[51\]。同样的限制在德国也适用，只有 5.470 GHz
    - 5.5725 GHz 才被允许在室内外同时使用。
  - 在南非，他们简单地复制欧盟的法规\[52\]。
  - 在日本，不允许第34頻道、第38頻道、第42頻道和第46頻道，它们先前均被用于连接
    [J52](https://zh.wikipedia.org/wiki/J52 "wikilink")
    等旧的接入点，但授权已经在2012年5月到期。
  - 在巴西，5.150 GHz - 5.725 GHz 频带的 TPC 的使用是可选的，DFS 则仅需要在 5.470 GHz -
    5.725 GHz 频带使用\[53\]。
  - 在澳大利亚，DFS 也需要使用 TPC，或将可允许的最大功率减少一半\[54\]。按照 AS/NZS 4268 B1 和 B2，5250
    MHz - 5350 MHz 和 5470 MHz - 5725 MHz 的任何部分频带运作的发射机应按照 ETSI EN 301
    893 第 4.4 条和 5.3.4 条以及附件D或替代的 FCC 15.407(h)(2) 实现DFS。另外在 AS/NZS 4268
    B3 和 B4 中，5250 MHz - 5350 MHz 和 5470 MHz - 5725 MHz 的任何部分频带运作的发射机应按照
    ETSI EN 301 893 第 4.7 条和 5.3.8 条或替代的 15.407(h)(1) 实现 TPC。
  - 新西兰与澳大利亚的调制方式规定不相同\[55\]。

##  5.9 GHz ([802.11p](https://zh.wikipedia.org/wiki/802.11p "wikilink"))

发表于2010年7月15日的 802.11p 标准修订也被称为
[WAVE](https://zh.wikipedia.org/wiki/Wireless_Access_in_Vehicular_Environments "wikilink")，其指定了无线局域网中的
[ITS](https://zh.wikipedia.org/wiki/Intelligent_Transportation_Systems "wikilink")
的 5.9 GHz（5.850 GHz - 5.925 GHz）波段\[56\]在车辆通信系统中的使用。

## 60 GHz ([802.11ad](https://zh.wikipedia.org/wiki/802.11ad "wikilink"))

也被称为[WiGig](https://zh.wikipedia.org/wiki/WiGig "wikilink")，该标准工作在 60
GHz 的[ISM频段](../Page/ISM频段.md "wikilink")。

## 900 MHz ([802.11ah](https://zh.wikipedia.org/wiki/802.11ah "wikilink"))

其工作于 900 MHz 的免授权频段。

## 參考文獻

[Category:無線網絡](https://zh.wikipedia.org/wiki/Category:無線網絡 "wikilink")
[Category:IEEE_802.11](https://zh.wikipedia.org/wiki/Category:IEEE_802.11 "wikilink")

1.

2.

3.  <http://www.cisco.com/en/US/docs/wireless/technology/channel/deployment/guide/Channel.html#Moving_to_802.11g>


4.

5.

6.  IEEE 802.11-2007 — Table 18-9

7.
8.  [47 CFR
    §15.247](http://ecfr.gpoaccess.gov/cgi/t/text/text-idx?c=ecfr;sid=9eab2402bb1cccc8f85bb3fa9e6c2daa;rgn=div5;view=text;node=47%3A1.0.1.1.16;idno=47;cc=ecfr#47:1.0.1.1.16.3.234.31)


9.

10. [NTIA comments to the FCC ET Docket 03-108,
    footnote 88](http://www.ntia.doc.gov/ntiahome/fccfilings/2005/cogradio/ETDocket03-108_02152005.htm#_ftn88)

11. <http://edocket.access.gpo.gov/cfr_2004/octqtr/pdf/47cfr15.205.pdf>

12. IEEE 802.11-2007 Annex J 修订了 k, y 和 n

13.

14.

15.

16. [FCC 15.407 as of April 9, 2013 –
    hallikainen.com](http://www.hallikainen.org/FCC/FccRules/2013/15/407/index.php)


17.

18.

19.

20. Israel:

21. [Korea Frequency Distribution
    Table](http://rra.go.kr/board/law/view.jsp?lw_seq=187&lw_type=3)
    2008.12.31 (in Korean)

22. [KISA MESAFE ERİŞİMLİ TELSİZ CİHAZLARI (KET) YÖNETMELİĞİ Resmi
    Gazete 10.03.2010](http://www.tk.gov.tr/mevzuat/yonetmelikler/dosyalar/KET_yonetmeligi.pdf)
     Madde 8 - Genişband veri iletim sistemleri (in Turkish)

23.
24.
25.
26.

27. <http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/short-range-devices>
    RSM as of May 8, 2014

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
46. [FCC 15.407 as of June 23, 2011 – hallikainen.com / See paragraph
    'h'](http://louise.hallikainen.org/FCC/FccRules/2011/15/407/)

47.

48. [Bundesnetzagentur Vfg 7/2010 / See footnote 4 and 5 (german
    only)](http://www.bundesnetzagentur.de/cae/servlet/contentblob/38216/publicationFile/6579/WLAN5GHzVfg7_2010_28042010pdf.pdf)

49. [2005/513/EC: Commission Decision of 11 July 2005 on the harmonised
    use of radio spectrum in the 5 GHz frequency band for the
    implementation of wireless access
    systems](http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=CELEX:32005D0513:EN:NOT)

50. [2007/90/EC: Commission Decision of 12 February 2007 amending
    Decision 2005/513/EC on the harmonised use of radio spectrum in
    the 5 GHz frequency band for the implementation of Wireless Access
    Systems](http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=CELEX:32007D0090:EN:NOT)

51. [Information der Obersten Fernmeldebehörde - Drahtlose lokale
    Netzwerke (WAS, WLAN, RLAN)(german
    only)](http://www.bmvit.gv.at/bmvit/telekommunikation/publikationen/infoblaetter/downloads/052010.pdf)

52. [Frequency assignments for unlicensed devices / See
    page 14](http://www.ellipsis.co.za/wp-content/uploads/2008/07/licence_exemption_frequency_regs_2008.pdf)

53.

54. [Radiocommunications Class License 2000 / See Item 44, 44A, 45B
    and 46](http://www.comlaw.gov.au/Details/F2013C00396)

55. [Short range
    devices](http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/short-range-devices)

56.