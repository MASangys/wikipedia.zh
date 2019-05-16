**CC-Link**是一個開放式架構的工業[現場總線協定](../Page/現場總線.md "wikilink")，允許不同廠商的設備依此協定進行通訊。主要用在製造產業中的機器控制或[程序控制中](https://zh.wikipedia.org/wiki/程序控制 "wikilink")，也使用在設備管理及[智能建築系統中](https://zh.wikipedia.org/wiki/智能建築 "wikilink")。

CC-Link是Control & Communication
Link的簡稱\[1\]，目前有CC-Link、CC-Link/LT、CC-Link
V2.0、CC-Link
Safety等4種專用的[通訊協定](https://zh.wikipedia.org/wiki/通訊協定 "wikilink")\[2\]。也有對應[工業乙太網的版本CC](https://zh.wikipedia.org/wiki/工業乙太網 "wikilink")-Link
IE\[3\]。

## 歷史及演進

在1996年11月以[三菱電機為主導的幾家公司推出了CC](https://zh.wikipedia.org/wiki/三菱電機 "wikilink")-Link\[4\]，是開放式架構的現場總線協定。在2000年三菱電機釋出了通訊協定的規範，因此CC-Link成為開放式的現場總線協定，同年也成立非盈利組織CLPA（CC-Link
Partner Association）管理及監督CC-Link的網路技術並且提供技術協助。

CC-Link相容的產品包括[工業電腦](https://zh.wikipedia.org/wiki/工業電腦 "wikilink")、[可程式控制器](https://zh.wikipedia.org/wiki/可程式控制器 "wikilink")、[機械人](https://zh.wikipedia.org/wiki/機械人 "wikilink")、[伺服驅動器](https://zh.wikipedia.org/wiki/伺服驅動器 "wikilink")、[變頻器](https://zh.wikipedia.org/wiki/變頻器 "wikilink")、[液壓閥](https://zh.wikipedia.org/wiki/液壓閥 "wikilink")、[類比或](../Page/類比.md "wikilink")[數位輸入輸出模組](https://zh.wikipedia.org/wiki/數位 "wikilink")、[溫度控制器及](https://zh.wikipedia.org/wiki/溫度控制器 "wikilink")[流量控制器等](https://zh.wikipedia.org/wiki/流量控制器 "wikilink")。2009年8月時，CLPA的成員已超過1000個，和CC-Link相容的產品也已超過1000種\[5\]。2010年12月時，CC-Link網路上的設備已經超過7百萬個\[6\]。

## 特點

CC-Link已通過[國際標準化組織](../Page/國際標準化組織.md "wikilink")（[ISO](https://zh.wikipedia.org/wiki/ISO "wikilink")）、國際半導體和材料（[SEMI](https://zh.wikipedia.org/wiki/SEMI "wikilink")）、[中華人民共和國國家標準](https://zh.wikipedia.org/wiki/中華人民共和國國家標準 "wikilink")（[GBT](https://zh.wikipedia.org/wiki/GBT "wikilink")）、和[國際電工委員會](https://zh.wikipedia.org/wiki/國際電工委員會 "wikilink")（[IEC](https://zh.wikipedia.org/wiki/IEC "wikilink")）等安全標準。

CC-Link採用廣播輪詢的方式通訊，主站依照各從站的編號輪詢各從站，從站再回應，不會有通訊衝突的問題。

CC-Link具有獨特的RAS功能（[可靠性、可用性和可維護性](https://zh.wikipedia.org/wiki/可靠性、可用性和可維護性 "wikilink")），如從站通訊異常時，可自動切掉該從站的通訊而不影響其他從站的工作，從站恢復正常時也可自動恢復從站通訊功能，不需額外的組態設定。在系統組態時也可以針對未來可能用到的設備進行站預約功能，當設備連上網路時，CC-Link可自動識別，不需重新進行組態\[7\]。

CC-Link的資料元件分為以下四種：

  - 遠程輸入（RX）：是從從站輸入給主站的位元訊號，整個CC-Link網路中最多可以有2048點的RX，一個CC-Link的站最多可以有32點的RX。
  - 遠程輸出（RY）：是從主站輸出給從站的位元訊號，整個CC-Link網路中最多可以有2048點的RY，一個CC-Link的站最多可以有32點的RY。
  - 遠程暫存器輸出（RWw）：是從主站輸出給從站的字元組（16個位元）訊號，整個CC-Link網路中最多可以有256點的RWw，一個CC-Link的站最多可以有4點的RWw。
  - 遠程暫存器輸入（RWr）：是從從站輸入給主站的字元組（16個位元）訊號，整個CC-Link網路中最多可以有256點的RWr，一個CC-Link的站最多可以有4點的RWr。

每個站所允許的資料數量都有其上限，一個設備一般會定義成一個站，但若有需要時，也可以定義為二個、三個或四個站，一個設備的資料數量最多可以是如上述限制值的四倍\[8\]。

以下是幾種CC-Link協定的特點：

CC-Link：

  - 網路傳輸速度10 Mbit/s。
  - 實體層採用[RS-485](https://zh.wikipedia.org/wiki/RS-485 "wikilink")，無中繼器時網路長度可到1.2公里，若有中繼器時網路長度可到13.2公里。
  - 每個網路可以有64個設備。
  - 更新65個輸入/輸出資料的時間只需3.9[微秒](https://zh.wikipedia.org/wiki/微秒 "wikilink")（更新時間和網路長度有關）。
  - 主站/從站（Master/Slave）的網路架構，但允許[浮動主站](https://zh.wikipedia.org/wiki/浮動主站 "wikilink")（Floating
    Master）及設備[熱插拔](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")（hot
    swap）。

CC-Link LT：

  - 網路傳輸速度2.5 Mbit/s。
  - 網路主幹長度最大500公尺，網路允許有分支，網路下接长度（drop length）可到200公尺。
  - 每個網路可以有64個設備。
  - 更新65個輸入/輸出資料的時間只需1.2[微秒](https://zh.wikipedia.org/wiki/微秒 "wikilink")（更新時間和網路長度有關）。

CC-Link IE

  - 雙冗餘的光纖乙太網網路，傳輸速度1Gbit/s。
  - 每個網路可以有120個設備。
  - 若使用多模光纖，設備間網路線長可達550公尺，網路總長達6600公尺。<ref>

</ref>

## 資料傳輸

### 主站頁框傳輸模式

標準主站頁框（最大長度930位元組）

<table width="720" height="102" border="0">

<tr bordercolor="#333333">

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

A
1

</td>

<td width="10" bgcolor="#CCCCCC">

A
2

</td>

<td width="10" bgcolor="#CCCCCC">

ST1

</td>

<td width="10" bgcolor="#CCCCCC">

ST2

</td>

<td bgcolor="#000033">

<div align="center">

<font color="#FFFFFF">資料（最多918位元組）</font>

</div>

</td>

<td width="10" bgcolor="#CCCCCC">

CRC

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

</tr>

</table>

主站傳輸（有暫態訊息的最大長度）

<table width="720" height="102" border="0">

<tr bordercolor="#333333">

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

A
1

</td>

<td width="10" bgcolor="#CCCCCC">

A
2

</td>

<td width="10" bgcolor="#CCCCCC">

ST1

</td>

<td width="10" bgcolor="#CCCCCC">

ST2

</td>

<td width="150" bgcolor="#0066CC">

<div align="center">

<font color="#FFFFFF">RY
（最多256位元組）</font>

</div>

</td>

<td width="300" bgcolor="#006633">

<div align="center">

<font color="#FFFFFF">RWw
（最多512位元組）</font>

</div>

</td>

<td width="150" bgcolor="#CCCC00">

<div align="center">

訊息
（最多150位元組）

</div>

</td>

<td width="10" bgcolor="#CCCCCC">

CRC

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

</tr>

</table>

主站傳輸（沒有暫態訊息的最大長度）

<table width="560" height="102" border="0">

<tr bordercolor="#333333">

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

A
1

</td>

<td width="10" bgcolor="#CCCCCC">

A
2

</td>

<td width="10" bgcolor="#CCCCCC">

ST1

</td>

<td width="10" bgcolor="#CCCCCC">

ST2

</td>

<td width="150" bgcolor="#0066CC">

<div align="center">

<font color="#FFFFFF">RY
（最多256位元組）</font>

</div>

</td>

<td width="300" bgcolor="#006633">

<div align="center">

<font color="#FFFFFF">RWw
（最多512位元組）</font>

</div>

</td>

<td width="10" bgcolor="#CCCCCC">

CRC

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

</tr>

</table>

### 從站頁框傳輸模式

標準從站頁框

<table width="260" height="102" border="0">

<tr bordercolor="#333333">

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

A
1

</td>

<td width="10" bgcolor="#CCCCCC">

A
2

</td>

<td width="10" bgcolor="#CCCCCC">

ST 1

</td>

<td width="10" bgcolor="#CCCCCC">

ST2

</td>

<td width="150" bgcolor="#0066CC">

<div align="center">

<font color="#FFFFFF">DATA</font>

</div>

</td>

<td width="10" bgcolor="#CCCCCC">

CRC

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

</tr>

</table>

從站傳輸（有暫態訊息的最大長度）

<table width="720" height="102" border="0">

<tr bordercolor="#333333">

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

A
1

</td>

<td width="10" bgcolor="#CCCCCC">

A
2

</td>

<td width="10" bgcolor="#CCCCCC">

ST 1

</td>

<td width="10" bgcolor="#CCCCCC">

ST2

</td>

<td width="150" bgcolor="#0066CC">

<div align="center">

<font color="#FFFFFF">RX
（最多16位元組）</font>

</div>

</td>

<td width="300" bgcolor="#006633">

<div align="center">

<font color="#FFFFFF">RWr
（最多32位元組）</font>

</div>

</td>

<td width="150" bgcolor="#CCCC00">

<div align="center">

訊息
(MAX 34 bytes)

</div>

</td>

<td width="10" bgcolor="#CCCCCC">

CRC

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

</tr>

</table>

從站傳輸（沒有暫態訊息的最大長度）

<table width="720" height="102" border="0">

<tr bordercolor="#333333">

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

A
1

</td>

<td width="10" bgcolor="#CCCCCC">

A
2

</td>

<td width="10" bgcolor="#CCCCCC">

ST 1

</td>

<td width="10" bgcolor="#CCCCCC">

ST2

</td>

<td width="150" bgcolor="#0066CC">

<div align="center">

<font color="#FFFFFF">RX
（最多16位元組）</font>

</div>

</td>

<td width="300" bgcolor="#006633">

<div align="center">

<font color="#FFFFFF">RWr
（最多32位元組）</font>

</div>

</td>

<td width="10" bgcolor="#CCCCCC">

CRC

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

<td width="10" bgcolor="#CCCCCC">

F

</td>

</tr>

</table>

## 相容性測試

CC-Link的相容性測試是由CLPA所執行。相容性測試不是強制性的測試，不過藉由CC-Link的相容性測試可以確保不同設備商所提供的CC-Link設備符合嚴格的CC-Link技術規範，包括電磁相容性及反應時間。

CLPA在美國、中國、日本、南韓及德國都有相容性測試測試實驗室，設備商可委託其中一個實驗室進行相容性測試。

## 參考資料

## 外部連結

  - [日本CC-Link協會](http://www.cc-link.org/jp/topics/001020.html)

  - [台灣CC-Link協會](http://www.cc-link.org.tw/index.asp)

  - [中國CC-Link協會](https://web.archive.org/web/20101224140757/http://www.cc-link.org.cn/)

  - [CLPA Europe](http://www.clpa-europe.com)

  - [SEMI E54.12-0701E (Reapproved 1106) - Specification for
    Sensor/Actuator Network Communications for
    CC-Link](http://downloads.semi.org/downloads.nsf/standard?openform&did=927F5190B88E0232882574580047F3B1)

[Category:自動控制](https://zh.wikipedia.org/wiki/Category:自動控制 "wikilink")
[Category:工業自動化](https://zh.wikipedia.org/wiki/Category:工業自動化 "wikilink")

1.

2.
3.

4.

5.

6.

7.
8.