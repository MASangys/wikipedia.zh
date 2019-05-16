**I²S**或**I2S**（或）是IC間傳輸數位音訊資料的一種介面標準，採用序列的方式傳輸2組（左右聲道）資料。I2S常被使用在傳送[CD的](../Page/CD.md "wikilink")[PCM音訊資料到CD播放器的](https://zh.wikipedia.org/wiki/PCM "wikilink")[DAC中](../Page/數位類比轉換器.md "wikilink")。由於I2S將資料訊號和時脈訊號分開傳送，它的[抖动](../Page/抖动.md "wikilink")（）失真十分地小。

## I2S歷史

由Philips Semiconductor(現在的 [NXP
Semiconductors](https://en.wikipedia.org/wiki/NXP_Semiconductors))在1986年發表此規格,最後一次改版時間在1996年6月5日
\[1\]

## 一般的I²S

I²S由3條傳輸線組成：

1.  位元時脈線(BCLK: bit clock line)
      - 標準名稱為"連續串列時脈 (Continuous Serial Clock, SCK)"\[2\],一般稱為"位元時脈(bit
        clock, BCLK)"\[3\]
2.  字元選擇線(word select line)
      - 標準名稱為"字元選擇(word select, WS)"\[4\],一般稱為"左右時脈(left-right
        clock,LRCLK)"\[5\]
      - 0表示左頻道,1表示右頻道\[6\]
      - 也稱為"框架同步(Frame Sync, FS)"\[7\]
3.  複合資料線（SDATA:multiplexed data）
      - 標準名稱為"串列資料(Serial Data, SD)"\[8\],但也可稱為SDATA, SDIN,
        SDOUT,DACDAT, ADCDAT..等

也有可能找到以下這些線：

1.  主時脈：256個典型的左右時脈線（MCLK= 256\*LRCLK）
2.  上傳資料的複合訊息（multiplex）線

I²S由前述的位元時脈、字元時脈和資料三條線所組成。當新的資料被放到資料線上時，位元時脈就會跳動一次。它以資料取樣率的64倍速度在運作，諸如CD的取樣率為44.1
KHz，要傳輸它所使用的位元時脈就為2.8224
MHz。I²S的資料線允許兩個軌道的資料同時傳送，而字元選擇時脈能讓接收裝置知道現在正在傳送軌道1或軌道2的資料。每個軌道可傳輸32位元的資料，所以顯而易見地，字元選擇時脈和聲音的取樣率時脈是相同的。位元時脈即是取樣率時脈的64倍，44.1KHz
x 2個聲道 x 32位元 = 2.8224MHz。

I²S的資料是從高位元（MSB）傳送至低位元（LSB），從字元選擇時脈的左端開始，加上一個位元時脈的延遲，即資料將比字元選擇時脈要慢一個位元時脈。也有左對齊（Left
Justified）的I²S資料流，它沒有位元時脈的延遲，資料和字元選擇時脈是同步的。右對齊（Right
Justified）則是資料比字元選擇時脈快一個位元時脈。

## 傳輸速度

|                                                       |                 |               |
| ----------------------------------------------------- | --------------- | ------------- |
| [Audio CD](../Page/CD.md "wikilink")                  | 44,1 kHz·16 bit | 1.4112 MBit/s |
| [DAT](https://zh.wikipedia.org/wiki/DAT "wikilink")   | 48 kHz·16 bit   | 1.536 MBit/s  |
| [SACD](https://zh.wikipedia.org/wiki/SACD "wikilink") | 96 kHz·24 bit   | 4.608 MBit/s  |

## 作为设备间的音频传输

I2S 协议并不适合用线缆进行传输，并且 IC 对同轴电缆通常并没有正确的阻抗。

不过，有时 I2S 也被用于连接不同的设备（如 CD 和分体的 DAC），而不仅仅是连接多个芯片。这可以替代常用的 AES /
EBU、Toslink 或 S / PDIF。不过，用于设备间连接时，I2S 并没有标准的接口。有的制造商仅仅提供 3 个 BNC 接口、
8P8C（RJ45）接口或者 DE-9 接口。有的制造商，像 Audio Alchemy（现在已被收购），使用 DIN 连接器。PSAudio、
Wyred4Sound 使用 HDMI 线缆。荷兰制造商 Van Medevoort 在它的器材上实现了 Q-link，使用 4 个 RCA
接口来传输 I2S 信号。

## 參考資料

## 參考連結

  - [I²C](../Page/I²C.md "wikilink")
  - [SPI
    bus](https://zh.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus "wikilink")
  - [S/PDIF](https://zh.wikipedia.org/wiki/S/PDIF "wikilink")
  - [序列周邊介面](../Page/序列周邊介面.md "wikilink")
  - [AC97](../Page/AC97.md "wikilink")
  - [A Low Jitter, Consumer/Professional Digital Audio
    Interface](https://web.archive.org/web/20061027193117/http://www.anthemav.com/OldSitev1/pdf/i2Srev1.pdf)

[Category:Serial_buses](https://zh.wikipedia.org/wiki/Category:Serial_buses "wikilink")
[Category:NXP_Semiconductors](https://zh.wikipedia.org/wiki/Category:NXP_Semiconductors "wikilink")
[Category:串行总线](https://zh.wikipedia.org/wiki/Category:串行总线 "wikilink")

1.  [I²S
    Specification](https://web.archive.org/web/20070102004400/http://www.nxp.com/acrobat_download/various/I2SBUS.pdf)(PDF).
    Philips Semiconductors. June 5, 1996. Archived from [the
    original](http://www.nxp.com/acrobat_download/various/I2SBUS.pdf)
    (PDF) on January 2, 2007.

2.
3.  Lewis, Jerad (January 2012). "[Technical Article MS-2275: Common
    Inter-IC Digital Interfaces for Audio Data
    Transfer](https://www.analog.com/media/en/technical-documentation/technical-articles/MS-2275.pdf)"
    (PDF). Analog Devices, Inc.

4.
5.
6.
7.  MCLK in I2S audio protocol". electronics.stackexchange.com.
    Retrieved 2016-11-04. Clock source for the delta-sigma modulators
    and digital filters. ... It is the clock that is used by the audio
    codec ... to time and/or drive its own internal operation.

8.