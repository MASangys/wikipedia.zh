[ATmega8_01_Pengo.jpg](https://zh.wikipedia.org/wiki/File:ATmega8_01_Pengo.jpg "fig:ATmega8_01_Pengo.jpg") **Atmel AVR**系列是一种基于改进的[哈佛结构](../Page/哈佛结构.md "wikilink")、8位元～32位元[精简指令集](../Page/精简指令集.md "wikilink")（）的[微控制器](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，由[Atmel公司于](https://zh.wikipedia.org/wiki/Atmel "wikilink")1996年研发。AVR系列是首次采用[闪存](../Page/闪存.md "wikilink")（）作为数据存储介质的单芯片微控制器之一，同時代的其它微控制器多採用一次寫入可编程ROM、EPROM或是EEPROM。

目前AVR处理器发展了六个系列，分别是：tinyAVR，ATtiny系列；megaAVR，ATmega系列；XMEGA，ATxmega系列；Application-specific AVR，面向特殊应用的AVR系列，增加LCD控制器、[USB](../Page/USB.md "wikilink")控制器、PWM等特性；FPSLIC，[FPGA上的AVR核](https://zh.wikipedia.org/wiki/FPGA "wikilink")；AVR32，32位AVR系列，包含SIMD和DSP以及音视频处理特性，与[ARM架構形成竞争](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")。

## 發展簡史

AVR架構最早由兩名（Norwegian Institute of Technology，NTH）的學生Alf-Egil Bogen和Vegard Wollan共同構思出來。\[1\]\[2\]

原始的AVR微控制單元由當地[Trondheim的一所](../Page/特隆赫姆.md "wikilink")[特殊應用積體電路](../Page/特殊應用積體電路.md "wikilink")（ASIC）工作室Nordic VLSI（現為）負責開發。當時它被稱作μRISC（Micro RISC），還可使用Nordic VLSI的矽[晶圓](../Page/晶圓.md "wikilink")等基礎材料來製作其晶片。當這些技術被Nordic VLSI賣給[Atmel後](https://zh.wikipedia.org/wiki/Atmel "wikilink")，其內部架構被當時任職於Atmel挪威子公司的Bogen以及Wollan進一步發展。架構設計者們和來自的[編譯器](../Page/編譯器.md "wikilink")編寫者們緊密合作，來確保[指令集提供更高效率的](https://zh.wikipedia.org/wiki/指令集 "wikilink")[高階程式語言編譯](https://zh.wikipedia.org/wiki/高階程式語言 "wikilink")。\[3\]

而在命名上，Atmel解釋『AVR』這個名稱不是某幾個單詞的縮寫，也不代表任何特別的事物。AVR的創造者們也沒有給出明確的關於『AVR』之表意的答案。\[4\]然而，一般認為，『AVR』表示**A**lf (Egil Bogen) and **V**egard (Wollan)'s **R**ISC processor。\[5\]而本文裏用的『AVR』一般指8位元RISC的Atmel AVR微控制器的產品線。

首個AVR微控制器的產品線是AT90S8515，擁有和[英特爾8051](../Page/英特爾8051.md "wikilink")微控制器相同的40針雙列直插封裝（DIP），包括外部多路位址和資料[匯流排](https://zh.wikipedia.org/wiki/匯流排 "wikilink")。但<span style="text-decoration: overline">RESET</span>線和英特爾8051相反，8051的是高電平有效RESET，而AVR是低電平有效<span style="text-decoration: overline">RESET</span>，但除此以外，其它針腳是完全一致的。

## 裝置概覽

AVR是一個修改過的[哈佛架構計算機](https://zh.wikipedia.org/wiki/哈佛架構 "wikilink")，程式和資料分別儲存在各自的擁有不同[定址空間的物理內存系統上](https://zh.wikipedia.org/wiki/定址空間 "wikilink")，但有能力使用特殊的指令可從程式存儲器內讀取資料項。

### 基本家族系列

AVR分為六大家族系列：

  - **tinyAVR** — ATtiny系列
      - 0.5～16kB的程式記憶體
      - 6～32管腳封裝
      - 有限的外圍裝置集合

<!-- end list -->

  - **megaAVR** — ATmega系列
      - 4～512kB的程式記憶體
      - 28～100管腳封裝
      - 擴展指令集（乘法指令和管理更大容量的程式記憶體管理指令）
      - 更多的外圍裝置集合

<!-- end list -->

  - **XMEGA** — ATxmega系列
      - 16～384kB程式記憶體
      - 44～64～100管腳封裝（A4、A3、A1）
      - 擴展效能特性，像是DMA、『事件系統』、以及加密支援
      - 更多外圍裝置集，包含類比數位轉換器（ADC）

<!-- end list -->

  - **Application-specific AVR** — 面向特殊應用的AVR
      - 基於megaAVR搭載其它AVR家族系列上所沒有的特殊的功能，例如[LCD控制器](https://zh.wikipedia.org/wiki/LCD "wikilink")、[USB控制器](https://zh.wikipedia.org/wiki/通用串列匯流排 "wikilink")、 進階[PWM](https://zh.wikipedia.org/wiki/PWM "wikilink")、[CAN等等](https://zh.wikipedia.org/wiki/控制器區域網路 "wikilink")

<!-- end list -->

  - **FPSLIC (AVR with FPGA)** — 載於FPGA上的AVR核心
      - [FPGA](https://zh.wikipedia.org/wiki/現場可程式邏輯閘陣列 "wikilink") 5K 至 40K 個邏輯閘
      - AVR程式碼使用[SRAM](https://zh.wikipedia.org/wiki/SRAM "wikilink")，和其它AVR系列不同
      - AVR核心可以運作於最高50MHz的[時脈速率上](https://zh.wikipedia.org/wiki/時脈 "wikilink")\[6\]

<!-- end list -->

  - **32-bit AVRs** — 32位元AVR

<!-- end list -->

  -
    2006年Atmel發布新的基於32位元的AVR32架構之微控制器。新架構包含[單指令流多資料流運算](https://zh.wikipedia.org/wiki/單指令流多資料流 "wikilink")（SIMD）和[數位訊號處理器](../Page/數位訊號處理器.md "wikilink")（DSP）指令，以及其他音頻視頻處理功能。這個[32位元](../Page/32位元.md "wikilink")的裝置家族系列將與[ARM架構的處理器形成競爭](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")。儘管指令集和其它[精簡指令集的中央處理核心相似](https://zh.wikipedia.org/wiki/精簡指令集 "wikilink")，但與原來的AVR架構和其它ARM核心是不相容的。

### 存儲器架構

[快閃記憶體](https://zh.wikipedia.org/wiki/快閃記憶體 "wikilink")、[電子抹除式可複寫唯讀記憶體](../Page/電子抹除式可複寫唯讀記憶體.md "wikilink")（EEPROM）、以及[靜態隨機存取記憶體](https://zh.wikipedia.org/wiki/靜態隨機存取記憶體 "wikilink")（SRAM）都內建於一顆晶片上，在大部分應用中盡可能無需外部記憶體。一些裝置擁有並列的外部匯流排選擇以允許加入額外的資料記憶體或記憶體對映裝置。幾乎所有的裝置（除最小規模TinyAVR晶片以外）擁有串列匯流排，可以用來連接更大的串列EEPROM或快閃記憶體。

#### 程式記憶體

程式指令被存儲於非易失性的快閃記憶體上。儘管微控制器只有8位元，但每指令可以存取1至2個[16位元的位元組](https://zh.wikipedia.org/wiki/16位元 "wikilink")。

程式記憶體的容量大小常用於裝置命名（如ATmega64x產品線擁有64KB的快閃記憶體，ATmega32x產品線擁有32KB的快閃記憶體）

不支援擴充程式記憶體，所有由AVR核心執行的程式碼皆需要儲存於內部的記憶體。然而AT94 FPSLIC AVR/FPGA晶片沒有這種限制。

#### 內部資料記憶體

資料定址空間由暫存器檔案、輸出/輸入暫存器、和SRAM組成。

#### 內部暫存器

[AVR_ATXMEGA_128A1.JPG](https://zh.wikipedia.org/wiki/File:AVR_ATXMEGA_128A1.JPG "fig:AVR_ATXMEGA_128A1.JPG")封裝\]\] AVR擁有32個的暫存器，分別為( R0 到 R31 )並被歸類為8位元RISC裝置。

在大部分AVR架構上，工作暫存器被對映為首位的32個記憶體位址（0000<sub>16</sub>–001F<sub>16</sub>）接著是64個輸出/輸入（I/O）暫存器（0020<sub>16</sub>–005F<sub>16</sub>）。

實際上SRAM是在這些暫存器分段（定址為0060<sub>16</sub>）後開啟。（注意輸出/輸入暫存器空間在一些擴展裝置上或許更大，使得載入記憶體對映I/O暫存器將佔用一部分SRAM的定址空間）

雖然有這些分開的定址解決方案和最佳化的暫存器檔案和I/O暫存器存取操作碼，但它們全部都可以被加以處理和操作，就像它們都在SRAM上。

在XMEGA系列上，工作暫存器檔案並沒有對映到資料定址空間上；正因為如此，不能將XMEGA的工作暫存器像是在SRAM上那樣對待。作為替代，I/O暫存器被對映到資料定址空間內非常靠前的位置上。另外，資料定址空間中用作I/O暫存器的總數上大幅增加，容量達到4096位元組（0000<sub>16</sub>–0FFF<sub>16</sub>）。然而，正如前代產品一樣，快速I/O操作指令只可到達首先的64個I/O暫存器位置（首位的32個位置是給位元運算指令使用的）。往後的I/O暫存器，XMEGA系列預留了一個4096位元寬度位址空間範圍，可被選作將內建EEPROM對映至資料定址空間上（1000<sub>16</sub>–1FFF<sub>16</sub>）。實際可用的SRAM位於這些被佔用的定址空間以後，從2000<sub>16</sub>開始。

#### EEPROM

幾乎所有的AVR微控制器都擁有內建的EEPROM，用來提供半永久的資料存儲。和快閃記憶體一樣，EEPROM可在斷電以後維持其內存儲的資料。

在大部分的AVR架構中，內部EEPROM記憶體並沒有對映到微控制單元的可定址記憶體空間上。它只可和外掛的外圍裝置一樣使用特別的指針暫存器和讀/寫指令來存取，這使得EEPROM的存取速度要比其它內建的隨機存取記憶體（RAM）要慢不少。

然而，某些SecureAVR（AT90SC）家族系列的裝置\[7\]使用了一種特殊的EEPROM根據相關配置設定對映至資料或程式記憶體。XMEGA家族系列也允許EEPROM對映至西遼定址空間上。

因EEPROM的擦寫次數不是無限的——Atmel的技術細明規格表上標明是100,000次擦寫週期——一個設計精良的EEPROM擦寫常程序應比較EEPROM位址上的內容和請求寫入的內容並在需要進行改變的位置處才真正執行寫入操作。

注意，在很多情況下擦除和寫入是分開執行的，以位元組為單位進行，這有助於延長其使用壽命，因位元僅需全被設定為『1』（擦除）或選擇性地置『0』（寫入）。

### 程式執行

Atmel的AVR核心擁有二階單級[管線設計](https://zh.wikipedia.org/wiki/管線 "wikilink")。這意味著處理器可以在執行現在的指令同時將下一個指令讀取。絕大部分的指令執行僅需一到兩個時鐘週期，使AVR核心在眾多8位元微控制器中是最快的。

AVR核心被設計為能夠高效運行經編譯的C語言程式，還內建了數個指針指令與之相適配。

### 指令集系統

AVR指令集系統相比其它大多數的位元微控制器的，[正交](../Page/正交.md "wikilink")指令集要多出不少，尤其是AVR當下的競爭對手英特爾8051以及其仿製品和[PIC微控制器](../Page/PIC微控制器.md "wikilink")。然而，這不完全是固定的：

  - [指針暫存器](https://zh.wikipedia.org/wiki/指针_\(信息学\) "wikilink") R26 至R31 是X、Y和Z擁有的定址能力，彼此是不同的
  - [暫存器位置R](https://zh.wikipedia.org/wiki/暫存器 "wikilink")0至R15和暫存器R16至R31擁有不同的定址能力
  - 輸出/輸入埠0～31和埠32至63擁有不同的定址能力
  - 當SER不影響標誌時CLR會影響標誌，即使它們是互補指令。CLR設定所有位元為「零」而SER指令則設定所有位元為「一」。（注意，CLR指令是EOR R, R的虛假操作；SER指令是LDI R,$FF的短指令。數學運算時當遇到搬移/載入/存儲/分支，像是EOR會變更標誌而像是LDI的則不會）
  - 讀取存儲在程式記憶體（快閃型）的唯獨資料時要用到特殊的LPM指令；快閃記憶體匯流排會為指令記憶體保留。

此外，一些晶片差異會影響代碼的生成。代碼指針（包括在堆疊上的返回位址）在晶片上是兩個位元組長度以及有高達128KB的快閃記憶體，但在一些更大的晶片上變成3個位元組長度;並不是所有的晶片都有硬體乘法器；擁有超過8KB快閃記憶體的晶片擁有分支和附帶更大範圍的傳喚指令；或者四者都有。

通常的規則指令集使得可直接使用C（或者甚至Ada）編譯器來對AVR進行編程。[GCC](../Page/GCC.md "wikilink")也在離目前相當長的時間以前就支援包括AVR在內的多種微控制器，而且還被廣泛使用。事實上，Atmel也從為小型微控制器用的編譯器的主要開發者當中徵集並導入他們的作品。以確定高階程式語言編譯器中最常用的指令集特性。

### MCU速度

AVR系列可以很好地支援0～20MHz的時脈，某些裝置更達到32MHz。更低功耗的作業一般需要一個較低的時脈。所有最近的AVR裝置（Tiny、Mega、以及Xmega，但90年代的產品除外）有內建石英振盪器、可以不需要外接時鐘或共鳴器電路。一些AVR裝置還有一個系統時鐘預定標器，提升系統時鐘至1024。這個預定標器可以被軟體執行時重新配置，允許對時脈進行最佳化作業。

因所有在暫存器R0至R31位址的運算作業僅需一個時脈，AVR可以擁有每兆赫（MHz）最高每秒一百萬指令（MIPS），換言之一顆8MHz的AVR處理器擁有8MIPS的效能。從記憶體載入和儲存資料需要兩個時脈，分支也需要兩個時脈。在一些較新的『3位元組PC』上，像是ATmega2560的裝置，分支操作會比之前的裝置慢上一個時脈。

### 開發

[Atmel_STK_500_DSC00557_wp.jpg](https://zh.wikipedia.org/wiki/File:Atmel_STK_500_DSC00557_wp.jpg "fig:Atmel_STK_500_DSC00557_wp.jpg") AVR由於開發工具可輕易免費或低價獲得，包括一些合適價格的開發板裝置和免費的開發軟體，而擁有龐大的開發群體。AVR也以眾多不同的名義販售，但它們都使用相同的基本核心，只是周邊設備和記憶體的搭配不一樣。每個系列的不同晶片之間的相容性相當好，儘管輸出輸入控制器的搭配會有所不同。

更多可參見[\#外部連結一節中與AVR開發的相關站點](https://zh.wikipedia.org/wiki/#外部連結 "wikilink")。

### 功能特性

## 編程界面

有多種方法可將程式載入至AVR晶片上。不同AVR家族系列的程式寫入方法都各有不同。

### 高電壓平行

高電壓平行編程（High voltage parallel programming，HVPP）是作為『最後手段』來使用，亦可能是以壞熔絲設定修復AVR晶片的唯一方法。

### 開機載入程式（Bootloader）

大部分的AVR型號可以保留一個開機載入程式區域，有256位元組至4KB的大小，可儲存多次編程的程式碼。在復位後，首先執行bootloader，然後終止一些使用者運行的程式，當需要重新變成或跳轉至主程式時。在任何界面可用時，程式碼便可以進行重新編程，像PXE（預啟動執行環境）一樣，透過乙太網適配器能讀取加密處理的二進制資料。Atmel有關於許多匯流排介面的應用程式註釋及源碼。\[8\]\[9\]\[10\]\[11\]

### ROM

AT90SC系列的AVR晶片可以使用原廠掩模[ROM而不使用快閃記憶體來作為程式記憶體](https://zh.wikipedia.org/wiki/ROM "wikilink")。\[12\] 因為在大批量生產基於AVR的特定功能控制器時，比起在開發階段使用價格較高的快閃記憶體，在生產階段使用掩模ROM可以有效提高成本效益。

### aWire

aWire是一種新的單線除錯界面，可用於新版UC3L AVR32裝置上。

## 參見

  - [Arduino](../Page/Arduino.md "wikilink")
  - [AVR32](https://zh.wikipedia.org/wiki/AVR32 "wikilink")

## 參考資料

## 擴展閱讀

  - *Embedded C Programming and the Atmel AVR*; Richard H Barnett, Sarah Cox, Larry O'Cull; 560 pages; 2006; ISBN 978-1-4180-3959-2.
  - *C Programming for Microcontrollers Featuring ATMEL's AVR Butterfly and WinAVR Compiler*; Joe Pardue; 300 pages; 2005; ISBN 978-0-9766822-0-2.
  - *Atmel AVR Microcontroller Primer : Programming and Interfacing*; Steven F Barrett, Daniel Pack, Mitchell Thornton; 194 pages; 2007; ISBN 978-1-59829-541-2.
  - *Arduino : A Quick Start Guide*; Maik Schmidt; 276 pages; 2011; ISBN 978-1-934356-66-1.

## 外部链接

  - 主要資源

<!-- end list -->

  -
  - [Atmel AVR homepage](http://www.atmel.com/products/avr/)

  - [AVR-Libc homepage](http://www.nongnu.org/avr-libc/)

  - [AVR Freaks community](http://www.avrfreaks.net/)

  - [Atmel AVR Serial Port Programmer](http://microembeded.blogspot.com/2011/04/avr-serial-port-programmer.html)

  - [Arduino community](http://www.arduino.cc/)

  - , numerous AVR links

  - [Why you need a clock source for the AVR?](http://www.avrfreaks.net/index.php?module=FreaksArticles&func=downloadArticle&id=21)

  - [AVR Basics](http://www.robotplatform.com/knowledge/AVR%20Basics/avr_basics.html) - AVR guide for beginners

  - [Simplest AVR programmer Using LPT Port](https://web.archive.org/web/20130326024446/http://makecircuits.com/blog/2009-03-23-simplest-atmega8-programmer-using-lpt-port.html)

  - [Atmega8 Breadboard Tutorial](http://www.protostack.com/blog/2009/07/atmega8-breadboard-circuit-part-2-of-3-the-microcontroller/)

  - AVR DIP-Package Pinout Diagrams: [ATtiny44/45/84/85](http://www.flickr.com/photos/28521811@N04/8451023182/sizes/l/in/photostream/), [ATmega328P](https://web.archive.org/web/20130801033936/http://www.pighixxx.com/pgdev/Temp/arduino_atmega328_Web.png), [ATmega644P](http://www.flickr.com/photos/28521811@N04/8449933887/sizes/l/in/photostream/), [ATmega1284P](http://www.flickr.com/photos/28521811@N04/8451021230/sizes/l/in/photostream/)

  - AVR TQFP-Package Pinout Diagrams: [ATmega328](http://www.flickr.com/photos/28521811@N04/8449935217/sizes/l/in/photostream/), [ATmega2560](http://www.flickr.com/photos/28521811@N04/8451021492/sizes/l/in/photostream/), [ATmega32U4](http://www.flickr.com/photos/28521811@N04/8467610175/sizes/l/in/photostream/)

[Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink")

1.  自1996年以後，NTH成為挪威科技大學（Norwegian University of Science and Technology，NTNU）的一部分

2.

3.

4.
5.

6.  [Field Programmable System Level Integrated Circuit](http://www.atmel.com/products/other/field_programmable_gate_array/default.aspx)

7.  [Atmel Smart Card ICs](http://www.atmel.com/images/doc1010.pdf)

8.

9.

10.

11.

12.