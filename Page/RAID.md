[Nuvola_devices_raid.png](https://zh.wikipedia.org/wiki/File:Nuvola_devices_raid.png "fig:Nuvola_devices_raid.png") **-{zh-hk:獨立磁碟冗餘陣列;zh-cn:独立硬盘冗余阵列;zh-tw:容錯式磁碟陣列;}-**（），舊稱**-{zh-hk:廉價磁盤冗餘陣列;zh-tw:容錯式廉價磁碟陣列;zh-cn:廉价磁盘冗余阵列;}-**（），簡稱**磁盘阵列**。利用虛擬化儲存技術把多個硬碟組合起來，成為一個或多個硬碟陣列組，目的提升效能或資料冗餘或是兩者同時提升。

在運作中，取決於 RAID 層級不同，資料會以多種模式分散於各個硬碟，RAID 層級的命名會以 RAID 開頭並帶數字，例如.RAID 0，RAID 1，RAID 5，RAID 6，RAID 7，RAID 01，RAID 10，RAID 50，RAID 60。每種等級都有其理論上的優缺點，不同的等級在兩個目標間取得平衡，分別是增加資料可靠性以及增加存储器（群）读写效能。

簡單來說，RAID把多個[硬碟組合成為一個邏輯硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，因此，[作業系統只會把它當作一個硬碟](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。RAID常被用在[伺服器電腦上](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，並且常使用完全相同的硬碟作為組合。由於硬碟價格的不斷下降與RAID功能更加有效地與[主機板整合](https://zh.wikipedia.org/wiki/主機板 "wikilink")，它也成為普通用户的一個選擇，特別是需要大容量儲存空間的工作，如：視訊與音訊製作。



## 磁碟陣列比較表

| RAID等級 | 最少硬碟 | 最大容錯 | 可用容量 | 讀取效能 | 寫入效能 | 安全性             | 目的                  | 應用產業       |
| ------ | ---- | ---- | ---- | ---- | ---- | --------------- | ------------------- | ---------- |
| 單一硬碟   | (參考) | 0    | 1    | 1    | 1    | 無               |                     |            |
| JBOD   | 1    | 0    | n    | 1    | 1    | 無（同RAID 0）      | 增加容量                | 個人（暫時）儲存備份 |
| 0      | 2    | 0    | n    | n    | n    | 一個硬碟異常，全部硬碟都會異常 | 追求最大容量、速度           | 影片剪接快取用途   |
| 1      | 2    | n-1  | 1    | n    | 1    | 高，一個正常即可        | 追求最大安全性             | 個人、企業備份    |
| 5      | 3    | 1    | n-1  | n-1  | n-1  | 高               | 追求最大容量、最小預算         | 個人、企業備份    |
| 6      | 4    | 2    | n-2  | n-2  | n-2  | 安全性較RAID 5高     | 同RAID 5，但較安全        | 個人、企業備份    |
| 10     | 4    |      |      | n    |      | 高               | 綜合RAID 0/1優點，理論速度較快 | 大型資料庫、伺服器  |
| 50     | 6    |      |      |      |      | 高               | 提升資料安全              |            |
| 60     | 8    |      |      |      |      | 高               | 提升資料安全              |            |
|        |      |      |      |      |      |                 |                     |            |

<small> 1. n代表硬碟總數
2\. JBOD（Just a Bunch Of Disks）指將數個物理硬碟，在操作系統中合併成一個邏輯硬碟，以直接增加容量
3.依不同 RAID 廠商實作演算法對於效能表現會有不同，效能公式僅供參考
4.RAID 10、50、60 依實作 Parity 不同公式也不同
</small>

## 标准RAID

### RAID 0

[RAID_0.svg](https://zh.wikipedia.org/wiki/File:RAID_0.svg "fig:RAID_0.svg") RAID 0亦称为带区集。它將兩个以上的磁盘並联起来，成为一个大容量的磁盘。在存放数据时，分段后分散儲存在这些磁盘中，因為讀寫時都可以并行處理，所以在所有的级别中，RAID 0的速度是最快的。但是RAID 0既没有冗余功能，也不具備容錯能力，如果一个磁盘（物理）损坏，所有数据都会丢失，危險程度與[\#JBOD相當](https://zh.wikipedia.org/wiki/#JBOD "wikilink")。

### RAID 1

[RAID_1.svg](https://zh.wikipedia.org/wiki/File:RAID_1.svg "fig:RAID_1.svg") 两组以上的N個磁盘相互作[镜像](../Page/磁碟鏡像.md "wikilink")，在一些多线程操作系统中能有很好的读取速度，理論上读取速度等於硬盘數量的倍數，与RAID 0相同。另外写入速度有微小的降低。只要一個磁盘正常即可维持运作，可靠性最高。其原理为在主硬盘上存放数据的同时也在镜像硬盘上写一样的数据。当主硬盘（物理）损坏时，镜像硬盘则代替主硬盘的工作。因为有镜像硬盘做数据备份，所以RAID 1的数据安全性在所有的RAID级别上来说是最好的。但無論用多少磁碟做RAID 1，僅算一個磁碟的容量，是所有RAID中磁盘利用率最低的一個级别。

如果用兩個不同大小的磁碟建RAID 1，可用空間為較小的那個磁碟，較大的磁碟多出來的空間也可以分割成一個區來使用，不會造成浪費。

  -
    \(\begin{align}Size & = \min \left(S_1, S_2, S_3 \dots \right)\end{align}\)

{{-}}

### RAID 2

[RAID2_arch.svg](https://zh.wikipedia.org/wiki/File:RAID2_arch.svg "fig:RAID2_arch.svg") 这是RAID 0的改良版，以[汉明码](../Page/汉明码.md "wikilink")（Hamming Code）的方式将数据进行编码后分割为独立的位元，并将数据分别写入硬盘中。因为在数据中加入错误修正码（ECC，Error Correction Code），所以数据整体的容量会比原始数据大一些。

RAID 2最少要三台磁碟機方能運作。

### RAID 3

[RAID_3.svg](https://zh.wikipedia.org/wiki/File:RAID_3.svg "fig:RAID_3.svg") 採用Bit－interleaving（数据交错儲存）技術，它需要通过编码再将数据位元分割後分别存在硬盘中，而将同位元检查後单独存在一个硬盘中，但由于数据内的位元分散在不同的硬盘上，因此就算要读取一小段数据资料都可能需要所有的硬盘进行工作，所以这种规格比较适于读取大量数据时使用。 {{-}}

### RAID 4

[RAID_4.svg](https://zh.wikipedia.org/wiki/File:RAID_4.svg "fig:RAID_4.svg") 它与RAID 3不同的是它在分割时是以区块为单位分别存在硬盘中，但每次的数据存取都必须从同位元检查的那个硬盘中取出对应的同位元数据进行核对，由于过于频繁的使用，所以对硬盘的损耗可能会提高。（块交织技术，Block interleaving） {{-}}

### RAID 5

[RAID_5.svg](https://zh.wikipedia.org/wiki/File:RAID_5.svg "fig:RAID_5.svg") RAID Level 5是一种储存性能、数据安全和存储成本兼顾的存储解决方案。它使用的是Disk Striping（硬盘分割）技术。

RAID 5至少需要三個硬碟，RAID 5不是对存储的数据进行备份，而是把数据和相对应的[奇偶校验信息存储到组成RAID](https://zh.wikipedia.org/wiki/奇偶校验 "wikilink")5的各个磁盘上，并且奇偶校验信息和相对应的数据分别存储於不同的磁盘上。当RAID5的一个磁盘数据发生损坏後，可以利用剩下的数据和相应的奇偶校验信息去恢复被损坏的数据。RAID 5可以理解为是RAID 0和RAID 1的折衷方案。RAID 5可以为系统提供数据安全保障，但保障程度要比[鏡像低而磁盘空间利用率要比鏡像高](https://zh.wikipedia.org/wiki/鏡像 "wikilink")。RAID 5具有和RAID 0相近似的数据读取速度，只是因为多了一个奇偶校验信息，写入数据的速度相对单独写入一块硬盘的速度略慢，若使用「回寫快取」可以讓效能改善不少。同时由于多个数据对应一个奇偶校验信息，RAID 5的磁盘空间利用率要比RAID 1高，存储成本相对较便宜。

  -
    \(\begin{align}Size & = (N - 1) \times \min \left(S_1, S_2, \dots, S_N\right)\end{align}\)

{{-}}

### RAID 6

[RAID_6.svg](https://zh.wikipedia.org/wiki/File:RAID_6.svg "fig:RAID_6.svg")

与RAID 5相比，RAID 6增加第二个独立的奇偶校验信息块。两个独立的奇偶系统使用不同的算法，数据的可靠性非常高，任意两块磁盘同时失效时不会影响数据完整性。RAID 6需要分配给奇偶校验信息更大的磁盘空间和额外的校验计算，相对于RAID 5有更大的IO操作量和计算量，其“写性能”强烈取决于具体的实现方案，因此RAID 6通常不会通过软件方式来实现，而更可能通过硬件方式实现。

同一陣列中最多容許兩個磁盘损坏。更換新磁盘后，資料将会重新算出并写入新的磁盘中。

依照设计理论，RAID 6必須具備四個以上的磁盘才能生效。可使用的容量为硬盘总数减去2的差，乘以最小容量，公式为：

\[\begin{align}Size & = ( N - 2 ) \times \min \left(S_1, S_2, S_3, \dots, S_N\right)\end{align}\] 同理，数据保护区域容量则为最小容量乘以2。

RAID 6在硬體磁碟陣列卡的功能中，也是最常見的磁碟陣列等級。

#### 实现

Storage Networking Industry Association (SNIA)对于RAID 6的定义是："在任意两块磁盘同时失效的情况下，仍然能够对RAID中的所有虚拟磁盘执行讀写操作的RAID实现。迄今已经有：([奇偶和](../Page/奇偶校验位.md "wikilink")[里德-所罗门](../Page/里德-所罗门码.md "wikilink"))双校验、正交双[奇偶校验和对角](../Page/奇偶校验位.md "wikilink")[奇偶校验等若干方法用于实现RAID](../Page/奇偶校验位.md "wikilink") 6。"\[1\]

为了达到容忍任意两块磁盘失效的目的，需要计算两种不同的综合解码。其中之一是P，可以象RAID 5那样经过简单的[异或计算获得](../Page/逻辑异或.md "wikilink")，而另一个不同的综合编码则比较复杂，需要利用[域论来解决](https://zh.wikipedia.org/wiki/域_\(数学\) "wikilink")。

要解决这个问题，需要引入一个\(m=2^k\)的[伽罗瓦域](../Page/有限域.md "wikilink")，对于一个合适的k次[不可约多项式](../Page/不可约多项式.md "wikilink")\(p(x)\)，\(GF(m) \cong F_2[x]/(p(x))\)。一块数据可以二进制形式记作\(d_{k-1}d_{k-2}...d_0\)，其中\(d_i\)是 0 或者 1，对应着伽罗瓦域中的元素\(d_{k-1}x^{k-1} + d_{k-2}x^{k-2} + ... + d_1x + d_0\)。令\(D_0,...,D_{n-1} \in GF(m)\)对应磁盘条带中的数据，以这种方式编码成-{zh-cn:域; zh-tw:體;}-中的元素（实际上可能会切分成字节大小的块）。如果\(g\)是-{zh-cn:域; zh-tw:體;}-的某个生成元，且 \(\oplus\) 表示-{zh-cn:域; zh-tw:體;}-中的加法、并列表示-{zh-cn:域; zh-tw:體;}-中的乘法的话，则 \(\mathbf{P}\) 和 \(\mathbf{Q}\)的计算可以表示为(\(n\) 表示数据磁盘的编号)：

\[\mathbf{P} = \bigoplus_i{D_i} = \mathbf{D}_0 \;\oplus\; \mathbf{D}_1 \;\oplus\; \mathbf{D}_2 \;\oplus\; ... \;\oplus\; \mathbf{D}_{n-1}\]

\[\mathbf{Q} = \bigoplus_i{g^iD_i} = g^0\mathbf{D}_0 \;\oplus\; g^1\mathbf{D}_1 \;\oplus\; g^2\mathbf{D}_2 \;\oplus\; ... \;\oplus\; g^{n-1}\mathbf{D}_{n-1}\]

对于计算机科学知识背景的人士，比较容易理解的方法是把 \(\oplus\) 看作是异或运算、把 \(g^i\) 看作对一块数据进行[线性反馈移位寄存器](../Page/线性反馈移位寄存器.md "wikilink")操作的结果。于是上述公式\[2\]中**P**的计算就是对每个条带进行异或。这是因为对于任何二阶有限域而言，加法其实就是异或。**Q**的计算则是对每个条带进行移位运算之后的结果进行异或。

如果一块数据磁盘失效了，数据可以同 RAID 5 一样重新计算出来。如果两块数据磁盘或者一块数据磁盘和一块包含P的磁盘失效了，数据可以通过**P** 和 **Q**（或者仅通过 **Q**）通过更加复杂的过程重新计算出来，计算的过程需要用到域论，非常复杂。而如果 \(D_i\) 和 \(D_j\) (\(i \neq j\)) 两块数据盘丢失了，使用 \(D\) 的其他信息可以求出 \(A\) 和 \(B\) ，而 \(D_i \oplus D_j = A\) 和 \(g^iD_i \oplus g^jD_j = B\)：

\[A = \bigoplus_{\ell:\;\ell\not=i\;\mathrm{and}\;\ell\not=j}{D_\ell} = \mathbf{P} \;\oplus\; \mathbf{D}_0 \;\oplus\; \mathbf{D}_1 \;\oplus\; \dots \;\oplus\; \mathbf{D}_{i-1} \;\oplus\;  \mathbf{D}_{i+1} \;\oplus\;  \dots \;\oplus\; \mathbf{D}_{j-1}  \;\oplus\; \mathbf{D}_{j+1} \;\oplus\;  \dots \;\oplus\;  \mathbf{D}_{n-1}\]

\[B = \bigoplus_{\ell:\;\ell\not=i\;\mathrm{and}\;\ell\not=j}{g^{\ell}D_\ell} = \mathbf{Q} \;\oplus\; g^0\mathbf{D}_0 \;\oplus\; g^1\mathbf{D}_1 \;\oplus\; \dots \;\oplus\; g^{i-1}\mathbf{D}_{i-1} \;\oplus\;  g^{i+1}\mathbf{D}_{i+1} \;\oplus\;  \dots \;\oplus\; g^{j-1}\mathbf{D}_{j-1}  \;\oplus\; g^{j+1}\mathbf{D}_{j+1} \;\oplus\;  \dots \;\oplus\; g^{n-1}\mathbf{D}_{n-1}\]

把 \(B\) 的等式的两端同时乘以 \(g^{n-i}\)，并加到前面的等式中就可以得到 \((g^{n-i+j}\oplus1)D_j = g^{n-i}B\oplus A\)，就可以求出 \(D_j\)， 进一步就可以求出\(D_i\)。

与计算 **P** 相比，对 **Q** 的计算要更加消耗CPU。所以软件方式实现的 RAID 6 对于系统性能会有明显的影响，而硬件方案则相对复杂。

{{-}}

## 混合RAID

### JBOD

[JBOD.svg](https://zh.wikipedia.org/wiki/File:JBOD.svg "fig:JBOD.svg") JBOD（ Just a Bunch Of Disks）在分類上，JBOD並不是RAID的等級。由於並沒有規範，市場上有兩類主流的做法

1.  使用單獨的連結端口如SATA、USB或1394同時控制多個各別獨立的硬碟，使用這種模式通常是較高階的設備，還具備有RAID的功能，不需要依靠JBOD達到合併邏輯磁區的目的。
2.  只是將多個硬碟空間合併成一個大的邏輯硬碟，沒有錯誤備援機制。

資料的存放機制是由第一顆硬碟開始依序往後存放，即作業系統看到的是一個大硬碟（由許多小硬碟組成的）。但如果硬碟損毀，則該顆硬碟上的所有数据將無法救回。若第一顆硬碟損壞，通常無法作救援（因為大部分檔案系統將磁碟分割表（partition table）存在磁碟前端，即第一顆），失去磁碟分割表即失去一切数据，若遭遇磁碟陣列資料或硬碟出錯的狀況，危險程度較RAID 0更劇。它的好處是不會像RAID 0，每次存取都要讀寫全部硬碟。但在部分的JBOD數據恢復實踐中，可以恢復未損毀之硬碟上的數據。同時，因為每次讀寫操作只作用於單一硬碟，JBOD的傳輸速率與I/O表現均與單顆硬碟無異。

  -
    \(\begin{align}\text{Size} & = \text{sum of all discs}\end{align}\)

{{-}}

### RAID 7

RAID 7並非公開的RAID標準，而是Storage Computer Corporation的專利硬體產品名稱，RAID 7是以RAID 3及RAID 4為基礎所發展，但是經過強化以解決原來的一些限制。另外，在實作中使用大量的快取記憶體以及用以實現非同步陣列管理的專用即时處理器，使得RAID 7可以同時處理大量的IO要求，所以效能甚至超越了許多其他RAID標準的實做產品。但也因為如此，在價格方面非常的高昂。\[3\] {{-}}

### RAID 10/01

[RAID_10.svg](https://zh.wikipedia.org/wiki/File:RAID_10.svg "fig:RAID_10.svg") [RAID_01.svg](https://zh.wikipedia.org/wiki/File:RAID_01.svg "fig:RAID_01.svg")

RAID 10是先分割資料再鏡像，再將所有硬碟分為兩組，視為以RAID 1作为最低組合，然後將每组RAID 1视为一个“硬盘”组合为RAID 0運作。

RAID 01則是跟RAID 10的程序相反，是先鏡像再將資料到分割兩組硬碟。它將所有的硬碟分為兩組，每组各自构成为RAID 0作为最低組合，而將兩組硬碟组合为RAID 1運作。

當RAID 10有一個硬碟受損，其餘硬碟會繼續運作。RAID 01-{只}-要有一個硬碟受損，同組RAID 0的所有硬碟都會停止運作，只剩下其他組的硬碟運作，可靠性較低。如果以六個硬碟建RAID 01，鏡像再用三個建RAID 0，那麼壞一個硬碟便會有三個硬碟離線。因此，RAID 10遠較RAID 01常用，零售[主機板絕大部份支援RAID](https://zh.wikipedia.org/wiki/主機板 "wikilink") 0/1/5/10，但不支援RAID 01。 {{-}}

### RAID 50

[RAID_50.png](https://zh.wikipedia.org/wiki/File:RAID_50.png "fig:RAID_50.png") RAID 5與RAID 0的組合，先作RAID 5，再作RAID 0，也就是對多組RAID 5彼此構成Stripe存取。由於RAID 50是以RAID 5為基礎，而RAID 5至少需要3顆硬碟，因此要以多組RAID 5構成RAID 50，至少需要6顆硬碟。以RAID 50最小的6顆硬碟組態為例，先把6顆硬碟分為2組，每組3顆構成RAID 5，如此就得到兩組RAID 5，然後再把兩組RAID 5構成RAID 0。

RAID 50在底層的任一組或多組RAID 5中出現1顆硬碟損壞時，仍能維持運作，不過如果任一組RAID 5中出現2顆或2顆以上硬碟損毀，整組RAID 50就會失效。

RAID 50由於在上層把多組RAID 5構成Stripe，效能比起單純的RAID 5高，容量利用率比RAID5要低。比如同樣使用9顆硬碟，由各3顆RAID 5再組成RAID 0的RAID 50，每組RAID 5浪費一顆硬碟，利用率為(1-3/9)，RAID 5則為(1-1/9)。 {{-}}

### RAID 53

它擁有一個鏡像條帶陣列，硬碟裡其中一個條帶就是一個是由3組以上的RAID 5組成RAID 3硬碟陣列。 {{-}}

### RAID 60

[Raid_60.jpg](https://zh.wikipedia.org/wiki/File:Raid_60.jpg "fig:Raid_60.jpg") RAID 6與RAID 0的組合：先作RAID 6，再作RAID 0。換句話說，就是對兩組以上的RAID 6作Stripe存取。RAID 6至少需具備4顆硬碟，所以RAID 60的最小需求是8顆硬碟。

由於底層是以RAID 6組成，所以RAID 60可以容許任一組RAID 6中損毀最多2顆硬碟，而系統仍能維持運作；不過只要底層任一組RAID 6中損毀3顆硬碟，整組RAID 60就會失效，當然這種情況的機率相當低。

比起單純的RAID 6，RAID 60的上層透過結合多組RAID 6構成Stripe存取，因此效能較高。不過使用門檻高，而且容量利用率低是較大的問題。

## 應用

RAID2、3、4較少實際應用，因為RAID5已經涵蓋所需的功能，因此RAID2、3、4大多只在研究領域有實作，而實際應用上則以RAID5為主。

RAID4有應用在某些商用機器上，像是NetApp公司設計的NAS系統就是使用RAID4的設計概念。

## 種類

根据实现模式，分为软件和硬件两种：\[4\]

  - 軟體磁碟陣列（Software RAID）：
    主要由CPU處理陣列儲存作業，缺點為耗損較多CPU資源運算RAID，優點則是價格偏低。分類有3種：
      - 基於主機板的磁碟陣列：只需要主機板支援即可（通常是[晶片組內建的RAID功能](https://zh.wikipedia.org/wiki/晶片組 "wikilink")，如Intel Matrix RAID，Intel Rapid Storage Technology），不需要任何磁碟陣列卡。若主機板損壞，可能難以購買同款主機板重建RAID。
      - 硬體輔助磁碟陣列（Hardware-Assisted RAID）：需要一張基於Fake RAID的RAID卡，以及廠商所提供的[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")，但此類RAID卡仍然通過CPU進行運算。這款RAID較易遷移到其他電腦。RAID功能靠執行於作業系統的廠商驅動程式和CPU運算提供。
      - 作業系統的RAID功能：如[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[Windows Server等作業系統內建RAID功能](../Page/Windows_Server.md "wikilink")。

<!-- end list -->

  - 硬體磁碟陣列（Hardware RAID）
    RAID卡上內建處理器，不需要伺服器的CPU運算。優點是讀寫效能最快，不佔用伺服器資源，可用於任何作業系統，也能在系統斷電後，透過備份電池模組（BBU, Backup Battery Unit）以及[非揮發性記憶體 (NVRAM)將硬碟讀寫日誌檔](../Page/非揮發性記憶體.md "wikilink")（Journal）包含的剩餘讀寫作業先紀錄在記憶體中，等待電力供應復原後，再由NVRAM取回日誌檔資料，接著再完成讀寫作業，將剩餘讀寫作業安全完成以確保讀寫完整性。備份電池模組通常會配合陣列卡的Write-Back快取模式，藉由此記憶體快取讀寫作業以得到更高的讀寫效能；但是沒有備份電池模組的硬體磁碟陣列卡，切勿使用Write-Back快取模式以免遭遇斷電情形導致讀寫資料流失。此外，因為硬體磁碟陣列卡搭載內建處理器，所以可以與作業系統分離出來，對硬碟進行各種作業，還原作業的速度也比軟體磁碟陣列快。缺點是其售價很高。

## 磁碟陣列相關客戶類型

  - 一般消費者備份資料之用、企業建立ERP系統或NAS系統時的重要資料備份。
  - 影音多媒體數位內容創作公司、個人影音剪輯數位內容工作室。
  - 數位監控系統（DVR）、網路監控系統（NVR）等等需要大量儲存影片的監控系統業者，軍方、賭場因為需要大量監控系統也是常見使用磁碟陣列的客戶。
  - 證券、銀行等金融行業保管重要客戶資料。

## 参考文献

## 外部連結

  - [Raid System](https://web.archive.org/web/20170603145357/http://raid-controller.info/)
  - [Raid](http://www.webopedia.com/TERM/R/RAID.html)
  - [\[影片\]什麼是RAID?](http://www.youtube.com/watch?v=9uYk-pjt-5o)
  - [\[视频\]RAID磁盘阵列是什么？RAID 0、1、5区别？](https://www.bilibili.com/video/av13557543?from=search&seid=6433148143037371855)
  - [RAID 容量計算器](https://www.asustor.com/service/raid_calculator/)

[Category:電腦儲存](https://zh.wikipedia.org/wiki/Category:電腦儲存 "wikilink")

1.
2.
3.  [RAID Level 7](http://www.pcguide.com/ref/hdd/perf/raid/levels/singleLevel7-c.html)
4.