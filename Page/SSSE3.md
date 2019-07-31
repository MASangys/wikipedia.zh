**SSSE3**是[Intel命名的](https://zh.wikipedia.org/wiki/Intel "wikilink")[SSE3](../Page/SSE3.md "wikilink")指令集的擴充，不使用新的號碼是因為SSSE3比較像是加強版的SSE3，以至於推出SSSE3之前，[SSE4](../Page/SSE4.md "wikilink")的定義容易被混淆。在公開Intel的Core微架構的時候，SSSE3出現在Xeon 5100與Intel Core 2行動版與桌上型處理器上。

SSSE3包含了16個新的不同於SSE3的指令。每一個都能夠運作於64位元的MMX暫存器或是128位元XMM暫存器之中。因此，有些Intel的文件表示有32個新指令。之前的SIMD指令由舊排到新依序是[MMX](../Page/MMX.md "wikilink")、[3DNow\!](../Page/3DNow!.md "wikilink")（AMD開發的）、[SSE](../Page/SSE.md "wikilink")、[3DNow\! Professional](https://zh.wikipedia.org/wiki/3DNow!_Professional "wikilink")、[SSE2](../Page/SSE2.md "wikilink")與[SSE3](../Page/SSE3.md "wikilink")。

## 支援SSSE3指令集的處理器

  - [Intel](https://zh.wikipedia.org/wiki/Intel "wikilink")：
      - [Xeon](https://zh.wikipedia.org/wiki/Xeon "wikilink") 5100系列
      - [Xeon](https://zh.wikipedia.org/wiki/Xeon "wikilink") 5300系列
      - [Xeon](https://zh.wikipedia.org/wiki/Xeon "wikilink") 3000系列
      - [Core 2 Duo](https://zh.wikipedia.org/wiki/Core_2_Duo "wikilink")
      - [Core 2 Extreme](https://zh.wikipedia.org/wiki/Core_2_Extreme "wikilink")
      - [Core 2 Quad](https://zh.wikipedia.org/wiki/Core_2_Quad "wikilink")
      - [Core i7](https://zh.wikipedia.org/wiki/Core_i7 "wikilink")
      - [Pentium Dual-Core](https://zh.wikipedia.org/wiki/Pentium_Dual-Core "wikilink")
      - [Celeron 4xx的Conroe-L](https://zh.wikipedia.org/wiki/Celeron#Core架構 "wikilink")
      - [Celeron Dual Core系列](https://zh.wikipedia.org/wiki/Celeron_M#Celeron_Dual-Core_\(Core\) "wikilink")
      - [Celeron M 500系列](https://zh.wikipedia.org/wiki/Celeron_M#Merom-1024 "wikilink")
      - [Atom](https://zh.wikipedia.org/wiki/Intel_Atom "wikilink")
  - [AMD](https://zh.wikipedia.org/wiki/AMD "wikilink")
      - [AMD Bulldozer](../Page/AMD_Bulldozer.md "wikilink")
  - [VIA](../Page/威盛電子.md "wikilink")：
      - [Nano](../Page/VIA_Nano.md "wikilink")

## 新增的指令

在以下的列表中，satsw(X)（飽和爲有符號字（saturate to signed word）的簡寫），任取有號整數X，如果X小於-32768時就代表-32768，X大於32767時就代表32767 ，其餘數值不變。在一般的Intel架構上，字節（byte）表示8位元，字（word）是16位元，而雙字（dword）是32位元；暫存器表示MMX或是XMM向量暫存器。

| PSIGNB, PSIGNW, PSIGND | 包裹式有符號整型取反         | 如果另一個暫存器中的整形爲負，那麼將目標暫存器中的數取反。                                                                                        |
| ---------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------- |
| PABSB, PABSW, PABSD    | 包裹式絕對值             | 將源暫存器中的數取絕對值並放到目標暫存器中。                                                                                               |
| PALIGNR                | 包裹式右移              | 將兩個暫存器的值串起來，然後根據編碼到指令中的立即數將暫存器中的值右移。                                                                                 |
| PSHUFB                 | 包裹式將任意字節重新排布到目的暫存器 | 如果源暫存器高位被置1，就把目的暫存器賦值爲0,否則根據源操作數的低4位選擇目的操作數，將其拷貝到目的操作數的相應位置。                                                         |
| PMULHRSW               | 包裹式捨入相乘            | 將兩個暫存器中的16位word處理成-1到1間的15位定點數(例如0x4000被處理成0.5，0xa000 處理成−0.75), 並且將他們捨入相乘。                                          |
| PMADDUBSW              | 相乘並相加包裹式整型然後飽和     | 將兩個暫存器中的8位整型相乘並相加，然後飽和成有符號整型。（也就是 \[a0 a1 a2 …\] pmaddubsw \[b0 b1 b2 …\] = \[satsw(a0b0+a1b1) satsw(a2b2+a3b3) …\]） |
| PHSUBW, PHSUBD         | 包裹式水平相減            | 將兩個暫存器 A = \[a0 a1 a2 …\] 和 B = \[b0 b1 b2 …\] 相減輸出 \[a0−a1 a2−a3 … b0−b1 b2−b3 …\]                                  |
| PHSUBSW                | 包裹式水平相減並且飽和爲有符號字   | 類似PHSUBW, 但是輸出的是\[satsw(a0−a1) satsw(a2−a3) … satsw(b0−b1) satsw(b2−b3) …\]                                          |
| PHADDW, PHADDD         | 包裹式有符號相加           | 將兩個暫存器 A = \[a0 a1 a2 …\] 和 B = \[b0 b1 b2 …\] 相加然後輸出 \[a0+a1 a2+a3 … b0+b1 b2+b3 …\]                                |
| PHADDSW                | 包裹式水平相加並且飽和爲有符號字   | 類似PHADDW, 但是輸出的是\[satsw(a0+a1) satsw(a2+a3) … satsw(b0+b1) satsw(b2+b3) …\]                                          |

## 參見

  - [SSE](https://zh.wikipedia.org/wiki/Streaming_SIMD_Extensions "wikilink")
  - [SSE2](../Page/SSE2.md "wikilink")
  - [SSE3](../Page/SSE3.md "wikilink")
  - [SSE4](../Page/SSE4.md "wikilink")
  - [SSE4A](https://zh.wikipedia.org/wiki/SSE4A "wikilink")
  - [SSE5](https://zh.wikipedia.org/wiki/SSE5 "wikilink")
  - [AVX](https://zh.wikipedia.org/wiki/AVX指令集 "wikilink")
  - [FMA](https://zh.wikipedia.org/wiki/熔合乘法累积 "wikilink")
  - [SIMD](https://zh.wikipedia.org/wiki/SIMD "wikilink")
  - [3DNow\! Professional](../Page/3DNow!.md "wikilink")
  - [Intel Core 2](https://zh.wikipedia.org/wiki/Intel_Core_2 "wikilink")

## 外部連結

  - [移動型Core 2規格書](https://web.archive.org/web/20061104143303/http://download.intel.com/design/mobile/datashts/31407801.pdf)
  - [Intel白皮書，敘述存在的SSSE3與新的SSE4指令集](https://web.archive.org/web/20111124230720/http://download.intel.com/technology/architecture/new-instructions-paper.pdf)
  - [指令集的文件，列出SSSE3指令集的功能](http://www.intel.com/design/processor/manuals/253667.pdf)

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")