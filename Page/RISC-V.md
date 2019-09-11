[缩略图](https://zh.wikipedia.org/wiki/File:Yunsup_Lee_holding_RISC_V_prototype_chip.jpg "fig:缩略图") **RISC-V**（发音为“risk-five”）是一個基于[精简指令集](../Page/精简指令集.md "wikilink")（RISC）原则的[开源](../Page/开源标准.md "wikilink")[指令集架構](../Page/指令集架構.md "wikilink")（ISA），簡易解釋為[開源軟體運動相對應的一種](https://zh.wikipedia.org/wiki/開源軟體 "wikilink")「開源硬體」。该项目2010年始于[加州大學柏克萊分校](https://zh.wikipedia.org/wiki/加州大學柏克萊分校 "wikilink")，但许多贡献者是该大学以外的志愿者和行业工作者。

与大多数指令集相比，RISC-V指令集可以自由地用于任何目的，允许任何人[设计](../Page/集成电路设计.md "wikilink")、制造和销售RISC-V[芯片和](../Page/集成电路.md "wikilink")[软件](../Page/软件.md "wikilink")而不必支付給任何公司專利費。虽然这不是第一个开源指令集\[1\]，但它具有重要意义，因为其设计使其适用于现代计算设备（如仓库规模[云计算机](../Page/雲端運算.md "wikilink")、高端[移动电话](../Page/移动电话.md "wikilink")和微小[嵌入式系统](../Page/嵌入式系统.md "wikilink")）。设计者考虑到了这些用途中的性能与功率效率。该指令集还具有众多支持的软件，这解决了新指令集通常的弱点。\[2\]

RISC-V指令集的设计考虑了小型、快速、低功耗的现实情況來實做，但並没有对特定的[微架構](../Page/微架構.md "wikilink")做过度的設計。\[3\]\[4\]截至2017年5月RISC-V已經確立了版本2.22的用户空间的指令集(userspace ISA)，而特权指令集(privileged ISA)也处在草案版本1.10。

## 意义

RISC-V的作者们旨在提供数种可以在[BSD许可证](../Page/BSD许可证.md "wikilink")之下自由使用的CPU设计。该许可证允許像是RISC-V芯片设计等衍生作品可以像RISC-V本身一样是公开且自由发行，也可以是闭源或者是专有財產。

相比而言，[ARM控股和](../Page/安謀控股.md "wikilink")[MIPS科技等商业芯片供应商会对使用其](../Page/美普思科技.md "wikilink")[专利](../Page/专利.md "wikilink")者收取高額的许可费用。\[5\]他們也要求在接收其描述设计优点的文件和指令集前，还需要签署保密协议。许多设计优点为完全专有，從來不会披露给客户。这种保密制度阻碍了公共教育用途和安全審核，以及开发公共、低成本的[自由及开放源代码软件](../Page/自由及开放源代码软件.md "wikilink")[編譯器](../Page/編譯器.md "wikilink")和[操作系统](../Page/操作系统.md "wikilink")。

开发一个CPU需要多种专业的设计知识，包括电子逻辑、编译器和操作系统。这种资源在专业工程团队之外很难见到。所以现代且高质量的通用计算机指令集近年来除了学术环境以外並沒有在任何地方被广泛使用，甚至没有被阐述。正因如此，许多RISC-V贡献者将此视为整個社群付出的成果，而这也是RISC-V有很多工程上的應用的一项原因。

RISC-V的作者们还有大量研究和使用者經驗來验证他们在硅片和仿真中的设计。RISC-V指令集是从一系列的学术计算机设计项目直接发展而来的。它一開始的目的有一部分是為了帮助这些项目。

## 历史

### 前身

RISC的歷史可追溯到1980年左右。\[6\]在此之前，人們覺得簡單的計算機可能會有用，但是沒有很多人去闡述其設計原則。這種簡單而有效的計算機一直都是學術界的興趣。

學術界的學者們為了出版第一版的《計算機體系結構：定量方法》（*Computer Architecture: A Quantitative Approach*）ISBN 978-1558600690 ，所以於1990年訂立了RISC指令集DLX。David Patterson是其中一位作者，後來協助RISC-V的開發。但是DLX只用於教育用途，學術界和業餘愛好者使用[FPGA（現場可編程門陣列）來實做它](../Page/现场可编程逻辑门阵列.md "wikilink")，但並沒有取得商業運用。版本2及更早版本的ARM CPU具有公共域指令集，並且仍有GCC的支持，而GCC是一個受歡迎且免費的軟件編譯器。該ISA有三個開源內核，但尚未製造。

OpenRISC是一款基於DLX的開源ISA，並且具有相關的RISC設計。它完全支持GCC並且有實做在Linux上。但是它很少有商業上的實做，直到2018年下半年SiFive公司10月推出一系列全新 CPU設計圖產品線應用涵蓋 [5G](../Page/5G.md "wikilink")、網通、存儲、擴增實境（[AR](https://zh.wikipedia.org/wiki/AR "wikilink")）、虛擬實境（[VR](https://zh.wikipedia.org/wiki/VR "wikilink")）等，其 E系列與 U系列的 CPU方案已經威脅到ARM(安謀)公司的收費產品並且擁有後者缺乏的64位元架構產品。\[7\]。

[ARM公司受到威脅後上线了一个网站riscv](https://zh.wikipedia.org/wiki/ARM "wikilink")-basics.com，列举了对RISC-V的批判，包括：成本、生态系统、碎片化风险、安全性问题、设计验证。但最终迫于業界舆论惡評，ARM关闭了该网站。\[8\]

### 基金会

加州柏克萊分校的Krste Asanović教授，發現開放原始碼的電腦系統有很多用途。在2010年他決定用三個月的時間來開發並發表一個開放原始碼的電腦系統。這個計畫是用來幫助包括學術以及工業的使用者。柏克萊分校的[大衛·帕特森教授也參加了這個計畫](../Page/大衛·帕特森_\(學者\).md "wikilink")。帕特森也是原來伯克利分校RISC的設計者，RISC-V只是他眾多RISC [CPU研究計畫的一個](https://zh.wikipedia.org/wiki/CPU "wikilink")．RISC-V計畫早期一些經費來自[DARPA](https://zh.wikipedia.org/wiki/DARPA "wikilink")。

有參與支援RISC-V基金會的公司以及機構包括了[超微半導體](https://zh.wikipedia.org/wiki/超微半導體 "wikilink")，[晶心科技](../Page/晶心科技.md "wikilink")，[英國航太系統](https://zh.wikipedia.org/wiki/英國航太系統 "wikilink")，加州大学伯克利分校，[BLuespec](https://zh.wikipedia.org/wiki/BLuespec "wikilink")，Cortus，[Google](../Page/Google.md "wikilink")，GreenWaves Technology，[慧與科技](../Page/慧與科技.md "wikilink")，[華為](https://zh.wikipedia.org/wiki/華為 "wikilink")，[IBM](../Page/IBM.md "wikilink")，Imperas Software，[中国科学院](../Page/中国科学院.md "wikilink")，北京清華大學，[印度理工學院](../Page/印度理工學院.md "wikilink")，萊迪思半導體，邁倫科技，美高森美，[美光科技](../Page/美光科技.md "wikilink")，[輝達](https://zh.wikipedia.org/wiki/輝達 "wikilink")，[恩智浦半導體](https://zh.wikipedia.org/wiki/恩智浦半導體 "wikilink")，[甲骨文公司](../Page/甲骨文公司.md "wikilink")，[高通](../Page/高通.md "wikilink")，[Rambus Cryptography Research](https://zh.wikipedia.org/wiki/Rambus_Cryptography_Research "wikilink")，[威騰電子](../Page/威騰電子.md "wikilink")，[SiFive](https://zh.wikipedia.org/wiki/SiFive "wikilink")，[阿里巴巴集团](../Page/阿里巴巴集团.md "wikilink")，[紅帽公司](../Page/紅帽公司.md "wikilink")。

2019年6月，图灵奖得主、RISC-V基金会创始人之一[大卫·帕特森（David Patterson）在瑞士宣布](../Page/大衛·帕特森_\(學者\).md "wikilink")，将依托清华-伯克利深圳学院（TBSI），在內部建设RISC-V国际开源实验室（RISC-V International Open Source Laboratory），又称大卫帕特森RIOS图灵实验室。北京[清华大学称实验室将瞄准世界CPU产业战略发展新方向和](https://zh.wikipedia.org/wiki/清华大学 "wikilink")[粤港澳大湾区产业创新需求](https://zh.wikipedia.org/wiki/粤港澳大湾区 "wikilink")，\[9\]聚焦于开源指令集CPU研究，建设以[深圳为根节点的RISC](https://zh.wikipedia.org/wiki/深圳 "wikilink")-V全球创新网络和以技术成果转移为主要使命的非营利组织，全面提升RISC-V生态系至最先进可商用水平。預判屆時將面對國際大廠法律层面發起挑戰问题上，伯克利加州大学和清华大学的[法学院將與之建立联系](https://zh.wikipedia.org/wiki/法学院 "wikilink")。\[10\]

### 奖项

  - 2017：[The Linley Group's Analyst's Choice Award for Best Technology](http://linleygroup.com/press_detail.php?The-Linley-Group-Announces-Winners-of-Annual-Analysts-Choice-Awards-85)（对其指令集）

[缩略图](https://zh.wikipedia.org/wiki/File:IGLOO2-Pre-Programmed-RISC-V-Development-Board.jpg "fig:缩略图")

## 激勵要求

RISC設計者們認為指令集因為位於硬體和軟體之間，所以是電腦主要的溝通橋樑，因此如果有一個設計良好的指令集是開源而且可以被任何人使用的，就可以讓更多的資源能夠重複利用，而大大的減少軟體的成本。而這樣的指令集也會增加硬體供應商市場的競爭，因為硬體供應商們可以挪用更多資源來進行設計，減少處理軟體支援的事務。\[11\]

設計者聲稱在指令集設計領域裡，新的設計準則漸漸變得罕見，而近四十年中，大多數成功的設計變得越來越相似。至於那些失敗的指令集，大多數是因為他們的贊助商賺不了錢，而不是因為其指令集在技術上有多差。所以，一個在成熟的設計準則之下開發且設計良好的開源指令集想必能吸引許多供應商長期的支援。\[12\]

許多先前的開源指令集架構使用[GNU通用公共授權條款來鼓勵使用者們允許他們的實作方法被其他人複製或是使用](../Page/GNU通用公共许可证.md "wikilink")。

設計者們表示，RISC-V指令集是給實際上的電腦使用的，它不像其他學術上的指令集設計，只有為了比較好闡述理念而做最佳化。而RISC-V指令集有一些功能是可以增加電腦速度又可以減少成本和電源使用。這些特色包含，，在CPU裡面的位元表示方法來簡化[MUX（數據多工器）](https://zh.wikipedia.org/wiki/MUX "wikilink")，以標準為基礎來簡化的浮點數，架構中立的設計和把[MSB(Most significant bit)放到固定位置來加速](https://zh.wikipedia.org/wiki/最高有效位 "wikilink")。而sign-extension常常就是[靜態時序分析裡面的關鍵路徑](../Page/静态时序分析.md "wikilink")（Critical timing path）\[13\]。

RISC-V 指令集是設計來給各式各樣的用途使用的，而它支援三個不同的[字組大小](../Page/字_\(计算机\).md "wikilink")，分別是32位元、64位元、128位元以及與這三種字組大小有關的各式各樣的指令子集。而這些指令子集的定義會按照那三個字組大小來做些微的改動。透過這些指令子集的向量處理器與資料中心等級的機櫃式平行電腦/[平行運算來幫助](https://zh.wikipedia.org/wiki/平行運算 "wikilink")[嵌入式系统](../Page/嵌入式系统.md "wikilink")、[個人電腦和](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")[超級電腦](https://zh.wikipedia.org/wiki/超級電腦 "wikilink")。

該指令集採取不固定的編碼長度而且還可以再擴充，因此在未來，還可以一直加入更多位元的編碼方式。該指令集有特別留空間給128位元的延伸版本，因為60年的產業界經驗顯示在指令集設計領域裡，最無法復原的錯誤就是缺少記憶體定址空間。截至2016年，128位元的指令集仍然刻意地維持在沒有定義的狀態，這是因為到現在為止，人們很少有實際上操作這麼大記憶體的系統的經驗。\[14\]

然而，RISC-V也可以拿來做學術上的使用。它擁有簡化的整數指令子集允許學生拿來做基本的練習，而整數指令子集就是一個簡單的指令集架構（ISA）讓軟體可以控制研究上的機器。而不定長度的指令集架構也允許擴充功能來滿足研究或是學生練習上的需求。\[15\]分割出來的特權指令集可以支援在不重新設計編譯器的情況下，進行作業系統方面的研究。\[16\]RISC-V的開放的智慧財產權允許相關的設計被發布、使用和修改。\[17\]

## 软件

一個新的CPU[指令集通常的問題是缺少CPU的硬體設計跟軟體的支援](https://zh.wikipedia.org/wiki/指令集 "wikilink")。在RISC-V的網站有一個user mode指令集的規格，還有１個用來支援[作業系統模式的優先指令集的初步規格](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。

市面上已經有好幾個使用RISC-V開源架構的CPU設計可以供參考，包括64-bit Berkeley Out of Order Machine (BOOM)\[18\]、64-bit Rocket\[19\]、柏克萊設計的五個32-bit Sodor CPU\[20\]、Clifford Wolf 的 picorv32、Syntacore 的 scr1、蘇黎世聯邦理工學院／波隆納大學的 PULPino (Riscy and Zero-Riscy)\[21\]，以及很多其他的設計。使用三層指令分段的 Sodor CPU 是一個適合[嵌入式設計的小型CPU](https://zh.wikipedia.org/wiki/嵌入式 "wikilink")。Rocket可能適用在小型低功耗的[個人電腦或其他個人裝置](https://zh.wikipedia.org/wiki/個人電腦 "wikilink")。BOOM 使用了大部分Rocket的架構，但是功能更加強大，適合個人電腦、伺服器或超級電腦。picorv 跟 scr1 都是使用Verilog 設計的 32位元 MCU 等級的 RV32IMC。PULPino的核心使用了一個適合微控制器的簡單的 RV32IMC ISA架構(Zero-Riscy)，以及另外１個更強大的DSP版本 RV32IMFC ISA 可以支援一些嵌入式信號處理的特別DSP 指令集．

設計軟體包括了１個設計編譯器 Chisel，它可把設計編譯成[Verilog](../Page/Verilog.md "wikilink")代碼. 網站上還有測試用的參考資料可以用來驗證設計的正確性。

RISC-V目前提供的軟體有 [GNU Compiler Collection](https://zh.wikipedia.org/wiki/GNU_Compiler_Collection "wikilink") (GCC) toolchain (具有偵錯器 GDB)、一套 [LLVM](../Page/LLVM.md "wikilink") toolchain、[OVPsim模擬器](https://zh.wikipedia.org/wiki/OVPsim "wikilink")（以及RISC-V快速處理器模式的軟體參考庫）、Spike 模擬器，以及一套在[QEMU](../Page/QEMU.md "wikilink")上運行的模擬器。

作業系統的支援包括 [Linux](../Page/Linux.md "wikilink") 核心、[FreeBSD](../Page/FreeBSD.md "wikilink"), 以及 [NetBSD](../Page/NetBSD.md "wikilink")，但是監督模式的指令在2016年11月10日還沒有標準化\[22\]，所以這方面的支援還不是正式的。有一個早期的 RISC-V 的FreeBSD 作業系統已經在2016年2月上傳到開放原始碼社群，而且包含在 FreeBSD 11.0\[23\]\[24\] 。[Debian](../Page/Debian.md "wikilink")\[25\]跟[Fedora](../Page/Fedora.md "wikilink")\[26\]的版本也有人在移植，並且在逐漸穩定中。已經有人做了１個 [U-Boot](https://zh.wikipedia.org/wiki/U-Boot "wikilink") 的移植版本。\[27\]UEFI Spec v2.7 定義了RISC-V UFEI 的規格，而且[惠普](../Page/惠普.md "wikilink")公司的工程師已經做好一個 TianoCore的移植版本，並且將會上傳到開放原始碼社群。已經有人做好了一個 [L4 microkernel family](../Page/L4微内核系列.md "wikilink") 的移植\[28\]。還有一個在網頁上用[JavaScript](../Page/JavaScript.md "wikilink")寫的 RISC-V Linux 系統模擬器\[29\]。

## 设计

### 指令子集

RISC-V 指令使用模塊化的設計, 包括幾個可以互相替換的基本指令集,　以及額外可以選擇的擴充指令集. 所有基本跟擴充的指令集都是由科技產業，　研究機構跟學術界合作開發的. 基本指令集規範了指令跟他們的編碼，控制流程，暫存器數目（以及它們的長度），記憶體跟定址方式，邏輯（整數）運算以及其他. 只要有軟體以及一個通用的編譯器的支援，只用基本指令集就可以用來製作一個簡單的通用型的電腦．

標準的擴充指令集可以搭配所有的基本指令集，以及其他擴充指令集，而不會衝突　

很多RISC-V 電腦可能使用精簡擴充指令集來降低電力消耗，程式的大小以及記憶體的使用. 未來也有計畫支援 [hypervisors](https://zh.wikipedia.org/wiki/hypervisor "wikilink"), [virtualization](https://zh.wikipedia.org/wiki/virtualization "wikilink")

\[30\] 只要再加上一個監督指令集(S)的擴充，以及以下 RVGC　指令集，我們就有足夠的指令可以支援一個 [Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")-style [作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink").

<table>
<thead>
<tr class="header">
<th><p>指令集名稱</p></th>
<th><p>描述</p></th>
<th><p>版本</p></th>
<th><p>狀態</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基本指令集</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>RV32I</p></td>
<td><p>基本整數指令集, 32位元</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>RV32E</p></td>
<td><p>基本整數指令集(嵌入式系統), 32位元, 16 暫存器</p></td>
<td><p>1.9</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>RV64I</p></td>
<td><p>基本整數指令集, 64位元</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>RV128I</p></td>
<td><p>基本整數指令集, 128位元</p></td>
<td><p>1.7</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>標準擴充指令集</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>M</p></td>
<td><p>整數乘除法標準擴充</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>A</p></td>
<td><p>不可中斷指令(Atomic)標準擴充</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>F</p></td>
<td><p>單精確度浮點運算標準擴充</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>D</p></td>
<td><p>雙倍精確度浮點運算標準擴充</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>G</p></td>
<td><p>所有以上的擴充指令集以及基本指令集的總和的簡稱</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Q</p></td>
<td><p>四倍精確度浮點運算標準擴充</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>L</p></td>
<td><p>十進位浮點運算標準擴充</p></td>
<td><p>0.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>C</p></td>
<td><p>壓縮指令標準擴充 　　　</p></td>
<td><p>2.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>B</p></td>
<td><p>位元運算標準擴充</p></td>
<td><p>0.36</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>J</p></td>
<td><p>動態指令翻譯標準擴充</p></td>
<td><p>0.0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>T</p></td>
<td><p>順序記憶體存取標準擴充</p></td>
<td><p>0.0</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>P</p></td>
<td><p>單指令多資料流（SIMD）運算標準擴充</p></td>
<td><p>0.1</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>V</p></td>
<td><p>向量運算標準擴充</p></td>
<td><p>0.2</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>N</p></td>
<td><p>使用者中斷標準擴充</p></td>
<td><p>1.1</p></td>
<td></td>
</tr>
</tbody>
</table>

為了讓大家容易分辨各種不同的指令組合，所以我們訂了一些專有名詞． 在RISC-V，我們先指明用哪種基本指令集，然後是暫存器的寬度跟其他變化 e.g., RV64I or RV32E. 然後用上表的字母（以及表列的順序）表示用了哪種擴充指令. 基本指令集，擴充整數或浮點運算，多CPU系統使用的同步指令擴充，標準擴充指令MAFD被認為是大部分的一般運算都需要的，所以我們給它們一個字母的簡稱G．

嵌入式系統使用的一個小的 32位元電腦可能用 RV32EC. 而大型的64位元電腦可以用 RV64GC; RV64IMAFDC.的簡稱．

也有人提議了一個另外的命名方式，用 Zxxx 表示標準擴充，而 Yxxx 表示非標準擴充(廠商自訂).這些都還在討論中．

### 寄存器集

RISC-V 有 32 個整數暫存器 (在嵌入式版本則是 16 個)。當浮點延伸集被實作的時候，還有 32 個浮點暫存器。除了「記憶體存取指令」之外，一般指令「只能」定址暫存器 (註：無法存取記憶體）。

如同有些 RISC 指令集（MIPS, SPARC, DEC Alpha），其中一個暫存器為「零暫存器」（zero register，註：其值永遠為零），剩下的暫存器為通用暫存器。在 RISC 當中，第一個整數暫存器是零暫存器。儲存數值到零暫存器是沒有作用的。使用零暫存器可以讓指令集設計更簡單。比方說，把「暫存器 X 複製到暫存器 Y」 (MOV Y, X)，可以使用「將暫存器 X 與 0 相加後，複製到暫存器 Y」 (ADD Y, X, r0) 實作。 \[4\]

RISC-V 有提供「控制暫存器」及「狀態暫存器」，但是 user-mode 程式只能存取用來「量測效能」及「浮點管理」的部分。

RISC-V 並沒有指令可以儲存和回復（save and restore。註：通常用於 context-switch，中斷處理，或是函數呼叫）多個暫存器。這些設計在 RISC-V 當中，被認為是不必要的，過於複雜的，可能過慢的設計。 \[4\]

### 記憶體存取

就像許多的 RISC 一樣， RISC-V 只有 load 與 store 指令可以存取記憶體。

記憶體的定址單位是 8-bit 的 byte。，以 little-endian 存放在記憶體。Load 與 Store 支援的資料長度從 8-bit 到電腦的 word 大小。存取並不需要對齊到 word 的大小，不過如果有對齊的話，可以增加效能。這項功能可以減小程式碼大小，而且透過軟體的模擬，還可以簡化硬體的設計（會觸發一個「對齊失敗」的中斷。

Load 和 Store 指令可以直接使用程式碼中的常數，在堆疊中的本地變數，或是資料結構中的內容。定址的方式是使用基底暫存器與 12-bit 的 signed 相對地址 (+- 2KB)。如果基底暫存器是 0，則資料或是常數可以在低位址，或是高位址（負的相對地址，導致繞回到高的記憶體地址。比方說 ROM 的記憶體地址）。

那麼，RISC-V 怎麼管理 CPU 與 thread 之間的共用記憶體呢？在單一的 thread 當中，執行順序永遠是遵照原本的編譯順序。不過在不同的 thread 以及在 I/O 裝置之間，RISC-V 不保證存取的順序 --- 除非有像 FENCE 這樣的指令出現。

FENCE 保證在其之前的執行結果，一定會被其後的 thread 或 I/O 裝置看到。FENCE 有 8-bit 可以分別指定 memory read/write 與 I/O read/write 的各種組合順序。透過這些組合，FENCE 可以保證記憶體與 memory-mapped I/O 之間的執行順序。比方說：其中一個組合是可以在不影響 I/O 運算的情況下，只保證記憶體的讀取和寫入順序。也就是說，如果 I/O 運算可以和記憶體同時執行的話，FENCE 不會強迫他們之間要互相等待。單一 CPU 上面跑單一 thread 的情況下，可以把 FENCE 視作 NOP 指令。

如同許多的 RISC 指令集一樣，RISC-V 並沒有可以「寫入多個暫存器」的定址模式。比方說：不支援 auto-incrementing（像是 \*ptr++ 就無法使用一個指令完成，而必須拆解成「一個 load 指令」及「一個 addi 指令」。）

和其他類似成功的電腦一樣，RISC-V 也是 little-endian。這稍稍降低了複雜度與成本，因為所有大小的讀取，都遵循一樣的順序（注：例如 64-bit 與 128-bit 的讀取，都是從最小的 word 開始讀進來，只要一直 shift 就可以了）。舉例來說，RISC-V 的指令集都是從最低的那個 byte 開始解碼（注：opcode）。RISC-V 的規格書保留了實作 big-endian 的可能性。\[4\]

有些 RISC CPUs（例如：MIPS, PowerPC, DLX, and Berkeley's RISC-I）在 Load/Save 指令當中使用 16-bit 位移。使用 load upper word 指令來設定最高的 16-bit。這讓最高的 16-bit 資料可以很容易被設定，而不需要位移指令。然而，大部分使用 load upper word 的時機都是為了要載入一個常數（比如：地址）。RISC-V 則是使用類似 SPARC 12-bit 與 20-bit 的設計。而 RISC-V 所採用的 12-bit 設計，可以讓指令更小。也就是說，這使得 32-bit 的 load/store 指令，就算需要在 32 個暫存器（需要 5-bit 定址）當中選兩個來用（一共 10-bit），還是有足夠的 bit 數目來支援 RISC-V 的可變長度指令編碼 (variable-length instruction coding)。\[4\]

注：請參考 32-bit 的 I-type 指令格式，就會發現這個 12-bit 位移比 16-bit 來得優異的地方。這使得 32-bit 的空間當中，扣掉 12-bit 的常數值，以及最低的兩個 bit 為 11（表示這是一個 32-bit 長的指令），再扣掉兩個 5-bit 的暫存器位址，還有將近 8-bit 的空間可以留給 opcode 及 func3 。如果是使用 16-bit immediate 的話，會使得空間不夠放下兩個 5-bit 的暫存器位址。舉例來說，SLLI Rd, Rs, immediate (Shift Left Logical Immediate) 將會被迫拆解成兩個指令來完成：LDR Ri, immediate; SLLI Rd, Rs, Ri 。

### 立即數

RISC-V 讀取 32-bit 常數與位址是透過設定 upper 20-bit 的指令達到的。LUI 指令 (Load Upper Immediate) 把（指令中的）20-bit 讀取到暫存器的 31\~12 bits 當中。另一個 AUIPC 指令，也是一樣讀取 upper 20-bit，同時又加上 PC (Program Counter) 之後，存放到某個基底暫存器。這個指令讓 PIC 程式（Position-Independent Code）能夠支援「相對於程式碼位置的 32-bit 地址」。這個基底暫存器可以再搭配 12-bit 位移，使用在 Load 與 Store 指令當中（注：存取本地的 static 變數?)。如果需要的話，也可以使用 addi 指令，將 lower 12-bit 的常數加到一個暫存器中（注：這樣就完成一個完整的 32-bit 常數讀取）。在 64-bit 架構下，LUI 與 AUIPC 執行的結果會被位元擴充至 64-bit (sign-extent)。

有些高速的 CPU 會把一些指令「融合」成一個指令。比如說：上述的 LUI 與 AUIPC 就很適合和 Load/Save 指令一起融合。

### 函數呼叫、跳躍和分支

RISC-V 的函數呼叫 JAL (Jump and Link) 把回傳地址放在一個暫存器當中。由於它省下了一次存取推疊記憶體，所以在許多的設計當中是比較快速的。JAL 有一個 20-bit signed 位移。這個位移會被乘上 2 之後，加到 PC 當中。如果沒有對齊到 32-bit 位址，CPU 會觸發一個例外。

RISC-V 的 JALR (Jump and Link Register) 指令和 JAL 很像，但是他是把一個 12-bit 的相對位移，和某一個暫存器相加。（而 JAL 是用 20-bit 相加）

JALR 的指令格式有點像使用暫存器的 load/store 指令。搭配另一個設定高 20-bit 的基底暫存器，可以組成一個 32-bit 的地址（可以是絕對位址，例如 LUI; 或是相對於 PC 的位址，例如 AUIPC）。（使用零暫存器當基底暫存器，則是可以跳到 0 +- 2KB 的絕對位址）

透過使用零暫存器，底下兩種無條件跳躍（其他組語中的 JUMP 或 JMP）：「20-bit PC 相對位址」以及「暫存器為底的 12-bit」，分別使用 JAL 與 JALR 兩個指令來實作。在這個情況下，因為目的地暫存器是零存器，所以回傳位址會被丟棄。\[4\]

如同許多的 RISC 系統，在一個函數呼叫當中，RISC-V 編譯器必須使用多個指令將暫存器一個一個地存到堆疊當中，然後在函數結束的時候，一個一個地將暫存器自堆疊中還原。RISC-V 沒有「儲存多個」或是「還原多個」暫存器的指令。因為這些指令被認為會讓 CPU 變得複雜，而且可能更慢\[51\]。 然而 RISC-V 的這種設計，會增加程式大小。而設計者原本是希望透過一種特別的 routine 來減小程式（注：可以參考 [這份文件](https://content.riscv.org/wp-content/uploads/2016/06/riscv-spec-v2.1.pdf) 的 1.7 Optimizing Register Save/Restore Code Size）。

RISC-V 沒有旗標暫存器（注：原文是 conditional code register，就是指傳統的旗標暫存器 flag register，用以存放計算結果，給接下來的指令使用，例如：進位旗標 carry flag）。設計者相信旗標暫存器會讓 CPU 設計更加複雜，因為它必須強迫了指令們在不同的執行階段之間的交互作用。這樣的設計，會使得高精度計算變得更複雜，有些數值計算需要更多的能量。\[4\]

相反地，RISC-V 直接比較兩個暫存器，運算元包括：相等，不相等，小於，無號數小於，大於，無號數大於。十個「比較跳躍」運算元，可以透過翻轉順序的方式，可以只用上述六個運算元實作出來。舉例來說：「如果大於時跳躍」可以用「小於或等於時跳躍」來實作。

這六個比較跳躍有 12-bit 的有號位移，可以跳到 PC+-4KB 的範圍內。

RISC-V 要求 CPU 實作「預設分支預測」 (default branch prediction)。如果是往回跳耀 (例如： do {...} while (expr) 中的 expr 判斷式），CPU 要預測跳躍會發生，也就是預測 expr 「會」成立。如果是向前跳躍（例如：if (expr) {...} else {...} 中的 else 部分），CPU 預測這個跳躍會發生，也就是預測 expr 「不會」成立。CPU 判斷往回或向前的方法，是看指令中相對位址的最高位元，也就是有號數的部分 (signed bit)：如果是 1，表示是負數，要往回跳躍。如果是 0，表示是正數，要向前跳躍。當然，複雜的 CPU 實作也可以加入更多的分支預測。

RISC-V 手冊也建議軟體（如：編譯器）利用預設分支預測的特性，來避免分支造成 pipeline 被停滯。方法就是利用上一段提到的 signed bit 來讓「暗示」 CPU 這個分支會不會發生。所以，就是算是簡單又便宜的 CPU ，也可以透過編譯器來優化效能。如果有需要，編譯器也可以透過統計等方式來優化效能。

所以，為了避免不必要的分支預測電路（以及不必要的 pipeline 停滯），無條件跳躍不要用「比較分支」來實作。\[4\]

RISC-V 並不支援「條件執行」指令（condition execution，註：當某個條件成立的時候，才執行該指令）。設計者宣稱沒有這種設計的 CPU 比較容易設計，而且編譯器在進行優化的時候，也比較不容易假設錯誤。設計者宣稱高速又不照順序執行的 CPU 反正都會同時執行正反兩種結果，之後再丟棄其中一個。他們也宣稱，即使在簡單的 CPU 當中，條件執行其實是比較沒有價值的，不如跳躍預測來的有用。不使用條件執行的程式碼會比較大，但是他們宣稱壓縮指令集在大部分的情況下，可以解決這樣的問題。\[4\]

許多的 RISC 設計都有「分支延遲槽」（branch delay slot），用來充份使用跳躍指令的下一個記憶體位址，這可以略略增加整體的 CPU 效能。RSIV-V 並不支援這個功能，因為他會讓多時序，超純量，以及 long pipeline 變得很複雜。而動態分支預測其實已經做得很好，可以不需要這個功能了。\[4\]

### 算术和逻辑集

RISC-V 把數學運算指令歸類到一個很小的 I 子集當中，包括：加法，減法，位移，位元運算，及比較跳躍。這些可以使用軟體的方式去模擬其他大部分的 RISC-V 指令（atomic 運算是值得一提的例外）。RISC-V 目前沒有「數開頭有幾個零」以及一些用來加速軟體浮點運算的位元運算。

整數乘法子集（M 子集）包括：有號數與無號數的乘法與除法。

浮點子集包括單精度運算，以及類似於整數的「比較跳躍」。它需要額外的 32 個浮點暫存器，這些是與整數暫存器分開的。雙精度浮點子集一般假設浮點暫存器是 64 位元，而且會與 F 子集一起協作。RISC-V 亦有定義四精度 128-bit 浮點指令。沒有支援硬體浮點指令的 CPU，依舊可以使用軟體的浮點程式庫。

RISC-V 在遇到運算錯誤的時候，並不會發出例外，包括：overflow, underflow, subnormal 及 divide by zero。相反的，整數運算和浮點運算都會產生合理的預設數值，然後設定狀態位元。Divide-by-zero 可以用一個跳躍指令來處理。這些狀態位元可以也可以被作業系統或是定期的中斷檢查到。

### 原子内存操作

RISC-V 支援多個 CPU 與 thread。其標準記憶體同步模式是「釋放一致」原則。也就是說，讀取和寫入順序可以重排，但是有些讀取可以被設定成「獲取」運算，會在其後的存取之前被執行，有些寫入可以被當作「釋放」運算，必須在其之前的存取的後面執行。

基本指令當中包含了最少的支援，使用 fence 指令來保證記憶體存取順序。儘管這很簡單（fence r/rw 提供「獲取」，fence rw/w 提供「釋放」），組合起來還是可以很有效率。

## RISC-V处理器

阿里巴巴旗下半导体公司平头哥发布了它的首款 RISC-V 处理器玄铁 910（XuanTie910），名字取自[金庸](../Page/金庸.md "wikilink")小说《[神雕侠侣](https://zh.wikipedia.org/wiki/神雕侠侣 "wikilink")》。阿里巴巴称它是目前性能最强的 RISC-V 处理器，支持16核，主频 2.5GHz，单核性能达到 7.1 Coremark/MHz。阿里巴巴称其性能突破源自两大创新：一是它采用3发射8执行的复杂乱序执行架构，是业界首个实现每周期 2 条内存访问的 RISC-V 处理器；二是它基于 RISC-V 扩展了 50 余条指令，系统性增强了 RISC-V 的计算、存储和多核等方面能力。\[31\]

## 参见

  - [OpenRISC](https://zh.wikipedia.org/wiki/OpenRISC "wikilink")，以[GNU General Public License授权](../Page/GNU通用公共许可证.md "wikilink")

  - [精简指令集](../Page/精简指令集.md "wikilink")（RISC）

  -
  - [OVPsim](https://zh.wikipedia.org/wiki/OVPsim "wikilink")，RISC-V处理器指令子集、内核和系统的指令精确模拟器。免费为非商业用途提供。

## 参考资料

## 拓展阅读

  - [The RISC-V Instruction Set Manual](http://www.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-118.pdf)
  - [Instruction Sets Should Be Free: The Case For RISC-V](http://www.eecs.berkeley.edu/Pubs/TechRpts/2014/EECS-2014-146.html) Whitepaper by Krste Asanović and [David A. Patterson](../Page/大衛·帕特森_\(學者\).md "wikilink")
  - [The RISC-V Instruction Set](http://www.hotchips.org/wp-content/uploads/hc_archives/hc25/HC25-posters/HC25.26.p70-RISC-V-Warterman-UCB.pdf) HotChips 25 (2013)
  - [The RISC-V Software Ecosystem](http://riscv.org/wp-content/uploads/2015/02/riscv-software-toolchain-tutorial-hpca2015.pdf) HPCA 2015, Tutorial
  - [Rocket Chip](http://riscv.org/wp-content/uploads/2015/02/riscv-rocket-chip-generator-tutorial-hpca2015.pdf) HPCA 2015, Tutorial
  - [The RISC-V Compressed Instruction Set Manual Version 1.9 (draft)](https://riscv.org/wp-content/uploads/2015/11/riscv-compressed-spec-v1.9.pdf)

## 外部链接

  -
  -
  -
  - [Pulpino](https://web.archive.org/web/20170824094526/http://www.pulp-platform.org/): A developed, open-source system-on-chip based on RISC-V, 4 August 2016

  -
  -
  -
  -
[Category:2010年软件](https://zh.wikipedia.org/wiki/Category:2010年软件 "wikilink") [Category:指令集架構](https://zh.wikipedia.org/wiki/Category:指令集架構 "wikilink") [Category:开源微处理器](https://zh.wikipedia.org/wiki/Category:开源微处理器 "wikilink")

1.  )

2.  [新浪-图灵奖得主加入清華，牵头推动芯片开源](https://t.cj.sina.com.cn/articles/view/5703921756/153faf05c01900gt8p)

3.

4.

5.

6.

7.  [RSIC-V開源CPU殺出](https://technews.tw/2018/11/16/sifive-7-series-cpu-ip-vs-arm/)

8.
9.
10.
11.

12.
13.

14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.

28.
29.
30.

31.