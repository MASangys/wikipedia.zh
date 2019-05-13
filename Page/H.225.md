**H.225.0**是[H.323協議的一部分](../Page/H.323.md "wikilink")。

H.225又可分成[Q.931及](../Page/Q.931.md "wikilink")[RAS控制](https://zh.wikipedia.org/wiki/RAS "wikilink")（Registration,
Admission and
Status）兩大功能。H.323協定中融合H.225和Q.931標準，可提供呼叫訊息功能。H.323定義了四種類型的原語（primitive）：請求、指示、響應和確認。H.225定義了Q.931
的標準規格。

H.225.0的主要目標是定義的消息和程序（messages and procedures）：

  - 呼叫訊息：建立，控制和結束H.323呼叫。是基於對呼叫建立程序。
  - RAS訊息 ：執行登記，錄取，帶寬改變。RAS信令功能使用單一通道（RAS通道）。這一消息是所謂的註冊，許可和狀態（RAS）。
  - 此外，H.225定義了使用傳統的編解碼器如G.711，H.261和H.263 的 RTP打包媒體。

<table>
<tbody>
<tr class="odd">
<td><div align="center">
<p>8</p>
</div></td>
<td><div align="center">
<p>7</p>
</div></td>
<td><div align="center">
<p>6</p>
</div></td>
<td><div align="center">
<p>5</p>
</div></td>
<td><div align="center">
<p>4</p>
</div></td>
<td><div align="center">
<p>3</p>
</div></td>
<td><div align="center">
<p>2</p>
</div></td>
<td><div align="center">
<p>1</p>
</div></td>
<td><div align="center">
<p>Octet</p>
</div></td>
</tr>
<tr class="even">
<td><div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
<p>Protocol Discriminator</p>
</div></td>
<td><div align="center">
<p>1</p>
</div></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><div align="center">
<p>0</p>
</div></td>
<td><div align="center">
<p>0</p>
</div></td>
<td><div align="center">
<p>0</p>
</div></td>
<td><div align="center">
<p>0</p>
</div></td>
<td><div align="center">
<p>Length of call reference bits</p>
</div></td>
<td><div align="center">
<p>2</p>
</div></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><div align="center">
<p>Call reference value </p>
</div></td>
<td><p>3 (-4)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><div align="center">
<p>0</p>
</div></td>
<td><div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
<p>Message type</p>
</div></td>
<td><div align="center">
<p> </p>
</div></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
</div>
<div align="center">
<p>Information Elements</p>
</div></td>
<td><div align="center">
<p> </p>
</div></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><div align="center" class="blackitalic">
<p>H.225 structure</p>
</div></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

[Category:ITU-T标准](https://zh.wikipedia.org/wiki/Category:ITU-T标准 "wikilink")