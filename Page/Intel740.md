> 本文内容由[Intel740](https://zh.wikipedia.org/wiki/Intel740)转换而来。


[Intel_i740_on_EP-BXT.JPG](https://zh.wikipedia.org/wiki/File:Intel_i740_on_EP-BXT.JPG "fig:Intel_i740_on_EP-BXT.JPG") **Intel740**（常被簡稱為i740）是[英特爾公司研發的](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[顯示核心](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")。它是英特爾唯一一款被用於獨立型顯示卡上的顯示核心，於1998年2月正式發佈。

Intel於1997年7月收购了 [Chips and Technologies](https://zh.wikipedia.org/wiki/Chips_and_Technologies "wikilink") 公司\[1\]。這間公司專注研發笔记本電腦的2D顯示核心。通過收购這間公司，Intel得到了2D顯示核心的技術。3D技術方面是在[Real3D公司的協助下研发的](https://zh.wikipedia.org/wiki/Real3D "wikilink")。Real3D是[洛克西德·馬丁的子公司](https://zh.wikipedia.org/wiki/洛克西德·馬丁 "wikilink")，而Intel持有該公司的20％股权，所以得以與REAL3D合作研發顯示核心。它支持[AGP](../Page/AGP.md "wikilink") 2X，有8MB顯示記憶體。像素填充率是55Mpixels/s，支持DVD解压，亦支持3D加速，包括[OpenGL](../Page/OpenGL.md "wikilink")。

i740是第一款采用HyperPipelined 3D架构的顯示核心，亦是64bit架构。它採用[0.35微米工藝製造](https://zh.wikipedia.org/wiki/0.35微米製程 "wikilink")，核心頻率與[AGP](../Page/AGP.md "wikilink")接口同步，即是預設值為66MHz。通过提高AGP接口的頻率，就可以將核心超频。除了3D圖形顯示外，i740提供出色的2D显示和视频播放效果。

i740的另一个目的是推广[AGP](../Page/AGP.md "wikilink")标准。i740是第一款AGP 2X显示卡，i740的高銷量使其他顯示核心厂商接納[AGP](../Page/AGP.md "wikilink")标准。

## HyperPipelined 3D架构

這個架构有幾個特點：

  - Precise Pisel Interpolation - 配合纹理引擎，通過在像素值和颜色值的插补过程中，就能得到精确的结果。目的是提高顯示質素。

<!-- end list -->

  - Parallel Data Processing - 允许核心同时执行几个命令，在一个畫面中实现数個特性時，都能保持高性能。

<!-- end list -->

  - Direct Memory Execution - 使核心能利用系統記憶體儲存纹理數據，這樣纹理大小理伦上變成无限制。

## 效能

在游戏應用中，i740的效能约为Voodoo2的一半，亦低過Voodoo。在3D Winbench 98的標準檢查程式中，它的效能竟然與Voodoo2处于同一水平，所以有人認為顯示卡的驅動程式欺騙了該檢查程式。

## 後續版本

在1999年4月27日，英特爾公佈了Intel740的後續版本：Intel752（常被簡稱為i752）。它的核心架构是128bit，核心频率为100MHz，顯示記憶體频率为133MHz，最大支援16MB顯示記憶體。核心擁有兩條像素流水線，多边形生成率為每秒300万个，像素填充率是每秒1亿。立體功能方面，核心支持环境雾化、单周期纹理合成和16bit[深度缓冲](../Page/深度缓冲.md "wikilink")。特效方面，它支援[凸凹纹理映射和纹理压缩](https://zh.wikipedia.org/wiki/凸凹纹理映射 "wikilink")。但英特爾在發售前決定將i752整合在主機版上，取消獨立型顯示卡，所以i752只有工程開發版的獨立顯示卡產品流傳於市場上。整合i752顯示卡的主機板系統記憶體會透過Dynamic Video Memory Technology技术成為顯示記憶體。這個技術會從系統記憶體劃出1MB作為顯示記憶體，有需要時，驅動程式會彈性地劃出更多。這個技術有點像現時的[HyperMemory技術](https://zh.wikipedia.org/wiki/HyperMemory "wikilink")。

後來，Intel752改為Intel754以支援AGP 4X，整合於i810E晶片組中，其他規格與i752相同。

## 結語

藉著Intel的霸主地位和便宜的价格，很多厂商都推出了有關i740的产品，产品价格持續下降，使得i740的銷量頗高，亦提高了Intel在圖形核心市场的占有率。但Intel原先預計i740有不錯的效能，可惜事與願違，不能在獨立顯示卡市場取得一席之地。亦令Intel意識到主流市場才是其目標。其後，Intel將i740图形核心整合到芯片组内，成為i810和i815整合式芯片组，再度提高其市场占有率。i740亦為其後Intel成為市場一哥奠下良好基礎。

i740使Intel成為低階顯示卡市場的霸主，間接迫使[S3 Graphics](../Page/S3_Graphics.md "wikilink")（旭上）和[Trident Microsystem從顯示卡市場敗退](../Page/泰鼎微系統.md "wikilink")。最後S3被[VIA併購](https://zh.wikipedia.org/wiki/VIA "wikilink")；Trident則是將顯示卡部門售予[SiS](https://zh.wikipedia.org/wiki/SiS "wikilink")，轉往DVD/HDTV/Video視訊處理晶片方面發展。

## 參考

## 外部連結

  - [Intel740 Graphics Accelerator Datasheet](https://web.archive.org/web/20080224051823/http://download.intel.com/support/graphics/intel740/29061902.pdf)
  - [泡泡网 - Intel显示芯片回顾](http://www.pcpop.com/doc/0/180/180663.shtml)

[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink") [Category:英特爾產品](https://zh.wikipedia.org/wiki/Category:英特爾產品 "wikilink")

1.  [Intel独显历史回顾](http://www.pcpop.com/doc/0/399/399731_2.shtml)