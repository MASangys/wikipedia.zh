[H.264和](https://zh.wikipedia.org/wiki/H.264 "wikilink")[VC-1](../Page/VC-1.md "wikilink")是二種最受歡迎的影像壓縮工具。

## 全覽

| \![VC-1](../Page/VC-1.md "wikilink") | [H.264](https://zh.wikipedia.org/wiki/H.264 "wikilink") |
| ------------------------------------ | ------------------------------------------------------- |
| 目標                                   | 旨在提供非常高的圖像質量與最佳的壓縮效率\[1\]                               |
| 工業用範例                                | 支援4:2:0壓縮 / 色彩空間<ref>{{cite book                        |
| 費用                                   | 接近<ref>{{cite web                                       |
| 文件                                   | 需付費。Reference decoder並非免費，不過附贈外部文件。                     |

## 術語

所有來源的以下信息是從各自的規範中列出的概述部分。

| 特徵                                                                      | [VC-1](../Page/VC-1.md "wikilink")                 | [H.264](https://zh.wikipedia.org/wiki/H.264 "wikilink")                |
| ----------------------------------------------------------------------- | -------------------------------------------------- | ---------------------------------------------------------------------- |
| 切割大小                                                                    | 16x16, 16x8, 8x16, and 8x8<ref name=iee>{{cite web | url = <http://www.iee.org/OnComms/PN/multimediacomms/Alois%20Bock.pdf> |
| [整數轉換](https://zh.wikipedia.org/wiki/整數轉換 "wikilink")                   | 8x8, 4x8, 8x4, and 4x4                             | 4x4; 8x8-{只}-能在High Profile下使用                                         |
| 影格（）                                                                    | 用於隔行掃描。包含上下圖場。                                     | 用於倍頻或隔行皆可                                                              |
| [Macroblock](https://zh.wikipedia.org/wiki/Macroblock "wikilink") sizes | 僅16x16                                             |                                                                        |
| 運動向量                                                                    | 二維向量offset from current position to                |                                                                        |
| 圖片                                                                      | 一個field或frame                                      |                                                                        |
| 忽略macroblock                                                            | 無任何數據用於macroblock                                  |                                                                        |
|                                                                         |                                                    |                                                                        |

## 特色

<table>
<thead>
<tr class="header">
<th><p>!<a href="../Page/VC-1.md" title="wikilink">VC-1</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/H.264" title="wikilink">H.264</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Bitstream" title="wikilink">Bitstream格式</a></p></td>
<td><p>single bit stream</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Bitstream" title="wikilink">Bitstream格式</a></p></td>
<td><p>在更先進的profile,每個Bitstream Data Unit都有各自的標頭（header）.<br />
Simple和Main profile則不提供sequence也沒有entry point headers.</p></td>
</tr>
<tr class="odd">
<td><p>Deblocking filter</p></td>
<td><p>In-loop filter and overlap transform</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/CABAC" title="wikilink">CABAC</a></p></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p>變量變換大小</p></td>
<td><p>是</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>是</p></td>
</tr>
<tr class="odd">
<td><p>切片</p></td>
<td><p>連續 (integer number of macroblock rows only)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/視訊壓縮圖像類型.md" title="wikilink">B frame用於預設其他的圖像</a></p></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p>子像素的插值方法</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/雙三次插值" title="wikilink">雙三次插值</a>，<a href="https://zh.wikipedia.org/wiki/雙線性" title="wikilink">雙線性</a></p></td>
</tr>
</tbody>
</table>

## 注釋

<references/>

## 外部連結

  - [EEtimes comparison of video codecs](http://i.cmpnet.com/videsignline/2006/03/ti-table1.jpg) [1](http://www.eetimes.com/news/latest/showArticle.jhtml?articleID=184417335&pgno=4)
  - [NAB2005 presentation: codec comparison slides 13-14](http://www.m4if.org/exhibitions/NAB2005/presentations/session3-cvandusen.pdf)
  - [Codec challenge comparison on Doom9 with professional VC1 encoder, PeP, and x264 for H264 =\> H264 win the first round](http://forum.doom9.org/showthread.php?t=128498)
  - [Microsoft employee discusses differences between VC-1 and H.264](http://www.avsforum.com/avs-vb/showthread.php?p=9931723&&#post9931723)
  - [Comparison at Doom9](http://forum.doom9.org/showthread.php?p=674819#post674819)

[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink")

1.