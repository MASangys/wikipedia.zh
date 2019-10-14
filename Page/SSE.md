**SSE（Streaming SIMD Extensions）**是[英特尔](../Page/英特尔.md "wikilink")在[AMD的](https://zh.wikipedia.org/wiki/AMD "wikilink")[3D Now\!发布一年之后](../Page/3DNow!.md "wikilink")，在其计算机芯片[Pentium III中引入的指令集](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")，是繼[MMX](../Page/MMX.md "wikilink")的擴充指令集。SSE指令集提供了70條新指令。[AMD后来在](https://zh.wikipedia.org/wiki/AMD "wikilink")[Athlon XP中加入了对这个新指令集的支持](https://zh.wikipedia.org/wiki/Athlon "wikilink")。

## SSE的暫存器

[XMM_registers.png](https://zh.wikipedia.org/wiki/File:XMM_registers.png "fig:XMM_registers.png") SSE加入新的8個128位元暫存器（XMM0～XMM7）。而AMD發表的[x86-64延伸架構](https://zh.wikipedia.org/wiki/x86-64 "wikilink")（又稱AMD64）再加入額外8個暫存器。除此之外還有一個新的32位元的控制／狀態暫存器（MXCSR）。不過只能在64位元的模式下才能使用額外8個暫存器。

每個暫存器可以容納4個32位元單精度浮點數，或是2個64位元雙精度浮點數，或是4個32位元整數，或是8個16位元短整數，或是16個字元。整數運算能夠使用正負號運算。而整數SIMD運算可能仍然要與8個64位元MMX暫存器一起執行。

因為作業系統必須要在進程切換的時候保護這些128位元的暫存器狀態，除非作業系統去啟動這些暫存器，否則預設值是不會去啟用的。 這表示作業系統必須要知道如何使用FXSAVE與FXRSTOR指令才能儲存[x87與SSE暫存器的狀態](https://zh.wikipedia.org/wiki/x87 "wikilink")。而在當時IA-32的主流作業系統很快的都加入了此功能。

由於SSE加入了浮點支持，SSE就比MMX更加常用。而SSE2加入了整數運算支援之後讓SSE更加的有彈性，當MMX變成是多餘的指令集，SSE指令集甚至可以與MMX並行運作，在某些時候可以提供額外的性能增進。

第一個支援SSE的CPU是[Pentium III](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")，在[FPU與SSE之間共用執行支援](https://zh.wikipedia.org/wiki/FPU "wikilink")。當編譯出來的軟體能夠交叉的同時以FPU與SSE運作，Pentium III並無法在同一個周期中同時執行FPU與SSE。這個限制降低了[指令管線的有效性](https://zh.wikipedia.org/wiki/指令管線 "wikilink")，不過XMM暫存器能夠讓SIMD與純量浮點運算混合執行，而不會因為切換MMX／浮點模式而產生性能的折損。

## SSE指令表

SSE提供純量與包裹式（packed）浮點指令。

### 浮點指令

  - 記憶體到暫存器／暫存器到記憶體／暫存器之間的資料搬移
      - 純量– MOVSS
      - 包裹式– MOVAPS, MOVUPS, MOVLPS, MOVHPS, MOVLHPS, MOVHLPS
  - 數學運算
      - 純量– ADDSS, SUBSS, MULSS, DIVSS, RCPSS, SQRTSS, MAXSS, MINSS, RSQRTSS
      - 包裹式– ADDPS, SUBPS, MULPS, DIVPS, RCPPS, SQRTPS, MAXPS, MINPS, RSQRTPS
  - 比較
      - 純量– CMPSS, COMISS, UCOMISS
      - 包裹式– CMPPS
  - 資料拆包（unpack）與隨機搬移（shuffle）
      - 包裹式– SHUFPS, UNPCKHPS, UNPCKLPS
  - 資料型態轉換
      - 純量– CVTSI2SS, CVTSS2SI, CVTTSS2SI
      - 包裹式– CVTPI2PS, CVTPS2PI, CVTTPS2PI
  - 逐位邏輯運算
      - 包裹式– ANDPS, ORPS, XORPS, ANDNPS

### 整數指令

  - 數學運算
      - PMULHUW, PSADBW, PAVGB, PAVGW, PMAXUB, PMINUB, PMAXSW, PMINSW
  - 資料搬移
      - PEXTRW, PINSRW
  - 其他
      - PMOVMSKB, PSHUFW

### 其他指令

  - MXCSR管理
      - LDMXCSR, STMXCSR
  - 快取與記憶體管理
      - MOVNTQ, MOVNTPS, MASKMOVQ, PREFETCH0, PREFETCH1, PREFETCH2, PREFETCHNTA, SFENCE

## 例子

下面这个例子演示了使用SSE的优点。向量加法在计算机图形中很常用，如果在x86平台上想将四对单精度浮点数相加，必须使用四对浮点相加指令。

`vec_res.x = v1.x + v2.x;`
`vec_res.y = v1.y + v2.y;`
`vec_res.z = v1.z + v2.z;`
`vec_res.w = v1.w + v2.w;`

上面这段代码会被编译成4条x86 FADD指令。下面的伪代码展示用128位包裹式相加（packed-add）指令替代4个纯量相加指令。

``` asm
 movaps xmm0, [v1]          ;xmm0 = v1.w | v1.z | v1.y | v1.x
 addps xmm0, [v2]           ;xmm0 = v1.w+v2.w | v1.z+v2.z | v1.y+v2.y | v1.x+v2.x
 movaps [vec_res], xmm0
```

## 後續版本

### SSE2

[SSE2](../Page/SSE2.md "wikilink")是Intel在Pentium 4處理器的最初版本中引入的，但是AMD后来在Opteron和Athlon 64處理器中也加入了SSE2的支持。SSE2指令集添加了对64位双精度浮点数的支持，以及对整型数据的支持，也就是说这个指令集中所有的MMX指令都是多余的了，同时也避免了占用浮点数寄存器。这个指令集还增加了对CPU快取的控制指令。AMD对它的扩展增加了8个XMM寄存器，但是需要切换到64位模式（x86-64/AMD64）才可以使用这些寄存器。Intel后来在其[Intel 64架构中也增加了对](https://zh.wikipedia.org/wiki/Intel_64 "wikilink")[x86-64的支持](https://zh.wikipedia.org/wiki/x86-64 "wikilink")。

### SSE3

[SSE3](../Page/SSE3.md "wikilink")是Intel在Pentium 4處理器的Prescott核心中引入的第三代SIMD指令集，AMD在Athlon 64的第五个版本，Venice核心中也加入了SSE3的支持。这个指令集扩展的指令包含寄存器的局部位之间的运算，例如高位和低位之间的加减运算；浮点数到整数的转换，以及对[超线程技术的支持](https://zh.wikipedia.org/wiki/超线程 "wikilink")。

### SSSE3

[SSSE3](../Page/SSSE3.md "wikilink")是Intel針對SSE3指令集的一次額外擴充，最早內建於[Core 2 Duo處理器中](https://zh.wikipedia.org/wiki/Core_2_Duo "wikilink")。

### SSE4

[SSE4](../Page/SSE4.md "wikilink")是Intel在Penryn核心的Core 2 Duo與Core 2 Solo處理器時，新增的47條新多媒體指令集，現在SSE4版本更新至SSE4.2。

#### SSE4a

AMD也開發了屬於自己的[SSE4a多媒體指令集](https://zh.wikipedia.org/wiki/SSE4a "wikilink")，並內建在[Phenom與](https://zh.wikipedia.org/wiki/Phenom "wikilink")[Opteron](../Page/Opteron.md "wikilink")等K10架構還有AMD FX處理器中，不過無法與Intel的SSE4系列指令集相容。目前AMD新一代處理器已取消支援SSE4a，改為支援Intel的SSE4.1指令集（含以上）

### SSE5

[SSE5是](https://zh.wikipedia.org/wiki/SSE5 "wikilink")[AMD為了打破Intel壟斷在處理器指令集的獨霸地位所提出的](https://zh.wikipedia.org/wiki/AMD "wikilink")，SSE5初期規劃將加入超過100條新指令，其中最引人注目的就是[三運算元指令](https://zh.wikipedia.org/wiki/三運算元指令 "wikilink")（3-Operand Instructions）及[熔合乘法累積](https://zh.wikipedia.org/wiki/熔合乘法累積 "wikilink")（Fused Multiply Accumulate）。其中，三運算元指令讓處理器可將一個數學或邏輯函式庫，套用到運算元或輸入資料。藉由增加運算元的數量，一個x86指令能處理二至三筆資料，SSE5允許將多個簡單指令匯整成一個指令，達到更有效率的指令處理模式。提升為三運算指令的運算能力，是少數[RISC架構的水準](https://zh.wikipedia.org/wiki/RISC "wikilink")。熔合乘法累積讓允許建立新的指令，有效率地執行各種複雜的運算。熔合乘法累積可結合乘法與加法運算，透過單一指令執行多筆重複計算。透過簡化程式碼，讓系統能迅速執行繪圖著色、快速相片著色、音場音效，以及複雜向量演算等效能密集的應用作業。目前AMD已放棄下一代[Bulldozer核心內建SSE](../Page/AMD_Bulldozer.md "wikilink")5指令集，改內建Intel授權SSE4系列指令集。

### AVX

[AVX](../Page/AVX指令集.md "wikilink")（Advanced Vector Extensions）是Intel的SSE延伸架構，如IA16至IA32般的把暫存器XMM 128bit提升至YMM 256bit，以增加一倍的運算效率。

### FMA

  - [FMA是](https://zh.wikipedia.org/wiki/熔合乘法累積 "wikilink")[Intel的AVX擴充指令集](https://zh.wikipedia.org/wiki/Intel "wikilink")，如名稱上熔合乘法累積（Fused Multiply Accumulate）的意思一樣。

## 參見

  - [AltiVec](../Page/AltiVec.md "wikilink")
  - [組合語言](https://zh.wikipedia.org/wiki/組合語言 "wikilink")
  - [MMX](../Page/MMX.md "wikilink")
  - [3DNow\!](../Page/3DNow!.md "wikilink")
  - [Pentium III](https://zh.wikipedia.org/wiki/Pentium_III "wikilink")

[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink") [Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")