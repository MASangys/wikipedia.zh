**Arduino**是一家制作[开源硬件和](https://zh.wikipedia.org/wiki/开源硬件 "wikilink")[开源软件](../Page/开源软件.md "wikilink")的公司，同时兼有项目和用户社区，該公司负责设计和制造[单板微控制器和](https://zh.wikipedia.org/wiki/单板微控制器 "wikilink")[微控制器套件](https://zh.wikipedia.org/wiki/微控制器 "wikilink")，用于构建-{zh-cn:数字设备;zh-tw:數位裝置;}-和-{zh-cn:交互式对象;zh-tw:互動式物件;}-，以便在物理和-{zh-cn:数字世界;zh-tw:數位世界;}-中感知和控制-{zh-cn:对象;zh-tw:物件;}-。该-{zh-cn:项目;zh-tw:專案;}-的产品是按照[GNU宽通用公共许可证](../Page/GNU宽通用公共许可证.md "wikilink")（LGPL）或[GNU通用公共许可证](../Page/GNU通用公共许可证.md "wikilink")（GPL）\[1\]许可的开源硬件和软件分发的，Arduino允许任何人制造Arduino板和软件分发。 Arduino板可以以预装的形式商业销售，也可以作为[DIY](../Page/DIY.md "wikilink")套件购买。

Arduino电路板设计使用各种微处理器和控制器。这些电路板配有一组数字和模拟[I/O引脚](https://zh.wikipedia.org/wiki/I/O "wikilink")，可以连接各种扩展板或[面包板](https://zh.wikipedia.org/wiki/面包板 "wikilink")（屏蔽板）和其他电路。这些电路板具有-{zh-cn:串行通信接口;zh-tw:串列埠;}-，包括某些型号上的-{zh-cn:通用串行总线;zh-tw:通用串列匯流排;}-（[USB](../Page/USB.md "wikilink")），也用于从个人电脑加载程序。微控制器通常使用[C](https://zh.wikipedia.org/wiki/C語言 "wikilink")/[C++](../Page/C++.md "wikilink")-{zh-cn:编程语言;zh-tw:程式語言;}-。除了使用传统的编译工具链之外，Arduino项目还提供了一个基于Processing语言-{zh-cn:项目;zh-tw:專案;}-的[集成开发环境](../Page/集成开发环境.md "wikilink")。

Arduino-{zh-cn:项目;zh-tw:專案;}-始于2003年，作为意大利[伊夫雷亚](../Page/伊夫雷亚.md "wikilink")地区伊夫雷亚交互设计研究所的学生-{zh-cn:项目;zh-tw:專案;}-，目的是为新手和专业人员提供一种低成本且简单的方法，以创建使用[传感器](../Page/传感器.md "wikilink")与环境相互作用的设备执行器。适用于初学者爱好者的此类设备的常见示例包括简单[机器人](../Page/机器人.md "wikilink")、[恒温器和](https://zh.wikipedia.org/wiki/恒温器 "wikilink")[运动检测器](https://zh.wikipedia.org/wiki/运动检测器 "wikilink")。

Arduino这个名字来自意大利伊夫雷亚的一家酒吧，该项目的一些创始人过去常常会去这家酒吧。 酒吧以伊夫雷亚的Arduin（Arduin of Ivrea）命名，他是伊夫雷亚邊疆伯爵，也是1002年至1014年期间的[意大利国王](https://zh.wikipedia.org/wiki/意大利国王 "wikilink")\[2\]。

## 關於

使用 [Atmel](https://zh.wikipedia.org/wiki/Atmel "wikilink") AVR 單片機，採用开源的軟硬體平台，構建於开源 simple I/O 介面板，並具有使用類似 Java、C 語言的 Processing/Wiring 開發環境。

## 開發沿革

Arduino的核心開發團隊成員包括：馬西莫·班齊（Massimo Banzi）、大衛·奎提耶斯（David Cuartielles）、湯姆·伊果（Tom Igor）、贊布羅塔·馬提諾（Gianluca Martino）、大衛·梅利斯（David Mellis）和尼可拉斯·蘭比提（Nicholas Zambetti）。

據說馬西莫·班齊之前是義大利Ivrea一家高科技設計學校的老師。他的學生們經常抱怨找不到便宜好用的微控制器。2005年冬天，馬西莫·班齊跟大衛·奎提耶斯討論了這個問題。大衛·奎提耶斯是一個西班牙籍晶片工程師，當時在這所學校做訪問學者。兩人決定設計自己的電路板，並引入了馬西莫·班齊的學生大衛·梅利斯為電路板設計編程語言。兩天以後，大衛·梅利斯就寫出了程式碼。又過了三天，電路板就完工了。這塊電路板被命名為Arduino。幾乎任何人，即使不懂電腦編程，也能用Arduino做出很酷的東西，比如對感測器作出回應，閃爍燈光，還能控制馬達。隨後馬西莫·班齊、大衛·奎提耶斯和大衛·梅利斯把設計圖放到了網上。保持設計的[開放源碼理念](https://zh.wikipedia.org/wiki/開放源碼 "wikilink")，因為版權法可以監管開源軟體，卻很難用在硬體上，他們決定採用共享創意許可\[3\]。[共享創意是為保護開放版權行為而出現的類似GPL的一種許可](https://zh.wikipedia.org/wiki/共享創意 "wikilink")（license）。在共享創意許可下，任何人都被允許生產[印刷電路板的複製品](https://zh.wikipedia.org/wiki/印刷電路板 "wikilink")，還能重新設計，甚至銷售原設計的複製品。你不需要付版稅，甚至不用取得Arduino團隊的許可。然而，如果你重新發佈了引用設計，你必須說明原始Arduino團隊的貢獻。如果你調整或改動了電路板，你的最新設計必須使用相同或類似的共享創意許可，以保證新版本的Arduino電路板也會一樣的自由和開放。唯一被保留的只有Arduino這個名字。它被註冊成了商標。如果有人想用這個名字賣電路板，那他們可能必須付一點商標費用給Arduino的核心開發團隊成員。

贊布羅塔·馬提諾創立的Arduino Srl被2009年創立的Arduino LLC控告侵犯了他們的著作權，這第二家被控侵權的Arduino（也就是Arduino Srl），原先叫做Smart Projects Srl，以前是在義大利負責生產製造Arduino控制板的公司。而第一家Arduino（也就是我們較熟悉的Arduino LLC）則負責開發控制板，並管理周邊的开源專題與社群。在之前，原本雙方是合作的關係；2014年馬提諾與另外四位共同創辦人，對於Arduino品牌的發展方向意見不合，導致馬提諾另外請費德里科·穆斯托擔任Smart Projects的新執行長，並把公司名稱改為Arduino Srl\[4\]。

## 特色

  - 基於[創用CC开源的電路圖設計](https://zh.wikipedia.org/wiki/創用CC "wikilink")。
  - 免費下載，也可依需求自己修改，但需遵照姓名標示。您必須按照作者或授權人所指定的方式，表彰其姓名。
  - 依相同方式分享，若您改變或轉變著作，當散布該衍生著作時，您需採用與本著作相同或類似的授權條款。
  - Arduino可使用ICSP線上燒入器，將[Bootloader燒入新的IC晶片](../Page/啟動程式.md "wikilink")\[5\]。
  - 可依據Arduino官方網站，取得硬體的設計檔，加以調整電路板及元件，以符合自己實際設計的需求\[6\]。
  - 可簡單地與感測器，各式各樣的電子元件連接，如[紅外線](https://zh.wikipedia.org/wiki/紅外線 "wikilink")、[超音波](https://zh.wikipedia.org/wiki/超音波 "wikilink")、[熱敏電阻](https://zh.wikipedia.org/wiki/熱敏電阻 "wikilink")、[光敏電阻](https://zh.wikipedia.org/wiki/光敏電阻 "wikilink")、[伺服馬達](../Page/伺服馬達.md "wikilink")等。
  - 支援多樣的互動程式，如Adobe Flash, Max/MSP, VVVV, Pure Data, [C](https://zh.wikipedia.org/wiki/C語言 "wikilink"), Processing等。
  - 使用低價格的微處理控制器（[Atmel AVR](../Page/Atmel_AVR.md "wikilink")）（ATMEGA 8,168,328等）。
  - [USB](../Page/USB.md "wikilink")介面，不需外接電源。另外有提供[直流](https://zh.wikipedia.org/wiki/直流 "wikilink")（DC）電源輸入。

## 硬體

### 官方硬體

原始的Arduino硬體是從一間意大利公司Smart Projects製造\[7\]有些Arduino硬體則是被官方授權由美國公司和設計。\[8\]。

[File:Arduino_Diecimila_6.jpg|Arduino](File:Arduino_Diecimila_6.jpg%7CArduino) Diecimila in Stoicheia <File:Arduino> Duemilanove 2009b.jpg|Arduino Duemilanove (rev 2009b) <File:Arduino> UNO unpacked.jpg|Arduino UNO <File:Arduino> Leonardo.jpg|Arduino Leonardo <File:Arduino> Mega.jpg|Arduino Mega <File:Arduino> MEGA 2560 R3, front side.jpg|Arduino MEGA 2560 R3（正面） <File:Arduino> MEGA 2560 R3, back side.jpg|Arduino MEGA 2560 R3（背面） <File:Arduino> Nano.jpg|Arduino Nano <File:ArduinoDue> Front.jpg|Arduino Due
（[ARM Cortex-M3核心](https://zh.wikipedia.org/wiki/ARM_Cortex-M3 "wikilink")） <File:LilyPad> Arduino Main Board.JPG|LilyPad Arduino (rev 2007) [File:ArduinoYun.jpg|Arduino](File:ArduinoYun.jpg%7CArduino) Yun

### Shields

「Shields」擴充版能夠被插入Arduino和Arduino相容硬體。用途是增加Arduino硬體上沒有的功能，如馬達控制、[GPS](https://zh.wikipedia.org/wiki/Global_Positioning_System "wikilink")、[有線網路](https://zh.wikipedia.org/wiki/乙太網路 "wikilink")、[液晶顯示器或者是](https://zh.wikipedia.org/wiki/液晶顯示器 "wikilink")[麵包板](https://zh.wikipedia.org/wiki/麵包板 "wikilink")。使用者也可以[自己動手做Shields擴充版](../Page/DIY.md "wikilink")\[9\]\[10\]\[11\]。

Image:Arduino Protoboard Shields.jpg|多重的Shield可以被堆疊起來。在這張圖裡，最上層的Shield擴充版上含有麵包板。 Image:Wingshield on Arduino - ARSH-05-WI.jpg|翅膀形狀的螺絲端子Shield擴充版。 Image:Adafruit Motor Shield - ARSH-02-MS 01.jpg|Adafruit馬達Shield擴充版和用於連接馬達的螺絲端子Shield擴充版。 Image:ARSH-09-DL 03.jpg|內建一個[SD卡](../Page/SD卡.md "wikilink")插槽，以及[實時時鐘](../Page/實時時鐘.md "wikilink")晶片的Adafruit數據記錄Shield。Image:Fabric Shield for Arduino Nano.JPG|HackARobot結構Shield，專為了Arduino Nano硬體設計以推動馬達和[感測器如](https://zh.wikipedia.org/wiki/感測器 "wikilink")：[陀螺儀](../Page/陀螺儀.md "wikilink")和GPS，以及其他的擴充版如：[Wifi](https://zh.wikipedia.org/wiki/Wifi "wikilink")、[藍芽](https://zh.wikipedia.org/wiki/藍芽 "wikilink")、[無線射頻等](../Page/射頻.md "wikilink")。

## 軟體

在Arduino上執行的程式可以使用任何能夠被編譯成Arduino機器碼的[程式語言編寫](https://zh.wikipedia.org/wiki/程式語言 "wikilink")。

而Atmel也提供了數個可以開發Atmel微處理機程式的整合開發環境，AVR Studio\[12\]和更新的Atmel Studio\[13\]\[14\]。

目前微軟在其Visual Studio 也有提供Arduino 的 SDK，在編譯執行上更方便。

### IDE

而Arduino計劃也提供了Arduino Software IDE，一套以Java編寫的跨平台應用軟體。Arduino Software IDE源自於[Processing](../Page/Processing.md "wikilink")程式語言以及計劃的整合開發環境。它是被設計於介紹程式編寫給藝術家和不熟悉程式設計的人們，且包含了一個擁有[語法突顯](../Page/語法突顯.md "wikilink")、括號匹配、自動縮排和一鍵編譯並將執行檔燒寫入Arduino硬體中的編輯器。

Arduino Software IDE使用與[C語言和](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++](../Page/C++.md "wikilink")相仿的程式語言，並且提供了包含常見的輸入/輸出函式的[軟體函式庫](../Page/函式庫.md "wikilink")。在使用[GNU toolchain編譯和連結後](https://zh.wikipedia.org/wiki/GNU_toolchain "wikilink")，Arduino Software IDE提供了一個程式「avrdude」用來轉換可執行檔成為能夠燒寫入Arduino硬體的[韌體](../Page/韌體.md "wikilink")。

### Sketch

使用Arduino Software IDE編寫的程式被稱為「sketch」\[15\]。一個典型的Arduino C/C++ sketch程式會包含兩個函式，它們會在編譯後合成為main()函式：

  - setup()：在程式執行開始時會執行一次，用於初始化設定。
  - loop()：直到Arduino硬體關閉前會重複執行函式放的程式碼。

## Arduino语言

``` arduino
int LED_PIN=13;

void setup () {                    // 初始化副程式，程式起始時僅執行一次
    pinMode (LED_PIN, OUTPUT);     // 以數位輸出方式啟用Pin13
}

void loop () {                     // loop副程式，重複不斷執
    digitalWrite (LED_PIN, HIGH);  // 打開LED（發光二極管）
    delay (1000);                  // 等待一秒，delay內含數值1000，代表延遲1000毫秒，即一秒。
    digitalWrite (LED_PIN, LOW);   // 關閉LED
    delay (1000);                  // 等待一秒
}                                  // loop副程式結束
```

這是Arduino的Blink範例程式。

Arduino 程式可由五個部分組成：

``` arduino
//1. 匯入函式庫與定義 (可有可無)

#include <SoftEasyTranfer.h>
#define LEDPIN 13

//2. 宣告常數與全域變數 (可有可無)

const float PI=3.14159;
int r;

//3. 設定函式 (必要)

void setup() {}

//4. 無限迴圈;(必要)

void loop() {}

//5. 自訂函式 (可有可無)

float area(float r) {
    float a=PI*r*r;
    return a;
}
```

其中 **setup()** 與 **loop()** 是一定要有的函式（均無參數無傳回值），其他則視需要而定。 Arduino 語言採用 C/C++ 語法，

加上以 Wiring 為基礎的電子設計核心函式庫組合而成，包括 Digital I/O, Analog I/O 等函式庫。內建的函式庫可直接調用，

但若有使用第三方函式庫（例如驅動感測器模組所需的函式庫），則必須使用 include 前置指令引入。此外，也可以用前置指令 define 定義一個常數或巨集（運算式）。

前置指令乃 C 編譯器指令，不屬於 C 語言本身，其用途有三：

1.  引入標頭檔：例如
    ``` arduino
     #include <myLibrary.h>
    ```
    或
    ``` arduino
    #include "myLibrary.h"
    ```
2.  定義常數：例如
    ``` arduino
     #define     PI 3.14159
    ```
3.  定義巨集：例如
    ``` arduino
     #define     AREA(r) PI*r*r
    ```

所以前置指令的功能一言以蔽之就是替換，include 就是在標頭處以指定之檔案內容替換；而 define 就是在程式中用到所定義之常數與巨集名稱時，以其內容替換。

巨集的功能事實上與函數類似，不同之處是函式呼叫使用堆疊，而巨集則是直接放在原始碼中，執行效率較快（但若很多地方都要用到時，編譯後就會比較大）。

標頭檔可用角括號 \< \> 或雙引號 ""，差別是用雙引號時，前置處理器會先從原始檔所在位置開始去搜尋標頭檔；而用角括號則會先從 libraries 目錄開始找。

## 相關設備名稱

  - [BASIC Stamp](../Page/BASIC_Stamp.md "wikilink")

  -
  -
  -
  -
  -
  -
  -
  -
  -
  - [樹莓派](https://zh.wikipedia.org/wiki/樹莓派 "wikilink") - 单板機電腦

  -
## 參見

  - [创作共用](../Page/创作共用.md "wikilink")

## 注釋

## 参考資料

### 补充資料

  - O'REILLY歐萊禮原文 - Getting Started with Arduino
  - O'REILLY歐萊禮原文繁體中文翻譯書 - 踏進互動科技世界使用Arduino

## 外部链接

  - <http://arduino.org/>
  - [Make Magazine article on the Arduino](http://downloads.oreilly.com/make/arduinoMAKE07.pdf)
  - "Wiring" software project: <http://wiring.org.co/>
  - [Flickr上有關Arduino的圖片](http://www.flickr.com/photos/tags/arduino/)
  - [Arduino tutorial](http://www.ladyada.net/learn/arduino/) – broken into several lessons with photographs and suggestions for appropriate tools for beginners.
  - [Introduction to the Arduino](https://web.archive.org/web/20071112133603/http://www.makezine.com/blog/archive/2007/09/intro_to_the_arduino_week.html) - Weekend Project Podcast
  - [Sheepdog Software's Introduction to Arduino](http://sheepdogsoftware.co.uk/pltut.htm)："Getting Started" pages and sequenced programming tutorials, with help on hardware.
  - [Wired article about open source hardware, focusing on Arduino](http://www.wired.com/techbiz/startups/magazine/16-11/ff_openmanufacturing?currentPage=all)
  - [新竹交通大學毛先生的資料](http://rainage.blogspot.com/search/label/Arduino)
  - [Freeduino索引](https://web.archive.org/web/20080410220309/http://www.freeduino.org/freeduino_open_designs.html)
  - [自製USB AVR燒錄器](http://mitchcircuit.wordpress.com/2008/03/13/usbasp-diy/)
  - [Arduino: Robotics for beginners (Spanish with English subtitles)](http://www.youtube.com/watch?v=KZUrO9aXGh0)
  - [Arduino tutorial](https://www.webcitation.org/66652NO7w?url=http://lusorobotica.com/index.php/topic,22.0.html) – in portuguese, but with source codes and videos.
  - [Cooper Maa的Arduino筆記](http://coopermaa2nd.blogspot.com/search/label/Arduino)
  - [Arduino中文教程-Arduino中文社区](http://www.arduino.cn/thread-1066-1-1.html)
  - [Arduino中文教程](http://blog.flamingoeda.com/category/tutorial/)
  - [柯博文老師的arduino教學](http://www.powenko.com/en/?page_id=4366)

[Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink") [Category:开源硬件](https://zh.wikipedia.org/wiki/Category:开源硬件 "wikilink") [Category:开放硬件电子设备](https://zh.wikipedia.org/wiki/Category:开放硬件电子设备 "wikilink")

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