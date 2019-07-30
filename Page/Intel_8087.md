[Intel_C8087.jpg](https://zh.wikipedia.org/wiki/File:Intel_C8087.jpg "fig:Intel_C8087.jpg") **8087** 是由 [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink") 所設計的第一個數學 [輔助處理器](../Page/輔助處理器.md "wikilink")，並且它是建造來與 Intel [8088](../Page/Intel_8088.md "wikilink") 和 [8086](../Page/Intel_8086.md "wikilink") 微處理器成對工作。它是 x87 家族中的第一個，8087 的目的是用來加速應用程式有關 [浮點](https://zh.wikipedia.org/wiki/浮點 "wikilink") 運算的運算需求。效能的加強依照特定的應用，從 20% 到 500% 不等。

輔助處理器推出約 60 個新的可利用指令給程式設計師，所有的指令都是以 "F" 開頭跟其他的標準 8086/8088 整數運算指令有所區別，舉例來說，相對於 ADD/MUL，8087 提供 FADD/FMUL。

8087（以及事實上整個 x87 家族）並不提供自由和線性的暫存器集合（像是 8086/88 和 [80286](https://zh.wikipedia.org/wiki/80286 "wikilink") 處理器中的 AX/BX/CX/DX 暫存器）-- x87 暫存器的結構是某些 [堆疊](https://zh.wikipedia.org/wiki/堆疊 "wikilink") 的形式（儘管它並不十分像傳統的堆疊資料結構），範圍從 ST0 到 ST7。80x87 輔助處理器的浮點指令藉由推出和推入數值到堆疊上來運算。

當 Intel 設計 8087 時，他的目標是建立一個標準的浮點格式給未來的設計。事實上，從這個輔助處理器的歷史觀點來看，一件最成功的事情是為 x86 PC 推出了第一個浮點格式：[IEEE 754](../Page/IEEE_754.md "wikilink")。8087 提供兩個基本的 32/64 位元浮點資料形態和額外的擴展 80 位元之內部支援來改進較大和複雜的運算之精準度。除此之外，8087 提供一個 80 位元／17 位數封裝 BCD ([二進位編碼之十進位](https://zh.wikipedia.org/wiki/二進位編碼之十進位 "wikilink") 格式以及 16, 32 和 64 位元整數資料形態。

8087 是於 1980年 公開，然後由 80287、80387DX/SX 和 487SX 所替代。Intel [80486DX](https://zh.wikipedia.org/wiki/80486DX "wikilink")，[Pentium](https://zh.wikipedia.org/wiki/Pentium "wikilink") 和之後的處理器都在CPU核心含有內建的輔助處理器。

## 8087輔助處理器

通常稱能进行浮點運算的處理器為輔助處理器，8087是由英特爾在1980年發布的輔助處理器。这樣就可以同时使用8086,8087来提供整數和浮點運算，486DX之後的處理器，均内建了輔助處理器。486DX，奔腾，AMD K5,K6,K7,K8都内建了輔助處理器，486SX,386,386之前的處理器没有，在linux下可以通過開起内核中的

選項來模擬一顆輔助處理器

## 浮点运算

一个CPU的[浮点运算能力](https://zh.wikipedia.org/wiki/浮点运算 "wikilink")，整数运算能力是一颗CPU处理能力的强大重要标志。程序的运行，即是数据的处理过程，一个输入，一个输出。当中经过的就是整数，浮点，[逻辑运算](https://zh.wikipedia.org/wiki/逻辑运算 "wikilink")。

## 名词解释

  - 浮点数：用科学计数法来表示的数，
      - 通常表示成\(Z \times S^E\)其中Z是尾数，S是基數，E是指数。142可以表示成\(1.42\times10^2\)浮点数应该规格化，即尾数表示成大于等于1小于10的数，在2进制中应该是小于2
      - C语言中的float,double即是浮点数
  - 整数：定点数来表示的数
      - 只能表示整数，或者是纯小数

## 参考书籍

  - 编码的奥秘

[Category:Intel处理器](https://zh.wikipedia.org/wiki/Category:Intel处理器 "wikilink")