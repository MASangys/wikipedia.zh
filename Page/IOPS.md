**IOPS**（[Input/Output](https://zh.wikipedia.org/wiki/I/O "wikilink") Operations Per Second）是一個用於電腦[儲存裝置](../Page/儲存裝置.md "wikilink")（如[硬碟](https://zh.wikipedia.org/wiki/硬碟 "wikilink")（HDD）、[固態硬碟](https://zh.wikipedia.org/wiki/固態硬碟 "wikilink")（SSD）或[存储区域网络](../Page/存储区域网络.md "wikilink")（SAN））的量測方式，可以視為是每秒的讀寫次數。和其他效能測試一様，儲存裝置製造商提出的IOPS不保證就是實際應用下的性能\[1\]\[2\]。

IOPS可以用應用程式來量測，例如一開始由微軟開發的，像及也有類似功能\[3\]，IOPS主要會用在[伺服器](https://zh.wikipedia.org/wiki/伺服器 "wikilink")，以找到最佳的儲存組態。

IOPS的數值會隨系統組態而有很大的不同，依測試者在測試時的控制變因而異，控制變因包括讀取及寫入的比例、其中[循序存取及](https://zh.wikipedia.org/wiki/循序存取 "wikilink")[隨機存取的比例及配置方式](https://zh.wikipedia.org/wiki/隨機存取 "wikilink")、[线程](../Page/线程.md "wikilink")數量及存取佇列深度，以及資料區塊的大小\[4\]。其他因素也會影響IOPS的結果，例如系統設定、儲存設備的[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")、作業系統背景執行的作業等。若在測試[固態硬碟時](https://zh.wikipedia.org/wiki/固態硬碟 "wikilink")，是否先進行預調（preconditioning）機制也會影響IOPS的結果\[5\]。

## 性能特性

[Random_vs_sequential_access.svg](https://zh.wikipedia.org/wiki/File:Random_vs_sequential_access.svg "fig:Random_vs_sequential_access.svg") 最常量測的性能特性是[隨機存取及](https://zh.wikipedia.org/wiki/隨機存取 "wikilink")[循序存取時的IOPS](https://zh.wikipedia.org/wiki/循序存取 "wikilink")。循序存取是存取儲存裝置中相鄰位置的資料，一般和較大的資料區塊存取有關，例如128 [KB](../Page/千字节.md "wikilink")，隨機存取是存取儲存裝置中非相鄰位置的資料．一般存取的資料區塊比較少，例如4 KB。

最常見的性能特性如下：

| 量測       | 說明                   |
| -------- | -------------------- |
| 總IOPS    | 每秒讀寫次數的總和（混合讀取及寫入測試） |
| 隨機讀取IOPS | 每秒平均的隨機讀取次數          |
| 隨機寫入IOPS | 每秒平均的隨機寫入次數          |
| 循序讀取IOPS | 每秒平均的循序讀取次數          |
| 循序寫入IOPS | 每秒平均的循序寫入次數          |

對於硬碟或是其他類似的機電儲存裝置，其隨機存取IOPS主要和儲存裝置的尋址時間有關，若是固態硬碟及其他固態電子裝置，其隨機存取IOPS主要和儲存裝置的內部控制器及記億體介面速度有關。這兩種設備的循序存取IOPS（尤其是存取大資料區塊）一般會包括儲存設備可以持續的最大頻寬\[6\]。一般循序存取的IOPS會用MB/s表示，其公式如下：

> \(\text{IOPS} * \text{TransferSizeInBytes} = \text{BytesPerSec}\)（結果一般會轉換為MB/s）

有些硬體會因為其佇列深度增加而提昇其性能，這多半是因為硬碟處理佇列及重新排序（reordering）的先進控制器邏輯的結果，此邏輯一般稱為[标记命令队列](https://zh.wikipedia.org/wiki/标记命令队列 "wikilink")（TCQ）或[原生指令排序](../Page/原生指令排序.md "wikilink")（NCQ）。 企業等級的SATA硬碟，例如及[希捷的Barracuda](https://zh.wikipedia.org/wiki/希捷 "wikilink") NL配合深佇列可以提昇效能到100%\[7\]。較常用在伺服器的高端[SCSI硬碟](https://zh.wikipedia.org/wiki/SCSI "wikilink")，一般性能有更大的提昇 。

傳統的硬碟讀取和寫入的IOPS大約相同，而大部份[闪存](../Page/闪存.md "wikilink")SSD的寫入速度明顯比讀取慢很多，原因是無法寫入一個之前寫過的區域，會強制啟動[垃圾資料回收功能](https://zh.wikipedia.org/wiki/写入放大#垃圾回收 "wikilink")\[8\]\[9\]\[10\]。因此硬體測試開始在測試IOPS性能時，分開測試寫入和讀取。

像Intel X25-E等較新的闪存SSD固態硬碟其IOPS會比傳統的硬碟要高，在Xssist進行的一個測試中，用IOmeter軟體，4 KB隨機存取，讀取/寫入比例為70/30，佇列深度4，Intel X25-E 64 GB G1的IOPS一開始有 10000 IOPs，在八分鐘後快速掉到4000 IOPS，之後的42分鐘持續的下降，自第50分鐘起到第八小時之間，IOPS在3000至4000之間變化\[11\]。即使第50分鐘IOPS快速下降，X25-E的IOPS仍較傳統硬碟要高。像[OCZ](../Page/OCZ.md "wikilink")RevoDrive 3 x2 PCIe用[SandForce](../Page/SandForce.md "wikilink")控制器，其持續寫入性能和讀取速度大致相近\[12\]。

## 一些IOPS的範例

### 硬碟機

隨機存取處理下，一些常見的IOPS平均值，計算方式是1/(寻址時間 + 回應時間) = IOPS:

| 設備                                                                                                | 形式                                                  | IOPS                 | 介面                                                              | 註解 |
| ------------------------------------------------------------------------------------------------- | --------------------------------------------------- | -------------------- | --------------------------------------------------------------- | -- |
| 7,200 [RPM](https://zh.wikipedia.org/wiki/每分鐘轉速 "wikilink") [SATA](../Page/SATA.md "wikilink")硬碟機 | [硬碟機](https://zh.wikipedia.org/wiki/硬碟機 "wikilink") | \~75-100 IOPS\[13\]  | SATA 3 [Gbit/s](https://zh.wikipedia.org/wiki/資料率單位 "wikilink") |    |
| 10,000 RPM SATA硬碟機                                                                                | 硬碟機                                                 | \~125-150 IOPS\[14\] | SATA 3 Gbit/s                                                   |    |
| 10,000 rpm [SAS硬碟機](../Page/串列SCSI.md "wikilink")                                                 | 硬碟機                                                 | \~140 IOPS\[15\]     | SAS（串列SCSI）                                                     |    |
| 15,000 rpm [SAS硬碟機](../Page/串列SCSI.md "wikilink")                                                 | 硬碟機                                                 | \~175-210 IOPS\[16\] | SAS（串列SCSI）                                                     |    |
|                                                                                                   |                                                     |                      |                                                                 |    |

### 固態設備

<table>
<thead>
<tr class="header">
<th><p>設備</p></th>
<th><p>形式</p></th>
<th><p>IOPS</p></th>
<th><p>介面</p></th>
<th><p>註解</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/英特尔.md" title="wikilink">英特尔</a>Intel X25-M G2（<a href="https://zh.wikipedia.org/wiki/多階儲存單元" title="wikilink">MLC</a>）</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/固態硬碟" title="wikilink">SSD</a></p></td>
<td><p>~8,600 IOPS[17]</p></td>
<td><p>SATA 3 Gbit/s</p></td>
<td><p>英特尔的[18]聲稱在4 KB資料的寫入及讀取時，分別有有6,600/8,600 IOPS (80 GB/160 GB版本)及35,000 IOPS的速度。</p></td>
</tr>
<tr class="even">
<td><p>英特尔 Intel X25-E (SLC)</p></td>
<td><p>SSD</p></td>
<td><p>~5,000 IOPS[19]</p></td>
<td><p>SATA 3 Gbit/s</p></td>
<td><p>英特尔數據表[20]聲稱在寫入和讀取的速度為3,300 IOPS及35,000 IOPS。寫入和讀取混和時為5,000 IOPS。英特尔的X25-E G1比X25-M G2快了約三倍[21]</p></td>
</tr>
<tr class="odd">
<td><p>Phoenix Pro</p></td>
<td><p>SSD</p></td>
<td><p>~20,000 IOPS[22]。</p></td>
<td><p>SATA 3 Gbit/s</p></td>
<td><p><a href="../Page/SandForce.md" title="wikilink">SandForce</a>-1200為基礎的固態硬體，配合加強版的韌體，最快可到50,000 IOPS，性能测试的結果是隨機讀取可到~25,000 IOPS，隨機寫入可到~15,000 IOPS[23]。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/OCZ_Storage_Solutions" title="wikilink">OCZ</a> Vertex 3</p></td>
<td><p>SSD</p></td>
<td><p>最高可到60,000 IOPS[24]</p></td>
<td><p>SATA 6 Gbit/s</p></td>
<td><p>隨機寫入4 KB (Aligned)</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/Corsair.md" title="wikilink">Corsair</a> Force Series GT</p></td>
<td><p>SSD</p></td>
<td><p>最高可到85,000 IOPS[25]</p></td>
<td><p>SATA 6 Gbit/s</p></td>
<td><p>240 GB Drive，循序讀取為555 MB/s，循序寫入為525 MB/s。隨機寫入4 KB (Aligned)</p></td>
</tr>
</tbody>
</table>

## 相關條目

  - [每秒指令](https://zh.wikipedia.org/wiki/每秒指令 "wikilink")
  - [效能功耗比](../Page/效能功耗比.md "wikilink")

## 參考資料

[Category:電腦性能](https://zh.wikipedia.org/wiki/Category:電腦性能 "wikilink") [Category:資料傳輸](https://zh.wikipedia.org/wiki/Category:資料傳輸 "wikilink") [Category:頻率單位](https://zh.wikipedia.org/wiki/Category:頻率單位 "wikilink")

1.
2.
3.  (source available at <http://git.kernel.dk/>)
4.
5.
6.
7.
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
24. <http://www.ocztechnology.com/res/manuals/OCZ_Vertex3_Product_Sheet.pdf>
25.