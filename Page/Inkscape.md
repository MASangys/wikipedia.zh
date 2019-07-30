****是[向量圖形編輯器](https://zh.wikipedia.org/wiki/矢量圖形 "wikilink")，以[自由軟體授權發佈與使用](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")。該[軟體的開發目標是成為強大的](https://zh.wikipedia.org/wiki/軟體 "wikilink")[繪圖軟體](https://zh.wikipedia.org/wiki/繪圖軟體 "wikilink")，且能完全遵循與支持[XML](../Page/XML.md "wikilink")、[SVG及](https://zh.wikipedia.org/wiki/SVG "wikilink")[CSS等開放性的標準格式](https://zh.wikipedia.org/wiki/CSS "wikilink")，而且是[跨平台的應用程式](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，支援[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Linux](../Page/Linux.md "wikilink")及[類UNIX版等作業系統](https://zh.wikipedia.org/wiki/Unix-like "wikilink")。

## 發展過程

Inkscape的開發始於2003年，最初是[Sodipodi的分支](https://zh.wikipedia.org/wiki/Sodipodi "wikilink")、[分線發展](https://zh.wikipedia.org/wiki/分線發展 "wikilink")（fork），Sodipodi自身則是在1999年以Raph Levien的Gill為基礎開始。

此一分線發展的主導來自一個四人團隊，這四人之前為Sodipodi的開發人員，他們分別是Ted Gould、Bryce Harrington、Nathan Hurst、以及*MenTaLguY*，他們對原有專案目標有不同的見解體認，並未公開地進行協力貢獻，且技巧性的否認他們的動機用意是為了分線發展。此外，他們聲明Inkscape的發展是嘗試與專注在完整實現SVG的標準上，相對的Sodipodi的發展強調是在於建立一套一般性用途的向量圖形編輯器，因此可能難以兼顧SVG方面的發展與支援性。

分線發展後，Inkscape也變更了幾項事物，例如開發所用的程式語言從[C換成](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")；而库方面也換成[GTK+工具套件的C](https://zh.wikipedia.org/wiki/GTK+ "wikilink")++綁定（[gtkmm](https://zh.wikipedia.org/wiki/gtkmm "wikilink")）、重新設計[使用者介面並加入多項的新功能特點](https://zh.wikipedia.org/wiki/人机界面 "wikilink");事实上的图像使用的语言主要是[python插件也是一样的](https://zh.wikipedia.org/wiki/python "wikilink")。雖然Inkscape對SVG標準的支援實現是採階段性的精進強化路線，不過至今仍未完整。

再者，Inkscape聲明在專案的開發執行上將不採行「由上到下的治理」（top-down governance）架構，而是提倡平等式文化，權柄作法或個別開發者的獨特才幹與作為，對Inkscape的發展而言都會造成拖累影響。因此，此專案特別強調其原始程式碼是放在任何參與專案活動的開發者都可以访问的位置，並在更大的開放原碼社群中進行參與及分享（這經常會形成跨專案的推動以及專案的分立，例如：[Open Clip Art Library](https://zh.wikipedia.org/wiki/Open_Clip_Art_Library "wikilink")）。

雖然專案發起人依舊在決策程序上有高度代表性，不過許多新近參與者也扮演著關鍵的角色任務，例如Bulia Byak就為Inkscape的使用者介面帶來根基性的新架構，新架構為今日的Inkscape帶來新的呈現畫面。

此後，由於英國[Xara公司宣佈計畫將其所屬的繪圖應用程式](https://zh.wikipedia.org/wiki/Xara公司 "wikilink")：[Xara Xtreme以開放原碼方式接續發展](https://zh.wikipedia.org/wiki/Xara_Xtreme "wikilink")，這讓Inkscape的開發團隊深感興趣，並期望兩套軟體在後續發展上能緊密合作，嘗試找尋一種方式讓兩個軟體專案能共享原始程式碼、共享開發協調的心力成效等，並且使開放原碼在圖形方面的卓越表現，也能用在專屬軟體世界的各層面與環節。

## 版本

  - 0.92版（2016年1月4日，最新版）新特性包括网格渐变、更好的SVG2与CSS3支持、新路径效果、铅笔工具的交互平滑、管理所有绘图元素的对话框等\[1\]
  - 0.91版（2015年1月30日）改用一個新的內部[彩現引擎Cairo](https://zh.wikipedia.org/wiki/彩現 "wikilink")，有更好的效能。新增了測量工具，可以量測物件之間的距離或交叉的角度。貼齊物件功能獲得了改善。此外也增加、改善了對多種圖片格式的支援，例如支援輸出FXG、SIF和[HTML5](../Page/HTML5.md "wikilink")格式，改善對PDF、EPS、PS+LaTeX的支援。\[2\]
  - 0.48版（2010年8月23日）加入新的噴塗工具、多徑編輯、文本上標/下標等功能
  - 0.47版（2009年11月24日）加入了定时自动保存，螺旋曲线，自动平滑节点，超过200个预置过滤器等
  - 0.46版（2008年3月24日）加入新的SVG濾鏡、支援開啟PDF檔案、修正OpenType/PostScript和Type1字型支援等。
  - 0.45版（2007年1月15日）加入高斯模糊（Gaussian Blur）
  - 0.44版（2006年6月24日）加入階層對話方塊，支援剪裁與遮罩，強化PDF的透明性匯出，及效能強化等。
  - 0.43版（2005年11月19日）加入了連接器工具、協同編輯、手寫板壓力／角度感應能力、以及強化節點工具。
  - 0.42版（2005年7月26日）加入文字直書功能、風格走文功能、強化效果支援、以及新的漸層工具。
  - 0.41版（2005年2月10日）加入翻製疊磚工具及顏色追蹤，並修補許多軟體錯誤（臭蟲）。
  - 0.40版，加入了圖層、點陣圖追蹤，以及在路徑上使用文字。
  - 0.39版，首次用Pango函式庫發佈，如此可支援更多的語系，如支援標示器、翻製、以及花紋填色。
  - 0.38版，發佈此版主要在修補[錯誤](../Page/程序错误.md "wikilink")，不過也增加了文字的突端、間隔、多態漸層等功能特點，以及許多使用性的強化。
  - 0.37版，布林路徑操作以及路徑內插、外貼。
  - 0.36版，首次以改編過的新使用者介面來發佈，介面上使用了功能選單，以及在文件視窗中加入了脈絡感應工具列。
  - 0.35版（2003年10月14日）是Inkscape發佈的首版，與0.32版的Sodipodi非常相似。\[3\]

## 特點

### 建立物件

#### 繪圖

  - 鉛筆工具（徒手描繪，且可在路徑內進行填色）。
  - 筆式工具（運用直線與貝茲曲線與來建立路徑）。
  - 筆畫工具（運用[電子手寫板](https://zh.wikipedia.org/wiki/電子手寫板 "wikilink")（tablet）可用筆畫的壓力、角度來進行描繪與填色）。

#### 形樣工具

  - 矩形（可選擇使用圓角化）。
  - 圓形、橢圓形或弧形（可選擇圈、弧、段）。
  - 星形／多邊形（可選擇尖角數、輪廓比例、圓角化、隨機等）。
  - 螺旋形

#### 其他工具

  - 文字工具（橫書、多列或直書）
  - 連結性的[位图](../Page/位图.md "wikilink")圖形，無論是匯入或是光柵化的選取物件（針對嵌入的連結圖形，Inkscape另有一個個別獨立的公用程式可以運用）
  - 翻製（以「活性」方式連結物件的複製）。相近的功效在其他程式上稱為「symbols」。

### 物件操作、運用

  - [仿射变换](../Page/仿射变换.md "wikilink")／Affine transformation（移動、縮放、旋轉、傾斜），可用互動操作也可透過數字值設定。
  - 對象之間的層次關係（Z-order）操作。
  - 物件群化、群組化，對於未群化設計的物件也可用同時多個物件的選取來選定性群化（select in group），「enter the group」則可使選定成為臨時性的層階。
  - 層階化（即：圖層），運用此方式可以鎖定及／或隱藏個別的層階，重新排置層階等等，層階也可採行階層樹的結構。
  - 物件可以複製、貼上。
  - 對齊與分佈指令，包括網格排列（拆散物件：嘗試邊對邊等距）、隨機排列（在兩個維度上隨機置中）、去除重疊。
  - 透過工具可進行填色花紋的翻製，使用[壁紙樣本](https://zh.wikipedia.org/wiki/壁紙樣本 "wikilink")（wallpaper symmetries）加上可任意變化運用的縮放、偏移、旋轉、色彩變換等，也可選擇隨機變化。
  - 可快速輔助、導引操作的提示格線。

### 填充與邊框

  - 選色器（[RGB](../Page/三原色光模式.md "wikilink")、[HSL](https://zh.wikipedia.org/wiki/HSL_color_space "wikilink")、[CMYK](../Page/印刷四分色模式.md "wikilink")、色圈）
  - 取色工具、填色工具（滴管）
  - 物件間複製／貼上風格屬性
  - 可在畫布上進行漸層編輯，包括線性漸層、放射狀漸層等操控。
  - 漸層編輯器能夠進行多處的停點[漸層](https://zh.wikipedia.org/wiki/漸層 "wikilink")（image gradient）。
  - 花紋填充。
  - 遮罩。
  - 運用預先定義的潑灑花紋，可對邊框進行花紋潑灑。
  - 路徑上的標示（如：箭頭）。

### 路徑上的操作

  - 節點編輯：移動節點及[貝茲曲線](../Page/貝茲曲線.md "wikilink")（Bezier curve）掌控，節點的對齊、分佈，節點群的縮放、旋轉，「節點雕刻」（多處節點的比例編輯）。
  - 路徑轉換（文字物件或形樣），包括路徑充填的轉換。
  - [布林運算](../Page/逻辑运算符.md "wikilink")（合併／union、割去／intersection、交集／difference、排除／exclusion、分開／division）
  - 運用可變的路徑起訖點可簡化路徑。
  - 路徑插入及增設，包括動態及連結偏移物件。
  - 路徑剪貼（非破壞性剪貼）。
  - 點陣追蹤（黑白、彩色都適用）。

### 文字支援

  - 多列文字（SVG 1.0/1.1 <text>）
  - 在框內進行文字的直式書寫（<flowRoot>，之前建議用SVG 1.2）
  - 可完全在畫布（繪圖區）中進行編輯，包括風格文字的間距。
  - 可使用任何已經安裝於系統內的[外框字型](https://zh.wikipedia.org/wiki/外框字型 "wikilink")（outline font）
  - 透過[Pango](../Page/Pango.md "wikilink")函式庫（例如處理[希伯來文](https://zh.wikipedia.org/wiki/希伯來文 "wikilink")、[阿拉伯文](https://zh.wikipedia.org/wiki/阿拉伯文 "wikilink")、[泰文等文字](https://zh.wikipedia.org/wiki/泰文 "wikilink")）可支援使用任何的描述語言及程式語言。
  - 字母[上下突出端](https://zh.wikipedia.org/wiki/上下突出端 "wikilink")（Kerning）、[字母間隔](https://zh.wikipedia.org/wiki/字母間隔 "wikilink")（letterspacing）、列間隔等的調整。
  - 路徑上可走文字（無論文字或路徑都可持續再編輯）。

### 着色、上色

  - 縮放倍數：1倍～256倍。
  - 完整的抗鋸齒顯示。
  - 支援「Alpha透明」，可用在顯示以及.PNG格式图片文件的导出。
  - 在互動轉化上，完全「依據您所拖放」來為物件著色。\<\!--
  - Outline (wireframe) mode - 0.44 --\>

### 导入/导出

Inkscape支持以下格式的导入：

  - [SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")：包括包含**Inkscape**编辑信息的SVG和普通的SVG
  - [SVGZ](https://zh.wikipedia.org/wiki/SVGZ "wikilink") ：使用[ZIP格式](../Page/ZIP格式.md "wikilink")压缩的SVG
  - [PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")
  - [AI](https://zh.wikipedia.org/wiki/AI "wikilink")：Adobe Illustrator的默认矢量图格式
  - 常见的位图格式：JPEG, PNG, GIF, etc.
  - 通过插件可以导入的图片格式： PS，EPS，Dia，Xfig，Sketch，CorelDRAW，CGM ，sK1

Inkscape支持以下格式的导出：

  - [SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")
  - [SVGZ](https://zh.wikipedia.org/wiki/SVGZ "wikilink")
  - [PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")： 可同时导出[Latex文件](https://zh.wikipedia.org/wiki/Latex "wikilink")
  - [PS和](https://zh.wikipedia.org/wiki/PS "wikilink")[EPS](../Page/EPS.md "wikilink")
  - [AI](https://zh.wikipedia.org/wiki/AI "wikilink")... 不支援匯出ai檔案
  - [LaTeX](https://zh.wikipedia.org/wiki/LaTeX "wikilink")
  - POV：POVRay的脚本格式
  - HPGL：惠普图形语言

### 其他

  - 用於繪圖的連接器。
  - 可在網路上使用[協同編輯器](https://zh.wikipedia.org/wiki/協同編輯器 "wikilink")（Collaborative real-time editor，例如：[電子白板](https://zh.wikipedia.org/wiki/電子白板 "wikilink")）
  - 在XML編輯器中可直接觀察與編輯文件樹（document tree）。
  - 匯出成[PNG](../Page/PNG.md "wikilink")檔。
  - 匯出成[PostScript](../Page/PostScript.md "wikilink")及[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")（不過，花紋充填及灰階等的匯出，目前在0.44版上仍不管用）
  - 可選擇用命令列來執行會出、轉換、或分析SVG檔。
  - [RDF標記格式的](https://zh.wikipedia.org/wiki/RDF "wikilink")[後設](../Page/後設.md "wikilink")資料（作者、日期、授權等等）
  - 支援[插件](../Page/插件.md "wikilink")（或稱：扩展）。

## 介面與使用性

Inkscape專案在開發上的一項優先原則是介面的一致連貫性及[使用性](https://zh.wikipedia.org/wiki/優使性 "wikilink")，包括必須遵循、合乎[GNOME](../Page/GNOME.md "wikilink")的[人機介面指導方針](https://zh.wikipedia.org/wiki/人機介面指導方針 "wikilink")（Human Interface Guidelines）、通用整體性的鍵盤操作、以及便利的畫布（繪圖區）上編輯。Inkscape從專案開始之初在使用性方面就有極大幅度的意義進展。

減少浮動對話方塊的使用，同時可用鍵盤捷徑\[4\]，或者編輯視窗中的接駁工具列，此外位在視窗上端的工具控制列，則會隨時顯示與目前所用工具相關的資訊與微調項目。

所有的變化、轉換（不包含搬移，但包含縮放與旋轉）都有對應的鍵盤捷徑可用，同時有協調一致的鍵盤捷徑修改器（例如：按Alt再按1，可對現有縮放畫面中的逐點像素進行變化；按Shift再按10，則可進行同時、集體性的變化）；節點工具也可如物件選取一樣地用鍵盤按鍵操作。絕大多數的共通性操作（如轉化、縮放、Z-Order等）都有便利的單鍵操作\[5\]。

Inkscape也提供浮動的工具小技巧提示，此外也有狀態列能提供所有按鈕、控制、命令、按鍵、以及畫布操控等的使用提示。此外也有完整的鍵盤、滑鼠的對應參照（在HTML與SVG方面），以及在SVG方面的若干互動指導。

[Sodipodi](https://zh.wikipedia.org/wiki/Sodipodi "wikilink")（Inkscape的前身）的部分介面是以[CorelDRAW](../Page/CorelDRAW.md "wikilink")及[GIMP](../Page/GIMP.md "wikilink")為基礎，現有Inkscape的介面也多少受到[Xara Xtreme的影響](https://zh.wikipedia.org/wiki/Xara_Xtreme "wikilink")。

## 註釋

## 關連條目

  - [矢量图形编辑器列表](../Page/矢量图形编辑器列表.md "wikilink")
  - [開放美工圖庫](../Page/開放美工圖庫.md "wikilink") - 以[公有领域](../Page/公有领域.md "wikilink")（Public Domain，簡稱：PD）方式提供的美工圖庫
  - [SVG](https://zh.wikipedia.org/wiki/SVG "wikilink")

## 外部連結

  - [Inkscape的專案網站](https://archive.is/20130113005956/http://www.inkscape.org/index.php)

  - GnomeDesktop.org：[Inkscape的新聞](https://web.archive.org/web/20051029193024/http://gnomedesktop.org/taxonomy/term/79)

[Category:SourceForge專案](https://zh.wikipedia.org/wiki/Category:SourceForge專案 "wikilink") [Category:向量圖形編輯器](https://zh.wikipedia.org/wiki/Category:向量圖形編輯器 "wikilink") [Category:協同即時編輯器](https://zh.wikipedia.org/wiki/Category:協同即時編輯器 "wikilink") [Category:位图编辑软件](https://zh.wikipedia.org/wiki/Category:位图编辑软件 "wikilink") [Category:自由矢量图形软件](https://zh.wikipedia.org/wiki/Category:自由矢量图形软件 "wikilink") [Category:GTK](https://zh.wikipedia.org/wiki/Category:GTK "wikilink") [Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")

1.
2.
3.  各專業用詞與軟體工具名詞翻譯參考自Inkscape 0.44版軟體內的中文介面資訊。
4.  此處雖稱：捷徑（Shortcut），但意思與過去的熱鍵（Hot Key）相近。
5.  單鍵操作的便利性在於按一下即可，相對於此的是組合鍵、複合鍵操作，必須按住一個鍵再加按其他鍵才能操作，比較不方便。