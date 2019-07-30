**開放多媒體加速層**（，縮寫為），一個不需要授權、跨平台的軟體抽象層，以[C語言實現的軟體介面](https://zh.wikipedia.org/wiki/C語言 "wikilink")，用來處理多媒體。它是由[Khronos Group提出的標準](https://zh.wikipedia.org/wiki/Khronos_Group "wikilink")，也由他們來維持，目標在於創造一個統一的介面，加速大量多媒體資料的處理。

在它之下，又分成三層：應用層（，AL），整合層（，IL）以及開發層（，DL）。

## OpenMAX層

OpenMAX AL是多媒體應用程式（如Media Player）和平台媒體框架之間的介面。它允許公司開發應用程序方便地移植到不同平台的應用程序（客戶），並支持OpenMAX AL API。

.--------------------------------------.

|應用層（Application Layer, AL） |

|--------------------------------------|

|整合層（Integration Layer, IL） |

|--------------------------------------|

|開發層（Development Layer, DL） |

\`---------------------------------------\`

\` OpenMAX IL是媒體框架（如DirectShow或GStreamer）和多媒體元件（如音訊或視訊編解碼器）之間的介面。它允許公司構建平台（例如MP3播放器）輕鬆改變組件如MP3解碼器和均衡器效果，並從不同的供應商購買他們的平台組件。

OpenMAX DL是實體硬體（如DSP晶片和CPU）和軟體（如視訊編解碼器和3D引擎）之間的介面。

## OpenMAX AL應用層

OpenMAX AL API分為兩個配置文件：媒體播放器和媒體播放器/錄像機。一個平台可以符合一個或兩個這些配置文件提供的所有功能包含在一個配置文件。

多媒體API專為資源受限的設備著想，因此OpenMAX的應用程式多以C語言撰寫。

### 功能

OpenMAX AL的功能包括：

  - 視頻播放和錄製
  - 音頻播放和錄製
  - 圖像捕捉（攝像機），並顯示
  - 攝影控制
  - 廣播和RDS
  - 基本MIDI播放
  - 元數據（Metadata）的提取和插入

### 規格版本

  - OpenMAX AL 1.0 OpenMAX AL 1.0規格 - 一個臨時版本，日期為2007-09-02,在正式的1.0 release之前，首先回饋給開發社群的一個臨時版本。
  - [OpenMAX AL 1.0 Specification](http://www.khronos.org/registry/omxal/specs/OpenMAX_AL_1_0_Specification.pdf) - dated 2009-06-23
  - [OpenMAX AL 1.0.1 Specification](http://www.khronos.org/registry/omxal/specs/OpenMAX_AL_1_0_1_Specification.pdf) - dated 2010-03-12
  - [OpenMAX AL 1.1 Specification](http://www.khronos.org/openmax/al/) - dated 2011-01-18 \[1\]

## OpenMAX IL整合層

OpenMAX IL API透過C語言致力於打造可移植的媒體組件的陣列的平台。這些組件可以是來源（source）、匯出（sink）、編解碼器（codec）、過濾器（filter）、分離器（splitter）、混頻器（mixers），或任何其他資料操作。

介面是用於抽象化硬件和軟件架構的系統。OpenMAX IL API允許用戶裝載，控制，連接和卸載各個組件。這種靈活的核心架構允許整合層可以輕鬆地實現任何媒體的使用情況，並實作圖形基礎的媒體框架。[Android](../Page/Android.md "wikilink")主要的多媒体引擎[StageFright是透過IBinder使用OpenMax](https://zh.wikipedia.org/wiki/StageFright "wikilink")，用于编解码（Codec）处理。

## OpenMAX DL發展層

OpenMAX DL API定義了一組低層級的多媒體內核或媒體處理構件。OpenMAX DL範圍跨越多個領域，包括接口信號處理和圖像處理、音頻編碼、圖像編碼和視頻編碼。 OpenMAX DL分為五個應用領域：

  - AC - 音頻編解碼器
  - IC - 圖像編解碼器
  - IP - 圖像處理（通用圖像處理功能）
  - SP - 信號處理（通用音頻處理功能）
  - VC - 視頻編解碼器（H264和MP4組件）

OpenMAX API亦被[PlayStation 3控制台所採用](../Page/PlayStation_3.md "wikilink").\[2\]

## 注釋

## 外部連結

  - [Khronos Group—OpenMAX Overview and API specifications](http://www.khronos.org/openmax/)
  - [Khronos Group—Public API Registry](http://www.khronos.org/openmax/)
  - [Khronos Group—OpenMAX AL 1.1 Specification](http://www.khronos.org/registry/omxal/specs/OpenMAX_AL_1_1_Specification.pdf)
  - [Khronos Group—OpenMAX IL 1.1.2 Specification](http://www.khronos.org/registry/omxil/specs/OpenMAX_IL_1_1_2_Specification.pdf)
  - [Khronos Group—OpenMAX DL 1.0.2 Specification](http://www.khronos.org/files/openmax_dl_spec_1_0_2.pdf)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink")

1.  [Khronos Group Releases OpenMAX AL Specification for Application-level Video, Audio and Image Processing on Mobile and Handheld Devices](http://www.khronos.org/news/press/releases/khronos-openmax-al-specification-application-level-video-audio-processing/) , Khronos press release
2.  [OpenMax resources describes PS3 support](http://www.spiritus-temporis.com/openmax/resources.html)