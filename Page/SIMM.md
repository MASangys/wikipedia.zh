[缩略图](https://zh.wikipedia.org/wiki/File:SIMM_30_68_72.png "fig:缩略图")
**单列直插式内存模块**（**single in-line memory
module**，缩写**SIMM**）是一种在20世纪80年代初到90年代后期在计算机中使用的包含[随机存取存储器的内存模块](../Page/随机存取存储器.md "wikilink")。它与现今最常见的[双列直插式内存模块](../Page/DIMM.md "wikilink")（DIMM）不同之处在于，SIMM模块两侧的触点是的。SIMM根据[JEDEC](../Page/JEDEC.md "wikilink")
JESD-21C标准进行了标准化。

大多数早期PC[主板](../Page/主板.md "wikilink")（基于[8088的PC](../Page/Intel_8088.md "wikilink")、、和早期[AT](https://zh.wikipedia.org/wiki/IBM_PC_AT "wikilink")）采用面向[DRAM的插座式](../Page/动态随机存取存储器.md "wikilink")[雙列直插封裝](../Page/雙列直插封裝.md "wikilink")（DIP）芯片。随着计算机内存容量的增长，内存模块被用于节约主板空间和简化内存扩展。相比插入八、九个DIP芯片，只需插入一个内存模块就能增加计算机的内存。

## 历史

## 30针SIMM

[缩略图](https://zh.wikipedia.org/wiki/File:Atari_STE_256kB_RAM_1.jpg "fig:缩略图")
[缩略图](https://zh.wikipedia.org/wiki/File:SIMM_Bank.jpg "fig:缩略图")
50型号主板上的\]\] 标准大小：256 KB、1 MB、4 MB、16 MB

30针SIMM有12个地址行，它可以提供总计24个地址位元。对于8位数据宽度，则奇偶校验和非奇偶校验模块的绝对最大容量为16
MB（额外的冗余位元芯片通常对可用容量无贡献）。

| 针脚 \# | 名称             | 信号说明                  | 针脚 \# | 名称                 | 信号说明                         |
| ----- | -------------- | --------------------- | ----- | ------------------ | ---------------------------- |
| 1     | V<sub>CC</sub> | \+5 VDC               | 16    | DQ4                | Data 4                       |
| 2     | /CAS           | Column Address Strobe | 17    | A8                 | Address 8                    |
| 3     | DQ0            | Data 0                | 18    | A9                 | Address 9                    |
| 4     | A0             | Address 0             | 19    | A10                | Address 10                   |
| 5     | A1             | Address 1             | 20    | DQ5                | Data 5                       |
| 6     | DQ1            | Data 1                | 21    | /WE                | Write Enable                 |
| 7     | A2             | Address 2             | 22    | V<sub>SS</sub>     | Ground                       |
| 8     | A3             | Address 3             | 23    | DQ6                | Data 6                       |
| 9     | V<sub>SS</sub> | Ground                | 24    | A11                | Address 11                   |
| 10    | DQ2            | Data 2                | 25    | DQ7                | Data 7                       |
| 11    | A4             | Address 4             | 26    | QP<sup>\*</sup>    | Data parity out              |
| 12    | A5             | Address 5             | 27    | /RAS               | Row Address Strobe           |
| 13    | DQ3            | Data 3                | 28    | /CASP<sup>\*</sup> | Parity Column Address Strobe |
| 14    | A6             | Address 6             | 29    | DP<sup>\*</sup>    | Data parity in               |
| 15    | A7             | Address 7             | 30    | V<sub>CC</sub>     | \+5 VDC                      |

30针SIMM内存模块

<sup>\*</sup> 针脚26、28和29在非奇偶校验SIMM上不连通。

## 72针SIMM

[缩略图](https://zh.wikipedia.org/wiki/File:Edoram.jpg "fig:缩略图") 标准大小：1
MB、2 MB、4 MB、8 MB、16 MB、32 MB、64 MB、128 MB（标准也定义了有额外地址行且最高2 GB的3.3
V模块）

采用12个地址线，可以提供总计24个地址位元，两个芯片Rank，以及32位元数据输出，绝对最大容量为2<sup>27</sup> = 128
MB。

| 针脚 \# | 名称                      | 信号说明                                 | 针脚 \# | 名称                           | 信号说明                                               |
| ----- | ----------------------- | ------------------------------------ | ----- | ---------------------------- | -------------------------------------------------- |
| 1     | V<sub>SS</sub>          | Ground                               | 37    | MDP1<sup>\*</sup>            | Data Parity 1 (MD8..15)                            |
| 2     | MD0                     | Data 0                               | 38    | MDP3<sup>\*</sup>            | Data Parity 3 (MD24..31)                           |
| 3     | MD16                    | Data 16                              | 39    | V<sub>SS</sub>               | Ground                                             |
| 4     | MD1                     | Data 1                               | 40    | /CAS0                        | Column Address Strobe 0                            |
| 5     | MD17                    | Data 17                              | 41    | /CAS2                        | Column Address Strobe 2                            |
| 6     | MD2                     | Data 2                               | 42    | /CAS3                        | Column Address Strobe 3                            |
| 7     | MD18                    | Data 18                              | 43    | /CAS1                        | Column Address Strobe 1                            |
| 8     | MD3                     | Data 3                               | 44    | /RAS0                        | Row Address Strobe 0                               |
| 9     | MD19                    | Data 19                              | 45    | /RAS1<sup>†</sup>            | Row Address Strobe 1                               |
| 10    | V<sub>CC</sub>          | \+5 VDC                              | 46    | NC                           | Not Connected                                      |
| 11    | NU \[PD5<sup>\#</sup>\] | Not Used \[Presence Detect 5 (3v3)\] | 47    | /WE                          | Read/Write Enable                                  |
| 12    | MA0                     | Address 0                            | 48    | NC \[/ECC<sup>\#</sup>\]     | Not Connected \[ECC presence (if grounded) (3v3)\] |
| 13    | MA1                     | Address 1                            | 49    | MD8                          | Data 8                                             |
| 14    | MA2                     | Address 2                            | 50    | MD24                         | Data 24                                            |
| 15    | MA3                     | Address 3                            | 51    | MD9                          | Data 9                                             |
| 16    | MA4                     | Address 4                            | 52    | MD25                         | Data 25                                            |
| 17    | MA5                     | Address 5                            | 53    | MD10                         | Data 10                                            |
| 18    | MA6                     | Address 6                            | 54    | MD26                         | Data 26                                            |
| 19    | MA10                    | Address 10                           | 55    | MD11                         | Data 11                                            |
| 20    | MD4                     | Data 4                               | 56    | MD27                         | Data 27                                            |
| 21    | MD20                    | Data 20                              | 57    | MD12                         | Data 12                                            |
| 22    | MD5                     | Data 5                               | 58    | MD28                         | Data 28                                            |
| 23    | MD21                    | Data 21                              | 59    | V<sub>CC</sub>               | \+5 VDC                                            |
| 24    | MD6                     | Data 6                               | 60    | MD29                         | Data 29                                            |
| 25    | MD22                    | Data 22                              | 61    | MD13                         | Data 13                                            |
| 26    | MD7                     | Data 7                               | 62    | MD30                         | Data 30                                            |
| 27    | MD23                    | Data 23                              | 63    | MD14                         | Data 14                                            |
| 28    | MA7                     | Address 7                            | 64    | MD31                         | Data 31                                            |
| 29    | MA11                    | Address 11                           | 65    | MD15                         | Data 15                                            |
| 30    | V<sub>CC</sub>          | \+5 VDC                              | 66    | NC \[/EDO<sup>\#</sup>\]     | Not Connected \[EDO presence (if grounded) (3v3)\] |
| 31    | MA8                     | Address 8                            | 67    | PD1<sup>x</sup>              | Presence Detect 1                                  |
| 32    | MA9                     | Address 9                            | 68    | PD2<sup>x</sup>              | Presence Detect 2                                  |
| 33    | /RAS3<sup>†</sup>       | Row Address Strobe 3                 | 69    | PD3<sup>x</sup>              | Presence Detect 3                                  |
| 34    | /RAS2                   | Row Address Strobe 2                 | 70    | PD4<sup>x</sup>              | Presence Detect 4                                  |
| 35    | MDP2<sup>\*</sup>       | Data Parity 2 (MD16..23)             | 71    | NC \[PD (ref)<sup>\#</sup>\] | Not Connected \[Presence Detect (ref) (3v3)\]      |
| 36    | MDP0<sup>\*</sup>       | Data Parity 0 (MD0..7)               | 72    | V<sub>SS</sub>               | Ground                                             |

5 V 72针SIMM内存模块

<sup>\*</sup> 针脚35、36、37和38在非奇偶校验SIMM上不连通。 \[1\]

<sup>†</sup>/RAS1和/RAS3仅在双rank SIMM上使用：即2、8、32和128 MB。

<sup>\#</sup> 这些线路仅在3.3V模块上定义。

<sup>x</sup> 存在检测信号详见JEDEC标准。

## 专有SIMM

### GVP 64针

用于[Commodore](../Page/康懋达国际.md "wikilink")
[Amiga的多款CPU卡使用特殊的](../Page/Amiga.md "wikilink")64针SIMM（32位元宽，1、4或16
MB，60 ns）。

### 苹果公司64针

[蘋果公司](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")计算机中使用[雙埠](https://zh.wikipedia.org/wiki/雙埠隨機存取記憶體 "wikilink")64针SIMM，这允许重叠的读/写周期（1、4、8、16
MB，80 ns）。\[2\]\[3\]

| 针脚 \# | 名称   | 信号说明                            | 针脚 \# | 名称   | 信号说明                            |
| ----- | ---- | ------------------------------- | ----- | ---- | ------------------------------- |
| 1     | GND  | Ground                          | 33    | Q4   | Data output bus, bit 4          |
| 2     | NC   | Not connected                   | 34    | /W4  | Write-enable input for RAM IC 4 |
| 3     | \+5V | \+5 volts                       | 35    | A8   | Address bus, bit 8              |
| 4     | \+5V | \+5 volts                       | 36    | NC   | Not connected                   |
| 5     | /CAS | Column address strobe           | 37    | A9   | Address bus, bit 9              |
| 6     | D0   | Data input bus, bit 0           | 38    | A10  | Address bus, bit 10             |
| 7     | Q0   | Data output bus, bit 0          | 39    | A11  | Address bus, bit 11             |
| 8     | /W0  | Write-enable input for RAM IC 0 | 40    | D5   | Data input bus, bit 5           |
| 9     | A0   | Address bus, bit 0              | 41    | Q5   | Data output bus, bit 5          |
| 10    | NC   | Not connected                   | 42    | /W5  | Write-enable input for RAM IC 5 |
| 11    | A1   | Address bus, bit 1              | 43    | NC   | Not connected                   |
| 12    | D1   | Data input bus, bit 1           | 44    | NC   | Not connected                   |
| 13    | Q1   | Data output bus, bit 1          | 45    | GND  | Ground                          |
| 14    | /W1  | Write-enable input for RAM IC 1 | 46    | D6   | Data input bus, bit 6           |
| 15    | A2   | Address bus, bit 2              | 47    | Q6   | Data output bus, bit 6          |
| 16    | NC   | Not connected                   | 48    | /W6  | Write-enable input for RAM IC 6 |
| 17    | A3   | Address bus, bit 3              | 49    | NC   | Not connected                   |
| 18    | GND  | Ground                          | 50    | D7   | Data input bus, bit 7           |
| 19    | GND  | Ground                          | 51    | Q7   | Data output bus, bit 7          |
| 20    | D2   | Data input bus, bit 2           | 52    | /W7  | Write-enable input for RAM IC 7 |
| 21    | Q2   | Data output bus, bit 2          | 53    | /QB  | Reserved (parity)               |
| 22    | /W2  | Write-enable input for RAM IC 2 | 54    | NC   | Not connected                   |
| 23    | A4   | Address bus, bit 4              | 55    | /RAS | Row address strobe              |
| 24    | NC   | Not connected                   | 56    | NC   | Not connected                   |
| 25    | A5   | Address bus, bit 5              | 57    | NC   | Not connected                   |
| 26    | D3   | Data input bus, bit 3           | 58    | Q    | Parity-check output             |
| 27    | Q3   | Data output bus, bit 3          | 59    | /WWP | Write wrong parity              |
| 28    | /W3  | Write-enable input for RAM IC 3 | 60    | PDCI | Parity daisy-chain input        |
| 29    | A6   | Address bus, bit 6              | 61    | \+5V | \+5 volts                       |
| 30    | NC   | Not connected                   | 62    | \+5V | \+5 volts                       |
| 31    | A7   | Address bus, bit 7              | 63    | PDCO | Parity daisy-chain output       |
| 32    | D4   | Data input bus, bit 4           | 64    | GND  | Ground                          |

5V 64针Mac IIfx SIMM内存模块\[4\]

### HP LaserJet

72针SIMM采用[存在检测](https://zh.wikipedia.org/wiki/Serial_Presence_Detect "wikilink")（PD）连接。

## 参见

  - [雙列直插封裝](../Page/雙列直插封裝.md "wikilink")（DIP）

  - [雙列直插封裝](../Page/雙列直插封裝.md "wikilink")（SIP）

  - （ZIP）

  - [双列直插式内存模块](../Page/DIMM.md "wikilink")（DIMM）

## 参考资料

<references />

## 外部链接

  - [General SIMM Installation
    Guide](https://web.archive.org/web/20120716225721/http://www.edgetechcorp.com/support/installation-manuals/1000%20General%20SIMM%20Ver2%2809-04%29.pdf)

[Category:電腦記憶體](https://zh.wikipedia.org/wiki/Category:電腦記憶體 "wikilink")

1.  [JEDEC Standard No. 21-C,
    Section 4.4.2](http://www.jedec.org/sites/default/files/docs/4_04_02R8.PDF)
    "72 pin SIMM DRAM Module Family"
2.  [Macintosh IIfx](http://www.lowendmac.com/ii/macintosh-iifx.html)
3.
4.