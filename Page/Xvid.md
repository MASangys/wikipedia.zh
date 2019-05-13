**Xvid**（舊稱為**XviD**）是一個[開放原始碼的](../Page/開放原始碼.md "wikilink")[MPEG-4](../Page/MPEG-4.md "wikilink")[影像編解碼器](../Page/影像編解碼器.md "wikilink")，是由一群原OpenDivX開發者在OpenDivX於2001年7月停止開發後自行開發的。

Xvid支持[量化](../Page/量化.md "wikilink")（Quantization）、範圍控制的運動偵測（Motion
Search）、码率曲線分配（Curve）、動態關鍵幀距（I-frame
interval）、[心理視覺亮度修正](../Page/心理視覺亮度修正.md "wikilink")、演職員表選項、外部自定義控制、運動向量加速（Hinted
ME）編碼、畫面優化解碼等眾多編碼技術，對用戶來說功能十分強大。

Xvid的主要競爭對手是[DivX](../Page/DivX.md "wikilink")。但Xvid是[開放原始碼的](../Page/開放原始碼.md "wikilink")，而DivX則只有[免費](../Page/免費軟體.md "wikilink")（不是[自由](../Page/自由軟體.md "wikilink")）的版本和商用版本。

## 合法性

Xvid是在[GNU GPL
v2下發佈的](../Page/GNU_General_Public_License.md "wikilink")，但因為某些國家如[美國](../Page/美國.md "wikilink")，[日本有](../Page/日本.md "wikilink")[軟體專利法](../Page/軟體專利法.md "wikilink")，使得其在該地區可能出現法律糾紛。因此，在过去Xvid官方網站只提供原始碼下載，用戶只可由第三方網站下載第三方的安裝檔\[1\]\[2\]\[3\]。而目前Xvid官网已提供安装包的下载。\[4\]

## 歷史

在以往，[個人電腦只能使用](../Page/個人電腦.md "wikilink")[微軟開發的](../Page/微軟.md "wikilink")[MPEG-4](../Page/MPEG-4.md "wikilink")
[Codec](../Page/影像編解碼器.md "wikilink")，即MS MPEG4 V1、MS MPEG4 V2、MS MPEG4
V3的系列編碼核心，不過只能使用在[ASF檔案](../Page/ASF.md "wikilink")，檔案格式是封閉的，因此有些[駭客將其改寫為著名的](../Page/駭客.md "wikilink")[MPEG4](../Page/MPEG4.md "wikilink")
[Codec](../Page/影像編解碼器.md "wikilink") [DivX](../Page/DivX.md "wikilink")
3.11。

但問題是，DivX
3.11的基礎技術是非法盜用[微軟的](../Page/微軟.md "wikilink")，無法進行更廣泛的產品化及生產硬體播放機。因此，一些精通[影像編碼的工程師](../Page/影像編碼.md "wikilink")（包括原DivX
3.11的開發者）成立了一家名為DivX Networks
Inc.的公司，簡稱DXN。他們主導了完全符合[ISO](../Page/ISO.md "wikilink")
[MPEG4標準的Open](../Page/MPEG4.md "wikilink") DivX
CODEC的開發，並吸引了許多軟體高手參與。這時，主要的編程工作是由DXN來做，但很多技術上的難題卻是由開放原始碼社群幫忙解決。

但因為整個計劃並不是根據[GPL開發的](../Page/GPL.md "wikilink")，而是[LGPL](../Page/LGPL.md "wikilink")，因此在Open
DivX即將成形時，DXN藉此漏洞將其閉源，結果使眾多開放原始碼社群的[義工感到被出賣](../Page/義工.md "wikilink")。也是因为这个原因，整个[0day组织永远的拒绝了DXN公司的DivX格式](../Page/0day资源.md "wikilink")。

而原OpenDivX計劃的義工最後決定在最後一個Open DivX版本的基礎上，編寫XviD（將DivX反過來寫）以繼續原Open
DivX的目的。

大約1年後，Xvid計劃的[開發者重寫了所有代碼](../Page/開發者.md "wikilink")，並依照GPL發佈（而不再是LGPL，所以誰要是想用它做成產品而不開放原始碼是非法的）。但因為某些國家如[美國](../Page/美國.md "wikilink")，[日本有軟體專利法](../Page/日本.md "wikilink")，使得其在該地區可能出現法律糾紛。因此，在过去Xvid官方網站只提供[原始碼下載](../Page/原始碼.md "wikilink")，用戶只可由第三方網站下載編譯的執行檔。

## 播放使用Xvid壓製的檔案

过去因為軟體[專利權問題](../Page/專利權.md "wikilink")，Xvid不能在其網上發佈運行檔，但用戶可在第三方網頁自行下載已包裝完成的解碼器，如[Koepi's
XviD](http://www.koepi.info/xvid.html)。在安裝完成後，只需要打開一般的多媒體播放器就可以播放以Xvid[編碼的檔案](../Page/編碼.md "wikilink")。

## Xvid配置（Profile）

为了使Xvid能在各种配置条件下正常工作，Xvid提供了一些配置方案（Profile）来对编码复杂度进行一定的限制。\[5\]

  - **Xvid Mobile**：为小尺寸屏幕的移动设备而设计，比如低端智能手机。
  - **Xvid Home**：面向标清（SD）家庭娱乐设备。
  - **Xvid HD 720**：适用于支持720p HD分辨率的高清（HD）设备。
  - **Xvid HD 1080**：用于像蓝光播放机这样的高端1080p全高清消费类电子产品。
  - **Simple Profile**（**SP**）简单配置。此配置分7个级别：Level 0-Level
    6（第五级称为L4a）。在此配置下，B帧、精确到四分之一像素的运动矢量、全局运动补偿等大多数编码功能将被禁用，同等码率下画质较低，适用于配置较差的手机、学习机等设备。
  - **Advanced Simple Profile**（**ASP**）高级简单配置。此配置分6个级别：Level 0-Level
    5。大多数MP4播放器、电子相框等产品使用此配置。
  - **Unrestricted**无限制，最高配置。

## 參見條目

  - [多媒體解碼器列表](../Page/多媒體解碼器列表.md "wikilink")

## 参考文献

## 外部連結

  - [Xvid.com](http://www.xvid.com/)
  - [Koepi為視窗而編譯的XviD安裝檔](http://www.koepi.info/xvid.html)
  - [ffmpegx](https://web.archive.org/web/20030823212413/http://homepage.mac.com/major4/index.html)
    - 非常有用的[蘋果電腦上的Xvid播放及轉換工具](../Page/蘋果電腦.md "wikilink")
  - [XviD的歷史與特點](https://web.archive.org/web/20051230013804/http://easylearn.bhes.tpc.edu.tw/high/xvid_history.htm)

[Category:免費軟件](https://zh.wikipedia.org/wiki/Category:免費軟件 "wikilink")
[Category:影片编解码器](https://zh.wikipedia.org/wiki/Category:影片编解码器 "wikilink")
[Category:開放源代碼](https://zh.wikipedia.org/wiki/Category:開放源代碼 "wikilink")

1.  <http://list.xvid.org/pipermail/xvid-devel/2002-September/000827.html>
2.  <http://list.xvid.org/pipermail/xvid-devel/2002-November/001316.html>
3.  <http://list.xvid.org/pipermail/xvid-devel/2002-November/001318.html>
4.  <https://www.xvid.com/download/>
5.  <https://solutions.xvid.com/certification/>