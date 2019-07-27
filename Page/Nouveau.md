[The_Linux_Graphics_Stack_and_glamor.svg](https://zh.wikipedia.org/wiki/File:The_Linux_Graphics_Stack_and_glamor.svg "fig:The_Linux_Graphics_Stack_and_glamor.svg")
**nouveau** ()
是一個，是為[Nvidia的](../Page/英伟达.md "wikilink")[显示卡](../Page/显示卡.md "wikilink")所編寫，也可用於屬於[系统芯片](../Page/系统芯片.md "wikilink")的[NVIDIA
Tegra系列](https://zh.wikipedia.org/wiki/NVIDIA_Tegra "wikilink")，此驅動程式是由一群獨立的軟體工程師所編寫，Nvidia的員工也提供了少许幫助。

該專案的目標為利用[逆向工程](../Page/逆向工程.md "wikilink")Nvidia的[專有](../Page/专有软件.md "wikilink")[Linux](../Page/Linux.md "wikilink")驅動程式來創造一個開放原始碼的驅動程式。由讓[freedesktop.org託管的](https://zh.wikipedia.org/wiki/freedesktop.org "wikilink")[X.Org基金会](../Page/X.Org基金会.md "wikilink")所管理，並以[Mesa
3D的一部份進行散布](../Page/Mesa_3D.md "wikilink")，該專案最初是基於只有[2D繪圖能力的](../Page/二维计算机图形.md "wikilink")「nv」自由與開放原始碼驅動程式所開發的，但[紅帽公司](../Page/紅帽公司.md "wikilink")的開發者Matthew
Garrett及其他人表示原先的程式碼被混淆處理過了\[1\]。nouveau以[MIT許可證](../Page/MIT許可證.md "wikilink")授權。

專案的名稱是從法文的「nouveau」而來，意思是「新的」\[2\]。這個名字是由原作者的的IRC客戶端的自動取代功能所建議的，當他鍵入「nv」時就被建議改為「nouveau」\[3\]。

## 軟體架構

[Gallium3D_example_matrix.svg](https://zh.wikipedia.org/wiki/File:Gallium3D_example_matrix.svg "fig:Gallium3D_example_matrix.svg")
Nouveau是一個Gallium3D風格的驅動程式，並以DRI的方式運作。它結合了兩個[内核](../Page/内核.md "wikilink")元件：直接呈現管理員及KMS驅動程式，以及使用者空間元件的libDRM及[Mesa
3D](../Page/Mesa_3D.md "wikilink")。

Nouveau計畫支援所有的Nvidia微架構：
[Tesla](../Page/NVIDIA_Tesla.md "wikilink")、Fermi、Kepler、Maxwell及即將釋出的Pascal和Volta。

### 調整頻率

由於技術原因，Nvidia的顯示卡都會以一個較低的頻率（稱為「時脈」）啟動，在啟動後，驅動程式就會設定一個較高的頻率。因為缺乏顯示卡的相關文件，nouveau最初並不具備這個功能，這導致了效能的顯著損失\[4\]。在2014年6月終於找到解決的方法，調整頻率功能的支援終於被加入到nouveau中\[5\]\[6\]\[7\]。

### 工具

[Renouveau-screenshot-on-debian-with-kde.png](https://zh.wikipedia.org/wiki/File:Renouveau-screenshot-on-debian-with-kde.png "fig:Renouveau-screenshot-on-debian-with-kde.png")（REnouveau是左上角的藍色視窗）\]\]
與[AMD形成強烈的對比](../Page/超威半导体.md "wikilink")，Nvidia並沒有提供任何關於顯示卡的文件。
nouveau的開發者被迫使用淨室[逆向工程](../Page/逆向工程.md "wikilink")以獲得讓他們可以編寫nouveau的資料。該專案使用多種自訂的程式以協助其逆向工程，像是MmioTrace（記憶體映射I/O追蹤）\[8\]，REnouveau及Valgrind
MMT\[9\]。參見[Valgrind](../Page/Valgrind.md "wikilink")。

#### REnouveau

REnouveau
（nouveau逆向工程）\[10\]是一個以[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")授權（使用[SDL](https://zh.wikipedia.org/wiki/SDL "wikilink")）的收集大多數nouveau逆向工程資料的程式。NVIDIA專有驅動程式的使用者可以透過REnouveau提供他們的NVIDIA顯示卡的硬體資訊的方式來協助nouveau的開發。REnouveau以複製目前顯示卡[MMIO標示空間的方式運作](../Page/存储器映射输入输出.md "wikilink")，然後繪製一些圖形並取得另一份MMIO的複製品，並輸出差異部份到一個文字檔中。它執行了大約六[打不同的測試](https://zh.wikipedia.org/wiki/打 "wikilink")，並壓縮成[tar](https://zh.wikipedia.org/wiki/tar "wikilink").[bz2壓縮檔](https://zh.wikipedia.org/wiki/bzip2 "wikilink")，然後以[电子邮件](../Page/电子邮件.md "wikilink")寄送，並自動轉送到專案的FTP伺服器供開發者進行分析。

## 已支援的介面

只有[内核](../Page/内核.md "wikilink")可以直接存取硬體，包括顯示卡。終端使用者軟體透過多種為特定功能所編寫的[应用程序接口](../Page/应用程序接口.md "wikilink")存取。Nouveau被以Gallium3D風格驅動程式的方式編寫，這就意味著它與其他Gallium3D驅動程式共享大多數的程式碼。多數此種共享程式碼都在[Mesa
3D中可看到](../Page/Mesa_3D.md "wikilink")，並由各[Linux发行版](../Page/Linux发行版.md "wikilink")進行散佈。

### 渲染API

[Mesa
3D及驅動程式都包含了多](../Page/Mesa_3D.md "wikilink")[渲染](../Page/渲染.md "wikilink")界面的支援，設計則交由使用者空間的程式，像是[电子游戏](../Page/电子游戏.md "wikilink")或[计算机辅助设计](../Page/计算机辅助设计.md "wikilink")軟體等，存取對應的SIP塊。

#### Direct3D

[Direct3D](../Page/Direct3D.md "wikilink")第9版的自由及開放原始碼實做在Mesa
3D可看到。它可以被nouveau所使用。但任何使用Direct3D的軟體都是為Windows所編寫的，所以這個軟體只能在Linux上與[Wine](../Page/Wine.md "wikilink")一起使用。

#### OpenGL

渲染介面[OpenGL](../Page/OpenGL.md "wikilink")是由[科纳斯组织](../Page/科纳斯组织.md "wikilink")開發的。這個API的實做是Nvidia或AMD專有驅動程式的一部份。另一種實做方式是由自由軟體愛好者所編寫的，像是Brian
Paul或是Intel及其合作者在Mesa
3D中所實做。因為是Gallium3D風格的驅動程式，Nouveau只需要一點小修改就可以與這個實做一同運作。

### 視訊加速

Mesa
3D支援多重呈現界面，所有已設計好的使用者空間程式，像是[GStreamer](../Page/GStreamer.md "wikilink")等程式都可以存取相對應的SIP塊。也可以使用為了這個目的設計的電子電路，雖然這樣做會相對於使用[PureVideo來說消耗更多的電量](../Page/NVIDIA_PureVideo.md "wikilink")。

Nouveau支援[PureVideo技術](../Page/NVIDIA_PureVideo.md "wikilink")，並提供[VDPAU](../Page/VDPAU.md "wikilink")及XvMC的方式來存取它\[11\]。

### 計算用API

#### OpenCL

[OpenCL](../Page/OpenCL.md "wikilink")

#### CUDA

Nouveau不支援[CUDA](../Page/CUDA.md "wikilink")技術。

## 歷史

[Gallium3D_vs_DRI_graphics_driver_model.svg](https://zh.wikipedia.org/wiki/File:Gallium3D_vs_DRI_graphics_driver_model.svg "fig:Gallium3D_vs_DRI_graphics_driver_model.svg")的程式碼。\]\]
Nouveau原先是使用[Mesa
3D的DRI來呈現](../Page/Mesa_3D.md "wikilink")[三维计算机图形](../Page/三维计算机图形.md "wikilink")，從而允許使用[圖形處理器](../Page/圖形處理器.md "wikilink")直接加速3D應用程式的圖形繪製；但在2008年2月對DRI的支援停止，並轉移到新的Gallium3D\[12\]\[13\]。

在2013年9月23日\[14\]，Nvidia公開宣佈他們將會釋出一些關於他們的圖形處理器的文件，來解決NVIDIA的圖形處理器在Nouveau上的可用性。

截至2014年1月31日，Nvidia的Alexandre
Courbot致力於在一個廣泛的修補程式集中加入nouveau對GK20A（[Tegra
K1](https://zh.wikipedia.org/wiki/NVIDIA_Tegra#Tegra_K1系列 "wikilink")）的初步支援\[15\]。

## 採用

[Linux_Graphics_Stack_2013.svg](https://zh.wikipedia.org/wiki/File:Linux_Graphics_Stack_2013.svg "fig:Linux_Graphics_Stack_2013.svg")圖形堆疊的說明：直接呈現管理員、KMS驅動程式、libDRM、[Mesa
3D](../Page/Mesa_3D.md "wikilink")、顯示伺服器皆為視窗型系統的元件，但玩遊戲時並不直接需要這些元件。\]\]

nouveau驅動程式已被以下Linux發行版作為Nvidia顯示卡的預設開放原始碼驅動程式：
[Fedora](../Page/Fedora.md "wikilink")
11\[16\]及[openSUSE](https://zh.wikipedia.org/wiki/openSUSE "wikilink")
11.3\[17\]。它也被包含在[Ubuntu](../Page/Ubuntu.md "wikilink")
9.04的套件庫中\[18\]，並在Ubuntu 10.04中作為預設的驅動程式\[19\]
它也包括在[Debian](../Page/Debian.md "wikilink")的套件庫中\[20\]。這個驅動程式包含在這些作業系統中，但是並不允許3D硬體加速。

2009年12月10日被[Linux內核](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")2.6.33版接受成為暫時驅動程式\[21\]。

Fedora
13（2010年5月）允許安裝mesa-dri-drivers-experimental軟體包，可以此啟用實驗性的3D圖形硬體加速，若沒有安裝這個軟體包就無法啟用。

3D加速被Ubuntu 10.10包含在「libgl1-mesa-dri-experimental」軟體包中。

[Compiz](../Page/Compiz.md "wikilink")建議使用nouveau而非Nvidia專有驅動程式\[22\]。

2012年3月26日，nouveau驅動程式被標示為穩定，並從Linux核心的暫時驅動程式提升為核心驅動程式\[23\]。

2014年6月，Codethink回報可以在[Linux內核](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")
3.15上與[Wayland](../Page/Wayland.md "wikilink")一同執行，是使用EGL且是[Tegra
K1上的](https://zh.wikipedia.org/wiki/NVIDIA_Tegra#Tegra_K1系列 "wikilink")「100%開放原始碼的顯示卡驅動程式堆疊」\[24\]。

## 參見

  -
  - [NVIDIA顯示核心列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表 "wikilink")

## 參考資料

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")
[Category:Linux驱动程序](https://zh.wikipedia.org/wiki/Category:Linux驱动程序 "wikilink")
[Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink")
[Category:使用C語言的自由軟體](https://zh.wikipedia.org/wiki/Category:使用C語言的自由軟體 "wikilink")
[Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.