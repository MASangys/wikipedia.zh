**NX位**（全名“**N**o e**X**ecute
bit”，即「**禁止執行位**」，或“**執行禁用位元**”），是應用在[CPU中的一種安全技術](../Page/中央處理器.md "wikilink")。

## 原理

支持NX技术的系统会把[電腦記憶體中的區域分类為只供儲存處理器](../Page/電腦記憶體.md "wikilink")[指令集与只供存储數據使用的两种](../Page/指令集.md "wikilink")。任何标记了NX位的区块代表僅供存储數據使用而不是儲存處理器的指令集，处理器将不会将此处的数据作为程式碼执行，以此這種技術可防止多數的[缓存溢出式攻擊](../Page/缓存溢出.md "wikilink")（即一些[惡意程式把自身的惡意指令集通过特殊手段放在其他程式的儲存區並被執行](../Page/惡意程式.md "wikilink")，從而攻击甚至控制整台電腦系统）。

## 背景

類似的技術其實早已應用在[SPARC](../Page/SPARC.md "wikilink")、[DEC
Alpha](../Page/DEC_Alpha.md "wikilink")、[IBM的](../Page/IBM.md "wikilink")[PowerPC](../Page/PowerPC.md "wikilink")、甚至是[英特爾的](../Page/英特爾.md "wikilink")[IA-64架構處理器](../Page/IA-64.md "wikilink")[Itanium上](../Page/Itanium.md "wikilink")；但「NX」這個名稱最先在[AMD的](../Page/AMD.md "wikilink")[Athlon
64](../Page/Athlon_64.md "wikilink")、[Opteron等支援](../Page/Opteron.md "wikilink")[AMD64的處理器上使用](../Page/AMD64.md "wikilink")，並成為這些技術的代名詞。

在[x86處理器的](../Page/x86.md "wikilink")[頁表索引中](../Page/頁表索引.md "wikilink")，NX位元置於63號的位置（以0作第一位），即64位中的最後一位。如果NX位元的數值是0（關閉），在頁表內的指令集可正常執行；但如果是1（啟動）的話則不能執行頁表的指令集，並會把頁表的一切皆當作數據。在格式上，頁表需為[PAE格式](../Page/PAE.md "wikilink")，而非x86傳統的格式。

2001年，英特爾在自家的[Itanium處理器加入這種技術](../Page/Itanium.md "wikilink")，但未有在[Pentium](../Page/Pentium.md "wikilink")、[Celeron](../Page/Celeron.md "wikilink")、[Xeon等x](../Page/Xeon.md "wikilink")86處理器上使用。在AMD把NX應用在AMD64之後，英特爾也為Prescott版本的[Pentium
4處理器加入類似技術](../Page/Pentium_4.md "wikilink")，並以“執行禁用位元”（eXecute
Disable，XD）的名義推出市場。在功能上，AMD的“NX”和Intel的“XD”完全相同，只是名稱不同。

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")
[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink")
[Category:AMD處理器](https://zh.wikipedia.org/wiki/Category:AMD處理器 "wikilink")