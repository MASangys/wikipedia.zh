**VC-1**，全名**VC-1視訊編解碼器**（**Video Codec 1**），是微軟所開發的視訊編解碼系統。2003年提出標準化申請，最早名字是**VC-9**。2006年4月正式通過成為標準。

VC-1是基於Windows Media Video 9壓縮技術的影像壓縮標準，由三大編解碼元件所組成，每一個編解碼元件都具有其獨自的FourCC編碼。

  - WMV3（WMV9）：WMV3包含了Simple以及Main這兩種Profile。
  - WMVA
  - WVC1

壓縮技術整合了MPEG及H.264之優點，採用Biliner和Bicubic方式，[次像素](https://zh.wikipedia.org/wiki/次像素 "wikilink")（Sub-Pixel）最小可達4分之1像素。VC-1-{只}-有4種動作補償（motion composition），壓縮比無法勝過H.264。VC-1在壓縮時間上，明顯比[H.264短了許多](https://zh.wikipedia.org/wiki/H.264 "wikilink")，複雜度約只有H.264的50%，對特效電影有很傑出的效能表現。由於H.264使用較小尺寸的轉換公式與無法調整的量化矩陣，造成不能完整保留影像的高頻細節資訊。

[HD DVD和](../Page/HD_DVD.md "wikilink")[藍光光碟](../Page/藍光光碟.md "wikilink")（Blu-ray Disc）都支援VC-1。微軟表示Windows Vista將支援VC-1影像壓縮技術的HD DVD規格。電影及電視學會（SMPTE）已採用VC-1為視訊壓縮標準。

## Profiles

<center>

<table>
<thead>
<tr class="header">
<th></th>
<th><p>Simple</p></th>
<th><p>Main</p></th>
<th><p>Advanced</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Baseline intra frame compression</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Variable-sized transform</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>16-bit transform</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Overlapped transform</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>4 motion vector per macroblock</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>¼ pixel luminance motion compensation</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>¼ pixel chrominance motion compensation</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Start codes</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Extended motion vectors</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Loop filter</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Dynamic resolution change</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Adaptive macroblock quantisation</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>B frames</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Intensity compensation</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Range adjustment</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Field and frame coding modes</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>GOP Layer</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Display metadata</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Simple</p></td>
<td><p>Main</p></td>
<td><p>Advanced</p></td>
</tr>
</tbody>
</table>

</center>

## [位元率與解析度](https://zh.wikipedia.org/wiki/位元率 "wikilink")

<center>

<table>
<thead>
<tr class="header">
<th><p>Profile</p></th>
<th><p>Level</p></th>
<th><p>Maximum Bit Rate</p></th>
<th><p>Resolutions by Framerate</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Simple</strong></p></td>
<td><p>Low</p></td>
<td><p>96 kbit/s</p></td>
<td><p>176 x 144 / 15 (QCIF)</p></td>
</tr>
<tr class="even">
<td><p>Medium</p></td>
<td><p>384 kbit/s</p></td>
<td><p>240 x 176 / 30<br />
352 x 288 / 15 (CIF)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong>Main</strong></p></td>
<td><p>Low</p></td>
<td><p>2 Mbit/s</p></td>
<td><p>320 x 240 / 24 (QVGA)</p></td>
</tr>
<tr class="even">
<td><p>Medium</p></td>
<td><p>10 Mbit/s</p></td>
<td><p>720 x 480 / 30 (480p)<br />
720 x 576 / 25 (576p)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>High</p></td>
<td><p>20 Mbit/s</p></td>
<td><p>1920 x 1080 / 30 (1080p)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><strong>Advanced</strong></p></td>
<td><p>L0</p></td>
<td><p>2 Mbit/s</p></td>
<td><p>352 x 288 / 30 (CIF)</p></td>
</tr>
<tr class="odd">
<td><p>L1</p></td>
<td><p>10 Mbit/s</p></td>
<td><p>720 x 480 / 30 (NTSC-SD)<br />
720 x 576 / 25 (PAL-SD)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>L2</p></td>
<td><p>20 Mbit/s</p></td>
<td><p>720 x 480 / 60 (480p)<br />
1280 x 720 / 30 (720p)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>L3</p></td>
<td><p>45 Mbit/s</p></td>
<td><p>1920 x 1080 / 24 (1080p)<br />
1920 x 1080 / 30 (1080i)<br />
1280 x 720 / 60 (720p)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>L4</p></td>
<td><p>135 Mbit/s</p></td>
<td><p>1920 x 1080 / 60 (1080p)<br />
2048 x 1536 / 24</p></td>
<td></td>
</tr>
</tbody>
</table>

</center>

## 參考書目

  - 郭其昌，VC-1視訊壓縮技術探討，《電腦與通訊》，110期

## 參見

  - [H.264與VC-1的比較](../Page/H.264與VC-1的比較.md "wikilink")

## 外部連結

  -
  -
  - [VC-1 reference software analysis](http://wiki.multimedia.cx/index.php?title=Understanding_VC-1) at the MultimediaWiki

  - RFC 4425 – IETF RTP Payload Format for Video Codec 1

  - [迎接高解析的未來　H.264與VC-1兩大視訊壓縮技術比較](http://www.digiasia.com.tw/1153)

[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink")