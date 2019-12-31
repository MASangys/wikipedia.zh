> 本文内容由[ATmega328](https://zh.wikipedia.org/wiki/ATmega328)转换而来。


ATmega328是Atmel發展的megaAVR產品線其中一個單晶片產品。

## 規格

這是一顆八位元AVR精簡指令型微控制器，擁有32KB ISP具備寫入同時讀取能力的閃存記憶體。1KB 的電氣可抹除唯讀記憶體。2KB 隨機存取記憶體。23個通用輸出輸入線。32個通用工作暫存器。三個具備比對能力的計時計數器。內部與外部中斷。可程式化的通用非同步收發串列介面。一組位元組導向的兩線式串列介面。一組SPI串列埠。6通道10位元類比數位轉換器(TQFP及QFN/MLF包裝中只有8通道)。一組具有內部震盪器的可程式化看門狗計時器。五組可選擇的功率節約模式。這個單晶片的工作電壓運作在1.8V-5.5V之間。這個單晶片運作效能達到每百萬赫茲(Hz)有1 MIPS\[1\]。

## 關鍵參數

| Parameter                                                                    | Value                                                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| CPU type                                                                     | 8-bit AVR                                                                                                                                                                                                                                              |
| Performance                                                                  | 20 [MIPS](https://zh.wikipedia.org/wiki/Instructions_per_second "wikilink") at 20 MHz<ref name=m8271ds>{{cite web                                                                                                                                      |
| [Flash memory](https://zh.wikipedia.org/wiki/Flash_memory "wikilink")        | 32 kB                                                                                                                                                                                                                                                  |
| [SRAM](https://zh.wikipedia.org/wiki/Static_random-access_memory "wikilink") | 2 kB                                                                                                                                                                                                                                                   |
| [EEPROM](https://zh.wikipedia.org/wiki/EEPROM "wikilink")                    | 1 kB                                                                                                                                                                                                                                                   |
| Pin count                                                                    | 28-pin [PDIP](https://zh.wikipedia.org/wiki/Dual_in-line_package "wikilink"), [MLF](https://zh.wikipedia.org/wiki/Quad_Flat_No-leads_package#Variants "wikilink"), 32-pin [TQFP](https://zh.wikipedia.org/wiki/Quad_Flat_Package "wikilink"), MLF\[2\] |
| Maximum operating frequency                                                  | 20 MHz                                                                                                                                                                                                                                                 |
| Number of touch channels                                                     | 16                                                                                                                                                                                                                                                     |
| Hardware QTouch Acquisition                                                  | No                                                                                                                                                                                                                                                     |
| Maximum I/O pins                                                             | 26                                                                                                                                                                                                                                                     |
| External interrupts                                                          | 24                                                                                                                                                                                                                                                     |
| [USB](../Page/USB.md "wikilink") Interface                                   | No                                                                                                                                                                                                                                                     |
| USB Speed                                                                    | No                                                                                                                                                                                                                                                     |

## 系列方案

一個常見的替代方案是ATmega328P，是低功率消耗的版本。完整的替代方案清單可在Atmel的官網查詢。

## 應用

截至2013年，ATmega328常見於許多專案之中，這些專案多半是簡單的、低功耗的以及低成本的。或許最多的應用是在流行的Arduino控制板上，有Arduino Uno、Arduino Nano和Arduino LilyPad等。[1](https://www.arduino.cc/en/Products/Compare)

## 程式燒錄

[ATmega328P_28-PDIP.svg](https://zh.wikipedia.org/wiki/File:ATmega328P_28-PDIP.svg "fig:ATmega328P_28-PDIP.svg")

可靠度鑑定顯示資料保持失敗率(data retention failure rate)遠低於1 PPM，條件是在溫度85 °C時可保持20年，在溫度25°C時可保持100年。

| Programming signal | Pin Name            | I/O | Function                                                       |
| ------------------ | ------------------- | --- | -------------------------------------------------------------- |
| RDY/BSY            | PD1                 | O   | High means the MCU is ready for a new command, otherwise busy. |
| OE                 | PD2                 | I   | Output Enable (Active low)                                     |
| WR                 | PD3                 | I   | Write Pulse (Active low)                                       |
| BS1                | PD4                 | I   | Byte Select 1 (“0” = Low byte, “1” = High byte)                |
| XA0                | PD5                 | I   | XTAL Action bit 0                                              |
| XA1                | PD6                 | I   | XTAL Action bit 1                                              |
| PAGEL              | PD7                 | I   | Program memory and EEPROM Data Page Load                       |
| BS2                | PC2                 | I   | Byte Select 2 (“0” = Low byte, “1” = 2nd High byte)            |
| DATA               | PC\[1:0\]:PB\[5:0\] | I/O | Bi-directional data bus (Output when OE is low)                |

並列式程式燒錄模式 \[3\]

並列式程式燒錄模式。要進入並列式程式燒錄模式有一連串的動作，首先清除單晶片程式內容作法如下，PAGEL (PD7), XA1 (PD6), XA0 (PD5), BS1 (PD4) 必須設為0(接地)。RESET腳接地，VCC腳接地。接著VCC接4.5V-5.5V。等待60us。接著RESET接到11.5V-12.5V。等待310us。設定XA1:XA0:BS1:DATA = 100 1000 0000，xtal1腳給一個脈波150us，WR低準位脈波。以上會讓單晶片清除原本程式內容。等到RDY/BSY(PD1)腳出現高準位就完成。 如要寫入則設定XA1:XA0:BS1:DATA = 100 0001 0000, XTAL1腳送脈波, WR腳送低準位脈波。 詳情參考原廠手冊 \[4\]。

| Symbol | Pins | I/O | Description     |
| ------ | ---- | --- | --------------- |
| MOSI   | PB3  | I   | Serial data in  |
| MISO   | PB4  | O   | Serial Data out |
| SCK    | PB5  | I   | Serial Clock    |

串列式程式燒錄模式 \[5\]

串列資料在單晶片的進出，當單晶片時脈在正緣(rising edge)時是送入資料到單晶片，當單晶片時脈是負緣(falling edge)時，資料則是從單晶片送出。VCC送電之前先把RESET腳與SCK腳設為低準位。等待20ms。接著從串列資料進入腳(MOSI腳)送入0xAC, 0x53, 0x00, 0x00燒錄程式指令，單晶片接受之後會回傳第二個指令0x53。

## 參見

  - [ATmega88](https://zh.wikipedia.org/wiki/ATmega88 "wikilink")
  - [ATmega168](https://zh.wikipedia.org/wiki/ATmega168 "wikilink")

## 注釋

## 外部連結

  -
[Category:Microcontrollers](https://zh.wikipedia.org/wiki/Category:Microcontrollers "wikilink") [Category:Electrical_components](https://zh.wikipedia.org/wiki/Category:Electrical_components "wikilink")

1.
2.
3.
4.
5.