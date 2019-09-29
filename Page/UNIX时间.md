**UNIX時間**，或稱**POSIX時間**是[UNIX](../Page/UNIX.md "wikilink")或[類UNIX系統使用的時間表示方式](https://zh.wikipedia.org/wiki/類UNIX "wikilink")：從[UTC](https://zh.wikipedia.org/wiki/協調世界時 "wikilink")1970年1月1日0時0分0秒起至現在的總秒數，不考慮[閏秒](https://zh.wikipedia.org/wiki/閏秒 "wikilink")\[1\]。 在多數Unix系統上Unix時間可以透過指令來檢查。

<table>
<tbody>
<tr class="odd">
<td><p>範例：<strong>{{#time:U}}</strong> (<a href="../Page/ISO_8601.md" title="wikilink">ISO 8601</a>:{{#time:Y-m-d\TH:i:s}}Z)<br />
 ()</p></td>
</tr>
</tbody>
</table>

## 問題

### 2038年问题

[Year_2038_problem.gif](https://zh.wikipedia.org/wiki/File:Year_2038_problem.gif "fig:Year_2038_problem.gif") 現時大部分使用UNIX的系統都是[32位元](../Page/32位元.md "wikilink")的，即它們會以32位有符号整数表示時間类型`time_t`。因此它可以表示136年的秒数。表示協調世界時間1901年12月13星期五20時45分52秒至2038年1月19日3時14分07秒（二進制：01111111 11111111 11111111 11111111，0x7FFF:FFFF），在下一秒二進制數字會是10000000 00000000 00000000 00000000（0x8000:0000），這是負數，因此各系統會把時間誤解作1901年12月13日20時45分52秒（亦有可能回歸到1970年）。這時可能會令軟體發生問題，導致系統癱瘓。

目前的解決方案是把系統由32位元轉為[64位元](../Page/64位元.md "wikilink")系統。在64位系統下，此時間最多可以表示到292,277,026,596年12月4日15時30分08秒。

### Unix负时间导致部分iPhone手机无法启动

在2016年2月12日，据披露，如果把苹果[iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink")、[iPad等设备的系统时间设置为](https://zh.wikipedia.org/wiki/iPad "wikilink")1970年1月1日，随后重启设备，它会无法正常启动。目前苹果公司正式承认了漏洞存在，但是尚未公布具体的引发原因。\[2\]部分中国大陆用户猜想这是因为调整当地时间到1970.1.1 0:00后，如果时区为正，那么GMT时间就早于unix定义的0时间。例如北京时间 1970.1.1 0:00 (UTC+0800) 是UTC 1969.12.31 16:00 对应的unix时间是负的。但是有人回應嘗試設為正時區重啟後仍然无法正常启动。\[3\]苹果对此采用的策略是在随后的固件更新中将时间禁止调整到2000年以前。

## 纪念日

UNIX时间以5000日为纪念日，第一个5000日是1983年9月10日，第二个5000日(即第10000日)是1997年5月19日，第三个5000日(即第15000日)是2011年1月26日，第四个5000日(即第20000日)是2024年10月4日，第五百个5000日(即第2,500,000日)是8814年10月8日\[4\]。

## 相关条目

  - [约翰·提托](../Page/约翰·提托.md "wikilink")

## 参考文献

## 外部連結

  - [2038年會有什麼大問題? | 一探啾竟 第35集 | 啾啾鞋](https://www.youtube.com/watch?v=NHwbnhRFnuw)

{{-}}

[Category:日历标准](https://zh.wikipedia.org/wiki/Category:日历标准 "wikilink") [Category:网络时间相关软件](https://zh.wikipedia.org/wiki/Category:网络时间相关软件 "wikilink") [Category:时间标准](https://zh.wikipedia.org/wiki/Category:时间标准 "wikilink") [Category:時標](https://zh.wikipedia.org/wiki/Category:時標 "wikilink") [Category:Unix](https://zh.wikipedia.org/wiki/Category:Unix "wikilink")

1.  [The Unix leap second mess](http://www.madore.org/~david/computers/unix-leap-seconds.html)
2.
3.
4.