**L2F**，或**第二層轉發協議**（Layer 2 Forwarding
Protocol），是由[思科系統公司開發的](https://zh.wikipedia.org/wiki/思科系統 "wikilink")，建立在[互聯網上的虛擬專用網絡連接的隧道協議](https://zh.wikipedia.org/wiki/互聯網 "wikilink")。L2F協議本身並不提供加密或保密；它依賴於協議被傳輸以提供保密。L2F是專為隧道點對點協議（PPP）通信\[1\]。

## L2F包结构

<table>
<thead>
<tr class="header">
<th><p>Bits 0-12</p></th>
<th><p>13-15</p></th>
<th><p>16-23</p></th>
<th><p>24-31</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>F</p></td>
<td><p>K</p></td>
<td><p>P</p></td>
<td><p>S</p></td>
</tr>
<tr class="even">
<td><p>Multiplex ID</p></td>
<td><p>Client ID</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Length</p></td>
<td><p>Payload offset (opt)</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Packet key (optional)</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><br />
Payload<br />
</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td><p>L2F Checksum (opt)</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 參考文獻

[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")
[Category:Cisco协议](https://zh.wikipedia.org/wiki/Category:Cisco协议 "wikilink")

1.  [RFC2341 on
    IETF.org|Cisco的第二層轉發（協議）“L2F”（英文）](http://tools.ietf.org/html/rfc2341)