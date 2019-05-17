**网络标识和时区**（\[1\]，缩写**NITZ**）是一种通过无线网络向[移动设备提供本地](../Page/移动设备.md "wikilink")[日期和](../Page/日期.md "wikilink")[时间](../Page/时间.md "wikilink")、[时区](../Page/时区.md "wikilink")、[夏时制偏移](../Page/夏时制.md "wikilink")，以及网络提供商身份信息的机制，这通常用于[移动电话自动更新系统时间](../Page/移动电话.md "wikilink")。NITZ技术自[GSM](../Page/GSM.md "wikilink")
阶段2 Release 96版本开始成为官方标准的可选部分之一。\[2\]

相对于其他网络时间协议或者负载协议规范（例如[NTP或](https://zh.wikipedia.org/wiki/網絡時間協議 "wikilink")[CDMA2000](../Page/CDMA2000.md "wikilink")），NITZ的质量和执行力度都相对较弱。该标准允许网络传送“网络标识、UTC、夏令时、当地时”，\[3\]但每部分都只是可选传的，而且跨[无线电接入网和运营商的技术支持都有不同](https://zh.wikipedia.org/wiki/无线电接入网 "wikilink")。这对于需要维护复杂的时区数据库而不依赖于网络运营商的设备制造商来说是一个问题。另外，与[3GPP2相比](https://zh.wikipedia.org/wiki/3GPP2 "wikilink")，使用[GPS同步来授时能使时间分辨率达到](https://zh.wikipedia.org/wiki/GPS "wikilink")[毫秒级](https://zh.wikipedia.org/wiki/毫秒 "wikilink")，NITZ标识则“对于时间只能精确到数分钟”。\[4\]该标准提供信息的可选性质，会导致不采取夏令时但又与某个地区共享一个时区的地区的用户出现问题，因此现代的手机一般有自己的时区管理程序，自行调节夏令时。

由于NITZ的传送通常非周期性，而是取决于手机是否经过无线电网络的边界，因此这些手机可能在NITZ更新到达之前的数小时甚至几天内都显示不正确的时间，直到更新获得后才得到纠正。

## 已启用NITZ的运营商

<table>
<thead>
<tr class="header">
<th><p>国家或地区</p></th>
<th><p>运行商</p></th>
<th><p>NITZ启用情况和启用时间</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>Optus</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Telstra</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Three</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Nar</p></td>
<td><p>自2014年</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Rogers</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>SaskTel</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>China Mobile</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Telefónica O2</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>T-Mobile</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Vodafone</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>DNA</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Sonera</p></td>
<td><p>已启用，自2000年前</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Telefónica O2</p></td>
<td><p>2009</p></td>
<td><p>[5][6]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>E-Plus</p></td>
<td><p>自2015年</p></td>
<td><p>[7]</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>PCCW</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>SmarTone</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>T-Mobile</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Wind</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>U Mobile</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Telcel</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>KPN</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Vodafone</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2degrees</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Spark New Zealand</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Vodafone</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>MTN</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>T-Mobile</p></td>
<td><p>已启用</p></td>
<td><p>2G和3G网络</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>P4 Play</p></td>
<td><p>已启用</p></td>
<td><p>只有3G网络</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Plus (telecommunications Poland)</p></td>
<td><p>已启用</p></td>
<td><p>2G和3G网络</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Aero2</p></td>
<td><p>已启用</p></td>
<td><p>2G和3G网络</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Zapp</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Salt</p></td>
<td><p>已启用</p></td>
<td><p>只有3G网络</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>MTS</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>TeliaSonera</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Telenor</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Sunrise</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Swisscom</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Salt</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Turkcell</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Vodafone</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Chunghwa Telecom</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Telefónica O2</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Vodafone</p></td>
<td><p>已启用</p></td>
<td><p>[8]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>AT&amp;T</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>T-Mobile</p></td>
<td><p>已启用</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>全部网络</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Avea</p></td>
<td><p>-</p></td>
<td><p>[9]</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Vodafone</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>中国联通</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Plus</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Telekom</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Vodafone</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>SoftBank</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Mobistar</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Proximus</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Movistar</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>T-Mobile</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>Tele2</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>3</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>EE (telecommunications company)</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>BSNL</p></td>
<td><p>-</p></td>
<td></td>
</tr>
</tbody>
</table>

## 参考文献

[Category:GSM標準](https://zh.wikipedia.org/wiki/Category:GSM標準 "wikilink")

1.

2.

3.
4.
5.

6.

7.

8.

9.