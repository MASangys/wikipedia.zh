**ASCII**（ \[1\]，**A**merican **S**tandard **C**ode for **I**nformation
**I**nterchange，**美国信息交换标准代码**）是基于[拉丁字母的一套](../Page/拉丁字母.md "wikilink")[电脑](../Page/电脑.md "wikilink")[编码系统](../Page/编码.md "wikilink")。它主要用于显示[现代英语](../Page/现代英语.md "wikilink")，而其擴展版本[EASCII則可以部分支持其他](../Page/EASCII.md "wikilink")[西欧](../Page/西欧.md "wikilink")[语言](../Page/语言.md "wikilink")，并等同于国际标准**[ISO/IEC
646](../Page/ISO/IEC_646.md "wikilink")**。
[USASCII_code_chart.png](https://zh.wikipedia.org/wiki/File:USASCII_code_chart.png "fig:USASCII_code_chart.png")

ASCII第一次以規範標準的型態發表是在1967年，最後一次更新則是在1986年，至今為止共定義了128個字元；其中33個字元無法顯示（一些终端提供了扩展，使得这些字符可顯示为諸如笑臉、[撲克牌花式等](../Page/撲克牌.md "wikilink")8-bit符號），且這33個字元多數都已是陳廢的[控制字元](../Page/控制字元.md "wikilink")。控制字元的用途主要是用來操控已經處理過的文字。在33個字元之外的是95個可顯示的字元。用[鍵盤敲下空白鍵所產生的空白字元也算](../Page/鍵盤.md "wikilink")1個可顯示字元（顯示為空白）。

## 控制字符

說明：

  - [Unicode表示法](../Page/Unicode.md "wikilink")：當我們想在畫面或紙張上表示這些控制字元時，就會顯示成這個樣子。過於老舊的系統或瀏覽器可能會看不到。使用微軟任一中文輸入法，輸入\`U2400即可看到␀，輸入\`U2401可看到␁，依此類推。
  - [脫出字元表示法](../Page/脫出字元.md "wikilink")：通常用於[終端機連線](../Page/終端機.md "wikilink")（例如[Telnet通訊協定](../Page/Telnet.md "wikilink")），以脫出字元^開頭，再接一個符號，用來讓這些控制字元得以在畫面上顯現。雖然看起來是兩個字元，但在終端機上實際只有一個字元。在絕大部分的終端機系統中，包括[Windows的](../Page/Windows.md "wikilink")[命令提示字元](../Page/命令提示字元.md "wikilink")（cmd.exe）、[Linux和](../Page/Linux.md "wikilink")[FreeBSD](../Page/FreeBSD.md "wikilink")，都可用代表脫出字元，輸入想要的ASCII控制字元。例如想輸入空字符，就要輸入+，而非，後者會顯示成兩字元，前者只會顯示成一字元。

<table>
<thead>
<tr class="header">
<th><p><a href="../Page/二进制.md" title="wikilink">二进制</a></p></th>
<th><p><a href="../Page/十进制.md" title="wikilink">十进制</a></p></th>
<th><p><a href="../Page/十六进制.md" title="wikilink">十六进制</a></p></th>
<th><p><a href="../Page/缩写.md" title="wikilink">缩写</a></p></th>
<th><p><a href="../Page/Unicode.md" title="wikilink">Unicode</a><br />
表示法</p></th>
<th><p><a href="../Page/脫出字元.md" title="wikilink">脫出字元</a><br />
表示法</p></th>
<th><p>名称／意义</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0000 0000</p></td>
<td><p><a href="../Page/0.md" title="wikilink">0</a></p></td>
<td><p>00</p></td>
<td><p>NUL</p></td>
<td><p>␀</p></td>
<td><p>^@</p></td>
<td><p><a href="../Page/空字符.md" title="wikilink">空字符</a>（<a href="../Page/Null.md" title="wikilink">Null</a>）</p></td>
</tr>
<tr class="even">
<td><p>0000 0001</p></td>
<td><p><a href="../Page/1.md" title="wikilink">1</a></p></td>
<td><p>01</p></td>
<td><p>SOH</p></td>
<td><p>␁</p></td>
<td><p>^A</p></td>
<td><p><a href="../Page/标题开始.md" title="wikilink">标题开始</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 0010</p></td>
<td><p><a href="../Page/2.md" title="wikilink">2</a></p></td>
<td><p>02</p></td>
<td><p>STX</p></td>
<td><p>␂</p></td>
<td><p>^B</p></td>
<td><p><a href="../Page/本文开始.md" title="wikilink">本文开始</a></p></td>
</tr>
<tr class="even">
<td><p>0000 0011</p></td>
<td><p><a href="../Page/3.md" title="wikilink">3</a></p></td>
<td><p>03</p></td>
<td><p>ETX</p></td>
<td><p>␃</p></td>
<td><p>^C</p></td>
<td><p><a href="../Page/本文结束.md" title="wikilink">本文结束</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 0100</p></td>
<td><p><a href="../Page/4.md" title="wikilink">4</a></p></td>
<td><p>04</p></td>
<td><p>EOT</p></td>
<td><p>␄</p></td>
<td><p>^D</p></td>
<td><p><a href="../Page/傳輸结束.md" title="wikilink">傳輸结束</a></p></td>
</tr>
<tr class="even">
<td><p>0000 0101</p></td>
<td><p><a href="../Page/5.md" title="wikilink">5</a></p></td>
<td><p>05</p></td>
<td><p>ENQ</p></td>
<td><p>␅</p></td>
<td><p>^E</p></td>
<td><p><a href="../Page/请求.md" title="wikilink">请求</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 0110</p></td>
<td><p><a href="../Page/6.md" title="wikilink">6</a></p></td>
<td><p>06</p></td>
<td><p>ACK</p></td>
<td><p>␆</p></td>
<td><p>^F</p></td>
<td><p><a href="../Page/確認回應.md" title="wikilink">確認回應</a></p></td>
</tr>
<tr class="even">
<td><p>0000 0111</p></td>
<td><p><a href="../Page/7.md" title="wikilink">7</a></p></td>
<td><p>07</p></td>
<td><p>BEL</p></td>
<td><p>␇</p></td>
<td><p>^G</p></td>
<td><p><a href="../Page/响铃.md" title="wikilink">响铃</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 1000</p></td>
<td><p><a href="../Page/8.md" title="wikilink">8</a></p></td>
<td><p>08</p></td>
<td><p>BS</p></td>
<td><p>␈</p></td>
<td><p>^H</p></td>
<td><p><a href="../Page/退格鍵.md" title="wikilink">退格</a></p></td>
</tr>
<tr class="even">
<td><p>0000 1001</p></td>
<td><p><a href="../Page/9.md" title="wikilink">9</a></p></td>
<td><p>09</p></td>
<td><p>HT</p></td>
<td><p>␉</p></td>
<td><p>^I</p></td>
<td><p><a href="../Page/制表键.md" title="wikilink">水平定位符號</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 1010</p></td>
<td><p><a href="../Page/10.md" title="wikilink">10</a></p></td>
<td><p>0A</p></td>
<td><p>LF</p></td>
<td><p>␊</p></td>
<td><p>^J</p></td>
<td><p><a href="../Page/換行.md" title="wikilink">换行键</a></p></td>
</tr>
<tr class="even">
<td><p>0000 1011</p></td>
<td><p><a href="../Page/11.md" title="wikilink">11</a></p></td>
<td><p>0B</p></td>
<td><p>VT</p></td>
<td><p>␋</p></td>
<td><p>^K</p></td>
<td><p><a href="../Page/垂直.md" title="wikilink">垂直</a><a href="../Page/定位符號.md" title="wikilink">定位符號</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 1100</p></td>
<td><p><a href="../Page/12.md" title="wikilink">12</a></p></td>
<td><p>0C</p></td>
<td><p>FF</p></td>
<td><p>␌</p></td>
<td><p>^L</p></td>
<td><p><a href="../Page/换页键.md" title="wikilink">换页键</a></p></td>
</tr>
<tr class="even">
<td><p>0000 1101</p></td>
<td><p><a href="../Page/13.md" title="wikilink">13</a></p></td>
<td><p>0D</p></td>
<td><p>CR</p></td>
<td><p>␍</p></td>
<td><p>^M</p></td>
<td><p><a href="../Page/CR_(字元).md" title="wikilink">CR (字元)</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 1110</p></td>
<td><p><a href="../Page/14.md" title="wikilink">14</a></p></td>
<td><p>0E</p></td>
<td><p>SO</p></td>
<td><p>␎</p></td>
<td><p>^N</p></td>
<td><p><a href="../Page/取消變换.md" title="wikilink">取消變换</a>（Shift out）</p></td>
</tr>
<tr class="even">
<td><p>0000 1111</p></td>
<td><p><a href="../Page/15.md" title="wikilink">15</a></p></td>
<td><p>0F</p></td>
<td><p>SI</p></td>
<td><p>␏</p></td>
<td><p>^O</p></td>
<td><p><a href="../Page/启用變换.md" title="wikilink">启用變换</a>（Shift in）</p></td>
</tr>
<tr class="odd">
<td><p>0001 0000</p></td>
<td><p><a href="../Page/16.md" title="wikilink">16</a></p></td>
<td><p>10</p></td>
<td><p>DLE</p></td>
<td><p>␐</p></td>
<td><p>^P</p></td>
<td><p><a href="../Page/跳出数据通讯.md" title="wikilink">跳出数据通讯</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0001</p></td>
<td><p><a href="../Page/17.md" title="wikilink">17</a></p></td>
<td><p>11</p></td>
<td><p>DC1</p></td>
<td><p>␑</p></td>
<td><p>^Q</p></td>
<td><p><a href="../Page/設備控制.md" title="wikilink">設備控制一</a>（<a href="../Page/XON.md" title="wikilink">XON</a> <a href="../Page/啟用軟體速度控制.md" title="wikilink">啟用軟體速度控制</a>）</p></td>
</tr>
<tr class="odd">
<td><p>0001 0010</p></td>
<td><p><a href="../Page/18.md" title="wikilink">18</a></p></td>
<td><p>12</p></td>
<td><p>DC2</p></td>
<td><p>␒</p></td>
<td><p>^R</p></td>
<td><p><a href="../Page/設備控制.md" title="wikilink">設備控制二</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0011</p></td>
<td><p><a href="../Page/19.md" title="wikilink">19</a></p></td>
<td><p>13</p></td>
<td><p>DC3</p></td>
<td><p>␓</p></td>
<td><p>^S</p></td>
<td><p><a href="../Page/設備控制.md" title="wikilink">設備控制三</a>（<a href="../Page/XOFF.md" title="wikilink">XOFF</a> <a href="../Page/停用軟體速度控制.md" title="wikilink">停用軟體速度控制</a>）</p></td>
</tr>
<tr class="odd">
<td><p>0001 0100</p></td>
<td><p><a href="../Page/20.md" title="wikilink">20</a></p></td>
<td><p>14</p></td>
<td><p>DC4</p></td>
<td><p>␔</p></td>
<td><p>^T</p></td>
<td><p><a href="../Page/設備控制.md" title="wikilink">設備控制四</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0101</p></td>
<td><p><a href="../Page/21.md" title="wikilink">21</a></p></td>
<td><p>15</p></td>
<td><p>NAK</p></td>
<td><p>␕</p></td>
<td><p>^U</p></td>
<td><p><a href="../Page/確認失敗回應.md" title="wikilink">確認失敗回應</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 0110</p></td>
<td><p><a href="../Page/22.md" title="wikilink">22</a></p></td>
<td><p>16</p></td>
<td><p>SYN</p></td>
<td><p>␖</p></td>
<td><p>^V</p></td>
<td><p><a href="../Page/同步用暫停.md" title="wikilink">同步用暫停</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0111</p></td>
<td><p><a href="../Page/23.md" title="wikilink">23</a></p></td>
<td><p>17</p></td>
<td><p>ETB</p></td>
<td><p>␗</p></td>
<td><p>^W</p></td>
<td><p><a href="../Page/區塊傳輸结束.md" title="wikilink">區塊傳輸结束</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1000</p></td>
<td><p><a href="../Page/24.md" title="wikilink">24</a></p></td>
<td><p>18</p></td>
<td><p>CAN</p></td>
<td><p>␘</p></td>
<td><p>^X</p></td>
<td><p><a href="../Page/取消.md" title="wikilink">取消</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1001</p></td>
<td><p><a href="../Page/25.md" title="wikilink">25</a></p></td>
<td><p>19</p></td>
<td><p>EM</p></td>
<td><p>␙</p></td>
<td><p>^Y</p></td>
<td><p><a href="../Page/連線介质中断.md" title="wikilink">連線介质中断</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1010</p></td>
<td><p><a href="../Page/26.md" title="wikilink">26</a></p></td>
<td><p>1A</p></td>
<td><p>SUB</p></td>
<td><p>␚</p></td>
<td><p>^Z</p></td>
<td><p><a href="../Page/替換.md" title="wikilink">替換</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1011</p></td>
<td><p><a href="../Page/27.md" title="wikilink">27</a></p></td>
<td><p>1B</p></td>
<td><p>ESC</p></td>
<td><p>␛</p></td>
<td><p>^[</p></td>
<td><p><a href="../Page/退出键.md" title="wikilink">退出键</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1100</p></td>
<td><p><a href="../Page/28.md" title="wikilink">28</a></p></td>
<td><p>1C</p></td>
<td><p>FS</p></td>
<td><p>␜</p></td>
<td><p>^\</p></td>
<td><p><a href="../Page/文件分割符.md" title="wikilink">文件分割符</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1101</p></td>
<td><p><a href="../Page/29.md" title="wikilink">29</a></p></td>
<td><p>1D</p></td>
<td><p>GS</p></td>
<td><p>␝</p></td>
<td><p>^]</p></td>
<td><p><a href="../Page/群組分隔符.md" title="wikilink">群組分隔符</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1110</p></td>
<td><p><a href="../Page/30.md" title="wikilink">30</a></p></td>
<td><p>1E</p></td>
<td><p>RS</p></td>
<td><p>␞</p></td>
<td><p>^^</p></td>
<td><p><a href="../Page/记录分隔符.md" title="wikilink">记录分隔符</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1111</p></td>
<td><p><a href="../Page/31.md" title="wikilink">31</a></p></td>
<td><p>1F</p></td>
<td><p>US</p></td>
<td><p>␟</p></td>
<td><p>^_</p></td>
<td><p><a href="../Page/单元分隔符.md" title="wikilink">单元分隔符</a></p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>0111 1111</p></td>
<td><p><a href="../Page/127.md" title="wikilink">127</a></p></td>
<td><p>7F</p></td>
<td><p>DEL</p></td>
<td><p>␡</p></td>
<td><p>^?</p></td>
<td><p><a href="../Page/删除.md" title="wikilink">删除</a></p></td>
</tr>
</tbody>
</table>

## 可显示字符

| [二进制](../Page/二进制.md "wikilink") | [十进制](../Page/十进制.md "wikilink") | [十六进制](../Page/十六进制.md "wikilink") | [图形](../Page/图形.md "wikilink")      |
| -------------------------------- | -------------------------------- | ---------------------------------- | ----------------------------------- |
| 0010 0000                        | [32](../Page/32.md "wikilink")   | 20                                 | ([space](../Page/空格.md "wikilink")) |
| 0010 0001                        | [33](../Page/33.md "wikilink")   | 21                                 | [\!](../Page/驚嘆號.md "wikilink")     |
| 0010 0010                        | [34](../Page/34.md "wikilink")   | 22                                 | ["](../Page/雙引號.md "wikilink")      |
| 0010 0011                        | [35](../Page/35.md "wikilink")   | 23                                 | [\#](../Page/井号.md "wikilink")      |
| 0010 0100                        | [36](../Page/36.md "wikilink")   | 24                                 | [$](../Page/$.md "wikilink")        |
| 0010 0101                        | [37](../Page/37.md "wikilink")   | 25                                 | [%](../Page/百分比.md "wikilink")      |
| 0010 0110                        | [38](../Page/38.md "wikilink")   | 26                                 | [&](../Page/&.md "wikilink")        |
| 0010 0111                        | [39](../Page/39.md "wikilink")   | 27                                 | ['](../Page/单引号.md "wikilink")      |
| 0010 1000                        | [40](../Page/40.md "wikilink")   | 28                                 | [(](../Page/括號.md "wikilink")       |
| 0010 1001                        | [41](../Page/41.md "wikilink")   | 29                                 | [)](../Page/括號.md "wikilink")       |
| 0010 1010                        | [42](../Page/42.md "wikilink")   | 2A                                 | [\*](../Page/星号.md "wikilink")      |
| 0010 1011                        | [43](../Page/43.md "wikilink")   | 2B                                 | [+](../Page/加號.md "wikilink")       |
| 0010 1100                        | [44](../Page/44.md "wikilink")   | 2C                                 | [,](../Page/逗号.md "wikilink")       |
| 0010 1101                        | [45](../Page/45.md "wikilink")   | 2D                                 | [-](../Page/減号.md "wikilink")       |
| 0010 1110                        | [46](../Page/46.md "wikilink")   | 2E                                 | [.](../Page/句点.md "wikilink")       |
| 0010 1111                        | [47](../Page/47.md "wikilink")   | 2F                                 | [/](../Page/斜線.md "wikilink")       |
| 0011 0000                        | [48](../Page/48.md "wikilink")   | 30                                 | [0](../Page/0.md "wikilink")        |
| 0011 0001                        | [49](../Page/49.md "wikilink")   | 31                                 | [1](../Page/1.md "wikilink")        |
| 0011 0010                        | [50](../Page/50.md "wikilink")   | 32                                 | [2](../Page/2.md "wikilink")        |
| 0011 0011                        | [51](../Page/51.md "wikilink")   | 33                                 | [3](../Page/3.md "wikilink")        |
| 0011 0100                        | [52](../Page/52.md "wikilink")   | 34                                 | [4](../Page/4.md "wikilink")        |
| 0011 0101                        | [53](../Page/53.md "wikilink")   | 35                                 | [5](../Page/5.md "wikilink")        |
| 0011 0110                        | [54](../Page/54.md "wikilink")   | 36                                 | [6](../Page/6.md "wikilink")        |
| 0011 0111                        | [55](../Page/55.md "wikilink")   | 37                                 | [7](../Page/7.md "wikilink")        |
| 0011 1000                        | [56](../Page/56.md "wikilink")   | 38                                 | [8](../Page/8.md "wikilink")        |
| 0011 1001                        | [57](../Page/57.md "wikilink")   | 39                                 | [9](../Page/9.md "wikilink")        |
| 0011 1010                        | [58](../Page/58.md "wikilink")   | 3A                                 | [:](../Page/冒号.md "wikilink")       |
| 0011 1011                        | [59](../Page/59.md "wikilink")   | 3B                                 | [;](../Page/分号.md "wikilink")       |
| 0011 1100                        | [60](../Page/60.md "wikilink")   | 3C                                 | [\<](../Page/小於號.md "wikilink")     |
| 0011 1101                        | [61](../Page/61.md "wikilink")   | 3D                                 | [=](../Page/等號.md "wikilink")       |
| 0011 1110                        | [62](../Page/62.md "wikilink")   | 3E                                 | [\>](../Page/大於號.md "wikilink")     |
| 0011 1111                        | [63](../Page/63.md "wikilink")   | 3F                                 | [?](../Page/问号.md "wikilink")       |

| [二进制](../Page/二进制.md "wikilink") | [十进制](../Page/十进制.md "wikilink") | [十六进制](../Page/十六进制.md "wikilink") | [图形](../Page/图形.md "wikilink")  |
| -------------------------------- | -------------------------------- | ---------------------------------- | ------------------------------- |
| 0100 0000                        | [64](../Page/64.md "wikilink")   | 40                                 | [@](../Page/@.md "wikilink")    |
| 0100 0001                        | [65](../Page/65.md "wikilink")   | 41                                 | [A](../Page/A.md "wikilink")    |
| 0100 0010                        | [66](../Page/66.md "wikilink")   | 42                                 | [B](../Page/B.md "wikilink")    |
| 0100 0011                        | [67](../Page/67.md "wikilink")   | 43                                 | [C](../Page/C.md "wikilink")    |
| 0100 0100                        | [68](../Page/68.md "wikilink")   | 44                                 | [D](../Page/D.md "wikilink")    |
| 0100 0101                        | [69](../Page/69.md "wikilink")   | 45                                 | [E](../Page/E.md "wikilink")    |
| 0100 0110                        | [70](../Page/70.md "wikilink")   | 46                                 | [F](../Page/F.md "wikilink")    |
| 0100 0111                        | [71](../Page/71.md "wikilink")   | 47                                 | [G](../Page/G.md "wikilink")    |
| 0100 1000                        | [72](../Page/72.md "wikilink")   | 48                                 | [H](../Page/H.md "wikilink")    |
| 0100 1001                        | [73](../Page/73.md "wikilink")   | 49                                 | [I](../Page/I.md "wikilink")    |
| 0100 1010                        | [74](../Page/74.md "wikilink")   | 4A                                 | [J](../Page/J.md "wikilink")    |
| 0100 1011                        | [75](../Page/75.md "wikilink")   | 4B                                 | [K](../Page/K.md "wikilink")    |
| 0100 1100                        | [76](../Page/76.md "wikilink")   | 4C                                 | [L](../Page/L.md "wikilink")    |
| 0100 1101                        | [77](../Page/77.md "wikilink")   | 4D                                 | [M](../Page/M.md "wikilink")    |
| 0100 1110                        | [78](../Page/78.md "wikilink")   | 4E                                 | [N](../Page/N.md "wikilink")    |
| 0100 1111                        | [79](../Page/79.md "wikilink")   | 4F                                 | [O](../Page/O.md "wikilink")    |
| 0101 0000                        | [80](../Page/80.md "wikilink")   | 50                                 | [P](../Page/P.md "wikilink")    |
| 0101 0001                        | [81](../Page/81.md "wikilink")   | 51                                 | [Q](../Page/Q.md "wikilink")    |
| 0101 0010                        | [82](../Page/82.md "wikilink")   | 52                                 | [R](../Page/R.md "wikilink")    |
| 0101 0011                        | [83](../Page/83.md "wikilink")   | 53                                 | [S](../Page/S.md "wikilink")    |
| 0101 0100                        | [84](../Page/84.md "wikilink")   | 54                                 | [T](../Page/T.md "wikilink")    |
| 0101 0101                        | [85](../Page/85.md "wikilink")   | 55                                 | [U](../Page/U.md "wikilink")    |
| 0101 0110                        | [86](../Page/86.md "wikilink")   | 56                                 | [V](../Page/V.md "wikilink")    |
| 0101 0111                        | [87](../Page/87.md "wikilink")   | 57                                 | [W](../Page/W.md "wikilink")    |
| 0101 1000                        | [88](../Page/88.md "wikilink")   | 58                                 | [X](../Page/X.md "wikilink")    |
| 0101 1001                        | [89](../Page/89.md "wikilink")   | 59                                 | [Y](../Page/Y.md "wikilink")    |
| 0101 1010                        | [90](../Page/90.md "wikilink")   | 5A                                 | [Z](../Page/Z.md "wikilink")    |
| 0101 1011                        | [91](../Page/91.md "wikilink")   | 5B                                 | [\[](../Page/括號.md "wikilink")  |
| 0101 1100                        | [92](../Page/92.md "wikilink")   | 5C                                 | [\\](../Page/反斜線.md "wikilink") |
| 0101 1101                        | [93](../Page/93.md "wikilink")   | 5D                                 | [](../Page/括號.md "wikilink")\]  |
| 0101 1110                        | [94](../Page/94.md "wikilink")   | 5E                                 | [^](../Page/脫字符.md "wikilink")  |
| 0101 1111                        | [95](../Page/95.md "wikilink")   | 5F                                 | [_](../Page/底線.md "wikilink")  |

| [二进制](../Page/二进制.md "wikilink") | [十进制](../Page/十进制.md "wikilink") | [十六进制](../Page/十六进制.md "wikilink") | [图形](../Page/图形.md "wikilink")  |
| -------------------------------- | -------------------------------- | ---------------------------------- | ------------------------------- |
| 0110 0000                        | [96](../Page/96.md "wikilink")   | 60                                 | [\`](../Page/重音符.md "wikilink") |
| 0110 0001                        | [97](../Page/97.md "wikilink")   | 61                                 | [a](../Page/a.md "wikilink")    |
| 0110 0010                        | [98](../Page/98.md "wikilink")   | 62                                 | [b](../Page/b.md "wikilink")    |
| 0110 0011                        | [99](../Page/99.md "wikilink")   | 63                                 | [c](../Page/c.md "wikilink")    |
| 0110 0100                        | [100](../Page/100.md "wikilink") | 64                                 | [d](../Page/d.md "wikilink")    |
| 0110 0101                        | [101](../Page/101.md "wikilink") | 65                                 | [e](../Page/e.md "wikilink")    |
| 0110 0110                        | [102](../Page/102.md "wikilink") | 66                                 | [f](../Page/f.md "wikilink")    |
| 0110 0111                        | [103](../Page/103.md "wikilink") | 67                                 | [g](../Page/g.md "wikilink")    |
| 0110 1000                        | [104](../Page/104.md "wikilink") | 68                                 | [h](../Page/h.md "wikilink")    |
| 0110 1001                        | [105](../Page/105.md "wikilink") | 69                                 | [i](../Page/i.md "wikilink")    |
| 0110 1010                        | [106](../Page/106.md "wikilink") | 6A                                 | [j](../Page/j.md "wikilink")    |
| 0110 1011                        | [107](../Page/107.md "wikilink") | 6B                                 | [k](../Page/k.md "wikilink")    |
| 0110 1100                        | [108](../Page/108.md "wikilink") | 6C                                 | [l](../Page/l.md "wikilink")    |
| 0110 1101                        | [109](../Page/109.md "wikilink") | 6D                                 | [m](../Page/m.md "wikilink")    |
| 0110 1110                        | [110](../Page/110.md "wikilink") | 6E                                 | [n](../Page/n.md "wikilink")    |
| 0110 1111                        | [111](../Page/111.md "wikilink") | 6F                                 | [o](../Page/o.md "wikilink")    |
| 0111 0000                        | [112](../Page/112.md "wikilink") | 70                                 | [p](../Page/p.md "wikilink")    |
| 0111 0001                        | [113](../Page/113.md "wikilink") | 71                                 | [q](../Page/q.md "wikilink")    |
| 0111 0010                        | [114](../Page/114.md "wikilink") | 72                                 | [r](../Page/r.md "wikilink")    |
| 0111 0011                        | [115](../Page/115.md "wikilink") | 73                                 | [s](../Page/s.md "wikilink")    |
| 0111 0100                        | [116](../Page/116.md "wikilink") | 74                                 | [t](../Page/t.md "wikilink")    |
| 0111 0101                        | [117](../Page/117.md "wikilink") | 75                                 | [u](../Page/u.md "wikilink")    |
| 0111 0110                        | [118](../Page/118.md "wikilink") | 76                                 | [v](../Page/v.md "wikilink")    |
| 0111 0111                        | [119](../Page/119.md "wikilink") | 77                                 | [w](../Page/w.md "wikilink")    |
| 0111 1000                        | [120](../Page/120.md "wikilink") | 78                                 | [x](../Page/x.md "wikilink")    |
| 0111 1001                        | [121](../Page/121.md "wikilink") | 79                                 | [y](../Page/y.md "wikilink")    |
| 0111 1010                        | [122](../Page/122.md "wikilink") | 7A                                 | [z](../Page/z.md "wikilink")    |
| 0111 1011                        | [123](../Page/123.md "wikilink") | 7B                                 | [{](../Page/括號.md "wikilink")   |
| 0111 1100                        | [124](../Page/124.md "wikilink") | 7C                                 | [](../Page/豎線.md "wikilink")    |
| 0111 1101                        | [125](../Page/125.md "wikilink") | 7D                                 | [}](../Page/括號.md "wikilink")   |
| 0111 1110                        | [126](../Page/126.md "wikilink") | 7E                                 | [\~](../Page/波浪號.md "wikilink") |

<div style="clear: left">

</div>

## 缺點

ASCII的局限在於只能顯示26個基本拉丁字母、阿拉伯數目字和英式標點符號，因此只能用於顯示現代美國英語（而且在處理英語當中，即使會違反拼寫規則，外來詞如naïve、café、élite等等時，所有重音符號都必須去掉）。雖然EASCII解決了部分西歐語言的顯示問題，但對更多其他語言依然無能為力。因此，現在的软件系统大多采用[Unicode](../Page/Unicode.md "wikilink")。

## 参见

  - [EASCII](../Page/EASCII.md "wikilink")（Extended ASCII）
  - [EBCDIC](../Page/EBCDIC.md "wikilink")
  - [ISO/IEC 646](../Page/ISO/IEC_646.md "wikilink")
  - [ISO/IEC 8859](../Page/ISO/IEC_8859.md "wikilink")
  - [控制字符](../Page/控制字符.md "wikilink")
  - [ASCII艺术](../Page/ASCII艺术.md "wikilink")
  - [ASCII絲帶行動](../Page/ASCII絲帶行動.md "wikilink")

## 参考资料

[Category:字符编码](https://zh.wikipedia.org/wiki/Category:字符编码 "wikilink")
[Category:字符集](https://zh.wikipedia.org/wiki/Category:字符集 "wikilink")
[Category:字首縮寫](https://zh.wikipedia.org/wiki/Category:字首縮寫 "wikilink")

1.  [ASCII的口語發音](http://www.m-w.com/cgi-bin/audio.pl?ascii001.wav=ASCII).
    *Merriam Webster*. Accessed 2008-04-14.