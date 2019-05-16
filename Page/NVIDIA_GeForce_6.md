**GeForce
6**是[NVIDIA第六代](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[繪圖處理器的總稱](https://zh.wikipedia.org/wiki/GPU "wikilink")，其代號為**NV40**。在支援[微軟的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[DirectX](../Page/DirectX.md "wikilink")
9.0c規格下，全數均支援Vertex及Pixel shader
3.0版。NVIDIA用了10億美金研發。該系列於2004年4月14日推出\[1\]
並為[GeForce系列的生產線增添了不少新特色](../Page/GeForce.md "wikilink")，計有[Pure
Video功能](https://zh.wikipedia.org/wiki/Pure_Video "wikilink")、支援Shader
Model
3.0版，以及支援[SLI技術](https://zh.wikipedia.org/wiki/SLI "wikilink")。但是產品卻仍存在[GeForce
FX系列的一些缺點](https://zh.wikipedia.org/wiki/GeForce_FX "wikilink")，例如ShaderModel
2.0的表現較差。然而在技術及市場上，NVIDIA仍可以GeForce
6系列來與[ATI同類產品競爭](https://zh.wikipedia.org/wiki/ATI "wikilink")。NVIDIA聲稱NV40核心效能比NV38提升一倍。整体而言GeForce
6完全在高端市場擊敗[ATi的](https://zh.wikipedia.org/wiki/ATi "wikilink")[Radeon X
Series](https://zh.wikipedia.org/wiki/Radeon_X_Series "wikilink")。

## 產品特色

### IntelliSample

#### IntelliSample 3.0

  - 支援Rotated-Grid Antialiasing，令物件在旋轉移動時減少鋸齒的產生，
  - NV40最大支援4個樣本取樣，而在驅動程式中的8X模式其實是由4x Mutisample 和 2x Super
    Sampling合併而成。

#### IntelliSample 4.0

當[GeForce
7推出時](https://zh.wikipedia.org/wiki/GeForce_7 "wikilink")，IntelliSample
4.0是[GeForce
7獨有的技術](https://zh.wikipedia.org/wiki/GeForce_7 "wikilink")。但[ForceWare](https://zh.wikipedia.org/wiki/ForceWare "wikilink")
91.47令GeForce 6系列同樣支援IntelliSample 4.0。IntelliSample
4.0提供兩個新的反鋸齒模式，分別是透明超級取樣抗鋸齒和透明多重取樣抗鋸齒。這些新的反鋸齒模式能提升影像質素，尤其是薄的物件，例如柵欄，樹木，植被和草。其中一個GeForce
6顯示核心能使用IntelliSample 4.0原因，是[GeForce
7100](https://zh.wikipedia.org/wiki/GeForce_7100 "wikilink")
GS的推出，它是建基於NV44晶片，與GeForce 6200相同。令GeForce 7100
GS支援IntelliSample 4.0，變相令整個NV4x產品線支援該透明反鋸齒功能。

### [SLi](https://zh.wikipedia.org/wiki/SLi "wikilink")

SLI技術能將兩張同形號的GeForce
6顯示卡串聯在一起，驅動程式能不斷變化地，將工作平均分配到不同的顯示核心。（雖然*SLI*是後期[3dfx的](https://zh.wikipedia.org/wiki/3dfx "wikilink")*Scan-Line
Interleave*技術的首字母縮略字，但NVIDIA和3dfx的SLI技術是有不同的。）早期SLI技術只有中高端的顯示卡能使用。後來隨著新的驅動程式推出，低端顯示卡也能啟動軟體SLI模式。軟體SLI模式額外霸佔了[PCI-E](https://zh.wikipedia.org/wiki/PCI-E "wikilink")
16X的頻寬，所以效果稍遜。此外，只有PCI-E的平台能支援SLI技術。

### [PureVideo](https://zh.wikipedia.org/wiki/PureVideo "wikilink")

NVIDIA的PureVideo技術數個專用的视频处理器和軟體的組合。這使到顯示核心能硬體處理高解析度视频，例如[H.264](https://zh.wikipedia.org/wiki/H.264 "wikilink")、[VC-1](../Page/VC-1.md "wikilink")、[WMV和](https://zh.wikipedia.org/wiki/WMV "wikilink")[MPEG-2格式的影片](../Page/MPEG-2.md "wikilink")。它不但能提高影像质量，還能降低處理器資源佔用，降低系統的功耗。子像素處理能縮放视频到不同大小，畫質比軟體提供的高。

### Shader Model 3.0

儘管ATI首次為零售市場提供Shader Model 2.0相容性，NVIDIA卻首次為零售市場提供Shader Model
3.0相容性。SM3比SM2有數個改進：支援標準FP32（32-bit
浮點）精度、動態分支、增加效率和更長的指令長度，這些都是主要的改良項目。Shader
Model 3.0迅速被遊戲開發者接受，因為轉換SM
2.0/2.0A/2.0B的著色指令到3.0版本是一件容易的事情，這亦使到整個GeForce
6產品線都得到顯著的效能改進。

## 產品比較

這是一個關於GeForce 6系列與上一代NVIDIA旗艦級顯示核心NV38（GeForce FX 5950
Ultra）的比較。除此之外，還有ATI的Radeon X800和X850系列：

|                                                        |                                                              |                                                |                                                                 |                                                                 |                                                                  |                                                                  |
| ------------------------------------------------------ | ------------------------------------------------------------ | ---------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
|                                                        | **GeForce FX 5950 Ultra**                                    | '''GeForce 6200 TC-32 '''                      | '''GeForce 6600 GT '''                                          | **GeForce 6800 Ultra**                                          | **ATI Radeon X800 XT PE**                                        | **ATI Radeon X850 XT PE**                                        |
| [電晶體](https://zh.wikipedia.org/wiki/電晶體 "wikilink") 數量 | 135 百萬                                                       | 77 百萬                                          | 146 百萬                                                          | 222 百萬                                                          | 160 百萬                                                           | 160 百萬                                                           |
| 製造工藝                                                   | [0.13 微米](https://zh.wikipedia.org/wiki/0.13微米製程 "wikilink") | 0.11 微米                                        | 0.11 微米                                                         | 0.13 微米                                                         | 0.13 微米 low-k                                                    | 0.13 微米 low-k                                                    |
| 核心面積 (mm²)                                             | \~200                                                        | 110                                            | 156                                                             | 288                                                             | 288                                                              | 297                                                              |
| 核心頻率 (MHz)                                             | 475                                                          | 350                                            | 500                                                             | 400                                                             | 520                                                              | 540                                                              |
| 像素著色器數目                                                | 8                                                            | 4                                              | 8                                                               | 16                                                              | 16                                                               | 16                                                               |
| 像素流水線數目                                                | 8                                                            | 4                                              | 8                                                               | 16                                                              | 16                                                               | 16                                                               |
| 紋理單元數目                                                 | 8(16\*)                                                      | 4                                              | 8                                                               | 16                                                              | 16                                                               | 16                                                               |
| 頂點流水線數目                                                | 3                                                            | 3                                              | 3                                                               | 6                                                               | 6                                                                | 6                                                                |
| 最高像素填充率（理論值）                                           | 1.9 Gigapixel/s                                              | 700 Megapixel/s                                | 2.0 Gigapixel/s                                                 | 6.4 Gigapixel/s                                                 | 8.32 Gigapixel/s                                                 | 8.64 Gigapixel/s                                                 |
| 最高材質填充率（理論值）                                           | 3.8 Gigatexel/s                                              | 1.4 Gigatexel/s                                | 4.0 Gigatexel/s                                                 | 6.4 Gigatexel/s                                                 | 8.32 Gigatexel/s                                                 | 8.64 Gigatexel/s                                                 |
| 顯示記憶體頻寬                                                | 256-bit                                                      | 64-bit                                         | 128-bit                                                         | 256-bit                                                         | 256-bit                                                          | 256-bit                                                          |
| 顯示記憶體頻率                                                | 950 MHz [DDR](../Page/DDR_SDRAM.md "wikilink")               | 700 MHz [DDR](../Page/DDR_SDRAM.md "wikilink") | 1.0 GHz [GDDR3](https://zh.wikipedia.org/wiki/GDDR3 "wikilink") | 1.1 GHz [GDDR3](https://zh.wikipedia.org/wiki/GDDR3 "wikilink") | 1.12 GHz [GDDR3](https://zh.wikipedia.org/wiki/GDDR3 "wikilink") | 1.18 GHz [GDDR3](https://zh.wikipedia.org/wiki/GDDR3 "wikilink") |
| 最高記憶體頻寬 (GB/s)                                         | 30.4                                                         | 5.6                                            | 16.0                                                            | 35.2                                                            | 35.84                                                            | 37.76                                                            |

## 產品規格

  - 核心擁有4, 8, 12，或 16 條像素流水線
  - 著色效能是上一代最高的8倍
  - CineFX 3.0引擎
      - 支援Direct X 9.0C，即是Direct X 9.0 Shader Model 3.0 API
      - 支援Vertex Shader 3.0及Pixel Shader 3.0
      - 支援Ultra Shadow II - 比Ultra Shadow
        I快四倍。此技術是用來忽略用家不能看見的部分，使核心不用運算多餘的部分，使效能提升。此技術对任何遊戲都有效。
  - 內建影像處理器（[PureVideo](https://zh.wikipedia.org/wiki/PureVideo "wikilink")）
  - 完整的顯示核心層面的[MPEG-2編碼和解碼](../Page/MPEG-2.md "wikilink") (PureVideo)
  - 支援可適應逐像素除交錯 (PureVideo)，ATI在Radeon DDR時已提供
  - 支援[DDR](../Page/DDR_SDRAM.md "wikilink") 和
    [GDDR-3](https://zh.wikipedia.org/wiki/GDDR-3 "wikilink")
    顯示記憶體，並推有最高256-bit頻寬
  - 支援[高动态光照渲染](../Page/高动态光照渲染.md "wikilink")（HDR），令畫質更看上去更自然。
  - 128位元的Studio-Precision精確度 - 32位元浮點色彩精確度
  - IntelliSample 4.0 技術 -
    16x各異向性過濾，旋轉網格反鋸齒和透明反鋸齒（看[這兒](https://zh.wikipedia.org/wiki/GeForce_6#IntelliSample_4.0和GeForce_6顯示核心 "wikilink")）
  - 硬體影像縮放和過濾 - 過濾技術最高支援至HDTV解析度
  - 內置電視編碼器 - 電視輸出最高解析度是1024x768
  - 支援OpenGL 2.0優化
  - DVC 3.0 (Digital Vibrance Control)
  - 有兩個400 MHz
    RAMDACs，支援[QXGA畫面顯示輸出](https://zh.wikipedia.org/wiki/QXGA "wikilink")，最高解析度是2048x1536
    @ 85 Hz
  - 支援双[DVI輸出](../Page/DVI.md "wikilink")，需要顯示卡製造商支持

## 產品介紹

### GeForce 6800

[NVIDIA_GeForce_6800_Ultra.png](https://zh.wikipedia.org/wiki/File:NVIDIA_GeForce_6800_Ultra.png "fig:NVIDIA_GeForce_6800_Ultra.png")

GeForce 6產品線的第一個成員就是6800系列，用來滿足高效能遊戲市場。GeForce 6的第一個形號是**GeForce 6800
Ultra** (NV40)，它擁有16條像素流水線，效能是NVIDIA的上一代高端產品（GeForce FX 5950
Ultra）兩倍至兩倍半。它擁有兩倍於上代的像素流水線，像素著色亦經過大大的改良。另外由於6800
Ultra顯示核心是由[IBM的](../Page/IBM.md "wikilink")130納米工藝製造，所以能源消耗反而較低。

早期，在標準檢查程式中，當與近似價錢的ATI顯示卡比較時，6800系列顯示卡是處於不利地位。之後，新的驅動程式都改善了兩間公司產品的效能。ATI的Radeon
X800XT PE，是6800 Ultra的直接競爭對手。6800
Ultra在大部分的綜合和遊戲標準檢查程式中，效能都與對手不相伯仲。各張卡在不同的遊戲應用中，都表現出各自的優點。NVIDIA的顯示卡主要在[OpenGL應用中取勝](../Page/OpenGL.md "wikilink")（傳統上這是NVIDIA的領域），而ATI在大部分的Direct3D應用中取勝。這樣，整體而言GeForce
6800 Ultra的效能與Radeon X800 XT相似，GeForce 6800 GT的效能則勝過Radeon X800
Pro。ATI的[Radeon X1
Series推出後](https://zh.wikipedia.org/wiki/Radeon_X1_Series "wikilink")，NVIDIA就推出了GeForce
6800
GS對抗之。6800GS是原生支援PCI-E接口，用來取代6800GT，对抗ATi的X1600XT。緃使只有12條管線，但高時脈可彌補損失，使之有能力取代6800GT的地位。

大體而看，GeForce產品線由一開始到GeForce FX系列，6800 Ultra的效能增長是最大的。GeForce
FX只能在[OpenGL應用中取勝](../Page/OpenGL.md "wikilink")，Direct3D應用則十分弱，令NVIDIA的市場佔有率一度下降。而6800則協助NVIDIA收復失地。6800
Ultra給人一個正面的印象，這是十分重要的，對於協助NVIDIA重新取得主流市場佔有率。

一如所有直到2004年的NVIDIA顯示核心般，原先的NV40只支援[AGP接口](../Page/AGP.md "wikilink")。NVIDIA隨後加入[HSI橋接晶片](../Page/NVIDIA_BR02.md "wikilink")，令GeForce
6產品支援[PCI-E](https://zh.wikipedia.org/wiki/PCI-E "wikilink")，該顯示核心代號NV45。它晶片面積與NV40相若，但整合了橋接晶片令它支援PCI-E。從NV45的封裝中，可看到兩塊晶片，較大的是只支援AGP的NV40，較小的就是橋接晶片。在後期NV45更新到NV48，使其支援512MB顯示記憶體，其他規格與NV45相同。

使用AGP至PCI-E橋接晶片，原先令使用者擔心。因為原生支援AGP的顯示核心，並不能得益於PCI-E的快速，效能亦可能比原生支援PCI-E的顯示核心差。後來，標準檢查程式顯示AGP
8x能夠提供足夠的速度，去發揮顯示核心的效能。當年顯示核心由支援AGP 4X升級到AGP
8X，效能增長並不明顯，更何況是頻寬更大的PCI-E。所以就算是支援PCI-E的顯示核心，在當年的遊戲程式中，得益都是非常少的。最後，NVIDIA將內部的AGP速度提升到12X或16X，預備將來的需要。

使用橋接晶片，使到NVIDIA能為PCI-E平台發佈完整的產品線，亦不需要重新設計核心，去支援PCI-E。之後，NVIDIA開發原生支援PCI-E的顯示核心，透過AGP-PCIe橋接晶片，使它們又可支援AGP接口。原先ATI猛烈抨擊橋接晶片，認為「有路何需搭橋」。後來，ATI开發了自己的Rialto橋接晶片，對抗NVIDIA的壓力。

諷刺地是第一款宣稱支援PureVideo的GeForce
6800系列顯示卡，實際是無法支援所有廣告所聲稱的特效。使用者和網上其他報告指出，支援PureVideo的GeForce
6600系列與不支援的GeForce
6800系列沒有明顯的分別。NVIDIA對此保持特別長的沉默，他們保證會更新[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。但測試的結果使社群普遍認為，NV40的PureVideo元件是不能運作的，或是被故意禁止。2005年尾NVIDIA更新了他們的網頁，終於承認NV40、NV45、NV48顯示核心不能支持[WMV](https://zh.wikipedia.org/wiki/WMV "wikilink")9加速。當然若果有夠快的中央處理器，一樣可透過軟體解壓，去播放WMV9影片。

### GeForce 6700

6700 XL是6600
GT的[OEM版本](https://zh.wikipedia.org/wiki/OEM "wikilink")，頻率比6600GT稍高，只有[微星推出過採用該核心的零售顯示卡](https://zh.wikipedia.org/wiki/微星 "wikilink")。

### GeForce 6600

[Geforce6600logo.jpg](https://zh.wikipedia.org/wiki/File:Geforce6600logo.jpg "fig:Geforce6600logo.jpg")
[6600GT_GPU.jpg](https://zh.wikipedia.org/wiki/File:6600GT_GPU.jpg "fig:6600GT_GPU.jpg")
[PCI-E_Geforce_6600.jpg](https://zh.wikipedia.org/wiki/File:PCI-E_Geforce_6600.jpg "fig:PCI-E_Geforce_6600.jpg")

NVIDIA官方在2004年8月12日正式發佈GeForce 6600（NV43），於6800
Ultra發佈後的幾個月。它擁有的像素流水線和頂點著色器數目只有6800
GT的一半；顯示記憶體頻寬亦只有128-bit。較低效能和成本的6600是GeForce
6系列的主流產品。6600的著色架構保持與6800系列相同，亦包括支援SLI。6600系列裝備了較少的著色元件，所以處理像素時的效能較6800系列低。但是，元件的減少和製程提升110納米（6800採用130納米），都令產品的成本大大降低。

6600系列有三個成員：GeForce 6600LE、6600和6600GT（最慢到最快）。6600GT的效能比GeForce FX 5950
Ultra和[Radeon 9800
XT稍快](https://zh.wikipedia.org/wiki/Radeon#Models_3 "wikilink")，6600GT在3DMark03中的得分約為8000左右，GeForce
FX 5950
Ultra則約為6000左右，而且6600GT亦比較便宜。明顯地，當運行*[毁灭战士3](../Page/毁灭战士3.md "wikilink")*時，6600GT的效能與ATI的高端卡X800
Pro相若。此外，在不開啟[抗鋸齒功能時](https://zh.wikipedia.org/wiki/抗鋸齒 "wikilink")，6600GT的效能亦與高端的GeForce
6800相若。

發佈時，6600家族只支援PCI-E接口。一個月後，利用橋接晶片，支援AGP接口的形號亦開始推出。在ATI的[Radeon X1
Series推出後](https://zh.wikipedia.org/wiki/Radeon_X1_Series "wikilink")，NVIDIA改良了6600系列，推出GeForce
6600 LE和GeForce 6600 GDDR2。前者只有4條像素流水線，用作对抗X700。後者有8條像素流水線，用作对抗ATi的X1300
Pro，与6800 GS一样使用高時脈策略。

**PCI Express**版本的數據：

  - 顯示記憶體界面：128-bit
  - 顯示記憶體頻寬：16.0 GB/s.
  - 像素填充率 (pixels/s.): 40億
  - 每秒頂點生成數：375 百萬
  - 顯示記憶體頻率：1000 MHz
  - 每周期處理像素（最高）: 8
  - RAMDACs: 400 MHz

**AGP** 版本的數據：

  - 顯示記憶體界面：128-bit
  - 顯示記憶體頻寬：14.4 GB/s.
  - 像素填充率 (pixels/s.): 40億
  - 每秒頂點生成數：375 百萬
  - 顯示記憶體頻率：900 MHz
  - 每周期處理像素（最高）: 8
  - RAMDACs: 400 MHz

### GeForce 6500

GeForce 6500於2005年10月發佈，它是建基於NV44核心，即是GeForce
6200TC。但它的核心和顯示記憶體頻率都較高，而且支援SLI。它用來取代6200，对抗X550，基本上是6200TC的超頻版，区别在于6500不支援[TurboCache](https://zh.wikipedia.org/wiki/TurboCache "wikilink")。

  - 核心頻率：450 MHz
  - 顯示記憶體頻率：700 MHz
  - 像素流水線：4
  - ROPs數量：2
  - 頂點處理器：3
  - 顯示記憶體容量：128MiB/256MiB [DDR](../Page/DDR_SDRAM.md "wikilink")
  - 顯示記憶體界面：64-bit
  - 像素填充率 (pixels/s): 16億
  - 每秒頂點生成數：300 百萬
  - 有效顯示記憶體頻寬(GB/s): 13.44

### GeForce 6200

#### 不支援TurboCache版

6200核心只擁有四條像素流水線，是針對低端市場的產品。6200並不支援記憶體壓縮，起初更不支援SLI，但著色架構保持與6600系列相同。6200顯示卡是建基於NV44核心。

但是，起初的GeForce
6200並不是建基於NV44核心，只是6600系列核心（NV43V）的次貨。NVIDIA將有問題的NV43V核心，遮蔽了有破損的四條像素流水線，只餘下沒有問題的話另外四條。一些用家能利用軟體，重新開啟那些像素流水線，即是將6200改造成6600，但只限於NV43
A2或之前的核心。不是所有的NV43
6200都能被改造，A4或之後的版本都很難被改造。很快的，NVIDIA開始生產NV44核心，並停止將NV43V核心出貨。

  - 核心編號：NV43V
      - 核心頻率：300 MHz
      - 顯示記憶體頻率：550 MHz
      - 像素流水線：4
      - 頂點處理器：3
      - 顯示記憶體容量：128 MiB/256 MiB/512 MiB

<!-- end list -->

  - 核心編號：NV44a
      - 核心頻率：350 MHz
      - 顯示記憶體頻率：500/400 MHz
      - 像素流水線：4
      - ROPs數量：2
      - 頂點處理器：3
      - 顯示記憶體容量：128-256 MiB DDR
      - 顯示記憶體界面：64-bit

<!-- end list -->

  - 核心編號：NV44a2
      - 核心頻率：350 MHz
      - 顯示記憶體頻率：540 MHz
      - 像素流水線：4
      - 頂點處理器：3
      - 顯示記憶體容量：128 MB DDR2
      - 顯示記憶體界面：128-bit
      - 散熱：被式散熱片

（只有PNY生產過這款顯示卡）

#### 支援TurboCache版

##### [桌面平臺](https://zh.wikipedia.org/wiki/桌面平臺 "wikilink")

支援[TurboCache技術的版本核心編號NV](https://zh.wikipedia.org/wiki/TurboCache "wikilink")44或NV44a，採用PCI-Express介面，支援TurboCache技術的顯示卡只擁有很少的版載顯示記憶體，它會透過PCI-E接口從系統記憶體借用一部分作為顯示記憶體。6200
A則用作对抗[ATi的Radeon](https://zh.wikipedia.org/wiki/ATi "wikilink")
9550，效能与Radeon 9550旗鼓相當。

  - 核心頻率：350 MHz
  - 顯示記憶體頻率：700 MHz
  - 像素流水線：4
  - ROPs數量：2
  - 頂點處理器：3
  - 顯示記憶體類型
      - 規格1：支援128 MiB，包含16 MiB版載顯示記憶體 (32-bit)
      - 規格2：支援128 MiB，包含32 MiB版載顯示記憶體 (64-bit)
      - 規格3：支援256 MiB，包含64 MiB版載顯示記憶體 (64-bit)
      - 規格4：支援256 MiB，包含128 MiB版載顯示記憶體 (128-bit)

##### [行動平臺](https://zh.wikipedia.org/wiki/行動平臺 "wikilink")

該系列亦推出了行動版GeForce Go 6250與GeForce Go 6200。

  - 產品型號：GeForce Go 6250
      - 記憶體介面：64-bit plus TurboCache
      - 記憶體頻寬(GBps)：5.6 GBps plus TurboCache
      - 像素填充率(pixels/sec.)：1.6 億
      - 頂點/秒：3 億
      - RAMDACs：400 MHz

<!-- end list -->

  - 產品型號：GeForce Go 6200
      - 記憶體介面：64-bit plus TurboCache
      - 記憶體頻寬(GBps)：4.8 GBps plus TurboCache
      - 像素填充率(pixels/sec.)：1.2 億
      - 頂點/秒：2.25 億
      - RAMDACs：400 MHz

### GeForce 6100

2005年末，NVIDIA發佈了GeForce
6100/6150系列，即是代號[C51晶片組中整合的顯示核心](https://zh.wikipedia.org/wiki/NVidia_C51芯片组 "wikilink")，是[nForce
4晶片組的](https://zh.wikipedia.org/wiki/nForce_4 "wikilink")[IGP版本](https://zh.wikipedia.org/wiki/IGP "wikilink")。NVIDIA推出此產品是為了堅持完成其整合式晶片組的理念，6100和6150兩者都支援Shader
Model 3.0和DirectX
9.0c。6150更進一步支援PureVideo，[DVI和電視輸出](../Page/DVI.md "wikilink")。它的效能完勝ATi的RS480/482和Intel的GMA
900/950顯示核心競爭。C51主板使用了兩款不同的南橋：nForce 410或nForce 430。他們的功能都與nForce4
Ultra主板十分相似，兩者都支援[PCI
Express和](../Page/PCI_Express.md "wikilink")[PCI接口](https://zh.wikipedia.org/wiki/PCI "wikilink")，八個[USB接口](../Page/USB.md "wikilink")，內置音效卡，支援兩個[ATA接口](https://zh.wikipedia.org/wiki/ATA "wikilink")，和[SATA-2接口](https://zh.wikipedia.org/wiki/SATA-2 "wikilink")，亦支援[NCQ技術](https://zh.wikipedia.org/wiki/NCQ "wikilink")。410支援兩個SATA接口，430則支援4個。430南橋支援千兆網絡接口，同時支援NVIDIA的ActiveArmor硬體防火牆。410則只支援標準的10/100網絡接口。

  - 核心頻率
      - GeForce 6100：425 MHz
      - GeForce 6150：475 MHz
  - 像素流水線：2
  - 頂點處理：1
  - 顯示記憶體類型
      - 規格1：支援128 MiB，包含16 MiB版載顯示記憶體 (32-bit)
      - 規格2：支援128 MiB，包含32 MiB版載顯示記憶體 (64-bit)
      - 規格3：支援256 MiB，包含64 MiB版載顯示記憶體 (64-bit)
      - 規格4：支援256 MiB，包含128 MiB版載顯示記憶體 (128-bit)

## 相關條目

  - [GeForce
    6系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_6 "wikilink")
  - [GeForce Go
    6系列規格列表](https://zh.wikipedia.org/wiki/NVIDIA顯示核心列表#GeForce_Go_6 "wikilink")
  - [Radeon R420](https://zh.wikipedia.org/wiki/Radeon_R420 "wikilink")

## 參考鏈接

## 外部連結

  - [NVIDIA GeForce 6主頁](http://www.nvidia.com.tw/page/geforce6.html)
  - [NVIDIA GeForce
    Go 6主頁](http://www.nvidia.com.tw/page/geforcego6.html)

[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")

1.  [NVIDIA
    GeForce 6系列繪圖處理器獲遊戲研發業者大力推崇](http://www.nvidia.com.tw/object/IO_12912.html)