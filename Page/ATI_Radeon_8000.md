[ATI_Radeon_8500_logo.png](https://zh.wikipedia.org/wiki/File:ATI_Radeon_8500_logo.png "fig:ATI_Radeon_8500_logo.png") **ATI Radeon 8000**系列[顯示卡](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")，採用**R200**系列[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")，由[ATI研發並推出](https://zh.wikipedia.org/wiki/ATI "wikilink")。**Radeon 8500**（核心代號 **R200**）是一個[Radeon](../Page/Radeon.md "wikilink")系列[顯示卡核心能夠將](https://zh.wikipedia.org/wiki/顯示卡 "wikilink")[ATI放在與](https://zh.wikipedia.org/wiki/ATI "wikilink")[nVIDIA競爭的層面上](https://zh.wikipedia.org/wiki/nVIDIA "wikilink")，亦成功使當時的ATI脫離衰退顯示卡廠商的行列。它亦是全球首款完整支持DirectX 8.1的產品，[GeForce 3只能算是支持DirectX](https://zh.wikipedia.org/wiki/GeForce_3 "wikilink") 8.0。

## 旗艦級產品

ATI的第一張DirectX 8顯示卡就是Radeon 8500。在2002年初期，ATI發佈了Radeon 8500LE（即是後來重新發佈的Radeon 9100），核心與Radeon 8500相同，只是核心和顯示記憶體的頻率較低。反之，完整的8500的核心和顯示記憶體頻率都是275 MHz，而8500LE的核心頻率則保守的設成250 MHz，顯示記憶體頻率則是200或者250 MHz。原先兩張顯示卡都配備了64 MB [DDR SDRAM作為顯示記憶體](../Page/DDR_SDRAM.md "wikilink")，後來的Radeon 8500則配備了128 MB顯示記憶體，能夠從記憶交插模式中獲得額外的效能提升。

### 結構

Radeon 8500的基本結構與當時的其他顯示卡差不多；它擁有四個像素單元，每個像素單元擁有兩個紋理單元。它亦支援DirectX 8.1的[頂點著色引擎和像素著色引擎](https://zh.wikipedia.org/wiki/頂點著色引擎 "wikilink")，它的兩個頂點著色引擎被稱為**Charisma Engine II**，為新的頂點著色程式和舊的DirectX 7硬體T\&L都提供出色的效能。

R200支援像素著色器版本1.4，相對1.x版本的設計，這個修訂版本是意義重大的。鑑於PS1.2和1.3只是PS1.1的改進版， 8500擁有第一和唯一的ATI硬體加速鑲嵌繪圖引擎，名為"[Truform](https://zh.wikipedia.org/wiki/Truform "wikilink")"。它可以在立體模型上增加多邊形，令模型更平滑。這種技術儘管要求開發者支援，但卻不能完善支援；不幸地，"Truform"對所有[三維渲染方案而言都不是完美的](../Page/渲染.md "wikilink")，亦傾向不合意地對物體進行此動作。未來的ATI GPU並沒有硬體加速Truform，而只作出支援。未來的GPU一是透過CPU去模擬Truform，一是利用頂點著色程序模擬，兩者都不能與8500的Truform單元般有效率。

### 性能

Radeon 8500最令人掃興的事就是最初發佈的驅動程式。發佈時，顯示卡的效能十分差。最初的驅動程式充滿[程序错误](../Page/程序错误.md "wikilink")，一些功能甚至是不完整的。驅動程式不能完全支援顯核的功能。例如抗鋸齒功能只在[Direct3D](../Page/Direct3D.md "wikilink")的情況下有效，而且效能十分差。早期的驅動程式不能在很多的電腦遊戲中完美地運行，顯示出很多錯誤畫面，例如[多邊形被誤放和閃爍的](https://zh.wikipedia.org/wiki/多邊形 "wikilink")[紋理](https://zh.wikipedia.org/wiki/纹理映射 "wikilink")。當時[nVidia在Radeon](https://zh.wikipedia.org/wiki/nVidia "wikilink") 8500在網上預告的同一天推出了Detonator4驅動程式，nVidia的驅動程式大體上質量較高，亦提高了[GeForce 3的效能](https://zh.wikipedia.org/wiki/GeForce_3 "wikilink")。

更甚的是，有幾個評測網站揭露出Radeon 8500的真正效能比標準檢查程式所測出的低很多。評論者發現ATI偵測出執行檔Quake3.exe，強行將紋理過濾品質調低。[HardOCP的](https://zh.wikipedia.org/wiki/HardOCP "wikilink")[Kyle Bennett首先發現這個問題](https://zh.wikipedia.org/wiki/Kyle_Bennett "wikilink")，他將Quake3.exe改名為Quack.exe。結果，圖像品質提高了，效能卻慢了。

儘管如此，縱使使用了Detonator4驅動程式，Radeon 8500的效能依然勝過[GeForce 3](https://zh.wikipedia.org/wiki/GeForce_3 "wikilink")（8500預期中的對手）。在一些更快修正的環境中，Nvidia是使用Ti500對抗R200計劃。另外，更新了的驅動程式拉近了8500和Ti500的性能缺口，而8500亦比較便宜，提供額外的多媒體特色，例如支援雙顯示輸出。雖然GeForce 3 Ti200是第一張DirectX 8.0顯示卡，提供了128 MB顯示記憶體。而當時的高端顯示卡普遍只會採用64 MB顯示記憶體。結果，GeForce 3的限制使它不能取得全部的優勢，而Radeon 8500就能夠更成功的取得輝煌成就。

2002年年頭，為了與平價的GeForce 3 Ti200競爭，ATI推出了較低時脈的8500LE，由於其較低售價，亦有機會超頻回8500的水平，所以它受到OEMs和熱心者歡迎。GeForce 4 Ti 4200的延遲發佈，使ATI主動推出擁有128 MB顯示記憶體的8500/LE，保持了ATI的中高端產品線的流行程度。而All-In-Wonder (AIW) Radeon 8500 DV和AIW Radeon 8500 128 MB則提供更多功能，迫使Nvidia推出Personal Cinema版本的GeForce 4 Ti 4200。

### 更新

根據推測，8500XT (R250)是會被發佈的。它是用來對付[GeForce 4](https://zh.wikipedia.org/wiki/GeForce_4 "wikilink") Ti產品線，尢其是最高端的Ti 4600。根據預先發佈的消息，8500XT的核心和顯示記憶體的頻率將會是300 MHz。ATI，也許記得當年[3dfx所發生的事](https://zh.wikipedia.org/wiki/3dfx "wikilink")，認為就算Radeon 8500以300 MHz的頻率來運行，都不足以對抗GeForce 4 Ti4600；而且還會拖慢下一代支援[DirectX 9.0的產品的研發](https://zh.wikipedia.org/wiki/Radeon_R300 "wikilink")，令NVIDIA有機可乘。所以最好的辦法就是安排它成為中端產品，以取代較低複雜度的Radeon 9000。但這樣做會增加額外的生產成本，而較大的核心和電源消耗亦會阻礙它的發展。尤其要注意的是Radeon 8500和Radeon 9000核心需要增加電壓才能以300 MHz穩定運行，毫無疑問地，R250亦要面對此種問題由於其複雜度和相同的製造技術，結果就是產品品質不良，導致成本上升。[1](https://web.archive.org/web/20100810192217/http://www.xbitlabs.com/articles/video/display/radeon8500-overclocking.html) [2](http://www.pcstats.com/articleview.cfm?articleID=953)

## 主流產品線

Radeon 9000 (RV250)與[9700同時推出](https://zh.wikipedia.org/wiki/Radeon_R300 "wikilink")（ATI的新旗艦級產品）。這個晶片的紋理單元由兩個削減至一個，[頂點單元由兩個削減至一個](../Page/頂點_\(電腦圖學\).md "wikilink")，亦取消了"TruForm"單元、階梯式Z緩存。使核心配置成為4x1**像素／紋理**佈局。除了功能被削減外，亦精煉起來。紋理緩衝亦加倍地提升至4KB，改善了R200的效率。正是由於這樣，它的效能都有一定的競爭性，考慮到"R200"核心是較昂貴、較大和較消耗電能。在遊戲中，它的性能與[GeForce 4](https://zh.wikipedia.org/wiki/GeForce_4 "wikilink") MX440相當，它的優勢主要是由於能完整支援[DirectX](../Page/DirectX.md "wikilink") 8.1的頂點著色引擎和像素著色引擎。Radeon 9000在主流市場取代了毫無競爭力的[Radeon 7500](https://zh.wikipedia.org/wiki/Radeon_R100 "wikilink") (RV200)

後期的9000版本就是9200 (RV280)，支援[AGP](../Page/AGP.md "wikilink")-8X。但是，还有更便宜的版本，就是9200SE。9200SE的記憶體頻寬只有64-bit。另一個版本是Radeon 9250，於2004年夏季推出。它是9200的降頻版本。 它的核心與"RV280" GPU相同。它擁有的顯示記憶體通常比Radeon 9200多（128 MB甚至256 MB），充分利用當時低成本高密度的[DDR SDRAM](../Page/DDR_SDRAM.md "wikilink")，這是當時普遍的趨勢。

## 流動性

[MR9200logo.jpg](https://zh.wikipedia.org/wiki/File:MR9200logo.jpg "fig:MR9200logo.jpg") 衍生產品Mobility Radeon 9000於2002年初夏推出。它引起的催逼比桌面平台大，因為它是第一款支援DirectX 8的手提電腦顯示核心，在性能上遠勝過當時的對手（nVidia [GeForce 2](https://zh.wikipedia.org/wiki/GeForce_2 "wikilink") Go），功能比[GeForce 4](https://zh.wikipedia.org/wiki/GeForce_4 "wikilink") Go還多，而且採用了更先進的電源節省技術。它幫助ATI繼續保持其流動市場的估有率。發佈幾天後，Mobility 9000的OEM版本已開始運送。後來，Mobility Radeon 9200推出，它是桌面平台9200的衍生產品。

## 型號

*(Sorted by model)*

|                                      |       |
| ------------------------------------ | ----- |
| **桌面平台顯示卡**</font>                   |       |
| 形號                                   | 核心類型  |
| **8500**                             | R200  |
| **8500 LE**                          | R200  |
| **8500 XT**                          | R200  |
| **AIW 8500 DV**                      | R200  |
| **AIW 8500**                         | R200  |
| **9000**                             | RV250 |
| **9000 PRO**                         | RV250 |
| **9100**                             | R200  |
| **9200**                             | RV280 |
| **9200 SE**                          | RV280 |
| **9250**                             | RV280 |
| **Mobility Radeons和整合式圖像處理器**</font> |       |
| **MR9000**                           | M9    |
| **MR9000**                           | M9    |
| **MR9200**                           | M9+   |
| **MR9200**                           | M9+   |
| **9100 IGP**                         | RS300 |
| **9100 PRO IGP**                     | RS350 |
| **9000 IGP**                         | RC350 |

  - ¹ 核心配置：[像素流水線](https://zh.wikipedia.org/wiki/像素流水線 "wikilink")／[紋理拾取單元](https://zh.wikipedia.org/wiki/紋理拾取單元 "wikilink")：[頂點著色引擎](https://zh.wikipedia.org/wiki/頂點著色引擎 "wikilink")
  - ² 填充率：Mpx/s = 每秒百萬像素。Mtx/s = 每秒百萬[texel](https://zh.wikipedia.org/wiki/texel "wikilink")。

## 驅動程式

### 與UNIX有關的作業系統

[ATI沒有為基於](https://zh.wikipedia.org/wiki/ATI "wikilink")[BSD](../Page/BSD.md "wikilink")的作業系統推出過任何驅動程式，但就為執行在[Linux](../Page/Linux.md "wikilink")中的[X Window System提供驅動程式](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")。而基於PowerPC和[Mac OS X作業系統的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Mac mini和](https://zh.wikipedia.org/wiki/Mac_mini "wikilink")[iBook G4就採用了Radeon](../Page/IBook.md "wikilink") 9200顯示卡。

一些Linux用家社區的分支，which prefer to avoid the [IP](https://zh.wikipedia.org/wiki/Intellectual_property "wikilink")-encumbered ATI drivers due to stability and long term maintainability reasons, still prefer the R200-based chips, as they are among the fastest modern video cards with stable [open source](https://zh.wikipedia.org/wiki/open_source_software "wikilink") drivers.

### Windows驅動程式

ATI的[Catalyst Drivers支援所有R](https://zh.wikipedia.org/wiki/Catalyst_Drivers "wikilink")200以上的Radeon顯示卡，除了[Windows XP x64](../Page/Windows_XP_Professional_x64_Edition.md "wikilink")，直至Catalyst 6.6推出。ATI亦提供舊有驅動程式，Catalyst 6.11則支援9250以下的Radeon顯示卡。

## 參考資料

  - ["ATi Radeon 8500 64 MB Review (Part 1)"](http://www.beyond3d.com/reviews/ati/radeon8500/) by Dave Baumann, Beyond3D.Com, 2002年3月29日，retrieved 2006年1月14日
  - ["ATi Radeon 8500 64 MB Review (Part 2)"](http://www.beyond3d.com/reviews/ati/radeon8500p2/) by Dave Baumann, Beyond3D.Com, 2002年4月4日，retrieved 2006年1月14日
  - ["ATI RADEON 9100 Based Graphics Cards Review: Gigabyte and PowerColor Solutions"](https://web.archive.org/web/20060112042426/http://www.xbitlabs.com/articles/video/display/radeon-9100.html) by Tim Tscheblockov, X-Bit Labs, 2003年2月5日，retrieved 2006年1月9日
  - ["ATI's Radeon 8500 & 7500: A Preview"](http://www.anandtech.com/showdoc.aspx?i=1517) by Anand Lal Shimpi, Anandtech, 2001年8月14日，retrieved 2006年1月9日
  - ["ATI's Radeon 8500: She's got potential"](http://www.anandtech.com/showdoc.aspx?i=1544) by Anand Lal Shimpi, Anandtech, 2001年10月17日，retrieved 2006年1月9日
  - ["ATI R200 Chip Details"](http://www.beyond3d.com/misc/chipcomp/?view=chipdetails&id=13&orderby=release_date&order=Order&cname=) by Beyond3D, retrieved 2006年1月9日
  - ["ATI RV250 Chip Details"](http://www.beyond3d.com/misc/chipcomp/?view=chipdetails&id=16&orderby=release_date&order=Order&cname=) by Beyond3D, retrieved 2006年1月9日
  - ["ATI RV280 Chip Details"](http://www.beyond3d.com/misc/chipcomp/?view=chipdetails&id=17&orderby=release_date&order=Order&cname=) by Beyond3D, retrieved 2006年1月9日
  - ["How ATI's Radeon 8500 drivers 'optimize' Quake III"](http://techreport.com/etc/2001q4/radeon-q3/index.x?pg=1) by Scott Wasson, The Tech Report, 2001年11月6日，retrieved 2006年6月1日
  - ["Optimizing or Cheating Radeon 8500 Drivers"](http://www.hardocp.com/article.html?art=MTEx) by Kyle Bennett, HardOCP, 2001年10月23日，retrieved 2006年6月1日

[Category:ATI顯示卡](https://zh.wikipedia.org/wiki/Category:ATI顯示卡 "wikilink")