[PIC_microcontrollers.jpg](https://zh.wikipedia.org/wiki/File:PIC_microcontrollers.jpg "fig:PIC_microcontrollers.jpg")
**PIC微控制器**（PIC
microcontroller），是一種使用[哈佛結構的](https://zh.wikipedia.org/wiki/哈佛結構 "wikilink")[精簡指令集微控制器](https://zh.wikipedia.org/wiki/精簡指令集 "wikilink")，由[Microchip公司研發而成](https://zh.wikipedia.org/wiki/Microchip "wikilink")。

PIC的架構是明顯的最低限度。它具有以下特點：

  - 分離式的-{zh-cn:程序存储器;zh-tw:程式碼;}-和-{zh-cn:数据存储器;zh-tw:資料空間;}-（哈佛結構）
  - 少量的固定長度指令
  - 指令是單週期執行（4時鐘週期），僅流程轉移指令(call, goto, return, 成立時的條件跳躍)需兩個指令週期

<!-- end list -->

  - 所有 RAM 位置均可當作作為算數或其他運算的源寄存器或目的寄存器使用
  - 一個-{zh-cn:堆栈;zh-tw:硬體堆疊;}-用於存放-{zh-cn:子程序调用;zh-tw:副程式呼叫;}-的返回地址
  - 較小的-{zh-cn:数据;zh-tw:資料;}-定址空間，但使用多個 bank 的方式（每個 bank 通常為 128
    字節），來存取較大的 **RAM**

<!-- end list -->

  - 暫存器、-{zh-cn:外部输入输出端口;zh-tw:週邊輸入輸出埠;}-等均映射在-{zh-cn:数据;zh-tw:資料;}-空間中
  - 程序計數器也是映射到-{zh-cn:数据;zh-tw:資料;}-空間和寫入（這是用來執行間接跳躍）

## 歷史

[PIC1655A_GI.jpg](https://zh.wikipedia.org/wiki/File:PIC1655A_GI.jpg "fig:PIC1655A_GI.jpg")
PIC 微控制器源自於 1980 年代由[通用儀器](../Page/通用儀器.md "wikilink")所推出的 PIC1650
系列，當時的 PIC 是周邊介面控制器（Peripheral Interface Controller）的簡稱。

GI 的微電子部門於 1987 年分拆成為 Microchip Technology (微芯) 公司。

## PIC 產品系列

PIC 的產品線寬廣，型號眾多，現有數百種，各主要系列如下：

### 8-bit（資料寬度）微控制器

使用哈佛結構，指令碼與資料的位元寬度可以不同。但各指令的指令碼長度均相同。

  - Baseline 系列 (12-bit 指令碼)

:\* PIC10F : 6 接腳

:\* PIC12C5 , PIC12F5 : 8 接腳

:\* PIC16C5 , PIC16F5 : 14 以上接腳

  - Midrange (中階) 系列 (14-bit 指令碼)

:\* PIC12C6 , PIC12F6 : 8 接腳

:\* PIC16 : 14 以上接腳

:\* PIC16F1 : 新推出的 Enhanced Midrange (強化中階) 系列

  - PIC18 (8-bit 裡的高階) 系列 (16-bit 指令碼)

:\* PIC18 : PIC18C , PIC18Fxxx , 少數早期的 PIC18Fxxxx

:\* PIC18 Extended : 目前絕大多數的 PIC18Fxxxx, PIC18FxxJxx, PIC18FxxKxx

  - flash 产品：

:\* microchip 收购SST，拥有flash 产品

### 16-bit（資料寬度）微控制器

相當於不具 DSP 相關功能的 dsPIC 微控制器

  - PIC24 系列

:\* PIC24F

:\* PIC24H

### 32-bit（資料寬度）微控制器

  - PIC32 : 採用 [MIPS](https://zh.wikipedia.org/wiki/MIPS科技公司 "wikilink")
    的 M4K 內核，與其他 PIC 不同。

### dsPIC 微控制器（16-bit 資料寬度）

  - dsPIC30F
  - dsPIC33F

## 8-bit PIC 的指令集

PIC的指令十分精簡，只有35個，簡單易學，故執行速度比[8051快](https://zh.wikipedia.org/wiki/8051 "wikilink")。其指令集又分成12-bit
PIC instruction set，和14-bit PIC instruction set.

| Opcode（二進制）      | 助記體        | 說明                                           |
| ---------------- | ---------- | -------------------------------------------- |
| `0000 0000 0000` | NOP        | No operation                                 |
| `0000 0000 0010` | OPTION     | Load OPTION register with contents of W      |
| `0000 0000 0011` | SLEEP      | Go into standby mode                         |
| `0000 0000 0100` | CLRWDT     | Reset watchdog timer                         |
| `0000 0000 01ff` | TRIS f     | Move W to port control register (f=1..3)     |
|                  |            |                                              |
| `0000 001 fffff` | MOVWF f    | Move W to f                                  |
| `0000 010 xxxxx` | CLRW       | Clear W to 0 (a.k.a CLR x,W)                 |
| `0000 011 fffff` | CLRF f     | Clear f to 0 (a.k.a. CLR f,F)                |
| `0000 10d fffff` | SUBWF f,d  | Subtract W from f (d = f − W)                |
| `0000 11d fffff` | DECF f,d   | Decrement f (d = f − 1)                      |
| `0001 00d fffff` | IORWF f,d  | Inclusive OR W with F (d = f OR W)           |
| `0001 01d fffff` | ANDWF f,d  | AND W with F (d = f AND W)                   |
| `0001 10d fffff` | XORWF f,d  | Exclusive OR W with F (d = f XOR W)          |
| `0001 11d fffff` | ADDWF f,d  | Add W with F (d = f + W)                     |
| `0010 00d fffff` | MOVF f,d   | Move F (d = f)                               |
| `0010 01d fffff` | COMF f,d   | Complement f (d = NOT f)                     |
| `0010 10d fffff` | INCF f,d   | Increment f (d = f + 1)                      |
| `0010 11d fffff` | DECFSZ f,d | Decrement f (d = f − 1) and skip if zero     |
| `0011 00d fffff` | RRF f,d    | Rotate right F (rotate right through carry)  |
| `0011 01d fffff` | RLF f,d    | Rotate left F (rotate left through carry)    |
| `0011 10d fffff` | SWAPF f,d  | Swap 4-bit halves of f (d = f\<\<4 | f\>\>4) |
| `0011 11d fffff` | INCFSZ f,d | Increment f (d = f + 1) and skip if zero     |
|                  |            |                                              |
| `0100 bbb fffff` | BCF f,b    | Bit clear f (Clear bit b of f)               |
| `0101 bbb fffff` | BSF f,b    | Bit set f (Set bit b of f)                   |
| `0110 bbb fffff` | BTFSC f,b  | Bit test f, skip if clear (Test bit b of f)  |
| `0111 bbb fffff` | BTFSS f,b  | Bit test f, skip if set (Test bit b of f)    |
|                  |            |                                              |
| `1000 kkkkkkkk`  | RETLW k    | Set W to k and return                        |
| `1001 kkkkkkkk`  | CALL k     | Save return address, load PC with k          |
| `101 kkkkkkkkk`  | GOTO k     | Jump to address k (9 bits\!)                 |
| `1100 kkkkkkkk`  | MOVLW k    | Move literal to W (W = k)                    |
| `1101 kkkkkkkk`  | IORLW k    | Inclusive or literal with W (W = k OR W)     |
| `1110 kkkkkkkk`  | ANDLW k    | AND literal with W (W = k AND W)             |
| `1111 kkkkkkkk`  | XORLW k    | Exclusive or literal with W (W = k XOR W)    |

12-bit PIC instruction set

| Opcode（二進制）         | 助記元        | 說明                                           |
| ------------------- | ---------- | -------------------------------------------- |
| `00 0000 0000 0000` | NOP        | No operation                                 |
| `00 0000 0000 1000` | RETURN     | Return from subroutine, W unchanged          |
| `00 0000 0000 1001` | RETFIE     | Return from interrupt                        |
| `00 0000 0110 0010` | OPTION     | Write W to OPTION register                   |
| `00 0000 0110 0011` | SLEEP      | Go into standby mode                         |
| `00 0000 0110 0100` | CLRWDT     | Reset watchdog timer                         |
| `00 0000 0110 01ff` | TRIS f     | Write W to tristate register f               |
|                     |            |                                              |
| `00 0000 1 fffffff` | MOVWF f    | Move W to f                                  |
| `00 0001 0 xxxxxxx` | CLRW       | Clear W to 0 (W = 0)                         |
| `00 0001 1 fffffff` | CLRF f     | Clear f to 0 (f = 0)                         |
| `00 0010 d fffffff` | SUBWF f,d  | Subtract W from f (d = f − W)                |
| `00 0011 d fffffff` | DECF f,d   | Decrement f (d = f − 1)                      |
| `00 0100 d fffffff` | IORWF f,d  | Inclusive OR W with F (d = f OR W)           |
| `00 0101 d fffffff` | ANDWF f,d  | AND W with F (d = f AND W)                   |
| `00 0110 d fffffff` | XORWF f,d  | Exclusive OR W with F (d = f XOR W)          |
| `00 0111 d fffffff` | ADDWF f,d  | Add W with F (d = f + W)                     |
| `00 1000 d fffffff` | MOVF f,d   | Move F (d = f)                               |
| `00 1001 d fffffff` | COMF f,d   | Complement f (d = NOT f)                     |
| `00 1010 d fffffff` | INCF f,d   | Increment f (d = f + 1)                      |
| `00 1011 d fffffff` | DECFSZ f,d | Decrement f (d = f − 1) and skip if zero     |
| `00 1100 d fffffff` | RRF f,d    | Rotate right F (rotate right through carry)  |
| `00 1101 d fffffff` | RLF f,d    | Rotate left F (rotate left through carry)    |
| `00 1110 d fffffff` | SWAPF f,d  | Swap 4-bit halves of f (d = f\<\<4 | f\>\>4) |
| `00 1111 d fffffff` | INCFSZ f,d | Increment f (d = f + 1) and skip if zero     |
|                     |            |                                              |
| `01 00 bbb fffffff` | BCF f,b    | Bit clear f (Clear bit b of f)               |
| `01 01 bbb fffffff` | BSF f,b    | Bit set f (Set bit b of f)                   |
| `01 10 bbb fffffff` | BTFSC f,b  | Bit test f, skip if clear (Test bit b of f)  |
| `01 11 bbb fffffff` | BTFSS f,b  | Bit test f, skip if set (Test bit b of f)    |
|                     |            |                                              |
| `10 0 kkkkkkkkkkk`  | CALL k     | Save return address, load PC with k          |
| `10 1 kkkkkkkkkkk`  | GOTO k     | Jump to address k (11 bits)                  |
|                     |            |                                              |
| `11 00xx kkkkkkkk`  | MOVLW k    | Move literal to W (W = k)                    |
| `11 01xx kkkkkkkk`  | RETLW k    | Set W to k and return                        |
| `11 1000 kkkkkkkk`  | IORLW k    | Inclusive or literal with W (W = k OR W)     |
| `11 1001 kkkkkkkk`  | ANDLW k    | AND literal with W (W = k AND W)             |
| `11 1010 kkkkkkkk`  | XORLW k    | Exclusive or literal with W (W = k XOR W)    |
| `11 110x kkkkkkkk`  | SUBLW k    | Subtract W from literal (W = k − W)          |
| `11 111x kkkkkkkk`  | ADDLW k    | Add literal to W (W = k + W)                 |

14-bit PIC instruction set

### PIC燒錄器

燒錄芯片的方式有兩種：普通燒錄和線上燒錄。

早期的 PIC16C 系列需使用平行燒錄。 程式記憶體為 Flash 的版本使用方便的序列燒錄方式，稱為 ICSP。

## 開發環境

Microchip 公司提供免費的開發環境 (MPLAB IDE) 與組譯器，也出售付費與提供有條件免費版本的 C
語言編譯器。另有第三方軟體商開發各式 C, BASIC 等編譯器與開發環境可以選用。

MPLAB 的下一代多平台開發環境 MPLAB-X (基於 Java 技術) 目前尚處於 beta 階段。

## 外部連結

  - [Microchip.com](http://www.microchip.com) 官方網站（美國）
  - [the PICList](http://www.piclist.com) FAQ and Archive from the
    "PICList" email list hosted at [MIT](../Page/MIT.md "wikilink")。A
    well respected source of manufacturer-independent solutions, source
    code, and expertise.
  - [GPUTILS](http://gputils.sourceforge.net) Open Source assembler and
    linker.
  - [Free software tools](http://softwarepic.50webs.com) Free C, C++,
    Pascal, Basic compilers for the PIC microcontroller series.
  - \[[http://www.juts.net/rfpic.html\]Example](http://www.juts.net/rfpic.html%5DExample)
    C code for the rfPIC
  - example of robot controlled by PIC16F877A:
    [1](http://it.youtube.com/watch?v=NCo9fr7knK4)
    [2](http://it.youtube.com/watch?v=WoD_8QA2VSg)
  - [USB Pic Programmer](http://usbpicprog.org) An open source project
    for a universal PIC programmer
  - [3](http://www.cainetworks.com/manuals/webcontrol/WebControlUserGuide.pdf)
    A PIC microcontroller based Network I/O controller
  - [GameBoy® GB–PIC© Project](http://gb.boumpower.ch) Enable GameBoy
    hardware to PIC16F877

{{-}}

[Category:微控制器](https://zh.wikipedia.org/wiki/Category:微控制器 "wikilink")