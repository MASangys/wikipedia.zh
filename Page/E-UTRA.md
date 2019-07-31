**E-UTRA(N)**（Evolved Universal Terrestrial Radio Access (Network)，演進的通用陸面無線接入(网络)），屬於[3GPP](../Page/3GPP.md "wikilink") [LTE](https://zh.wikipedia.org/wiki/LTE "wikilink") 的[空中介面](https://zh.wikipedia.org/wiki/空中介面 "wikilink")\[1\]，目前是 3GPP 的第八版本。與 [HSPA](https://zh.wikipedia.org/wiki/HSPA "wikilink") 不同的是，LTE 的 E-UTRA 係一全新的系統，絕不相容於W-CDMA。它提供了更高的传输速率，低延迟和最佳化数据包的能力，用[OFDMA无线接入给下行连接](https://zh.wikipedia.org/wiki/OFDMA "wikilink")，[SC-FDMA](../Page/SC-FDMA.md "wikilink")给上行连接。 [EUTRAN_arch.op.svg](https://zh.wikipedia.org/wiki/File:EUTRAN_arch.op.svg "fig:EUTRAN_arch.op.svg") and [SAE](https://zh.wikipedia.org/wiki/System_Architecture_Evolution "wikilink") network\]\]

## 特色

E-UTRA 具有如下的特色：

  - 峰值下載速率（Peak download rates）為292 Mbit/s的為4x4的天線，143 Mbit/s的天線為2x2的20 MHz的頻譜\[2\]。
  - 峰值上傳速率71 Mbit / s的每20 MHz的頻譜\[3\]。
  - 彈性化的頻寬在1.25 MHz到20 MHz之間. ：1.4 MHz，3 MHz，5 MHz，15 MHz和20 MHz的標準化。 相較之下, W-CDMA 一般只使用5 MHz頻譜。
  - [頻譜效率](../Page/頻譜效率.md "wikilink")（[頻譜效率](../Page/頻譜效率.md "wikilink")） 增加到 2-4 倍，遠較 3GPP ([HSPA](https://zh.wikipedia.org/wiki/HSPA "wikilink")) release 6 要好。
  - 低數據傳輸延遲
  - 支持終端移動速度高達350公里/小時或500公里/小時（取決於頻段）。
  - 同時支持[FDD和](https://zh.wikipedia.org/wiki/FDD "wikilink")[TDD的複式以及半雙工FDD相同的無線接入技術](https://zh.wikipedia.org/wiki/TDD "wikilink")。
  - 支持所有目前使用的頻段的IMT系統由ITU-R的。
  - 相較於3G网络，同样使用[femtocell和](../Page/家庭基站.md "wikilink")[picocell的小半徑基站](https://zh.wikipedia.org/wiki/picocell "wikilink")，然[macrocell半徑超過](https://zh.wikipedia.org/wiki/macrocell "wikilink")100公里，覆盖距离显著提升。
  - 簡化的體系結構：EUTRAN網絡僅由eNodeB組成
  - 支持互操作（inter-operation）與其他系統（如GSM/EDGE/UMTS/CDMA2000/WiMAX……）
  - 封包交換（Packet switched）的無線接口。

## 基本原理

雖然随着UMTS與HSDPA技術和HSUPA技術及其發展，提供高數據傳輸速率的無線數據使用量預計將繼續大幅增加，在未來幾年由於需求的增加和提供的服務和內容上的搬遷，需要繼續為最終用戶削減成本。預計這一增長不僅需要更快的網絡和無線電接口，但也更符合成本效益比，是現行標準可能的演變。 因此，3GPP的財團提出了要求。新的無線電接口（EUTRAN）和核心網絡演進（系統架構演進SAE的），將滿足這種需要。

## EUTRAN 協定堆疊

EUTRAN 協定堆疊包含有\[4\]： [EUTRAN_protocol_stack.op.svg](https://zh.wikipedia.org/wiki/File:EUTRAN_protocol_stack.op.svg "fig:EUTRAN_protocol_stack.op.svg")

  - 實體層\[5\]：執行從MAC所有信息傳輸通道在空中接口。
  - MAC層\[6\]：MAC子層提供了一組邏輯通道，它的RLC子層复用物理層到傳輸通道。
  - RLC\[7\]：用於傳送 PDCP 的 PDUs。它可以在3種不同模式的可靠性提供依據。 根據這個模式下，它可以提供： ARQ的錯誤校正，分割/串聯的PDU，重新排序為序列交貨，重複檢測等等。
  - PDCP\[8\]：對於RRC層提供數據傳輸的加密和完整性保護。
  - RRC\[9\]：播的系統信息相關的接入層和運輸的非接入層 （NAS）的消息。

接口層協議棧的EUTRAN：

  - NAS\[10\]： UE 和 MME 之間的網路協定。
  - [IP](https://zh.wikipedia.org/wiki/IP "wikilink")

## 實體層（L1）的設計

E-UTRA採用正交頻分复用（OFDM），多輸入-多輸出（MIMO）天線技術，根據不同的類別，可以使用終端以及波束形成的下行，以支持更多的用戶，更高的數據傳輸速率和較低的處理能力需要對每一個手機。

## EUTRAN 實體通道與訊號

### 下行 (DL)

下行有下列的實體通道\[11\]:

  - 實體控制通道（Physical Downlink Control Channel, PDCCH）承载各种各样的控制信息, 自适应的重传需要通过PDCCH进行上行授权.
  - 實體控制格式指示通道（Physical Control Format Indicator Channel, PCFICH）用於通知 PDCCH 的長度.
  - 實體混合ARQ指示通道（Physical Hybrid ARQ Indicator Channel, PHICH）是使ACK／NACK的传输独立于 PDCCH的配置。PHICH占用的RE是在PBCH中指示的。
  - 實體下行共享通道（Physical Downlink Shared Channel, PDSCH）用于承载来自传输信道DSCH的数据. PDSCH 上有支援 [QPSK](https://zh.wikipedia.org/wiki/QPSK "wikilink"), [16QAM](https://zh.wikipedia.org/wiki/16QAM "wikilink") 以及 [64QAM](https://zh.wikipedia.org/wiki/64QAM "wikilink").
  - 實體組播通道（Physical Multicast Channel, PMCH）用於使用單一頻道（Single Frequency Network）组播频道。
  - 實體廣播通道（Physical Broadcast Channel, PBCH）用於在Cell內傳播系統基本資訊。

以及下列的訊號:

  - 同步器 (PSS and SSS) 是指 UE 發現 LTE cell 和執行初始同步。
  - 參考信號 (cell specific, MBSFN, and UE specific) 用於UE 針對不同的通道進行通道估計。
  - 定位參考信號（Positioning reference signals, PRS）, 在第九個版本中加入, 是指 UE 使用 OTDOA  ([multilateration的一種](https://zh.wikipedia.org/wiki/multilateration "wikilink"))

### 上行 (UL)

上行支援三種實體通道:

  - 實體隨機接入通道（Physical Random Access Channel, PRACH）是手機發出的請求識別訊號\[12\]。
  - 實體上行共享通道（Physical Uplink Shared Channel, PUSCH）用于承载来自传输信道USCH的数据。PUSCH 通道上可以存在TFCI。PDSCH 可支援 [QPSK](https://zh.wikipedia.org/wiki/QPSK "wikilink") 模組，16QAM的並且根據用戶設備類64QAM調製方式。PUSCH 是唯一的通道, 因為更大的帶寬, 要使用 [SC-FDMA](../Page/SC-FDMA.md "wikilink")。
  - 實體上行控制通道（Physical Uplink Control Channel, PUCCH）用於承載控制資訊. 請注意，僅包含控制信息的上行研究DL承認以及相關的CQI報告，所有的UL編碼和分配參數已知的網絡側，並傳訊給 UE在PDCCH。

以及下列的訊號:

  - 參考信號（Reference signals, RS）：RS存在於每個RB中，RS的位置會因發射天線的數量、CP的形式等不同而不同。
  - 探測參考信號（Sounding reference signals, SRS）：由enodeB使用於評估上行通道, SRS是UE 发送的全频带参考信号。

## 使用者設備 (UE) 分類

在 3GPP 第 10 版协议中定义的 8 种 LTE UE 工作类型定义\[13\] 所取得最大数据速率和MIMO功能的支持.

| 3GPP Release | UE 工作类型（User Equipment Category） | 最大L1层数据速率 [下行](https://zh.wikipedia.org/wiki/下行 "wikilink") | [MIMO](../Page/MIMO.md "wikilink")实现下行速率的最大天线数 | 最大L1层数据速率 [上行](https://zh.wikipedia.org/wiki/上行 "wikilink") | 调制方式[下行](https://zh.wikipedia.org/wiki/下行 "wikilink") | 调制方式[上行](https://zh.wikipedia.org/wiki/上行 "wikilink") |
| ------------ | -------------------------------- | ----------------------------------------------------------- | ---------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| Release 8    | Category 1                       | 10.3 Mbits/s                                                | 1                                              | 5.2 Mbit/s                                                  | QPSK,16QAM,64QAM                                      | QPSK,16QAM                                            |
| Release 8    | Category 2                       | 51.0 Mbits/s                                                | 2                                              | 25.5 Mbit/s                                                 | QPSK,16QAM,64QAM                                      | QPSK,16QAM                                            |
| Release 8    | Category 3                       | 102.0 Mbits/s                                               | 2                                              | 51.0 Mbit/s                                                 | QPSK,16QAM,64QAM                                      | QPSK,16QAM                                            |
| Release 8    | Category 4                       | 150.8 Mbits/s                                               | 2                                              | 51.0 Mbit/s                                                 | QPSK,16QAM,64QAM                                      | QPSK,16QAM                                            |
| Release 8    | Category 5                       | 299.6 Mbits/s                                               | 4                                              | 75.4 Mbit/s                                                 | QPSK,16QAM,64QAM                                      | QPSK,16QAM,64QAM                                      |
| Release 10   | Category 6                       | 301.5 Mbits/s                                               | 2 or 4                                         | 51.0 Mbit/s                                                 | ?                                                     | ?                                                     |
| Release 10   | Category 7                       | 301.5 Mbits/s                                               | 2 or 4                                         | 102.0 Mbit/s                                                | ?                                                     | ?                                                     |
| Release 10   | Category 8                       | 2998.6 Mbits/s                                              | 8                                              | 1497.8 Mbit/s                                               | ?                                                     | ?                                                     |
| Release 11   | Category 9                       | 452.2 Mbit/s                                                | 2 or 4                                         | 51.0 Mbit/s                                                 | ?                                                     | ?                                                     |
| Release 11   | Category 10                      | 452.2 Mbit/s                                                | 2 or 4                                         | 102.0 Mbit/s                                                | ?                                                     | ?                                                     |
| Release 12   | Category 11                      | 603.0 Mbit/s                                                | 2 or 4                                         | 51.0 Mbit/s                                                 | ?                                                     | ?                                                     |
| Release 12   | Category 12                      | 603.0 Mbit/s                                                | 2 or 4                                         | 102.0 Mbit/s                                                | ?                                                     | ?                                                     |
| Release 12   | Category 13                      | 391.6 Mbit/s                                                | 2 or 4                                         | 51.0 Mbit/s                                                 | ?                                                     | ?                                                     |
| Release 12   | Category 14                      | 391.6 Mbit/s                                                | 2 or 4                                         | 102.0 Mbit/s                                                | ?                                                     | ?                                                     |
| Release 12   | Category 15                      | 3,916.6 Mbit/s                                              | 8                                              | 1,497.8 Mbit/s                                              | ?                                                     | ?                                                     |

注1：L1的數據傳輸速率傳送數據不包括不同協議層间的开销损耗。

注2：Category 8指定的3.0 Gbps/1.5 Gbps是扇区级能接近的总数据峰值速率。单个用户的实际最大数据速率为1.2 Gbps的（下行）和600 Mbps（上行）\[14\]。

注3：最大數據傳輸速率给出的是在使用 20 MHz 带宽时的速率。 当适用的带宽更小时最大數據傳輸速率将会更低。

## EUTRAN發布

  - 版本8，2008年定版，是第一份LTE標準。
  - 版本9，2009年定版，包括一些增加的實體層，如dual layer (MIMO)的波束傳輸（beamforming transmission）或定位（positioning）支持。
  - 發布10，2011年定版，引入LTE強化功能，如載波聚合（carrier aggregation），上行的SU-MIMO或中繼（relay），用於處理L1峰值數據（L1 peak data）速率增加。

所有LTE的設計都保持向下相容性，版本8的client可以在版本10的網路上執行。

## 具体频带

3GPP TS 36.101中，表 5.5-1 的“E-UTRA工作頻段”和 5.6.1-1 的“E-UTRA信道帶寬”，\[15\]下表中列出指定頻段的LTE和每個上市波段的信道帶寬支持:

<table>
<thead>
<tr class="header">
<th><p>EUTRAN<br />
工作頻段号</p></th>
<th><p>上行工作頻段<br />
BS接收<br />
UE发送<br />
(MHz)</p></th>
<th><p>下行工作頻段<br />
BS发送<br />
UE接收<br />
(MHz)</p></th>
<th><p>双工模式</p></th>
<th><p>信道带宽(MHz)</p></th>
<th><p>通用名称</p></th>
<th><p>简介</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span style="display:none">001 </span><span id="LTE_Band_I">I</span> (1)</p></td>
<td><p><span style="display:none">017 </span>1920 - 1980</p></td>
<td><p><span style="display:none">017 </span>2110 - 2170</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IMT" title="wikilink">IMT</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/国际移动通信系统" title="wikilink">国际移动通信系统</a>2100MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">002 </span><span id="LTE_Band_II">II</span> (2)</p></td>
<td><p><span style="display:none">012 </span>1850 - 1910</p></td>
<td><p><span style="display:none">012 </span>1930 - 1990</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/个人通讯服务" title="wikilink">PCS</a> A-F<br />
<em></em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/个人通讯服务" title="wikilink">个人通讯服务</a>1900MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">003 </span><span id="LTE_Band_III">III</span> (3)</p></td>
<td><p><span style="display:none">010 </span>1710 - 1785</p></td>
<td><p><span style="display:none">010 </span>1805 - 1880</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10, 15, 20</p></td>
<td><p><a href="../Page/蜂窝网络.md" title="wikilink">DCS</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/数字蜂窝系统" title="wikilink">数字蜂窝系统</a>1800MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">004 </span><span id="LTE_Band_IV">IV</span> (4)</p></td>
<td><p><span style="display:none">009 </span>1710 - 1755</p></td>
<td><p><span style="display:none">013 </span>2110 - 2155</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/高级无线服务" title="wikilink">AWS</a> A-F(AWS-1)<br />
<em></em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/高级无线服务" title="wikilink">高级无线服务</a>1700MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">005 </span><span id="LTE_Band_V">V</span> (5)</p></td>
<td><p><span style="display:none">006 </span>824 - 849</p></td>
<td><p><span style="display:none">006 </span>869 - 894</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10</p></td>
<td><p><a href="../Page/蜂窝网络.md" title="wikilink">Cellular/CLR</a><br />
<em></em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/移动蜂窝网络" title="wikilink">移动蜂窝网络</a>850MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">006 </span><em></em></p></td>
<td><p><span style="display:none">007 </span><em></del></em></p></td>
<td><p><span style="display:none">007 </span><em></del></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">007 </span><span id="LTE_Band_VII">VII</span> (7)</p></td>
<td><p><span style="display:none">021 </span>2500 - 2570</p></td>
<td><p><span style="display:none">021 </span>2620 - 2690</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/IMT-E" title="wikilink">IMT-E</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/扩展国际移动通信系统" title="wikilink">扩展国际移动通信系统</a>2600MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">008 </span><span id="LTE_Band_VIII">VIII</span> (8)</p></td>
<td><p><span style="display:none">008</span>880 - 915</p></td>
<td><p><span style="display:none">008</span>925 - 960</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/E-GSM" title="wikilink">E-GSM</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/扩展全球移动通信系统" title="wikilink">扩展全球移动通信系统</a>900MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">009 </span><span id="LTE_Band_IX">IX</span> (9)</p></td>
<td><p><span style="display:none">012 </span>1749.9 - 1784.9</p></td>
<td><p><span style="display:none">011 </span>1844.9 - 1879.9</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p>Japan <a href="https://zh.wikipedia.org/wiki/UMTS" title="wikilink">UMTS</a> 1700 / Japan DCS<br />
<em></em></p></td>
<td><p>日本<a href="../Page/通用移动通讯系统.md" title="wikilink">通用移动通讯系统</a>1800MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">010 </span><span id="LTE_Band_X">X</span> (10)</p></td>
<td><p><span style="display:none">011 </span>1710 - 1770</p></td>
<td><p><span style="display:none">013 </span>2110 - 2170</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/E-AWS" title="wikilink">Extended AWS</a> A-I<br />
<em></em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/扩展高级无线服务" title="wikilink">扩展高级无线服务</a>1700MHz频带<br />
<span id="LTE_Band_IV">IV</span> (4) 扩展频段</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">011 </span><span id="LTE_Band_XI">XI</span> (11)</p></td>
<td><p><span style="display:none">009 </span>1427.9 - 1447.9</p></td>
<td><p><span style="display:none">009 </span>1475.9 - 1495.9</p></td>
<td><p>FDD</p></td>
<td><p>5, 10</p></td>
<td><p>Lower <a href="../Page/PDC.md" title="wikilink">PDC</a>/LPDC</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/个人数字蜂窝网络" title="wikilink">个人数字蜂窝网络</a>1500MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">012 </span><span id="LTE_Band_XII">XII</span> (12)</p></td>
<td><p><span style="display:none">001 </span>698 - 716</p></td>
<td><p><span style="display:none">001 </span>728 - 746</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10</p></td>
<td><p>Lower <a href="https://zh.wikipedia.org/wiki/SMH" title="wikilink">SMH</a>/LSMH blocks A/B/C</p></td>
<td><p>美国700MHz频带A/B/C块</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">013 </span><span id="LTE_Band_XIII">XIII</span> (13)</p></td>
<td><p><span style="display:none">003 </span>777 - 787</p></td>
<td><p><span style="display:none">003 </span>747 - 757</p></td>
<td><p>FDD</p></td>
<td><p>5, 10</p></td>
<td><p>Upper SMH/USMH block C</p></td>
<td><p>美国700MHz频带C块</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">014 </span><span id="LTE_Band_XIV">XIV</span> (14)</p></td>
<td><p><span style="display:none">004 </span>788 - 798</p></td>
<td><p><span style="display:none">004 </span>758 - 768</p></td>
<td><p>FDD</p></td>
<td><p>5, 10</p></td>
<td><p>Upper SMH/USMH block D</p></td>
<td><p>美国700MHz频带D块</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">015 </span><em></em></p></td>
<td><p><span style="display:none">014 </span><em></em></p></td>
<td><p><span style="display:none">021 </span><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">016 </span><em></em></p></td>
<td><p><span style="display:none">015 </span><em></em></p></td>
<td><p><span style="display:none">020 </span><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">017 </span><span id="LTE_Band_XVII">XVII</span> (17)</p></td>
<td><p><span style="display:none">002 </span>704 - 716</p></td>
<td><p><span style="display:none">002 </span>734 - 746</p></td>
<td><p>FDD</p></td>
<td><p>5, 10</p></td>
<td><p>Lower SMH/LSMH blocks B/C<br />
<em></em></p></td>
<td><p>美国700MHz频带B/C块<br />
<span id="LTE_Band_XII">XII</span> (12) 子频段</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">018 </span><span id="LTE_Band_XVIII">XVIII</span> (18)</p></td>
<td><p><span style="display:none">002 </span>815 - 830</p></td>
<td><p><span style="display:none">002 </span>860 - 875</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15</p></td>
<td><p>Japan Lower 800<br />
<em></em></p></td>
<td><p>日本850MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">019 </span><span id="LTE_Band_XVIII">XIX</span> (19)</p></td>
<td><p><span style="display:none">002 </span>830 - 845</p></td>
<td><p><span style="display:none">002 </span>875 - 890</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15</p></td>
<td><p>Japan Upper 800<br />
<em></em></p></td>
<td><p>日本850MHz频带<br />
<span id="LTE_Band_VI">VI</span> (6) 扩展频段</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">020 </span><span id="LTE_Band_XX">XX</span> (20)</p></td>
<td><p><span style="display:none">005 </span>832 - 862</p></td>
<td><p><span style="display:none">005 </span>791 - 821</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/EUDD" title="wikilink">EU Digital Dividend</a></p></td>
<td><p>欧盟数字红利800MHz频段</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">021 </span><span id="LTE_Band_XXI">XXI</span> (21)</p></td>
<td><p><span style="display:none">009 </span>1447.9 - 1462.9</p></td>
<td><p><span style="display:none">009 </span>1495.9 - 1510.9</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15</p></td>
<td><p>Upper PDC/UPDC</p></td>
<td><p>个人数字蜂窝网络1500MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">022 </span><span id="LTE_Band_XXII">XXII</span> (22)</p></td>
<td><p><span style="display:none">029 </span>3410 - 3490</p></td>
<td><p><span style="display:none">030 </span>3510 - 3590</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td></td>
<td><p>FDD 3500MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">023 </span><span id="LTE_Band_XXIII">XXIII</span> (23)</p></td>
<td><p><span style="display:none">015 </span>2000 - 2020</p></td>
<td><p><span style="display:none">016 </span>2180 - 2200</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/S-Band" title="wikilink">S-Band</a> a/k/a(AWS-4)</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/S波段" title="wikilink">S波段高级无线服务</a>2000MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">024 </span><span id="LTE_Band_XXIV">XXIV</span> (24)</p></td>
<td><p><span style="display:none">011 </span>1626.5 - 1660.5</p></td>
<td><p><span style="display:none">010 </span>1525 - 1559</p></td>
<td><p>FDD</p></td>
<td><p>5, 10</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/L-Band" title="wikilink">L-Band</a>(<a href="https://zh.wikipedia.org/wiki/US" title="wikilink">US</a>)</p></td>
<td><p><a href="../Page/L波段.md" title="wikilink">L波段</a>1600MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">025 </span><span id="LTE_Band_XXV">XXV</span> (25)</p></td>
<td><p><span style="display:none">013 </span>1850 - 1915</p></td>
<td><p><span style="display:none">014 </span>1930 - 1995</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10, 15, 20</p></td>
<td><p>Extended PCS/EPCS A-G<br />
<em></em></p></td>
<td><p>扩展个人通讯服务1900MHz频带<br />
<span id="LTE_Band_II">II</span> (2) 扩展频段</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">026 </span><span id="LTE_Band_XXVI">XXVI</span> (26)</p></td>
<td><p><span style="display:none">005 </span>814 - 849</p></td>
<td><p><span style="display:none">005 </span>859 - 894</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10, 15, 20</p></td>
<td><p>Extended CLR/ECLR<br />
<em></em></p></td>
<td><p>扩展移动蜂窝网络850MHz频带<br />
<span id="LTE_Band_II">V</span> (5), <span id="LTE_Band_VI">VI</span> (6), <span id="LTE_Band_XVIII">XVIII</span> (18) 扩展频段</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">027 </span><span id="LTE_Band_XXVII">XXVII</span> (27)</p></td>
<td><p><span style="display:none">005 </span>807 - 824</p></td>
<td><p><span style="display:none">005 </span>852 - 869</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5, 10, 15</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/专业移动无线电" title="wikilink">SMR</a><br />
<em></em></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/专业移动无线电" title="wikilink">专业移动无线电</a>800MHz频带</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">028 </span><span id="LTE_Band_XXVIII">XXVIII</span> (28)</p></td>
<td><p><span style="display:none">005 </span>703 - 748</p></td>
<td><p><span style="display:none">005 </span>758 - 803</p></td>
<td><p>FDD</p></td>
<td><p>3, 5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/APAC" title="wikilink">APAC</a></p></td>
<td><p><a href="../Page/亚太地区.md" title="wikilink">亚太地区</a>700MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">029 </span><span id="LTE_Band_XXIX">XXIX</span> (29)</p></td>
<td><p><span style="display:none">005 </span>N/A</p></td>
<td><p><span style="display:none">005 </span>716 - 728</p></td>
<td><p>FDD</p></td>
<td><p>5, 10</p></td>
<td><p>Lower SMH/LSMH blocks D/E<br />
<em></em></p></td>
<td><p>美国700MHz频带D/E块<br />
额外的载波聚合下行工作频段</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">030 </span><span id="LTE_Band_XXX">XXX</span> (30)</p></td>
<td><p><span style="display:none">018 </span>2305 - 2315</p></td>
<td><p><span style="display:none">018 </span>2350 - 2360</p></td>
<td><p>FDD</p></td>
<td><p>5, 10</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/WCS" title="wikilink">WCS</a> blocks A/B</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/无线通讯服务" title="wikilink">无线通讯服务A</a>/B块2300MHz频带</p></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">031 </span><span id="LTE_Band_XXXI">XXXI</span> (31)</p></td>
<td><p>452.5 - 457.5</p></td>
<td><p>462.5 - 467.5</p></td>
<td><p>FDD</p></td>
<td><p>1.4, 3, 5</p></td>
<td></td>
<td><p>无线电450MHz频段</p></td>
</tr>
<tr class="even">
<td><p><span style="display:none">032 </span><span id="LTE_Band_XXXII">XXXII</span> (32)</p></td>
<td><p>N/A</p></td>
<td><p>1452 - 1496</p></td>
<td><p>FDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p>L-Band<br />
<em></em></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">033 </span><span id="LTE_Band_XXXIII">XXXIII</span> (33)</p></td>
<td><p><span style="display:none">016 </span>1900 - 1920</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p>Pre-IMT<br />
<em></em></p></td>
<td><p>国际移动通信系统2100MHz频带</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">034 </span><span id="LTE_Band_XXXIV">XXXIV</span> (34)</p></td>
<td><p><span style="display:none">020 </span>2010 - 2025</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15</p></td>
<td><p>IMT</p></td>
<td><p>国际移动通信系统2100MHz频带</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">035 </span><span id="LTE_Band_XXXV">XXXV</span> (35)</p></td>
<td><p><span style="display:none">014 </span>1850 - 1910</p></td>
<td><p>TDD</p></td>
<td><p>1.4, 3, 5, 10, 15, 20</p></td>
<td><p>PCS Uplink</p></td>
<td><p>个人通讯服务1900MHz上行频带</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">036 </span><span id="LTE_Band_XXXVI">XXXVI</span> (36)</p></td>
<td><p><span style="display:none">019 </span>1930 - 1990</p></td>
<td><p>TDD</p></td>
<td><p>1.4, 3, 5, 10, 15, 20</p></td>
<td><p>PCS Downlink</p></td>
<td><p>个人通讯服务1900MHz下行频带</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">037 </span><span id="LTE_Band_XXXVII">XXXVII</span> (37)</p></td>
<td><p><span style="display:none">017 </span>1910 - 1930</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p>PCS Duplex spacing</p></td>
<td><p>个人通讯服务1900MHz双工间隔频带</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">038 </span><span id="LTE_Band_XXXVIII">XXXVIII</span> (38)</p></td>
<td><p><span style="display:none">023 </span>2570 - 2620</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p>IMT-E<br />
<em></em></p></td>
<td><p>扩展国际移动通信系统2600MHz频带</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">039 </span><span id="LTE_Band_XXXIX">XXXIX</span> (39)</p></td>
<td><p><span style="display:none">015 </span>1880 - 1920</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p>DCS-IMT gap</p></td>
<td><p>DCS-IMT 1900MHz频带</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">040 </span><span id="LTE_Band_XL">XL</span> (40)</p></td>
<td><p><span style="display:none">021 </span>2300 - 2400</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">041 </span><span id="LTE_Band_XL">XLI</span> (41)</p></td>
<td><p><span style="display:none">021 </span>2496 - 2690</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/BRS" title="wikilink">BRS</a>/<a href="https://zh.wikipedia.org/wiki/EBS" title="wikilink">EBS</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/宽带广播服务" title="wikilink">宽带广播服务</a>/<a href="https://zh.wikipedia.org/wiki/教育宽带服务" title="wikilink">教育宽带服务</a>2500MHz频带</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">042 </span><span id="LTE_Band_XL">XLII</span> (42)</p></td>
<td><p><span style="display:none">021 </span>3400 - 3600</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td></td>
<td><p>TDD 3500MHz频带</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">043 </span><span id="LTE_Band_XL">XLIII</span> (43)</p></td>
<td><p><span style="display:none">021 </span>3600 - 3800</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td></td>
<td><p>TDD 3700MHz频带</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">044 </span><span id="LTE_Band_XLIV">XLIV</span> (44)</p></td>
<td><p><span style="display:none">002 </span>703 - 803</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p><a href="../Page/APT.md" title="wikilink">APT</a></p></td>
<td><p>亚太地区700MHz频带</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">045 </span><span id="LTE_Band_XLV">XLV</span> (45)</p></td>
<td><p><span style="display:none">002 </span>1447 - 1467</p></td>
<td><p>TDD</p></td>
<td><p>5, 10, 15, 20</p></td>
<td><p>L-Band(China)</p></td>
<td><p>中国L波段1400MHz频带</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">046 </span><span id="LTE_Band_XLVI">XLVI</span> (46)</p></td>
<td><p><span style="display:none">002 </span>5150 - 5925</p></td>
<td><p>TDD</p></td>
<td></td>
<td><p>U-NII</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span style="display:none">047 </span><span id="LTE_Band_XLVII">XLVII</span> (47)</p></td>
<td><p><span style="display:none">002 </span>5855 - 5925</p></td>
<td><p>TDD</p></td>
<td></td>
<td><p>U-NII-4 (V2X)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span style="display:none">048 </span><span id="LTE_Band_XLVII">XLVII</span> (48)</p></td>
<td><p><span style="display:none">002 </span>3550 - 3700</p></td>
<td><p>TDD</p></td>
<td></td>
<td><p>CBRS</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td></td>
<td><p><em></em><br />
<em></em></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td></td>
<td><p><em></em><br />
<em></em></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td></td>
<td><p><em></em><br />
<em></em></p></td>
<td></td>
</tr>
</tbody>
</table>

## 各地区的部署情况

下面的列表显示了标准化的LTE频段及其使用区域，主要的LTE频带以 **粗体** 显示。

  - **EUTRAN 工作频段号双工模式为FDD的 <span id="LTE_Band_I">I</span>(1), <span id="LTE_Band_III">III</span>(3), <span id="LTE_Band_VII">VII</span>(7), <span id="LTE_Band_XXVIII">XXVIII</span>(28)，双工模式为TDD的 <span id="LTE_Band_XXXVIII">XXXVIII</span>(38), <span id="LTE_Band_XL">XL</span>(40) 适用于ITU的 1, 2, 3 类地区未来进行国际漫游**
  - EUTRAN 工作频段号双工模式为FDD的 <span id="LTE_Band_VIII">VIII</span>(8) 长期来看未来可允许在ITU的 1, 2, 3 类地区进行国际漫游
  - EUTRAN 工作频段号双工模式为FDD的 <span id="LTE_Band_XX">XX</span>(20) 适合在ITU的1类(欧洲/中东/非洲)地区漫游
  - EUTRAN 工作频段号双工模式为FDD的 <span id="LTE_Band_II">II</span>(2), <span id="LTE_Band_IV">IV</span>(4) 适合在ITU的2类(美洲)地区漫游

<table>
<thead>
<tr class="header">
<th><p>EUTRAN<br />
工作频段号</p></th>
<th><p>频带(MHz)</p></th>
<th><p>通用名称</p></th>
<th><p>北美洲</p></th>
<th><p>拉丁美洲</p></th>
<th><p>欧洲</p></th>
<th><p>亚洲</p></th>
<th><p>非洲</p></th>
<th><p>大洋洲</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="LTE_Band_I">I</span> (1)</p></td>
<td><p>2100</p></td>
<td><p>IMT</p></td>
<td></td>
<td></td>
<td><p>瑞典(<a href="https://zh.wikipedia.org/wiki/Hutchison_3G" title="wikilink">3</a>)</p></td>
<td><p><br />
中国大陆（<a href="https://zh.wikipedia.org/wiki/中国联通" title="wikilink">中国联通</a>、<a href="https://zh.wikipedia.org/wiki/中国电信" title="wikilink">中国电信</a>）<br />
中華民國 （<a href="https://zh.wikipedia.org/wiki/中華電信" title="wikilink">中華電信</a>、<a href="../Page/台灣大哥大.md" title="wikilink">台灣大哥大</a>、<a href="../Page/遠傳電信.md" title="wikilink">遠傳電信</a>、<a href="../Page/台灣之星.md" title="wikilink">台灣之星</a>）</p></td>
<td><p>安哥拉(<a href="https://zh.wikipedia.org/wiki/Unitel" title="wikilink">Unitel</a>), 南非(<a href="https://zh.wikipedia.org/wiki/Cell_C" title="wikilink">Cell C</a>)</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_II">II</span> (2)</p></td>
<td><p>1900</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Personal_Communications_Service" title="wikilink">PCS</a> A-F</p></td>
<td><p>美国(<a href="https://zh.wikipedia.org/wiki/C_Spire" title="wikilink">C Spire</a>)</p></td>
<td><p>多明尼加共和国(<a href="https://zh.wikipedia.org/wiki/Tricom,_S.A" title="wikilink">Tricom</a>), 巴拉圭(<a href="https://zh.wikipedia.org/wiki/Telecom_Argentina" title="wikilink">Personal</a>)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span id="LTE_Band_III">III</span> (3)</strong></p></td>
<td><p><strong>1800</strong></p></td>
<td><p><strong>DCS</strong></p></td>
<td></td>
<td><p>多明尼加共和国(<a href="https://zh.wikipedia.org/wiki/Orange_(法國電信)" title="wikilink">Orange S.A.</a>), 委内瑞拉(<a href="https://zh.wikipedia.org/wiki/Digitel_GSM" title="wikilink">Digitel GSM</a>)</p></td>
<td></td>
<td><p>中华民国（<a href="https://zh.wikipedia.org/wiki/中华电信" title="wikilink">中华电信</a>、<a href="../Page/遠傳電信.md" title="wikilink">遠傳電信</a>、<a href="../Page/台灣大哥大.md" title="wikilink">台灣大哥大</a>）[16]<br />
中国大陆（<a href="https://zh.wikipedia.org/wiki/中国电信" title="wikilink">中国电信</a>、<a href="https://zh.wikipedia.org/wiki/中国联通" title="wikilink">中国联通</a>）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_IV">IV</span> (4)</p></td>
<td><p>1700</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/Advanced_Wireless_Services" title="wikilink">AWS</a> A-F</p></td>
<td><p>美国(<a href="../Page/AT&amp;T.md" title="wikilink">AT&amp;T</a>, <a href="../Page/T-Mobile.md" title="wikilink">T-Mobile</a>, <a href="https://zh.wikipedia.org/wiki/BendBroadband" title="wikilink">BendBroadband</a>, <a href="https://zh.wikipedia.org/wiki/Big_River_Telephone" title="wikilink">Big River Telephone</a>, <a href="https://zh.wikipedia.org/wiki/C_Spire" title="wikilink">C Spire</a>, <a href="https://zh.wikipedia.org/wiki/Leap" title="wikilink">Leap</a>, <a href="https://zh.wikipedia.org/wiki/Verizon" title="wikilink">Verizon</a>), 加拿大(<a href="https://zh.wikipedia.org/wiki/Bell" title="wikilink">Bell</a>, <a href="https://zh.wikipedia.org/wiki/Eastlink" title="wikilink">Eastlink</a>, <a href="https://zh.wikipedia.org/wiki/MTS" title="wikilink">MTS</a>, <a href="https://zh.wikipedia.org/wiki/Rogers" title="wikilink">Rogers</a>, <a href="https://zh.wikipedia.org/wiki/Telus" title="wikilink">Telus</a>, <a href="https://zh.wikipedia.org/wiki/SaskTel" title="wikilink">SaskTel</a>)</p></td>
<td><p>墨西哥(<a href="https://zh.wikipedia.org/wiki/Telcel" title="wikilink">Telcel</a>), 巴拉圭(<a href="https://zh.wikipedia.org/wiki/Copaco" title="wikilink">Copaco</a>), 乌拉圭(<a href="https://zh.wikipedia.org/wiki/Ancel" title="wikilink">Ancel</a>)<br />
, </p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_V">V</span> (5)</p></td>
<td><p>850</p></td>
<td><p>CLR</p></td>
<td></td>
<td></td>
<td></td>
<td><p>韩国(<a href="https://zh.wikipedia.org/wiki/LG_U+" title="wikilink">LG U+</a>, <a href="https://zh.wikipedia.org/wiki/SK_Telecom" title="wikilink">SK Telecom</a>)<br />
中国大陆（<a href="https://zh.wikipedia.org/wiki/中国电信" title="wikilink">中国电信</a>）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><strong><span id="LTE_Band_VII">VII</span> (7)</strong></p></td>
<td><p><strong>2600</strong></p></td>
<td><p><strong>IMT-E</strong></p></td>
<td><p>加拿大(<a href="https://zh.wikipedia.org/wiki/Bell" title="wikilink">Bell</a>, <a href="https://zh.wikipedia.org/wiki/Rogers" title="wikilink">Rogers</a>)</p></td>
<td><p>巴西(<a href="https://zh.wikipedia.org/wiki/Claro" title="wikilink">Claro</a>, <a href="https://zh.wikipedia.org/wiki/Oi" title="wikilink">Oi</a>, <a href="https://zh.wikipedia.org/wiki/TIM" title="wikilink">TIM</a>, <a href="../Page/Vivo.md" title="wikilink">Vivo</a>), 智利(<a href="https://zh.wikipedia.org/wiki/Claro" title="wikilink">Claro</a>), 哥伦比亚(<a href="https://zh.wikipedia.org/wiki/Une-EPM" title="wikilink">Une-EPM</a>), 哥斯达黎加(<a href="https://zh.wikipedia.org/wiki/ICE_Celular" title="wikilink">ICE Celular</a>)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_VIII">VIII</span> (8)</p></td>
<td><p>900</p></td>
<td><p>E-GSM</p></td>
<td></td>
<td></td>
<td><p>瑞典(<a href="https://zh.wikipedia.org/wiki/Net4Mobility" title="wikilink">Net4Mobility</a>)</p></td>
<td><p>韩国(<a href="https://zh.wikipedia.org/wiki/KT" title="wikilink">KT</a>)<br />
中华民国（<a href="https://zh.wikipedia.org/wiki/中华电信" title="wikilink">中华电信</a>、<a href="../Page/台灣之星.md" title="wikilink">台灣之星</a>、<a href="../Page/亞太電信.md" title="wikilink">亞太電信</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_IX">IX</span> (9)</p></td>
<td><p>1700</p></td>
<td><p>UMTS 1700</p></td>
<td></td>
<td></td>
<td></td>
<td><p>日本(<a href="https://zh.wikipedia.org/wiki/EMOBILE" title="wikilink">EMOBILE</a>)<br />
<em>(被 <span id="LTE_Band_III">III</span> (3) 取代)</em></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_X">X</span> (10)</p></td>
<td><p>1700</p></td>
<td><p>EAWS A-G</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XI">XI</span> (11)</p></td>
<td><p>1500</p></td>
<td><p>LPDC</p></td>
<td></td>
<td></td>
<td></td>
<td><p>日本(<a href="https://zh.wikipedia.org/wiki/au_(mobile_phone_company)" title="wikilink">au</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XII">XII</span> (12)</p></td>
<td><p>700</p></td>
<td><p>LSMH A/B/C</p></td>
<td><p>美国(部分地区)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XIII">XIII</span> (13)</p></td>
<td><p>700</p></td>
<td><p>USMH C</p></td>
<td><p>美国(<a href="https://zh.wikipedia.org/wiki/Verizon" title="wikilink">Verizon</a>)</p></td>
<td><p>玻利维亚(<a href="https://zh.wikipedia.org/wiki/Entel_Bolivia" title="wikilink">Entel Bolivia</a>)</p></td>
<td></td>
<td><p>乌兹别克斯坦(<a href="https://zh.wikipedia.org/wiki/TeliaSonera" title="wikilink">UCell</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XIV">XIV</span> (14)</p></td>
<td><p>700</p></td>
<td><p>USMH D</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XVII">XVII</span> (17)</p></td>
<td><p>700</p></td>
<td><p>LSMH B/C</p></td>
<td><p>美国(<a href="https://zh.wikipedia.org/wiki/AT&amp;T_Mobility" title="wikilink">AT&amp;T</a>)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XVIII">XVIII</span> (18)</p></td>
<td><p>850</p></td>
<td><p>Japan Lower 800</p></td>
<td></td>
<td></td>
<td></td>
<td><p>日本(<a href="https://zh.wikipedia.org/wiki/au" title="wikilink">au</a>)<br />
<em>(被 <span id="LTE_Band_XXVI">XXVI</span> (26) 取代)</em></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XVIII">XIX</span> (19)</p></td>
<td><p>850</p></td>
<td><p>Japan Upper 800</p></td>
<td></td>
<td></td>
<td></td>
<td><p>日本(<a href="https://zh.wikipedia.org/wiki/NTT_DoCoMo" title="wikilink">NTT DoCoMo</a>)<br />
<em>(被 <span id="LTE_Band_XXVI">XXVI</span> (26) 取代)</em></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XX">XX</span> (20)</p></td>
<td><p>800</p></td>
<td><p>EUDD</p></td>
<td></td>
<td></td>
<td></td>
<td><p>卡塔尔(<a href="https://zh.wikipedia.org/wiki/ooredoo" title="wikilink">ooredoo</a>)</p></td>
<td><p>坦桑尼亚(<a href="../Page/Smile.md" title="wikilink">Smile</a>), 乌干达(<a href="https://zh.wikipedia.org/wiki/Orange_(法國電信)" title="wikilink">Orange S.A.</a>, <a href="../Page/Smile.md" title="wikilink">Smile</a>)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXI">XXI</span> (21)</p></td>
<td><p>1500</p></td>
<td><p>UPDC</p></td>
<td></td>
<td></td>
<td></td>
<td><p>日本(<a href="https://zh.wikipedia.org/wiki/NTT_DoCoMo" title="wikilink">NTT DoCoMo</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXII">XXII</span> (22)</p></td>
<td><p>3500</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXIII">XXIII</span> (23)</p></td>
<td><p>2000</p></td>
<td><p>S-Band</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXIV">XXIV</span> (24)</p></td>
<td><p>1600</p></td>
<td><p>L-Band</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXV">XXV</span> (25)</p></td>
<td><p>1900</p></td>
<td><p>EPCS A-G</p></td>
<td><p>美国(<a href="../Page/Sprint.md" title="wikilink">Sprint</a>)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXVI">XXVI</span> (26)</p></td>
<td><p>850</p></td>
<td><p>ECLR</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXVII">XXVII</span> (27)</p></td>
<td><p>800</p></td>
<td><p>SMR</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXVIII">XXVIII</span> (28)</p></td>
<td><p>700</p></td>
<td><p>APAC</p></td>
<td></td>
<td></td>
<td></td>
<td><p>中华民国（<a href="https://zh.wikipedia.org/wiki/远传电信" title="wikilink">远传电信</a>）<br />
</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXIX">XXIX</span> (29)</p></td>
<td><p>800</p></td>
<td><p>LSMH D/E</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXX">XXX</span> (30)</p></td>
<td><p>2300</p></td>
<td><p>WCS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em></em></p></td>
<td></td>
<td></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
<td><p><em></em></p></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXXIII">XXXIII</span> (33)</p></td>
<td><p>TDD 2100</p></td>
<td><p>IMT</p></td>
<td></td>
<td></td>
<td><p>{</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXXIV">XXXIV</span> (34)</p></td>
<td><p>TDD 2100</p></td>
<td><p>IMT</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXXV">XXXV</span> (35)</p></td>
<td><p>TDD 1900</p></td>
<td><p>PCS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXXVI">XXXVI</span> (36)</p></td>
<td><p>TDD 1900</p></td>
<td><p>PCS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXXVII">XXXVII</span> (37)</p></td>
<td><p>TDD 1900</p></td>
<td><p>PCS</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XXXVIII">XXXVIII</span> (38)</p></td>
<td><p>TDD 2600</p></td>
<td><p>IMT-E</p></td>
<td></td>
<td></td>
<td></td>
<td><p>中国大陆(<a href="https://zh.wikipedia.org/wiki/中国移动" title="wikilink">中国移动</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XXXIX">XXXIX</span> (39)</p></td>
<td><p>TDD 1900</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>中国大陆(<a href="https://zh.wikipedia.org/wiki/中国移动" title="wikilink">中国移动</a>)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XL">XL</span> (40)</p></td>
<td><p>TDD 2300</p></td>
<td><p>IMT-2000</p></td>
<td></td>
<td></td>
<td></td>
<td><p>中国大陆（<a href="https://zh.wikipedia.org/wiki/中国移动" title="wikilink">中国移动</a>、<a href="https://zh.wikipedia.org/wiki/中国联通" title="wikilink">中国联通</a>、<a href="https://zh.wikipedia.org/wiki/中国电信" title="wikilink">中国电信</a>）</p></td>
<td><p>{</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XL">XLI</span> (41)</p></td>
<td><p>TDD 2500</p></td>
<td><p>BRS/EBS</p></td>
<td></td>
<td></td>
<td></td>
<td><p>中国大陆（<a href="https://zh.wikipedia.org/wiki/中国移动" title="wikilink">中国移动</a>、<a href="https://zh.wikipedia.org/wiki/中国联通" title="wikilink">中国联通</a>、<a href="https://zh.wikipedia.org/wiki/中国电信" title="wikilink">中国电信</a>）</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XL">XLII</span> (42)</p></td>
<td><p>TDD 3500</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><span id="LTE_Band_XL">XLIII</span> (43)</p></td>
<td><p>TDD 3700</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><span id="LTE_Band_XLIV">XLIV</span> (44)</p></td>
<td><p>TDD 700</p></td>
<td><p>APAC</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 注釋

## 參見

  - [4G](../Page/4G.md "wikilink")
  - [電腦裝置頻寬列表](../Page/電腦裝置頻寬列表.md "wikilink")

## 外部連結

  - [3GPP UMTS Long Term Evolution page](https://web.archive.org/web/20081103101754/http://www.3gpp.org/Highlights/LTE/LTE.htm)

[Category:無線](https://zh.wikipedia.org/wiki/Category:無線 "wikilink")

1.  [3GPP UMTS Long Term Evolution page](http://www.3gpp.org/LTE)

2.  [3GPP TS 36.306 E-UTRA User Equipment radio access capabilities](http://ftp.3gpp.org/specs/html-info/36306.htm)

3.
4.  [3GPP TS 36.300 E-UTRA Overall description](http://ftp.3gpp.org/specs/html-info/36300.htm)

5.  [3GPP TS 36.201 E-UTRA: LTE physical layer; General description](http://ftp.3gpp.org/specs/html-info/36201.htm)

6.  [3GPP TS 36.321 E-UTRA: Access Control (MAC) protocol specification](http://ftp.3gpp.org/specs/html-info/36321.htm)

7.  [3GPP TS 36.322 E-UTRA: Radio Link Control (RLC) protocol specification](http://ftp.3gpp.org/specs/html-info/36322.htm)

8.  [3GPP TS 36.323 E-UTRA: Packet Data Convergence Protocol (PDCP) specification](http://ftp.3gpp.org/specs/html-info/36323.htm)

9.  [3GPP TS 36.331 E-UTRA: Radio Resource Control (RRC) protocol specification](http://ftp.3gpp.org/specs/html-info/36331.htm)

10. [3GPP TS 24.301 Non-Access-Stratum (NAS) protocol for Evolved Packet System (EPS); Stage 3](http://ftp.3gpp.org/specs/html-info/24301.htm)

11. [3GPP TS 36.211 E-UTRA Physical channels and modulation](http://ftp.3gpp.org/specs/html-info/36211.htm)

12.

13.
14. [3GPP LTE / LTE-A Standardization: Status and Overview of Technologie, slide 16](http://www.ict-samurai.eu/sites/www.ict-samurai.eu/files/documents/3GPP%20LTE-A%20Standardization.pdf)

15. [3GPP TS 36.101 E-UTRA: User Equipment (UE) radio transmission and reception](http://www.3gpp.org/ftp/Specs/html-info/36101.htm)

16. [中華電信4G LTE服務搶先開台第一 開創高速行動上網新紀元](http://www.cht.com.tw/aboutus/messages/msg-140529-123335.html)。