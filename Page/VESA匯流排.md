> 本文内容由[VESA匯流排](https://zh.wikipedia.org/wiki/VESA匯流排)转换而来。


[Vlb_svga.jpg](https://zh.wikipedia.org/wiki/File:Vlb_svga.jpg "fig:Vlb_svga.jpg") VLB 擴充卡\]\] [Vlb.jpg](https://zh.wikipedia.org/wiki/File:Vlb.jpg "fig:Vlb.jpg") **VESA匯流排**或者**VESA本地匯流排**（VESA Local Bus，簡寫為*VL-Bus*或*VLB*）是一個擴充標準工業插槽（[ISA](../Page/ISA.md "wikilink")）的[匯流排](https://zh.wikipedia.org/wiki/匯流排 "wikilink")，這個標準大多被用在[電腦上](https://zh.wikipedia.org/wiki/電腦 "wikilink")。VLB作為ISA的高速擴充，負責掌控裝置的[記憶體映射I/O和](https://zh.wikipedia.org/wiki/記憶體映射I/O "wikilink")[直接記憶體存取](../Page/直接記憶體存取.md "wikilink")（DMA），而ISA本身則掌控[中斷](../Page/中斷.md "wikilink")和[端口映射 I/O](https://zh.wikipedia.org/wiki/端口映射_I/O "wikilink")。\[1\]

VLB插槽本身就是既有ISA插槽的延伸，伸長的部份通常被塗成[棕色](https://zh.wikipedia.org/wiki/棕色 "wikilink")，和一般[黑色](../Page/黑色.md "wikilink")ISA插槽分別。然而具VLB擴充的插槽也可以當作ISA插槽使用，但兩者無法同時給兩張不同擴充卡使用。由於VLB伸長ISA，所以VLB擴充卡都十分的長，與老式的IBM XT擴充卡相似。而伸長的部份則和之後的PCI插槽相似。

至1996年，[英特爾推出](https://zh.wikipedia.org/wiki/英特爾 "wikilink")[奔騰](../Page/奔騰.md "wikilink")（Pentium）CPU與Triton晶片組和新的PCI架構挾其優勢取代了[80486的市場](https://zh.wikipedia.org/wiki/80486 "wikilink")，VLB也就隨之而去。後期的80486[主機板除了VLB以外](https://zh.wikipedia.org/wiki/主機板 "wikilink")，也都搭配了[PCI插槽](https://zh.wikipedia.org/wiki/PCI "wikilink")，甚至取代了VLB。

## 限制

VLB當初即被設計為一個過渡性的規格，以擴展ISA有限的頻寬，因此它有數個限制其後來潛力的瑕疵：

  - **80486 依賴性**：VLB重度的依賴80486的記憶體匯流排設計。當[奔騰](../Page/奔騰.md "wikilink")在1995年前後逐漸被市場接受時，它的匯流排設計有很大的不同，而VLB並不適應這樣的設計，這也造成要移植VLB到非[x86平台幾乎不可能](https://zh.wikipedia.org/wiki/x86 "wikilink")。只有少數的帶VLB主機板曾販售，例如IBM以其[486SLC2處理器為基礎](https://zh.wikipedia.org/wiki/486SLC2 "wikilink")，設計了OPAL主機板，它提供了兩個VLB插槽。

<!-- end list -->

  - **有限的插槽數**：雖然當時大多數的PC都提供五到六個ISA插槽，但是至多只能提供兩個VLB插槽。原因是VLB作為80486記憶體匯流排的分支，VLB無法提供足夠的電力給兩個（最多三個）VLB擴充卡。

<!-- end list -->

  - **可靠性問題**：造成插槽限制的電力問題同樣也造成了其他問題。擴充卡之間會有相互干擾的問題，尤其對低階的主機板而言更是如此。當一些重要的裝置如[硬碟控制器受到干擾時](https://zh.wikipedia.org/wiki/硬碟控制器 "wikilink")，很有可能發生大規模的資料損失。

<!-- end list -->

  - **安裝困難**：由於它的長度和針數的數量，使VLB擴充卡有難以裝置和拆除的惡名。必須施以很大的力量，對於擴充卡和主機板來說都是很大的壓力，也常常造成元件的斷裂。還有機殼空間不足容納VLB擴充卡，或者由於空間不足而難以安裝的例子。

即使有這些問題，VLB在486主機板上十分常見，也許有半數的486系統都裝有VLB顯示卡。不過，早期的486系統並沒有VLB，因為它在數年後才出現。

## 技術資料

[VLB_pins.png](https://zh.wikipedia.org/wiki/File:VLB_pins.png "fig:VLB_pins.png")

<table>
<tbody>
<tr class="odd">
<td><p>匯流排位元數</p></td>
<td><p>32 bits</p></td>
</tr>
<tr class="even">
<td><p>相容</p></td>
<td><p>VLB</p></td>
</tr>
<tr class="odd">
<td><p>針數</p></td>
<td><p>112</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Vcc" title="wikilink">Vcc電壓</a></p></td>
<td><p>+5V</p></td>
</tr>
<tr class="odd">
<td><p>時脈</p></td>
<td><p>486SX-25: 25 MHz<br />
486DX2-50: 25 MHz<br />
486DX-33: 33 MHz<br />
486DX2-66: 33 MHz<br />
486DX4-100: 33 MHz<br />
486DX-40: 40 MHz<br />
486DX2-80: 40 MHz<br />
486DX4-120: 40 MHz<br />
486DX-50: 50 MHz（規格外）</p></td>
</tr>
</tbody>
</table>

## 幽默

VLB這個縮寫有時候被戲稱成「Very Long Bus（很長的插槽）」，代表VLB佔去不少空間的尺寸。

## 同見

  - [工業標準架構](../Page/ISA.md "wikilink")（ISA）
  - [延伸工業標準架構](https://zh.wikipedia.org/wiki/EISA "wikilink")（EISA）
  - [微通道架構](../Page/MCA.md "wikilink")（MCA）
  - [NuBus](https://zh.wikipedia.org/wiki/NuBus "wikilink")
  - [PCI](https://zh.wikipedia.org/wiki/PCI "wikilink")
  - [裝置頻寬清單](https://zh.wikipedia.org/wiki/裝置頻寬清單 "wikilink")

## 参考

<references/>

[Category:计算机总线](https://zh.wikipedia.org/wiki/Category:计算机总线 "wikilink") [Category:已被淘汰的電腦硬體](https://zh.wikipedia.org/wiki/Category:已被淘汰的電腦硬體 "wikilink")

1.  Richter, Jake.["Local-bus architecture: A little-understood,much-cited graphics technology"](http://books.google.com/books?id=XlEEAAAAMBAJ&pg=PA66), "InfoWorld", May 18, 1992, accessed March 9, 2011.