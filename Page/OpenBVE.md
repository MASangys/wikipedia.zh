**OpenBVE**是一个独立开发的[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[列车模拟器](../Page/列车模拟器.md "wikilink")，OpenBVE的名称来源于 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink")，即“开放的 BVE”。支持車内外視角自由觀察、立體駕駛室等。OpenBVE 使用 [OpenGL](../Page/OpenGL.md "wikilink") 和 [OpenAL](../Page/OpenAL.md "wikilink")作為 [應用程式介面](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")。本项目起源于作者的一个想法，应该有一个[跨平台並且](https://zh.wikipedia.org/wiki/跨平台 "wikilink")[开源的](https://zh.wikipedia.org/wiki/开源 "wikilink")[列车模拟器](../Page/列车模拟器.md "wikilink")，而且要比现存的所有此类软件都真实，並注重在駕駛室內驾驶。\[1\]此程式並沒有使用上的限制，发布最新二进制包，同时独立发布其最新[C\#源码](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")。

開發者在2011年5月11日宣布當openBVE進入第二版本的階段，程式會重命名為**Train Simulation Framework**。同時，官方網站域名改為 [trainsimframework.org](http://trainsimframework.org/)，但是程式現時仍然保留openBVE的名稱。\[2\]

2012年5月3日，openBVE討論區關閉，而五日後（5月8日）開發者宣佈終止開發openBVE，只提供網頁下載相關檔案。openBVE主網站於翌日關閉，改由社群網民接手開發。

## 版本

### OpenBVE

第一代版本中，可以讓玩家看到自己駕駛的列車，和在同一路軌中行駛的前（後）車。

#### 功能

OpenBVE 功能大致上與 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink") 兼容，並有以下額外的功能：

  - 可顯示車外視點，顯示玩家所駕駛的列車及周圍的環境
  - 支授後方物件顯示，前後全方位視野
  - 仔細的列車運行物理機制、列車駕駛、[信號變化及景觀材質顯示](https://zh.wikipedia.org/wiki/信號 "wikilink")
  - 使用 [OpenGL](../Page/OpenGL.md "wikilink")、[OpenAL](../Page/OpenAL.md "wikilink") 及 [SDL](https://zh.wikipedia.org/wiki/SDL "wikilink") 等 [應用程式介面](https://zh.wikipedia.org/wiki/應用程式介面 "wikilink")，使得程式能更容易在不同[作業系統運行](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。（所發放的 [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 版本可以經由 [Mono](../Page/Mono.md "wikilink") 或 [Wine](../Page/Wine.md "wikilink") 在 [Linux](../Page/Linux.md "wikilink") 和 [OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") 平台上使用）
  - 使用 [OpenAL](../Page/OpenAL.md "wikilink") 將[三維場景的音效立體化](https://zh.wikipedia.org/wiki/三維空間 "wikilink")
  - 加入[人工智能](../Page/人工智能.md "wikilink")駕駛，能夠自動駕駛自己的列車
  - 自動控制上一班及更多列車的運作
  - 加入遊戲模式，對玩家駕駛列車技巧作評分
  - 提供動態物件格式，能讓物件變得可以活動，例如列車車門、時鐘、路面的汽車
  - 能支援不同的[控制桿](https://zh.wikipedia.org/wiki/控制桿 "wikilink")，而且可以同時使用多個[控制桿](https://zh.wikipedia.org/wiki/控制桿 "wikilink")

##### 物理及環境效果

OpenBVE 已經模擬起始阻力、[慣性](../Page/慣性.md "wikilink")、曲線阻力、[重力](https://zh.wikipedia.org/wiki/重力 "wikilink")、倒塌之間（包括緩衝區和鏈耦合汽車耦合）、[空氣阻力](https://zh.wikipedia.org/wiki/空氣阻力 "wikilink")、[氣壓](https://zh.wikipedia.org/wiki/氣壓 "wikilink")、氣溫、空氣[密度](../Page/密度.md "wikilink")、[海拔高度](https://zh.wikipedia.org/wiki/海拔高度 "wikilink")（如大氣隨高度變化的變量）、摩擦、車輪打滑等。\[3\]另外，OpenBVE也在設定頁面提供模擬震盪、碰撞及出軌的選項。

##### 制動系統

OpenBVE 能根據不同型號的制動系統，模擬在每一車廂的制動系統，也模擬整列列車的制動氣管。 \[4\]

##### 車卡獨立模擬

OpenBVE 可以完全地模擬出列車的每一個車箱，包括所有的電阻、發動機和制動系統。\[5\]

##### 動態物件

OpenBVE 可以讓物件移動、旋轉或將[材質貼圖移位](https://zh.wikipedia.org/wiki/材質貼圖 "wikilink")，並以數學函數配合內置[變數](../Page/變數.md "wikilink")來控制。\[6\]

簡單例子有：

  - 時鐘
  - 電梯
  - 升降閘

#### 優點

  - 支援多個作業系統
  - 支援多國語言
  - 可以自訂處理檔案所使用的[編碼](https://zh.wikipedia.org/wiki/字符編碼 "wikilink")，使程式相容性提高
  - 兼容大部分 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink") 的路線及列車

#### 缺點

  - 不能製作循環路線（即會重複回到原位的路線）
  - 退地顏色太嚴格
  - 需要依賴程式才能正常運作
  - 使用低效能電腦可能會導致操作系統不穩定，（俗稱「lag機」，「死機」或「當機」）

#### 與 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink") 的分別

在 CSV 路線格式中的 Track.Signal 指令（RW 為 \[Railway\] 中的 @Signal）出現了與 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink") 不兼容的情況。
OpenBVE中，該指令被解釋為
<font color="#C00000">**`Track.Signal`**`   `*`Aspects`*` ;  `<font color="gray">*~~`Unused`~~*</font>` ;  `<font color="green">*`X`*</font>` ;  `<font color="green">*`Y`*</font>` ;  `*<u>`Yaw`</u>*` ;  `*`Pitch`*` ;  `*`Roll`*</font>
但是，在 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink") 中，該指令被解釋為
<font color="#C00000">**`Track.Signal`**`   `*`Aspects`*` ;  `*`Label`*` ;  `*`X`*` ;  `*`Y`*` ;  `*<u>`Type`</u>*</font>
Label 這個引數於 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink") 中是一個文字上的描述，而在openBVE中是沒有功用的（所以被標籤為未被使用 Unused）。
因為一些小小的意外，引數 Type 是從來沒有被加入到 TSF (openBVE) 中，而 Yaw、Pitch、Row 這些引數需要增加，導致兩個引數不相容地重叠。如果某個 [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink") 的路線包含 Type 這個引數，該引述便會錯誤地被辨認為 Yaw，導致最多偏向 3 度。通常，這個細微的角度是不會做成視覺上的問題，尤其是這個引數不是太常用。\[7\]

### Train Simulation Framework

在  已經發布了 openBVE 2 Renderer Demo\[8\]。這個版本展示了未來 openBVE 2 可能的渲染模式，聲稱比 openBVE 現有版本快上十倍。

此系列将带来构架变化，易于导入数据，不仅支持现有数据，还会创作更多物理特性，引擎，刹车系统，和安全系统，这样基本可以模拟全部运输工具。尽管开发更注重轨道列车。

#### 命名

當openBVE進入第二版本的階段，程式會重命名為 **Train Simulation Framework**（簡稱 **TSF**），以表現程式將會將不同部件分拆，而程式本身將會成為一個框架。\[9\]

#### 程式的變動

為了容許大範圍的新功能，Train Simulation Framework 會重新設計。

Train Simulation Framework 將一分為二，分別為核心引擎（Core engine）和 標準程式庫（Standard library）。\[10\]

## 誤會

  - 作者

<!-- end list -->

  - 有人以為OpenBVE和[BVETrainsim的作者是同一人](https://zh.wikipedia.org/wiki/BVETrainsim "wikilink")；但實際上前者為Michelle開發，後者為Mackoy開發。

<!-- end list -->

  - 名稱

<!-- end list -->

  - 很多人把OpenBVE錯誤地寫成openbve、openBVE、OpenBve等等寫法。其實這些都不是正確的。作者Michelle已經重申正確的名稱是openBVE(後來改為OpenBVE)。而當OpenBVE進入第二版本的階段，程式會重命名為TrainSimulationFramework。\[11\]

## 相關條目

  - [列车模拟器](../Page/列车模拟器.md "wikilink")
  - [BVE Trainsim](../Page/BVE_Trainsim.md "wikilink")
  - [微軟模擬列車](../Page/微軟模擬列車.md "wikilink")
  - [電車GO\!](../Page/電車GO!.md "wikilink")

## 相關鏈接

  - [OpenBVE 官方網站 Official Homepage](http://openbve-project.net/)

  - [Rock Paper Shotgun - OpenBVE: The Sim Now Approaching Platform PC](http://www.rockpapershotgun.com/2009/03/22/openbve-the-sim-now-approaching-platform-pc/)

  - [BVEHK 香港模擬鐵路聯盟](https://web.archive.org/web/20170927052931/http://bvehk.net/)

  - [I-Circle BVE 網](http://bve.i-circle.net/)

  - [Chikainn83 bve 臨時站](http://island.geocities.jp/chikainn83/)

  - [OpenBve中国站](https://web.archive.org/web/20130820031402/http://www.bvecn.com/)

## 制作組鏈接

  - [BVE香港電車開發日誌](http://hktrambve.blogspot.com/)

  - [BVETRT](http://bvetrt.pixnet.net/blog/)

  - [香港模擬鐵路發展中心 HKRSC](http://www.facebook.com/hkrailsimcentre/?fref=ts/)

## 參考文獻

[Category:Linux游戏](https://zh.wikipedia.org/wiki/Category:Linux游戏 "wikilink") [Category:Windows游戏](https://zh.wikipedia.org/wiki/Category:Windows游戏 "wikilink") [Category:MacOS遊戲](https://zh.wikipedia.org/wiki/Category:MacOS遊戲 "wikilink") [Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink") [Category:免费游戏](https://zh.wikipedia.org/wiki/Category:免费游戏 "wikilink") [Category:鐵路模擬遊戲](https://zh.wikipedia.org/wiki/Category:鐵路模擬遊戲 "wikilink") [Category:模擬遊戲](https://zh.wikipedia.org/wiki/Category:模擬遊戲 "wikilink") [Category:開放原始碼](https://zh.wikipedia.org/wiki/Category:開放原始碼 "wikilink")

1.  關於 openBVE: <http://trainsimframework.org/about/index.html>
2.  <http://trainsimframework.org/> *For almost a year now, we have therefore tried to find a new name that reflects the direction this project is taking. With the eventual ability to complement the out-of-the-box functionality with customized engine, brake and physics components and support for additional file formats, openBVE is moving toward becoming a framework that allows anything train-simulation-related to be simulated on top of it. The project will therefore eventually bear the new name Train Simulation Framework, or TSF for short. For now, however, we will continue to use the name openBVE until we make more progress on the road toward 2.0.*
3.
4.
5.
6.
7.  Vs. BVE Trainsim - [Developing for TSF (OpenBVE)](http://trainsimframework.org/develop/index.html) <http://trainsimframework.org/develop/information_bve.html>
8.  <http://railsimroutes.net/blog/?p=891> - openBVE 2 Renderer Demo released
9.
10. <http://trainsimframework.org/roadmap.html>
11.