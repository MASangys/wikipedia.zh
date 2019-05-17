**Linux嵌入式开发环境**项目（Linux Embedded Development
Environment，**LEDE**），是路由器[韌體專案OpenWRT的一個](../Page/韌體.md "wikilink")[復刻分支專案](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")，並繼承原來[OpenWRT的開發目標](https://zh.wikipedia.org/wiki/OpenWRT "wikilink")。\[1\]\[2\]\[3\]\[4\]\[5\]2018年1月LEDE和[OpenWRT正式宣布合并](https://zh.wikipedia.org/wiki/OpenWRT "wikilink")，合并后的项目使用OpenWrt的名字、LEDE的源代码。\[6\]

## 歷史

原OpenWRT開發者社區，已經長時間沒有關鍵性更新以及對新裝置的支援，而關於這些的討論也遲遲未有結果，這使得一群OpenWRT核心貢獻者感到不滿。2016年5月，大部分原OpenWRT社區的核心開發組成員決定另立新專案，暫時以「Linux
Embedded Development
Environment」（Linux嵌入式開發環境）作爲專案名稱，一年後才正式以暫定名稱的縮寫LEDE定名。\[7\]LEDE的原始碼基本繼承原OpenWRT，但相應的開發者社區採用新的更具執行力的討論規定和決議流程。

2017年6月，LEDE社區和OpwnWRT社區均同意將原OpenWRT專案合併至LEDE專案之中。\[8\]LEDE專案的名號將不再使用，而是繼承原來OpenWRT的名號，但沿用LEDE社區的版規和流程規定。\[9\]\[10\]原始碼以LEDE專案為主線，以LEDE
17.x 爲基礎，將OpenWRT的原始碼逐步合併至LEDE Snapshot上，完成後將封存原OpenWRT的舊版本原始碼並不再維護（但最新的
15.05 CC
版仍然會獲得安全性更新），至2018年1月，原始碼已整合完成。\[11\]\[12\]對開發人員和使用者來說，一個明顯的標誌是，自2017年12月10日釋出的LEDE
Snapshot版本中，其[SSH登入歡迎資訊已經採用OpenWRT的標識](../Page/Secure_Shell.md "wikilink")。OpenWRT和LEDE的討論串、技術文檔等也在逐步合併中。

## 釋出版本

以下是LEDE釋出的正式版本（Release
Ver.），不包括滾動更新的Snapshot版本。與OpenWRT（v15.x）使用3.4.x版Linux內核不同的是，LEDE（v17.x）所使用的Linux內核都是較新的4.x版（以4.4.x以及4.9.x長期支援版為主）

<table>
<thead>
<tr class="header">
<th><p>釋出組建號</p></th>
<th><p>釋出日期</p></th>
<th><p>版本號[13]</p></th>
<th><p>備註</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>2017年2月22日</p></td>
<td><p>r3205</p></td>
<td><p>第一個正式版[14]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017年4月19日</p></td>
<td><p>r3316</p></td>
<td><p>更新Linux內核至v4.4.61，包括錯誤修復和功能改進[15]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017年6月12日</p></td>
<td><p>r3435</p></td>
<td><p>更新Linux內核至v4.4.71，安全性修復[16]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2017年10月3日</p></td>
<td><p>r3534</p></td>
<td><p>更新Linux內核至v4.4.89，安全性修復[17]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2017年10月18日</p></td>
<td><p>r3560</p></td>
<td><p>更新Linux內核至v4.4.92，安全性修復（包括<a href="https://zh.wikipedia.org/wiki/KRACK" title="wikilink">KRACK</a>，無論是作為<a href="https://zh.wikipedia.org/wiki/客户端" title="wikilink">客户端還是</a><a href="https://zh.wikipedia.org/wiki/伺服器" title="wikilink">伺服器</a>/<a href="https://zh.wikipedia.org/wiki/無線基地台" title="wikilink">基地台</a>）[18]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>2018年7月18日</p></td>
<td><p>r3919</p></td>
<td><p>更新Linux內核至v4.4.140，安全性修復[19]</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

至2017年12月，一共有845款[路由器](../Page/路由器.md "wikilink")（包括同一型號不同硬體版本）有LEDE的支援。\[20\]

## 參見

  - [客制路由器韌體清單](../Page/客制路由器韌體清單.md "wikilink")

## 参考文献

## 外部链结

  -
[Category:售後韌體](https://zh.wikipedia.org/wiki/Category:售後韌體 "wikilink")
[Category:嵌入式Linux發行版](https://zh.wikipedia.org/wiki/Category:嵌入式Linux發行版 "wikilink")
[Category:自由路由軟體](https://zh.wikipedia.org/wiki/Category:自由路由軟體 "wikilink")
[Category:自製軟體](https://zh.wikipedia.org/wiki/Category:自製軟體 "wikilink")
[Category:Wi-Fi](https://zh.wikipedia.org/wiki/Category:Wi-Fi "wikilink")

1.

2.

3.

4.

5.

6.  <https://www.solidot.org/story?sid=55108>

7.

8.

9.
10.

11.

12.

13. <https://lede-project.org/releases/start> LEDE Release Builds

14.

15.

16.

17.

18.

19.

20.