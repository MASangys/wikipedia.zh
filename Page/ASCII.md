**ASCII**（ \[1\]，**A**merican **S**tandard **C**ode for **I**nformation
**I**nterchange，**美国信息交换标准代码**）是基于[拉丁字母的一套](../Page/拉丁字母.md "wikilink")[电脑](https://zh.wikipedia.org/wiki/电脑 "wikilink")[编码系统](https://zh.wikipedia.org/wiki/编码 "wikilink")。它主要用于显示[现代英语](https://zh.wikipedia.org/wiki/现代英语 "wikilink")，而其擴展版本[EASCII則可以部分支持其他](../Page/EASCII.md "wikilink")[西欧](../Page/西欧.md "wikilink")[语言](https://zh.wikipedia.org/wiki/语言 "wikilink")，并等同于国际标准**[ISO/IEC
646](https://zh.wikipedia.org/wiki/ISO/IEC_646 "wikilink")**。
[USASCII_code_chart.png](https://zh.wikipedia.org/wiki/File:USASCII_code_chart.png "fig:USASCII_code_chart.png")

ASCII第一次以規範標準的型態發表是在1967年，最後一次更新則是在1986年，至今為止共定義了128個字元；其中33個字元無法顯示（一些终端提供了扩展，使得这些字符可顯示为諸如笑臉、[撲克牌花式等](https://zh.wikipedia.org/wiki/撲克牌 "wikilink")8-bit符號），且這33個字元多數都已是陳廢的[控制字元](https://zh.wikipedia.org/wiki/控制字元 "wikilink")。控制字元的用途主要是用來操控已經處理過的文字。在33個字元之外的是95個可顯示的字元。用[鍵盤敲下空白鍵所產生的空白字元也算](https://zh.wikipedia.org/wiki/鍵盤 "wikilink")1個可顯示字元（顯示為空白）。

## 控制字符

說明：

  - [Unicode表示法](https://zh.wikipedia.org/wiki/Unicode "wikilink")：當我們想在畫面或紙張上表示這些控制字元時，就會顯示成這個樣子。過於老舊的系統或瀏覽器可能會看不到。使用微軟任一中文輸入法，輸入\`U2400即可看到␀，輸入\`U2401可看到␁，依此類推。
  - [脫出字元表示法](https://zh.wikipedia.org/wiki/脫出字元 "wikilink")：通常用於[終端機連線](https://zh.wikipedia.org/wiki/終端機 "wikilink")（例如[Telnet通訊協定](../Page/Telnet.md "wikilink")），以脫出字元^開頭，再接一個符號，用來讓這些控制字元得以在畫面上顯現。雖然看起來是兩個字元，但在終端機上實際只有一個字元。在絕大部分的終端機系統中，包括[Windows的](https://zh.wikipedia.org/wiki/Windows "wikilink")[命令提示字元](../Page/命令提示字元.md "wikilink")（cmd.exe）、[Linux和](../Page/Linux.md "wikilink")[FreeBSD](../Page/FreeBSD.md "wikilink")，都可用代表脫出字元，輸入想要的ASCII控制字元。例如想輸入空字符，就要輸入+，而非，後者會顯示成兩字元，前者只會顯示成一字元。

<table>
<thead>
<tr class="header">
<th><p><a href="https://zh.wikipedia.org/wiki/二进制" title="wikilink">二进制</a></p></th>
<th><p><a href="../Page/十进制.md" title="wikilink">十进制</a></p></th>
<th><p><a href="../Page/十六进制.md" title="wikilink">十六进制</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/缩写" title="wikilink">缩写</a></p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/Unicode" title="wikilink">Unicode</a><br />
表示法</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/脫出字元" title="wikilink">脫出字元</a><br />
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
<td><p><a href="../Page/空字符.md" title="wikilink">空字符</a>（<a href="https://zh.wikipedia.org/wiki/Null" title="wikilink">Null</a>）</p></td>
</tr>
<tr class="even">
<td><p>0000 0001</p></td>
<td><p><a href="../Page/1.md" title="wikilink">1</a></p></td>
<td><p>01</p></td>
<td><p>SOH</p></td>
<td><p>␁</p></td>
<td><p>^A</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/标题开始" title="wikilink">标题开始</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 0010</p></td>
<td><p><a href="../Page/2.md" title="wikilink">2</a></p></td>
<td><p>02</p></td>
<td><p>STX</p></td>
<td><p>␂</p></td>
<td><p>^B</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/本文开始" title="wikilink">本文开始</a></p></td>
</tr>
<tr class="even">
<td><p>0000 0011</p></td>
<td><p><a href="../Page/3.md" title="wikilink">3</a></p></td>
<td><p>03</p></td>
<td><p>ETX</p></td>
<td><p>␃</p></td>
<td><p>^C</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/本文结束" title="wikilink">本文结束</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 0100</p></td>
<td><p><a href="../Page/4.md" title="wikilink">4</a></p></td>
<td><p>04</p></td>
<td><p>EOT</p></td>
<td><p>␄</p></td>
<td><p>^D</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/傳輸结束" title="wikilink">傳輸结束</a></p></td>
</tr>
<tr class="even">
<td><p>0000 0101</p></td>
<td><p><a href="../Page/5.md" title="wikilink">5</a></p></td>
<td><p>05</p></td>
<td><p>ENQ</p></td>
<td><p>␅</p></td>
<td><p>^E</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/请求" title="wikilink">请求</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 0110</p></td>
<td><p><a href="../Page/6.md" title="wikilink">6</a></p></td>
<td><p>06</p></td>
<td><p>ACK</p></td>
<td><p>␆</p></td>
<td><p>^F</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/確認回應" title="wikilink">確認回應</a></p></td>
</tr>
<tr class="even">
<td><p>0000 0111</p></td>
<td><p><a href="../Page/7.md" title="wikilink">7</a></p></td>
<td><p>07</p></td>
<td><p>BEL</p></td>
<td><p>␇</p></td>
<td><p>^G</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/响铃" title="wikilink">响铃</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 1000</p></td>
<td><p><a href="../Page/8.md" title="wikilink">8</a></p></td>
<td><p>08</p></td>
<td><p>BS</p></td>
<td><p>␈</p></td>
<td><p>^H</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/退格鍵" title="wikilink">退格</a></p></td>
</tr>
<tr class="even">
<td><p>0000 1001</p></td>
<td><p><a href="../Page/9.md" title="wikilink">9</a></p></td>
<td><p>09</p></td>
<td><p>HT</p></td>
<td><p>␉</p></td>
<td><p>^I</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/制表键" title="wikilink">水平定位符號</a></p></td>
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
<td><p><a href="../Page/垂直.md" title="wikilink">垂直</a><a href="https://zh.wikipedia.org/wiki/定位符號" title="wikilink">定位符號</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 1100</p></td>
<td><p><a href="../Page/12.md" title="wikilink">12</a></p></td>
<td><p>0C</p></td>
<td><p>FF</p></td>
<td><p>␌</p></td>
<td><p>^L</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/换页键" title="wikilink">换页键</a></p></td>
</tr>
<tr class="even">
<td><p>0000 1101</p></td>
<td><p><a href="../Page/13.md" title="wikilink">13</a></p></td>
<td><p>0D</p></td>
<td><p>CR</p></td>
<td><p>␍</p></td>
<td><p>^M</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/CR_(字元)" title="wikilink">CR (字元)</a></p></td>
</tr>
<tr class="odd">
<td><p>0000 1110</p></td>
<td><p><a href="../Page/14.md" title="wikilink">14</a></p></td>
<td><p>0E</p></td>
<td><p>SO</p></td>
<td><p>␎</p></td>
<td><p>^N</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/取消變换" title="wikilink">取消變换</a>（Shift out）</p></td>
</tr>
<tr class="even">
<td><p>0000 1111</p></td>
<td><p><a href="../Page/15.md" title="wikilink">15</a></p></td>
<td><p>0F</p></td>
<td><p>SI</p></td>
<td><p>␏</p></td>
<td><p>^O</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/启用變换" title="wikilink">启用變换</a>（Shift in）</p></td>
</tr>
<tr class="odd">
<td><p>0001 0000</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/16" title="wikilink">16</a></p></td>
<td><p>10</p></td>
<td><p>DLE</p></td>
<td><p>␐</p></td>
<td><p>^P</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/跳出数据通讯" title="wikilink">跳出数据通讯</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0001</p></td>
<td><p><a href="../Page/17.md" title="wikilink">17</a></p></td>
<td><p>11</p></td>
<td><p>DC1</p></td>
<td><p>␑</p></td>
<td><p>^Q</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/設備控制" title="wikilink">設備控制一</a>（<a href="https://zh.wikipedia.org/wiki/XON" title="wikilink">XON</a> <a href="https://zh.wikipedia.org/wiki/啟用軟體速度控制" title="wikilink">啟用軟體速度控制</a>）</p></td>
</tr>
<tr class="odd">
<td><p>0001 0010</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/18" title="wikilink">18</a></p></td>
<td><p>12</p></td>
<td><p>DC2</p></td>
<td><p>␒</p></td>
<td><p>^R</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/設備控制" title="wikilink">設備控制二</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0011</p></td>
<td><p><a href="../Page/19.md" title="wikilink">19</a></p></td>
<td><p>13</p></td>
<td><p>DC3</p></td>
<td><p>␓</p></td>
<td><p>^S</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/設備控制" title="wikilink">設備控制三</a>（<a href="https://zh.wikipedia.org/wiki/XOFF" title="wikilink">XOFF</a> <a href="https://zh.wikipedia.org/wiki/停用軟體速度控制" title="wikilink">停用軟體速度控制</a>）</p></td>
</tr>
<tr class="odd">
<td><p>0001 0100</p></td>
<td><p><a href="../Page/20.md" title="wikilink">20</a></p></td>
<td><p>14</p></td>
<td><p>DC4</p></td>
<td><p>␔</p></td>
<td><p>^T</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/設備控制" title="wikilink">設備控制四</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0101</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/21" title="wikilink">21</a></p></td>
<td><p>15</p></td>
<td><p>NAK</p></td>
<td><p>␕</p></td>
<td><p>^U</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/確認失敗回應" title="wikilink">確認失敗回應</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 0110</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/22" title="wikilink">22</a></p></td>
<td><p>16</p></td>
<td><p>SYN</p></td>
<td><p>␖</p></td>
<td><p>^V</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/同步用暫停" title="wikilink">同步用暫停</a></p></td>
</tr>
<tr class="even">
<td><p>0001 0111</p></td>
<td><p><a href="../Page/23.md" title="wikilink">23</a></p></td>
<td><p>17</p></td>
<td><p>ETB</p></td>
<td><p>␗</p></td>
<td><p>^W</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/區塊傳輸结束" title="wikilink">區塊傳輸结束</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1000</p></td>
<td><p><a href="../Page/24.md" title="wikilink">24</a></p></td>
<td><p>18</p></td>
<td><p>CAN</p></td>
<td><p>␘</p></td>
<td><p>^X</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/取消" title="wikilink">取消</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1001</p></td>
<td><p><a href="../Page/25.md" title="wikilink">25</a></p></td>
<td><p>19</p></td>
<td><p>EM</p></td>
<td><p>␙</p></td>
<td><p>^Y</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/連線介质中断" title="wikilink">連線介质中断</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1010</p></td>
<td><p><a href="../Page/26.md" title="wikilink">26</a></p></td>
<td><p>1A</p></td>
<td><p>SUB</p></td>
<td><p>␚</p></td>
<td><p>^Z</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/替換" title="wikilink">替換</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1011</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/27" title="wikilink">27</a></p></td>
<td><p>1B</p></td>
<td><p>ESC</p></td>
<td><p>␛</p></td>
<td><p>^[</p></td>
<td><p><a href="../Page/退出键.md" title="wikilink">退出键</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1100</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/28" title="wikilink">28</a></p></td>
<td><p>1C</p></td>
<td><p>FS</p></td>
<td><p>␜</p></td>
<td><p>^\</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/文件分割符" title="wikilink">文件分割符</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1101</p></td>
<td><p><a href="../Page/29.md" title="wikilink">29</a></p></td>
<td><p>1D</p></td>
<td><p>GS</p></td>
<td><p>␝</p></td>
<td><p>^]</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/群組分隔符" title="wikilink">群組分隔符</a></p></td>
</tr>
<tr class="odd">
<td><p>0001 1110</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/30" title="wikilink">30</a></p></td>
<td><p>1E</p></td>
<td><p>RS</p></td>
<td><p>␞</p></td>
<td><p>^^</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/记录分隔符" title="wikilink">记录分隔符</a></p></td>
</tr>
<tr class="even">
<td><p>0001 1111</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/31" title="wikilink">31</a></p></td>
<td><p>1F</p></td>
<td><p>US</p></td>
<td><p>␟</p></td>
<td><p>^_</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/单元分隔符" title="wikilink">单元分隔符</a></p></td>
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
<td><p><a href="https://zh.wikipedia.org/wiki/删除" title="wikilink">删除</a></p></td>
</tr>
</tbody>
</table>

## 可显示字符

| [二进制](https://zh.wikipedia.org/wiki/二进制 "wikilink") | [十进制](../Page/十进制.md "wikilink")                  | [十六进制](../Page/十六进制.md "wikilink") | [图形](https://zh.wikipedia.org/wiki/图形 "wikilink")  |
| --------------------------------------------------- | ------------------------------------------------- | ---------------------------------- | -------------------------------------------------- |
| 0010 0000                                           | [32](https://zh.wikipedia.org/wiki/32 "wikilink") | 20                                 | ([space](../Page/空格.md "wikilink"))                |
| 0010 0001                                           | [33](https://zh.wikipedia.org/wiki/33 "wikilink") | 21                                 | [\!](https://zh.wikipedia.org/wiki/驚嘆號 "wikilink") |
| 0010 0010                                           | [34](https://zh.wikipedia.org/wiki/34 "wikilink") | 22                                 | ["](https://zh.wikipedia.org/wiki/雙引號 "wikilink")  |
| 0010 0011                                           | [35](https://zh.wikipedia.org/wiki/35 "wikilink") | 23                                 | [\#](https://zh.wikipedia.org/wiki/井号 "wikilink")  |
| 0010 0100                                           | [36](https://zh.wikipedia.org/wiki/36 "wikilink") | 24                                 | [$](../Page/$.md "wikilink")                       |
| 0010 0101                                           | [37](../Page/37.md "wikilink")                    | 25                                 | [%](../Page/百分比.md "wikilink")                     |
| 0010 0110                                           | [38](https://zh.wikipedia.org/wiki/38 "wikilink") | 26                                 | [&](https://zh.wikipedia.org/wiki/& "wikilink")    |
| 0010 0111                                           | [39](https://zh.wikipedia.org/wiki/39 "wikilink") | 27                                 | ['](https://zh.wikipedia.org/wiki/单引号 "wikilink")  |
| 0010 1000                                           | [40](https://zh.wikipedia.org/wiki/40 "wikilink") | 28                                 | [(](https://zh.wikipedia.org/wiki/括號 "wikilink")   |
| 0010 1001                                           | [41](../Page/41.md "wikilink")                    | 29                                 | [)](https://zh.wikipedia.org/wiki/括號 "wikilink")   |
| 0010 1010                                           | [42](../Page/42.md "wikilink")                    | 2A                                 | [\*](https://zh.wikipedia.org/wiki/星号 "wikilink")  |
| 0010 1011                                           | [43](https://zh.wikipedia.org/wiki/43 "wikilink") | 2B                                 | [+](https://zh.wikipedia.org/wiki/加號 "wikilink")   |
| 0010 1100                                           | [44](../Page/44.md "wikilink")                    | 2C                                 | [,](https://zh.wikipedia.org/wiki/逗号 "wikilink")   |
| 0010 1101                                           | [45](https://zh.wikipedia.org/wiki/45 "wikilink") | 2D                                 | [-](https://zh.wikipedia.org/wiki/減号 "wikilink")   |
| 0010 1110                                           | [46](https://zh.wikipedia.org/wiki/46 "wikilink") | 2E                                 | [.](https://zh.wikipedia.org/wiki/句点 "wikilink")   |
| 0010 1111                                           | [47](https://zh.wikipedia.org/wiki/47 "wikilink") | 2F                                 | [/](../Page/斜線.md "wikilink")                      |
| 0011 0000                                           | [48](https://zh.wikipedia.org/wiki/48 "wikilink") | 30                                 | [0](../Page/0.md "wikilink")                       |
| 0011 0001                                           | [49](../Page/49.md "wikilink")                    | 31                                 | [1](../Page/1.md "wikilink")                       |
| 0011 0010                                           | [50](https://zh.wikipedia.org/wiki/50 "wikilink") | 32                                 | [2](../Page/2.md "wikilink")                       |
| 0011 0011                                           | [51](https://zh.wikipedia.org/wiki/51 "wikilink") | 33                                 | [3](../Page/3.md "wikilink")                       |
| 0011 0100                                           | [52](https://zh.wikipedia.org/wiki/52 "wikilink") | 34                                 | [4](../Page/4.md "wikilink")                       |
| 0011 0101                                           | [53](https://zh.wikipedia.org/wiki/53 "wikilink") | 35                                 | [5](../Page/5.md "wikilink")                       |
| 0011 0110                                           | [54](https://zh.wikipedia.org/wiki/54 "wikilink") | 36                                 | [6](../Page/6.md "wikilink")                       |
| 0011 0111                                           | [55](https://zh.wikipedia.org/wiki/55 "wikilink") | 37                                 | [7](../Page/7.md "wikilink")                       |
| 0011 1000                                           | [56](https://zh.wikipedia.org/wiki/56 "wikilink") | 38                                 | [8](../Page/8.md "wikilink")                       |
| 0011 1001                                           | [57](https://zh.wikipedia.org/wiki/57 "wikilink") | 39                                 | [9](../Page/9.md "wikilink")                       |
| 0011 1010                                           | [58](https://zh.wikipedia.org/wiki/58 "wikilink") | 3A                                 | [:](../Page/冒号.md "wikilink")                      |
| 0011 1011                                           | [59](https://zh.wikipedia.org/wiki/59 "wikilink") | 3B                                 | [;](https://zh.wikipedia.org/wiki/分号 "wikilink")   |
| 0011 1100                                           | [60](https://zh.wikipedia.org/wiki/60 "wikilink") | 3C                                 | [\<](https://zh.wikipedia.org/wiki/小於號 "wikilink") |
| 0011 1101                                           | [61](https://zh.wikipedia.org/wiki/61 "wikilink") | 3D                                 | [=](https://zh.wikipedia.org/wiki/等號 "wikilink")   |
| 0011 1110                                           | [62](https://zh.wikipedia.org/wiki/62 "wikilink") | 3E                                 | [\>](https://zh.wikipedia.org/wiki/大於號 "wikilink") |
| 0011 1111                                           | [63](https://zh.wikipedia.org/wiki/63 "wikilink") | 3F                                 | [?](../Page/问号.md "wikilink")                      |

| [二进制](https://zh.wikipedia.org/wiki/二进制 "wikilink") | [十进制](../Page/十进制.md "wikilink")                  | [十六进制](../Page/十六进制.md "wikilink") | [图形](https://zh.wikipedia.org/wiki/图形 "wikilink")  |
| --------------------------------------------------- | ------------------------------------------------- | ---------------------------------- | -------------------------------------------------- |
| 0100 0000                                           | [64](https://zh.wikipedia.org/wiki/64 "wikilink") | 40                                 | [@](../Page/@.md "wikilink")                       |
| 0100 0001                                           | [65](https://zh.wikipedia.org/wiki/65 "wikilink") | 41                                 | [A](../Page/A.md "wikilink")                       |
| 0100 0010                                           | [66](https://zh.wikipedia.org/wiki/66 "wikilink") | 42                                 | [B](../Page/B.md "wikilink")                       |
| 0100 0011                                           | [67](https://zh.wikipedia.org/wiki/67 "wikilink") | 43                                 | [C](../Page/C.md "wikilink")                       |
| 0100 0100                                           | [68](https://zh.wikipedia.org/wiki/68 "wikilink") | 44                                 | [D](../Page/D.md "wikilink")                       |
| 0100 0101                                           | [69](https://zh.wikipedia.org/wiki/69 "wikilink") | 45                                 | [E](../Page/E.md "wikilink")                       |
| 0100 0110                                           | [70](../Page/70.md "wikilink")                    | 46                                 | [F](../Page/F.md "wikilink")                       |
| 0100 0111                                           | [71](https://zh.wikipedia.org/wiki/71 "wikilink") | 47                                 | [G](https://zh.wikipedia.org/wiki/G "wikilink")    |
| 0100 1000                                           | [72](https://zh.wikipedia.org/wiki/72 "wikilink") | 48                                 | [H](../Page/H.md "wikilink")                       |
| 0100 1001                                           | [73](../Page/73.md "wikilink")                    | 49                                 | [I](../Page/I.md "wikilink")                       |
| 0100 1010                                           | [74](https://zh.wikipedia.org/wiki/74 "wikilink") | 4A                                 | [J](../Page/J.md "wikilink")                       |
| 0100 1011                                           | [75](../Page/75.md "wikilink")                    | 4B                                 | [K](../Page/K.md "wikilink")                       |
| 0100 1100                                           | [76](https://zh.wikipedia.org/wiki/76 "wikilink") | 4C                                 | [L](https://zh.wikipedia.org/wiki/L "wikilink")    |
| 0100 1101                                           | [77](https://zh.wikipedia.org/wiki/77 "wikilink") | 4D                                 | [M](../Page/M.md "wikilink")                       |
| 0100 1110                                           | [78](https://zh.wikipedia.org/wiki/78 "wikilink") | 4E                                 | [N](../Page/N.md "wikilink")                       |
| 0100 1111                                           | [79](https://zh.wikipedia.org/wiki/79 "wikilink") | 4F                                 | [O](../Page/O.md "wikilink")                       |
| 0101 0000                                           | [80](https://zh.wikipedia.org/wiki/80 "wikilink") | 50                                 | [P](https://zh.wikipedia.org/wiki/P "wikilink")    |
| 0101 0001                                           | [81](https://zh.wikipedia.org/wiki/81 "wikilink") | 51                                 | [Q](../Page/Q.md "wikilink")                       |
| 0101 0010                                           | [82](https://zh.wikipedia.org/wiki/82 "wikilink") | 52                                 | [R](../Page/R.md "wikilink")                       |
| 0101 0011                                           | [83](https://zh.wikipedia.org/wiki/83 "wikilink") | 53                                 | [S](../Page/S.md "wikilink")                       |
| 0101 0100                                           | [84](https://zh.wikipedia.org/wiki/84 "wikilink") | 54                                 | [T](../Page/T.md "wikilink")                       |
| 0101 0101                                           | [85](https://zh.wikipedia.org/wiki/85 "wikilink") | 55                                 | [U](https://zh.wikipedia.org/wiki/U "wikilink")    |
| 0101 0110                                           | [86](https://zh.wikipedia.org/wiki/86 "wikilink") | 56                                 | [V](../Page/V.md "wikilink")                       |
| 0101 0111                                           | [87](https://zh.wikipedia.org/wiki/87 "wikilink") | 57                                 | [W](../Page/W.md "wikilink")                       |
| 0101 1000                                           | [88](https://zh.wikipedia.org/wiki/88 "wikilink") | 58                                 | [X](../Page/X.md "wikilink")                       |
| 0101 1001                                           | [89](https://zh.wikipedia.org/wiki/89 "wikilink") | 59                                 | [Y](../Page/Y.md "wikilink")                       |
| 0101 1010                                           | [90](https://zh.wikipedia.org/wiki/90 "wikilink") | 5A                                 | [Z](../Page/Z.md "wikilink")                       |
| 0101 1011                                           | [91](https://zh.wikipedia.org/wiki/91 "wikilink") | 5B                                 | [\[](https://zh.wikipedia.org/wiki/括號 "wikilink")  |
| 0101 1100                                           | [92](https://zh.wikipedia.org/wiki/92 "wikilink") | 5C                                 | [\\](https://zh.wikipedia.org/wiki/反斜線 "wikilink") |
| 0101 1101                                           | [93](https://zh.wikipedia.org/wiki/93 "wikilink") | 5D                                 | [](https://zh.wikipedia.org/wiki/括號 "wikilink")\]  |
| 0101 1110                                           | [94](https://zh.wikipedia.org/wiki/94 "wikilink") | 5E                                 | [^](https://zh.wikipedia.org/wiki/脫字符 "wikilink")  |
| 0101 1111                                           | [95](https://zh.wikipedia.org/wiki/95 "wikilink") | 5F                                 | [_](https://zh.wikipedia.org/wiki/底線 "wikilink")  |

| [二进制](https://zh.wikipedia.org/wiki/二进制 "wikilink") | [十进制](../Page/十进制.md "wikilink")                    | [十六进制](../Page/十六进制.md "wikilink") | [图形](https://zh.wikipedia.org/wiki/图形 "wikilink") |
| --------------------------------------------------- | --------------------------------------------------- | ---------------------------------- | ------------------------------------------------- |
| 0110 0000                                           | [96](../Page/96.md "wikilink")                      | 60                                 | [\`](../Page/重音符.md "wikilink")                   |
| 0110 0001                                           | [97](../Page/97.md "wikilink")                      | 61                                 | [a](https://zh.wikipedia.org/wiki/a "wikilink")   |
| 0110 0010                                           | [98](https://zh.wikipedia.org/wiki/98 "wikilink")   | 62                                 | [b](https://zh.wikipedia.org/wiki/b "wikilink")   |
| 0110 0011                                           | [99](../Page/99.md "wikilink")                      | 63                                 | [c](https://zh.wikipedia.org/wiki/c "wikilink")   |
| 0110 0100                                           | [100](../Page/100.md "wikilink")                    | 64                                 | [d](https://zh.wikipedia.org/wiki/d "wikilink")   |
| 0110 0101                                           | [101](../Page/101.md "wikilink")                    | 65                                 | [e](https://zh.wikipedia.org/wiki/e "wikilink")   |
| 0110 0110                                           | [102](https://zh.wikipedia.org/wiki/102 "wikilink") | 66                                 | [f](https://zh.wikipedia.org/wiki/f "wikilink")   |
| 0110 0111                                           | [103](https://zh.wikipedia.org/wiki/103 "wikilink") | 67                                 | [g](https://zh.wikipedia.org/wiki/g "wikilink")   |
| 0110 1000                                           | [104](https://zh.wikipedia.org/wiki/104 "wikilink") | 68                                 | [h](https://zh.wikipedia.org/wiki/h "wikilink")   |
| 0110 1001                                           | [105](https://zh.wikipedia.org/wiki/105 "wikilink") | 69                                 | [i](https://zh.wikipedia.org/wiki/i "wikilink")   |
| 0110 1010                                           | [106](https://zh.wikipedia.org/wiki/106 "wikilink") | 6A                                 | [j](https://zh.wikipedia.org/wiki/j "wikilink")   |
| 0110 1011                                           | [107](https://zh.wikipedia.org/wiki/107 "wikilink") | 6B                                 | [k](https://zh.wikipedia.org/wiki/k "wikilink")   |
| 0110 1100                                           | [108](../Page/108.md "wikilink")                    | 6C                                 | [l](https://zh.wikipedia.org/wiki/l "wikilink")   |
| 0110 1101                                           | [109](https://zh.wikipedia.org/wiki/109 "wikilink") | 6D                                 | [m](https://zh.wikipedia.org/wiki/m "wikilink")   |
| 0110 1110                                           | [110](https://zh.wikipedia.org/wiki/110 "wikilink") | 6E                                 | [n](https://zh.wikipedia.org/wiki/n "wikilink")   |
| 0110 1111                                           | [111](https://zh.wikipedia.org/wiki/111 "wikilink") | 6F                                 | [o](https://zh.wikipedia.org/wiki/o "wikilink")   |
| 0111 0000                                           | [112](https://zh.wikipedia.org/wiki/112 "wikilink") | 70                                 | [p](https://zh.wikipedia.org/wiki/p "wikilink")   |
| 0111 0001                                           | [113](../Page/113.md "wikilink")                    | 71                                 | [q](https://zh.wikipedia.org/wiki/q "wikilink")   |
| 0111 0010                                           | [114](https://zh.wikipedia.org/wiki/114 "wikilink") | 72                                 | [r](https://zh.wikipedia.org/wiki/r "wikilink")   |
| 0111 0011                                           | [115](https://zh.wikipedia.org/wiki/115 "wikilink") | 73                                 | [s](https://zh.wikipedia.org/wiki/s "wikilink")   |
| 0111 0100                                           | [116](https://zh.wikipedia.org/wiki/116 "wikilink") | 74                                 | [t](https://zh.wikipedia.org/wiki/t "wikilink")   |
| 0111 0101                                           | [117](https://zh.wikipedia.org/wiki/117 "wikilink") | 75                                 | [u](https://zh.wikipedia.org/wiki/u "wikilink")   |
| 0111 0110                                           | [118](https://zh.wikipedia.org/wiki/118 "wikilink") | 76                                 | [v](https://zh.wikipedia.org/wiki/v "wikilink")   |
| 0111 0111                                           | [119](https://zh.wikipedia.org/wiki/119 "wikilink") | 77                                 | [w](https://zh.wikipedia.org/wiki/w "wikilink")   |
| 0111 1000                                           | [120](https://zh.wikipedia.org/wiki/120 "wikilink") | 78                                 | [x](https://zh.wikipedia.org/wiki/x "wikilink")   |
| 0111 1001                                           | [121](https://zh.wikipedia.org/wiki/121 "wikilink") | 79                                 | [y](https://zh.wikipedia.org/wiki/y "wikilink")   |
| 0111 1010                                           | [122](https://zh.wikipedia.org/wiki/122 "wikilink") | 7A                                 | [z](https://zh.wikipedia.org/wiki/z "wikilink")   |
| 0111 1011                                           | [123](https://zh.wikipedia.org/wiki/123 "wikilink") | 7B                                 | [{](https://zh.wikipedia.org/wiki/括號 "wikilink")  |
| 0111 1100                                           | [124](https://zh.wikipedia.org/wiki/124 "wikilink") | 7C                                 | [](../Page/豎線.md "wikilink")                      |
| 0111 1101                                           | [125](https://zh.wikipedia.org/wiki/125 "wikilink") | 7D                                 | [}](https://zh.wikipedia.org/wiki/括號 "wikilink")  |
| 0111 1110                                           | [126](https://zh.wikipedia.org/wiki/126 "wikilink") | 7E                                 | [\~](../Page/波浪號.md "wikilink")                   |

<div style="clear: left">

</div>

## 缺點

ASCII的局限在於只能顯示26個基本拉丁字母、阿拉伯數目字和英式標點符號，因此只能用於顯示現代美國英語（而且在處理英語當中，即使會違反拼寫規則，外來詞如naïve、café、élite等等時，所有重音符號都必須去掉）。雖然EASCII解決了部分西歐語言的顯示問題，但對更多其他語言依然無能為力。因此，現在的软件系统大多采用[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")。

## 参见

  - [EASCII](../Page/EASCII.md "wikilink")（Extended ASCII）
  - [EBCDIC](../Page/EBCDIC.md "wikilink")
  - [ISO/IEC 646](https://zh.wikipedia.org/wiki/ISO/IEC_646 "wikilink")
  - [ISO/IEC
    8859](https://zh.wikipedia.org/wiki/ISO/IEC_8859 "wikilink")
  - [控制字符](../Page/控制字符.md "wikilink")
  - [ASCII艺术](../Page/ASCII艺术.md "wikilink")
  - [ASCII絲帶行動](https://zh.wikipedia.org/wiki/ASCII絲帶行動 "wikilink")

## 参考资料

[Category:字符编码](https://zh.wikipedia.org/wiki/Category:字符编码 "wikilink")
[Category:字符集](https://zh.wikipedia.org/wiki/Category:字符集 "wikilink")
[Category:字首縮寫](https://zh.wikipedia.org/wiki/Category:字首縮寫 "wikilink")

1.  [ASCII的口語發音](http://www.m-w.com/cgi-bin/audio.pl?ascii001.wav=ASCII).
    *Merriam Webster*. Accessed 2008-04-14.