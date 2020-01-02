> 本文内容由[UVD](https://zh.wikipedia.org/wiki/UVD)转换而来。


****全寫為Unified Video Decoder，中文譯成通用視訊解碼器，是中的其中一項技術。從HD 2400、HD 2600和HD 3000系列集成了這個解碼器，高端的HD 2900XT反而沒有集成。最近，AMD的780G整合式晶片組亦集成了UVD。利用UVD引擎，顯示卡就能完全硬體解碼H.264和VC-1格式的高清影片，分別為[Blu-ray Disc和](https://zh.wikipedia.org/wiki/Blu-ray_Disc "wikilink")[HD-DVD的編碼](https://zh.wikipedia.org/wiki/HD-DVD "wikilink")。

原先ATI企圖將UVD技術內置在[Radeon X1 Series的顯示核心中](https://zh.wikipedia.org/wiki/Radeon_X1_Series "wikilink")，成為新的顯核（RV550），推進主流市場，並於2006年12月推出。但後來卻無了下文。

透過UVD技術，在播放H.264或VC-1格式的高清影片時，處理器佔用率只有5%。這使得低端電腦亦可流暢地播放[1080p](../Page/1080p.md "wikilink")的高清影片。另外，此技術可以明顯降低系統的功率。與[NVIDIA的](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[PureVideo不同](https://zh.wikipedia.org/wiki/PureVideo "wikilink")，UVD並不可以硬解AES128硬體編碼。

要使用此技術，亦要軟體的配合。最簡易的方法是採用[PowerDVD](../Page/PowerDVD.md "wikilink")播放軟體。其他[作業系統例如](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[Linux](../Page/Linux.md "wikilink")方面，[AMD正在研發XvBA](https://zh.wikipedia.org/wiki/AMD "wikilink") [API](https://zh.wikipedia.org/wiki/API "wikilink")，在Linux上實現UVD2。\[1\]

UVD 2整合於HD 4800系列，可提供VC-1、H.264及MPEG-2[位元流](../Page/位元流.md "wikilink")硬件解碼，並支援雙影片和畫中畫解碼功能。UVD 2.2強化了高清視訊播放效能、增加影片相容性等。

## 目前支援UVD的GPU列表

<table>
<thead>
<tr class="header">
<th><p>核心代號</p></th>
<th><p>產品名稱</p></th>
<th><p>UVD版本</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Cayman</p></td>
<td><p>Radeon HD 6900系列</p></td>
<td><p>UVD 3</p></td>
</tr>
<tr class="even">
<td><p>Barts</p></td>
<td><p>Radeon HD 6800系列</p></td>
<td><p>UVD 3</p></td>
</tr>
<tr class="odd">
<td><p>Turks</p></td>
<td><p>Radeon HD 6500/6600系列</p></td>
<td><p>UVD 3</p></td>
</tr>
<tr class="even">
<td><p>Caicos</p></td>
<td><p>Radeon HD 6400系列</p></td>
<td><p>UVD 3</p></td>
</tr>
<tr class="odd">
<td><p>Hemlock</p></td>
<td><p>Radeon HD 5900系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="even">
<td><p>Cypress</p></td>
<td><p>Radeon HD 5800系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="odd">
<td><p>Juniper</p></td>
<td><p>Radeon HD 5700系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="even">
<td><p>Redwood</p></td>
<td><p>Radeon HD 5500/5600系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="odd">
<td><p>Cedar</p></td>
<td><p>Radeon HD 5400系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="even">
<td><p>RV790</p></td>
<td><p>Radeon HD 4890系列</p></td>
<td><p>UVD 2</p></td>
</tr>
<tr class="odd">
<td><p>RV770</p></td>
<td><p>Radeon HD 4800系列</p></td>
<td><p>UVD 2</p></td>
</tr>
<tr class="even">
<td><p>RV740</p></td>
<td><p>Radeon HD 4700系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="odd">
<td><p>RV730</p></td>
<td><p>Radeon HD 4600系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="even">
<td><p>RV710</p></td>
<td><p>Radeon HD 4300/4500系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="odd">
<td><p>RV670</p></td>
<td><p>Radeon HD 3800系列</p></td>
<td><p>UVD+</p></td>
</tr>
<tr class="even">
<td><p>RV635</p></td>
<td><p>Radeon HD 3600系列</p></td>
<td><p>UVD+</p></td>
</tr>
<tr class="odd">
<td><p>RV620</p></td>
<td><p>Radeon HD 3400系列</p></td>
<td><p>UVD+</p></td>
</tr>
<tr class="even">
<td><p>RV630</p></td>
<td><p>Radeon HD 2600系列</p></td>
<td><p>UVD</p></td>
</tr>
<tr class="odd">
<td><p>RV610</p></td>
<td><p>Radeon HD 2400系列</p></td>
<td><p>UVD</p></td>
</tr>
<tr class="even">
<td><p>RS880</p></td>
<td><p>Radeon HD 4250 (AMD 880G)<br />
Radeon HD 4200 (AMD 785G)</p></td>
<td><p>UVD 2</p></td>
</tr>
<tr class="odd">
<td><p>RS780<br />
RS780D</p></td>
<td><p>Radeon HD 3200 (AMD 780G)<br />
Radeon HD 3300 (AMD 790GX)</p></td>
<td><p>UVD+</p></td>
</tr>
<tr class="even">
<td><p>M98</p></td>
<td><p>Mobility Radeon HD 4800系列</p></td>
<td><p>UVD 2</p></td>
</tr>
<tr class="odd">
<td><p>M96</p></td>
<td><p>Mobility Radeon HD 4600系列</p></td>
<td><p>UVD 2</p></td>
</tr>
<tr class="even">
<td><p>M92</p></td>
<td><p>Mobility Radeon HD 4300/4500系列</p></td>
<td><p>UVD 2.2</p></td>
</tr>
<tr class="odd">
<td><p>M88</p></td>
<td><p>Mobility Radeon HD 3800系列</p></td>
<td><p>UVD+</p></td>
</tr>
<tr class="even">
<td><p>M86</p></td>
<td><p>Mobility Radeon HD 3600系列</p></td>
<td><p>UVD+</p></td>
</tr>
<tr class="odd">
<td><p>M82</p></td>
<td><p>Mobility Radeon HD 3400系列</p></td>
<td><p>UVD+</p></td>
</tr>
<tr class="even">
<td><p>M76</p></td>
<td><p>Mobility Radeon HD 2600系列</p></td>
<td><p>UVD</p></td>
</tr>
<tr class="odd">
<td><p>M72</p></td>
<td><p>Mobility Radeon HD 2400系列</p></td>
<td><p>UVD</p></td>
</tr>
<tr class="even">
<td><p>M71</p></td>
<td><p>Mobility Radeon HD 2300系列</p></td>
<td><p>UVD</p></td>
</tr>
<tr class="odd">
<td><p>RV550</p></td>
<td><p><em>未知</em></p></td>
<td></td>
</tr>
</tbody>
</table>

## 參考文獻

## 参见

[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink") [Category:冶天科技](https://zh.wikipedia.org/wiki/Category:冶天科技 "wikilink") [Category:视訊加速](https://zh.wikipedia.org/wiki/Category:视訊加速 "wikilink") [Category:AMD](https://zh.wikipedia.org/wiki/Category:AMD "wikilink")

1.  [NV 180版Linux驅動視訊解碼加速實測](http://news.mydrivers.com/1/121/121422.htm)