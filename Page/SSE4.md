**SSE4** (**Streaming SIMD Extensions 4**)是[Intel](../Page/英特尔.md "wikilink")[Core微體系結構和](../Page/Core微架構.md "wikilink")[AMD](../Page/超威半导体.md "wikilink")[K10（K8L）中所使用的](../Page/AMD_10h.md "wikilink")[SIMD](https://zh.wikipedia.org/wiki/单指令流多数据流 "wikilink")[CPU](../Page/中央处理器.md "wikilink")[指令集](../Page/指令集架構.md "wikilink")。它在2006年9月27日在[英特爾開發者論壇](../Page/英特爾開發者論壇.md "wikilink")上被宣佈，[白皮書上的細節還較爲模糊](../Page/白皮书.md "wikilink")。\[1\]隨後在北京的2007年春季[英特爾開發者論壇](../Page/英特爾開發者論壇.md "wikilink")上的演示文稿中提供了47個指令的更精確細節。\[2\]SSE4與為前代英特爾64和IA-32架構微處理器編寫的軟體完全兼容。所有現有軟體均可正確運行，無需修改包含SSE4的微處理器，以及現有和新應用程式（包含SSE4）。\[3\]

## SSE4子集

英特爾SSE4包含54條指令。由[Penryn提供的包含](../Page/酷睿2.md "wikilink")47條指令的子集，在英特爾文檔中稱為SSE4.1。此外，SSE4.2是由剩餘7條指令組成的第二個子集，首次在基於[Nehalem的](../Page/Nehalem微架構.md "wikilink")[Core i7中提供](https://zh.wikipedia.org/wiki/Intel_Core_i7 "wikilink")。英特爾將開發人員的反饋信息稱為指令集開發中的重要角色。

從基於[Barcelona的處理器開始](../Page/AMD_10h.md "wikilink")，AMD推出了SSE4a指令集，其中有原有的4條SSE4指令和4條新的SSE指令。在支持SSE4.1的英特爾處理器中沒有發現這些指令并且AMD處理器僅在基於[Bulldozer的](../Page/AMD_Bulldozer.md "wikilink") FX 處理器上開始支援英特爾的 SSE4.1和SSE4.2 (完整的 SSE4 指令集)。在使用SSE4a時，AMD還引入了未對齊的SSE特性，這意味著未對齊的加載指令在對齊的地址上與對齊版本一樣快。它還允許禁止訪問內存的非加載SSE操作的對齊檢查。\[4\]英特爾後來在他們的Nehalem處理器中對未對齊的SSE進行了類似的速度改進，但是沒有在AVX之前引入非負載SSE指令的未對齊訪問。\[5\]

## 名稱混淆

在[Intel Core 2系列中引入的現在稱為](../Page/酷睿2.md "wikilink")[SSSE3](../Page/SSSE3.md "wikilink")（補充流式SIMD擴展3）的部分在英特爾提出SSSE3名稱之前被媒體稱為SSE4。而在內部則把新的指令稱為Merom。 一些記者批評英特爾最初並沒有計畫給它們指定一個獨有的名稱。\[6\]英特爾最終清除了混淆，並保留了SSE4名稱以用於下一個指令集擴展。\[7\]

英特爾正在使用營銷術語HD Boost來指代SSE4。\[8\]

## 新的說明

與之前SSE的所有迭代不同，SSE4包含執行不特定於多媒體應用的操作的指令。它具有許多指令，其操作由一個常量字段和一組將XMM0作為隱式第三操作數的指令決定。

enryn公司的單週期shuffle引擎啟用了其中的幾條指令。（隨機操作重新排序寄存器中的字節被稱爲shuffle。）

<table>
<thead>
<tr class="header">
<th><p>指令</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>MPSADBW</p></td>
<td><p>計算絕對差的八個偏移和，每次四個（即：|x<sub>0</sub>−y<sub>0</sub>|+|x<sub>1</sub>−y<sub>1</sub>|+|x<sub>2</sub>−y<sub>2</sub>|+|x<sub>3</sub>−y<sub>3</sub>|, |x<sub>0</sub>−y<sub>1</sub>|+|x<sub>1</sub>−y<sub>2</sub>|+|x<sub>2</sub>−y<sub>3</sub>|+|x<sub>3</sub>−y<sub>4</sub>|, …, |x<sub>0</sub>−y<sub>7</sub>|+|x<sub>1</sub>−y<sub>8</sub>|+|x<sub>2</sub>−y<sub>9</sub>|+|x<sub>3</sub>−y<sub>10</sub>|）。這個操作對一些<a href="https://zh.wikipedia.org/wiki/高清" title="wikilink">HD</a> <a href="../Page/编解码器.md" title="wikilink">編解碼器來說很重要</a>。並且允許在少於七個週期內計算8×8塊的差異。[9]三位直接運算元的一個位指示是否應從目標運算元中使用y<sub>0</sub> .. y<sub>10</sub>或 y<sub>4</sub> .. y<sub>14</sub>, 另外兩種方法是否應從源中使用x<sub>0</sub>..x<sub>3</sub>, x<sub>4</sub>..x<sub>7</sub>, x<sub>8</sub>..x<sub>11或</sub>x<sub>12</sub>..x<sub>15</sub>。</p></td>
</tr>
<tr class="even">
<td><p>PHMINPOSUW</p></td>
<td><p>將目標的底部無符號16位字設置為源中最小的無符號16位字，將底部的下一個字設置為源中該字的索引。</p></td>
</tr>
<tr class="odd">
<td><p>PMULDQ</p></td>
<td><p>在兩組四個壓縮整數中的兩組中進行壓縮有符號乘法，第一個和第三個壓縮4，給出兩個打包的64位結果。</p></td>
</tr>
<tr class="even">
<td><p>PMULLD</p></td>
<td><p>打包有符號乘法，四個打包的32位整數組相乘，得到4個打包的32位結果。</p></td>
</tr>
<tr class="odd">
<td><p>DPPS；DPPD</p></td>
<td><p>AOS（結構數組）數據的<a href="../Page/点积.md" title="wikilink">點積</a>。這需要一個立即操作數，它由四個（或兩個DPPD）位組成，用於選擇輸入中的哪個條目進行乘法和累加，另外四個（或兩個DPPD）選擇是將0還是點積輸出的相應字段。</p></td>
</tr>
<tr class="even">
<td><p>BLENDPS；BLENDPD； BLENDVPS；BLENDVPD；</p>
<p>PBLENDVB；PBLENDW</p></td>
<td><p>基於（對於非V形式）立即操作數中的位以及（對於V形式）寄存器XMM0中的位的條件複製一個位置中的元素與另一個位置中的元素。</p></td>
</tr>
<tr class="odd">
<td><p>PMINSB；PMAXSB； PMINUW；PMAXUW；</p>
<p>PMINUD；PMAXUD；</p>
<p>PMINSD；PMAXSD</p></td>
<td><p>不同整型操作數類型的最小/最大值壓縮。</p></td>
</tr>
<tr class="even">
<td><p>ROUNDPS；ROUNDSS；</p>
<p>ROUNDPD；ROUNDSD</p></td>
<td><p>使用立即數操作數指定的四種舍入模式中的一種將浮點寄存器中的值整數到整數。</p></td>
</tr>
<tr class="odd">
<td><p>INSERTPS；PINSRB；</p>
<p>PINSRD / PINSRQ；</p>
<p>EXTRACTPS；PEXTRB；</p>
<p>PEXTRD / PEXTRQ</p></td>
<td><p>NSERTPS和PINSR指令從x86寄存器或存儲器位置讀取8,16或32位，並將其插入由立即數操作數給定的目標寄存器中的字段。EXTRACTPS和PEXTR從源寄存器中讀取一個字段，並將其插入x86寄存器或記憶體位置。例如，PEXTRD eax，[xmm0]，1; EXTRACTPS [addr + 4 * eax]，xmm1，1將xmm1的第一個字段存儲在由xmm0的第一個字段給出的位址中。</p></td>
</tr>
<tr class="even">
<td><p>PMOVSXBW；PMOVZXBW；</p>
<p>PMOVSXBD；PMOVZXBD；</p>
<p>PMOVSXBQ；PMOVZXBQ；</p>
<p>PMOVSXWD；PMOVZXWD；</p>
<p>PMOVSXWQ ；PMOVZXWQ；</p>
<p>PMOVSXDQ；PMOVZXDQ</p></td>
<td><p>打包標誌/零擴展到更廣泛的類型。</p></td>
</tr>
<tr class="odd">
<td><p>PTEST</p></td>
<td><p>這與TEST指令相似，因為它將<a href="https://zh.wikipedia.org/wiki/零標" title="wikilink">Z標誌設置為其操作數之間的AND結果</a>：如果DEST AND SRC等於0，則設置ZF。另外，如果（NOT DEST）AND SRC等於零。 這相當於如果沒有設置SRC掩碼的位，則設置Z標誌，如果設置了SRC掩碼的所有位，則設置C標誌。</p></td>
</tr>
<tr class="even">
<td><p>PCMPEQQ</p></td>
<td><p>四字節（64位）相等比較。</p></td>
</tr>
<tr class="odd">
<td><p>PACKUSDW</p></td>
<td><p>將帶符號的DWORD轉換為飽和的無符號WORD。</p></td>
</tr>
<tr class="even">
<td><p>MOVNTDQA</p></td>
<td><p>從寫入組合存儲區有效讀取到SSE寄存器; 這對於從連接到存儲器總線的外設檢索結果很有用。</p></td>
</tr>
</tbody>
</table>

### SSE4.2

SSE4.2添加了STTNI（字符串和文本新指令）\[10\]，和每次對16個字節的兩個操作數執行字符搜索和比較的幾個新指令。這些設計（除其他外）旨在加快解析[XML](../Page/XML.md "wikilink")文檔。\[11\]這也增加了一個CRC32指令來計算循環冗餘校驗，比如可以在某些數據傳輸協議使用。這些指令首先在基於Nehalem的Intel Core i7產品系列中實現，並完成SSE4指令集。支持通過CPUID.01H：ECX.SSE42 \[bit20\]標誌指示。

| **指令**    | **描述**                                       |
| --------- | -------------------------------------------- |
| CRC32     | 使用多項式0x11EDC6F41（或沒有高位，0x1EDC6F41）累加CRC32C值。 |
| PCMPESTRI | 打包比較顯式長度字符串，返回索引。                            |
| PCMPESTRM | 打包比較顯式長度字符串，返回掩碼。                            |
| PCMPISTRI | 打包比較隱式長度字符串，返回索引。                            |
| PCMPISTRM | 打包比較隱式長度字符串，返回掩碼。                            |
| PCMPGTQ   | 比較已打包簽名的64位數據。For Greater Than               |

### POPCNT和LZCNT

這些指令在整數而不是SSE寄存器上運行，因為它們不是SIMD指令，而是同時出現的指令。雖然它們是由AMD通過SSE4a指令集引入的，但卻往往被視為單獨的擴展，並且帶有自己的專用CPUID位以指示對其的支援。Intel以[Nehalem微體系架構和LZCNT開始](../Page/Nehalem微架構.md "wikilink")，實現了從Haswell微架構開始的POPCNT 。AMD從[Barcelona微體系架構開始實施](https://zh.wikipedia.org/wiki/Barcelona微架構 "wikilink")。

AMD稱這一對[高級位操作Advanced Bit Manipulation （ABM）指令](https://zh.wikipedia.org/wiki/ARM架構 "wikilink")。

| 指令     | **描述**                                                                                                     |
| ------ | ---------------------------------------------------------------------------------------------------------- |
| POPCNT | [漢明權重](../Page/汉明重量.md "wikilink")（計數位數設置為1）。支持通過CPUID.01H：ECX.POPCNT \[位23\]標誌指示。                         |
| LZCNT  | **[Find First Set](https://zh.wikipedia.org/wiki/FFS "wikilink")**。支持通過CPUID.80000001H：ECX.ABM \[位5\]標誌指示。 |

除非輸入為0，否則lzcnt的結果等於bsr（位掃描反轉）。lzcnt產生32的結果，而bsr產生未定義的結果（並設置零標誌）。lzcnt的編碼與bsr的編碼相似，如果lzcnt在不支持它的CPU上執行，比如Haswell之前的Intel CPU，它將執行bsr操作，而不是產生無效的指令錯誤。

Trailing zeros可以使用現有的bsf指令進行計數。

### SSE4a

AMD公司的[Barcelona微體系架構中引入了SSE](https://zh.wikipedia.org/wiki/Barcelona微架構 "wikilink")4a指令組。這些說明在英特爾處理器中不可用。支持通過CPUID.80000001H：ECX.SSE4A \[Bit 6\]標誌指示。

| **指令**            | **描述**    |
| ----------------- | --------- |
| EXTRQ / INSERTQ   | 組合掩碼移位指令。 |
| MOVNTSD / MOVNTSS | 標量流存儲指令。  |

## 支援的CPU

  - Intel
      - Silvermont處理器（支持SSE4.1，SSE4.2和POPCNT）
      - Goldmont處理器（支持SSE4.1，SSE4.2和POPCNT）
      - Penryn處理器（支持SSE4.1）
      - Nehalem處理器和更新版本（支持SSE4.1，SSE4.2和POPCNT）
      - Haswell處理器和更新版本（支持SSE4.1，SSE4.2，POPCNT和LZCNT）
  - AMD
      - 基於K10的處理器（支持SSE4a，POPCNT和LZCNT）
      - 「Cat」低功耗處理器
          - 基於Bobcat的處理器（支持SSE4a，POPCNT和LZCNT）
          - 基於美洲虎的處理器和更新版本（支持SSE4a，SSE4.1，SSE4.2，POPCNT和LZCNT）
          - 基於Puma的處理器和更新版本（支持SSE4a，SSE4.1，SSE4.2，POPCNT和LZCNT）
      - 「Heavy Equipment」處理器（支持SSE4a，SSE4.1，SSE4.2，POPCNT和LZCNT）
          - 基於Bulldozer的處理器
          - 基於Piledriver的處理器
          - 基於Steamroller的處理器
          - 基於Excavator的處理器和更新
      - 基於Zen的處理器（支持SSE4a，SSE4.1，SSE4.2，POPCNT和LZCNT）
  - VIA
      - Nano處理器（支持SSE4.1）

## 引用

[Category:SIMD计算](https://zh.wikipedia.org/wiki/Category:SIMD计算 "wikilink") [Category:X86指令](https://zh.wikipedia.org/wiki/Category:X86指令 "wikilink")

1.   Intel® Software|accessdate=2018-06-16|work=www.intel.com|language=en}}
2.
3.
4.   Community|accessdate=2018-06-16|work=developer.amd.com|language=zh}}
5.
6.
7.
8.   Data Center Solutions, IoT, and PC Innovation|accessdate=2018-06-16|work=Intel|language=en}}
9.   Intel® Software|accessdate=2018-06-16|work=software.intel.com|language=en}}
10.  Intel® Software|accessdate=2018-06-16|work=software.intel.com|language=en}}
11.  Intel® Software|accessdate=2018-06-16|work=software.intel.com|language=en}}