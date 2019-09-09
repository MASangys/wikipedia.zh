**DisplayPort**（簡稱DP）是一个由[PC及芯片制造商联盟开发](../Page/个人电脑.md "wikilink")，[视频电子标准协会](https://zh.wikipedia.org/wiki/VESA "wikilink")（VESA）[标准化](../Page/标准化.md "wikilink")的數位式視訊接口標準。該接口免認證、免授權金，主要用於视频源与[显示器](../Page/显示器.md "wikilink")等设备的连接，并也支持携带、[USB](../Page/USB.md "wikilink")和其他形式的数据\[1\]。

此接口的设计是为取代传统的[VGA](https://zh.wikipedia.org/wiki/VGA "wikilink")、[DVI](../Page/DVI.md "wikilink")和（LVDS）接口。通过主动或被动适配器，该接口可与传统接口（如HDMI和DVI）[向后兼容](https://zh.wikipedia.org/wiki/向后兼容 "wikilink")。

## 概觀

DisplayPort是第一個依賴封包化資料傳輸技術的顯示連接埠，這種封包化傳輸技術可以在[乙太網路](https://zh.wikipedia.org/wiki/乙太網路 "wikilink")、[USB](../Page/USB.md "wikilink")和[PCI Express等技術中找到](../Page/PCI_Express.md "wikilink")。它既可以用於內部顯示連接，也可以用於外部的顯示連接。與過去的標準需要在每個輸出端的差分對裡面固定傳輸定時器訊號不同的是，DisplayPort協定是基於小的資料包被稱為微報文，這種微報文可以將定時器訊號嵌入在資料流中。其優點是較少的引腳數，就可以實現更高的解析度。資料包的應用也允許使用DisplayPort可擴充，這就意味著隨著時間的推移，物理連接埠本身不需要顯著的變化就可以增加額外的功能了。

DisplayPort可用於同時傳輸音訊和視訊，這兩項中每一項都可以在沒有另外一項的基礎上單獨傳輸。視訊訊號路徑中每個顏色通道可以有6到16位元，音訊路徑可以有多達8通道24位元192 kHz的非壓縮的PCM音訊，或可以在音訊流中封裝壓縮的音訊格式。一個雙向的、半雙工的輔助通道攜帶了主鏈結用的設備管理和設備控制資料，如[VESA](https://zh.wikipedia.org/wiki/VESA "wikilink") [EDID](../Page/EDID.md "wikilink")、MCCS和DPMS標準。此外，該連接埠是能夠運送雙向[USB](../Page/USB.md "wikilink")訊號。

DisplayPort訊號不相容[DVI](../Page/DVI.md "wikilink")或[HDMI](../Page/HDMI.md "wikilink")。然而，雙模式DisplayPorts被設計用來通過該連接埠傳輸單鏈結[DVI](../Page/DVI.md "wikilink")或[HDMI](../Page/HDMI.md "wikilink") 1.2/1.4的協定，需要通過使用一個外部無源連接器來實現，選擇所需的訊號，並將電氣訊號從[LVDS轉換為](https://zh.wikipedia.org/wiki/LVDS "wikilink")[TMDS](https://zh.wikipedia.org/wiki/TMDS "wikilink")。帶有被動連接器的雙模DisplayPorts不支援VGA和雙鏈結[DVI](../Page/DVI.md "wikilink")。這些連接埠需要有源連接器來轉換所需要輸出的協定和訊號。[VGA連接器可以使用DisplayPort連接器來供電](https://zh.wikipedia.org/wiki/VGA "wikilink")，而雙鏈結DVI連接器可能依賴於外部電源（參考[HDMI](../Page/HDMI.md "wikilink")、[DVI](../Page/DVI.md "wikilink")和[VGA相容性](https://zh.wikipedia.org/wiki/VGA "wikilink")）。

DisplayPort連接器在主鏈路可以有1、2、或4路差分資料對（巷道），每巷道可以在自定時器執行於162、270、或540MHz的基礎上其原始位元率為1.62、2.7或者5.4 Gbit/s。資料為8b/10b編碼，即每8位元的訊息被編入10位元符號中。因此，解碼後每通道的有效資料傳輸速率是1.296、2.16、4.32 Gbit/s（或者說是總量的80％）。

## 版本

### 1.0

2006年5月发布。带宽10.8Gbps。DisplayPort 1.0的最大傳輸速度是8.64Gbit/s，長度是2米。已经废弃。

### 1.1a

2008年1月发布。DisplayPort 1.1允許使用其他傳輸媒介（例如[光纖](https://zh.wikipedia.org/wiki/光纖 "wikilink")），令傳輸距離增加\[2\]，但沒有標準化其他傳輸媒介。同時加入[HDCP](../Page/HDCP.md "wikilink")到DisplayPort Content Protection (DPCP). 目前极少使用。

### 1.2

於2009年12月22日發布。它最大的改變是傳輸速度增加兩倍到21.6Gbit/s（High Bit Rate 2（HBR2）mode），支援4K（4096X2160）60Hz，因此支授更高的[解像度](https://zh.wikipedia.org/wiki/解像度 "wikilink")、[幀速率及](https://zh.wikipedia.org/wiki/幀速率 "wikilink")[色深](https://zh.wikipedia.org/wiki/色深 "wikilink")。[蘋果公司設計的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Mini DisplayPort亦相容此標準](../Page/Mini_DisplayPort.md "wikilink")。\[3\] \[4\]\[5\]\[6\]支持3D。支持多流(multi-streaming)。目前该版本是主流。

### 1.2a

2012年5月12日，视频电子标准协会宣布，DisplayPort 1.2a增加可由視訊輸出端動態控制螢幕更新率的技術「適應性同步」（Adaptive-Sync），讓螢幕完全配合視訊輸出端的指示來更新畫面\[7\]\[8\]。

### 1.3

2014年9月15日，视频电子标准协会發布DisplayPort 1.3，頻寬速度最高32.4 Gbps（HBR3），編碼後有效頻寬為25.92 Gbps，可支援4K（3840X2160）120hz、5K（5120X2880）60hz、8K（7680X4320）30hz。

### 1.4

2016年2月份最終版的DP 1.4連接埠規範，新標準基於2014年9月的DP 1.3規範，頻寬不變但加入了顯示壓縮串流(Display Stream Compression)技術、前向錯誤更正(Forward Error Correction)、高動態範圍資料封包（HDR meta transport），聲道也提升到32聲道1536 KHz取樣頻率，將為筆記型電腦、智慧型手機及AIO一體機帶來8K級別（7680x4320）的60Hz輸出，4K的話則可以上到120Hz。

### 2.0

#### 三倍數據帶寬性能

之前版本的DisplayPort v1.4a提供了32.4 Gbps的最大鏈路帶寬，四個通道中的每一個都以8.1 Gbps / lane的鏈路速率運行。使用8b / 10b信道編碼，相當於25.92 Gbps的最大有效載荷。DP 2.0將最大鏈路速率提高到20 Gbps / lane，並具有更高效的128b / 132b信道編碼，最大有效載荷為77.37 Gbps - 與DP 1.4a相比，增加了三倍。這意味著DP 2.0是第一個以60 Hz刷新率支持8K分辨率（7680 x 4320）的標準，全彩色4：4：4分辨率，包括每像素30位（bpp），支持HDR-10。

#### 最大化USB-C連接器的增益

DP 2.0實現的性能提升是通過本機DP連接器和通過DP Alt模式的USB-C連接器實現的。USB-C允許單個連接器用於USB數據，視頻數據和電源。如果需要同時支持SuperSpeed USB數據和視頻，DP 2.0支持的顯著提高的數據速率使用戶能夠在超高分辨率視頻的同時獲得電源和SuperSpeed USB數據。

#### DP 2.0配置示例

隨著DP 2.0的帶寬增加，VESA提供了高度的多功能性和配置，可實現更高的顯示分辨率和刷新率。除了具有HDR支持的上述具有60 Hz的8K分辨率外，本機DP連接器上的DP 2.0或作為DisplayPort Alt Mode的USB-C可實現各種高性能配置：

#### 單顯示分辨率

一個16K（15360×8460）顯示器@ 60Hz和30 bpp 4：4：4 HDR（帶DSC） 一個10K（10240×4320）顯示器@ 60Hz和24 bpp 4：4：4（無壓縮） 雙顯示分辨率

兩個8K（7680×4320）顯示器@ 120Hz和30 bpp 4：4：4 HDR（帶DSC） 兩個4K（3840×2160）顯示@ 144Hz和24 bpp 4：4：4（無壓縮） 三重顯示分辨率

三個10K（10240×4320）顯示器@ 60Hz和30 bpp 4：4：4 HDR（帶DSC） 三個4K（3840×2160）顯示@ 90Hz和30 bpp 4：4：4 HDR（無壓縮） 當通過DP Alt模式在USB-C連接器上僅使用兩個通道以同時使用SuperSpeed USB數據和視頻時，DP 2.0可以啟用以下配置：

三個4K（3840×2160）顯示@ 144Hz和30 bpp 4：4：4 HDR（帶DSC） 兩個4Kx4K（4096×4096）顯示器（用於AR / VR耳機）@ 120Hz和30 bpp 4：4：4 HDR（帶DSC） 三個QHD（2560×1440）@ 120Hz和24 bpp 4：4：4（無壓縮） 一個8K（7680×4320）顯示器@ 30Hz和30 bpp 4：4：4 HDR（無壓縮） “作為一個由電子產品價值鏈上的280多家成員公司組成的開放標準機構，VESA有一個獨特的優勢，可以預測顯示器市場幾年的需求，並在需求之前為我們的標準增加新功能，”Alan Kobayashi說。 VESA董事會主席和VESA DisplayPort任務組主席。“DP 2.0代表了我們在DisplayPort歷史上最重要的里程碑之一，也是這項無處不在的標準多年努力和重大改進的結晶。與之前版本的DisplayPort相比，它為視頻技術中的主要拐點鋪平了道路，如UHD，4K，5K，USB-C和HDR視頻，DP 2.0將有助於將行業提升到新的水平 - 實現更高的幀價格和分辨率高達8K以上，

#### 提高電源效率

DP 2.0還支持VESA的新面板重放功能，該功能旨在優化具有更高分辨率顯示器的小型終端設備（如一體式PC和筆記本電腦）的功率範圍和散熱性能。與嵌入式DisplayPort（eDP）中的Panel Self Refresh功能類似，Panel Replay包含部分更新功能，使系統視頻處理器或GPU僅更新自視頻幀更新後已更改的顯示部分，從而節省系統權力。優點包括能夠在使用設備的同時更快地為設備充電。

## 配套标准

### Mini DisplayPort

[Mini DisplayPort是一個微型版本的DisplayPort](../Page/Mini_DisplayPort.md "wikilink")。由[蘋果公司於](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")2008年10月14日發表。現在應用於[MacBook](../Page/MacBook.md "wikilink")（取代先前的[Mini-DVI](../Page/Mini-DVI.md "wikilink")）、[MacBook Air](../Page/MacBook_Air.md "wikilink")（取代先前的[Micro-DVI](https://zh.wikipedia.org/wiki/Micro-DVI "wikilink")）與[MacBook Pro](../Page/MacBook_Pro.md "wikilink")（取代先前的[DVI](../Page/DVI.md "wikilink")）筆記型電腦中。亦應用於27吋的[LED Cinema Display](https://zh.wikipedia.org/wiki/LED_Cinema_Display "wikilink")。

### PDMI

[PDMI](../Page/PDMI.md "wikilink")（全称Portable Digital Media Interface，中文名为便携式数字媒体接口）是一种[便携式媒体播放器的互连标准](https://zh.wikipedia.org/wiki/便携式媒体播放器 "wikilink")。2010年2月CEA（美国消费电子协会）开发了此标准，名称为便携式媒体播放器通用互联标准（Common Interconnection for Portable Media Players），标准号为ANSI/CEA-2017-A。在微软David McLauchlan的带领下，全球有超过五十家消费类电子公司支持和投入到此标准的开发。它被设计用于替代只有苹果公司使用的iPod接口。

### SlimPort

[缩略图](https://zh.wikipedia.org/wiki/File:Nexus_5,_16_GB_-_motherboard_-_Analogix_ANX7808-92899.jpg "fig:缩略图") SlimPort是一项由硅谷数模基于DisplayPort技术开发的，支持在移动设备和外部所显示屏之间建立简单连接的技术。

#### 功能特色

  - 使用[USB](../Page/USB.md "wikilink")/[MicroUSB接口](https://zh.wikipedia.org/wiki/通用串行总线#Micro_USB.E6.8E.A5.E5.8F.A3 "wikilink")。SlimPort技术不需要设备必须配置[MHL接口](../Page/移动高清链接技术.md "wikilink")，仅通过现有的USB接口便可实现即插即用的使用过程，大大拓展了显示设备的选择范围。\[9\]
  - 实现移动设备高清化/3D化。SlimPort技术不仅可以让手机、平板电脑等设备中的资料转移到全高清的显示设备上，最高支持带7.1声道音频的1080p3D视频。
  - 同时连接多种显示设备。由于SlimPort技术仅需要[USB](../Page/USB.md "wikilink")接口便可实现信号的转换和传输。因此它可以实现一个移动设备同时连接多个显示器，在每个显示器上运行不同的效果应用程序。
  - 延长移动设备的电池寿命。在连接的过程中，SlimPort技术不会消耗电池电力，降低移动设备的功效，反而能够保持电池寿命，延长移动设备的性能，对移动设备进行有效的保护。
  - 完全兼容现有[HDMI1.4a标准和旧的](https://zh.wikipedia.org/wiki/HDMI#HDMI_1.4 "wikilink")[HDMI](../Page/HDMI.md "wikilink")标准。\[10\]
  - 支持好莱坞标准内容保护。完全兼容好莱坞标准内容保护(HDCP)，以保护版权内容不会受到未经授权的截取。
  - 无版税费用。

## 支援廠商

## 優點

1.  基於小型封包的協定
      - 允許簡易的擴充DisplayPort標準
      - 允許在單獨實體連線上有多重視訊流（在未來版本）
2.  設計於支援內部晶片之間的聯繫
      - 允許直接操作顯示器功能選項，能夠將顯示器的控制迴路去除以生產更便宜與更輕薄的顯示器。
      - 目標是要以統一的連結界面取代筆記型電腦面板內部的[LVDS連接](https://zh.wikipedia.org/wiki/LVDS "wikilink")。
3.  允許向後相容於單路DVI/HDMI；雙路的DVI/HDMI與類比VGA接頭需要轉換接頭。
4.  支援RGB與[YCbCr](../Page/YCbCr.md "wikilink")色彩空間（[ITU-R BT.601與](https://zh.wikipedia.org/wiki/CCIR_601 "wikilink")[BT.709的格式](https://zh.wikipedia.org/wiki/Rec._709 "wikilink")）。
5.  輔助通道能夠使用於觸控式面板資料、USB連結、相機、麥克風等設備。
6.  較少的通道與內嵌的時脈降低射頻干擾{{〈}}RFI{{〉}}。
7.  支援[USB Type-C](../Page/USB_Type-C.md "wikilink")。
8.  支持[144hz刷新率](https://zh.wikipedia.org/wiki/144hz "wikilink")

## 技術規格

  - DP1.4最高達32.4Gbps的頻寬，可支援8K 60Hz 、4K 120Hz HDR高解析。
  - [8bit/10bit資料傳輸](https://zh.wikipedia.org/wiki/8b/10b "wikilink")
  - 開放且可擴展的標準能夠加速普及。
  - 支援6、8、10、12與16位元色深。
  - 纜線的完整頻寬保證長度為3公尺。
  - 1080p的有效傳輸頻寬保證長度為5公尺。
  - 支援128-bit [AES的DisplayPort內容保護](https://zh.wikipedia.org/wiki/高級加密標準 "wikilink")（DPCP），版本1.1更支援40-bit [HDCP](../Page/HDCP.md "wikilink")。
  - 同時支援內部與外部連結，能夠使電腦製造商因此降低花費。\[11\]

### 多螢幕輸出

DisplayPort 1.2支援MST（Multi-Stream Transport），單個DP可連接到多個顯示器。要使用這項功能，顯示器需要支援DP 1.2菊花鏈（Daisy-chaining），或使用MST Hub把DP一個拆成三個。

## 參見

  - [Mini DisplayPort](../Page/Mini_DisplayPort.md "wikilink")
  - [HDMI](../Page/HDMI.md "wikilink")
  - [Thunderbolt](../Page/Thunderbolt.md "wikilink")

## 參考資料

## 外部連結

  - [DisplayPort](http://www.displayport.org/)

  - 技術規格下載：[vesa.org](http://www.vesa.org)（需[免費註冊](https://fs16.formsite.com/VESA/form608559305/secure_index.html)）

  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  -
  - [VESA DisplayPort specification v1.1](https://vesa.sharedwork.com/servlet/download/docid/3164976/view/DportV1.1.pdf)，retrieved August 13, 2007（dport, port24）。

[Category:數碼顯示接口](https://zh.wikipedia.org/wiki/Category:數碼顯示接口 "wikilink")

1.
2.
3.  Tony Smith, ["DisplayPort revision to get mini connector, stereo 3D"](http://www.reghardware.co.uk/2009/01/13/displayport_1dot2_basics/), *The Register*, 13 January 2009
4.
5.
6.
7.
8.
9.
10.
11. [The DisplayPort, LVDS, DVI and HDMI compared list](http://www.audioholics.com/education/display-formats-technology/vesa-displayport-standard-v1.0/displayportdvihdmicompared.gif) Audioholics online a/v magazine