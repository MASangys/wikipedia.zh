**JPEG XT** 是一種基於並兼容JPEG標準（ISO / IEC 10918-1和ITU Rec.T.81）圖像壓縮標準。

相比於 JPEG, JPEG XT 支援更高的色彩深度，高動態範圍成像和浮點數編碼，無損編碼，alpha頻道編碼。JPEG XT 向下相容
JPEG / JFIF 格式。

## JPEG XT 標準

JPEG XT (SO/IEC 18477) 標準主要包含以下數個部分

| Part   | 發表時間    | ISO/IEC 編號                                                 | 正式標題                                |
| ------ | ------- | ---------------------------------------------------------- | ----------------------------------- |
| Part 1 | 2015-06 | [ISO/IEC 18477-1](https://www.iso.org/standard/62552.html) | Core Coding System Specification    |
| Part 2 | 2016-07 | [ISO/IEC 18477-2](https://www.iso.org/standard/66070.html) | Coding of High Dynamic Range Images |
| Part 3 | 2015-12 | [ISO/IEC 18477-3](https://www.iso.org/standard/66071.html) | Box file format                     |
| Part 4 | 2017-10 | [ISO/IEC 18477-4](https://www.iso.org/standard/66072.html) | Conformance Testing                 |
| Part 5 | 2018-03 | [ISO/IEC 18477-5](https://www.iso.org/standard/66073.html) | Reference software                  |
| Part 6 | 2016-02 | [ISO/IEC 18477-6](https://www.iso.org/standard/67168.html) | IDR Integer coding                  |
| Part 7 | 2017-05 | [ISO/IEC 18477-7](https://www.iso.org/standard/72478.html) | HDR Floating-Point Coding           |
| Part 8 | 2016-10 | [ISO/IEC 18477-8](https://www.iso.org/standard/68663.html) | Lossless and Near-lossless Coding   |
| Part 9 | 2016-10 | [ISO/IEC 18477-9](https://www.iso.org/standard/68664.html) | Alpha channel coding                |

JPEG XT

## 概述

### Part 1

定義目前常用 JPEG 規格，例如 ISO/IEC 10918-1 (基本格式), 10918-5 JPEG File Interchange
Format (JFIF), and 10918-6.並限制 JPEG 編碼格式為 基本格式, 序向式, 漸進式, 也包括基於 Rec. 601
的 YCbCr 色度抽樣。

### Part 2

定義了 HDR 成像的實作細節，當中使用到的 RGBE 影像的定義來自於 Part 7，並且同時支援 整數與浮點數抽樣。

### Part 3

Part 3 定義向下相容 JFIF 的格式. 此種格式是基於 application marker 11 ('APP11')
所標記的區段(box)，其中包含 增強資料層(enhancement data layers) 與 附加的二進位資料。

Part 3 主要建立在 ISO base media file format(ISO/IEC 14496-12 – MPEG-4 Part
12), 並且與早期 JPEG-HDR 格式相似.

### Part 6

基於 中動態範圍成像( Intermediate Dynamic Range )的整數編碼，編碼長度為 9 到 16 bit

### Part 7

Part 7 主要包含 浮點數的高動態範圍影像 (HDR)編碼工具，負責產生上述所提的 增強資料層(enhancement data
layers)

Part 7 定義了三種演算法來重建 HDR 影像:

| 演算法 | 簡介                                                                                             |
| --- | ---------------------------------------------------------------------------------------------- |
| A   | 利用 對數比例因數(common logarithmic scale factor) 來計算 反色調映射                                           |
| B   | 利用 divisor image extension layer 來計算                                                           |
| C   | 利用 per-component scaling factors 和 logarithmic space with piece-wise linear functions 來達成 無損編碼 |

### Part 8

定義了關於無損編碼的細節與實作。 對於 10 和 12 位元的準確度，使用 整數的離散餘弦變換(DCT)來達成。對於 16位元，使用 定點
DCT 近似來實作。

### Part 9

定義關於 Alpha 頻道在透明與任意形狀的圖片上的編碼。其中利用的 opacity layer
(不透明層)來指出是否為預乘透明度（Premultiplied Alpha）。