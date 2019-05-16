{{Infobox Software |name = redsn0w |logo =
[Quickpwn.png](https://zh.wikipedia.org/wiki/File:Quickpwn.png "fig:Quickpwn.png")
|developer = [iPhone Dev
Team](https://zh.wikipedia.org/wiki/iPhone_Dev_Team "wikilink") |latest
preview version = 0.9.15b3b |latest preview date =  |operating_system =
[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink"),
[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink") |license =
[Freeware](https://zh.wikipedia.org/wiki/Freeware "wikilink") |website =
<http://blog.iphone-dev.org/> |purpose = 越狱工具 }}
**redsn0w**是一个用于[越狱](https://zh.wikipedia.org/wiki/iOS越狱 "wikilink")[iOS设备的工具](https://zh.wikipedia.org/wiki/iOS "wikilink")。它通过读取通过[iTunes或其它途径下载的官方固件](https://zh.wikipedia.org/wiki/iTunes "wikilink")，并在设备上建立一个[RAM盘](https://zh.wikipedia.org/wiki/RAM盘 "wikilink")，从RAM盘上面运行相应程序来进行越狱工作。在越狱时，设备会进入固件升级模式。redsn0w同时允许用于安装流行的第三方软件安装器[Cydia](../Page/Cydia.md "wikilink")，也可以用来优化系统，安装自制软件，访问[文件系统等](../Page/文件系统.md "wikilink")。

## 兼容性

[Mac OS
X和](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Windows平台上的redsn](https://zh.wikipedia.org/wiki/Windows "wikilink")0w可以用于运行全部iOS版本的各种设备，虽然对于具有新版引导固件的iPhone
3GS及更新的固件无法完美解锁：也就是说，电话每次重启的时候，都必须连上计算机重新越狱。不稳定发行版0.9.6b6使用limera1n和24kpwm引导固件的组合来达成与4.2版iOS的兼容性\[1\]。

<table>
<thead>
<tr class="header">
<th><p>设备类型</p></th>
<th><p>最新韌體</p></th>
<th><p>兼容的redsn0w版本</p></th>
<th><p>兼容的Exploit</p></th>
<th><p>可否越獄?</p></th>
<th><p>是否需要计算机引导</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_(第一代)" title="wikilink">iPhone (第一代)</a></p></td>
<td><p>3.1.3</p></td>
<td><p>redsn0w 0.9.4</p></td>
<td><p>24kpwn[2]</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3G" title="wikilink">iPhone 3G</a></p></td>
<td><p>4.2.1</p></td>
<td><p>redsn0w 0.9.6rc8</p></td>
<td><p>24kpwn</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3GS" title="wikilink">iPhone 3GS (old bootrom)</a></p></td>
<td><p>5.1</p></td>
<td><p>redsn0w 0.9.10b6</p></td>
<td><p>Limera1n[3]+24kpwn</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3GS" title="wikilink">iPhone 3GS (new bootrom)</a></p></td>
<td><p>5.0.1</p></td>
<td><p>redsn0w 0.9.10b4</p></td>
<td><p>Limera1n+Racoon String Format Overflow[4]+HFS[5]</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_3GS" title="wikilink">iPhone 3GS (new bootrom)</a></p></td>
<td><p>5.1</p></td>
<td><p>redsn0w 0.9.10b6</p></td>
<td><p>Limera1n</p></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4" title="wikilink">iPhone 4 GSM</a></p></td>
<td><p>6.0.1</p></td>
<td><p>redsn0w 0.9.15b3</p></td>
<td><p>Limera1n+Racoon String Format Overflow+HFS</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4" title="wikilink">iPhone 4 GSM</a></p></td>
<td><p>6.0.1</p></td>
<td><p>redsn0w 0.9.15b3</p></td>
<td><p>Limera1n</p></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4" title="wikilink">iPhone 4 CDMA</a></p></td>
<td><p>6.0.1</p></td>
<td><p>redsn0w 0.9.15b3</p></td>
<td><p>Limera1n+Racoon String Format Overflow+HFS</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4" title="wikilink">iPhone 4 CDMA</a></p></td>
<td><p>6.0.1</p></td>
<td><p>redsn0w 0.9.15b3</p></td>
<td><p>Limera1n</p></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4S" title="wikilink">iPhone 4S</a></p></td>
<td><p>5.0.1</p></td>
<td><p>redsn0w 0.9.10b4</p></td>
<td><p>Limera1n+Racoon String Format Overflow+HFS</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4S" title="wikilink">iPhone 4S</a></p></td>
<td><p>5.1</p></td>
<td><p>redsn0w 0.9.15b3</p></td>
<td><p>N/A</p></td>
<td></td>
<td><p>N/A</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPhone_4s" title="wikilink">iPhone 4s</a></p></td>
<td><p>6.0.1</p></td>
<td><p>redsn0w 0.9.15b3</p></td>
<td></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_Touch" title="wikilink">iPod Touch</a> 1G</p></td>
<td><p>3.1.3</p></td>
<td><p>redsn0w 0.9.4</p></td>
<td><p>24kpwn</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_Touch" title="wikilink">iPod Touch</a> 2G</p></td>
<td><p>4.2.1</p></td>
<td><p>redsn0w 0.9.6rc8</p></td>
<td><p>24kpwn+ARM7 Go[6] (MB)/steaks4uce[7]+HFS(MC)</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_Touch" title="wikilink">iPod Touch</a> 3G</p></td>
<td><p>5.0.1</p></td>
<td><p>redsn0w 0.9.10b4</p></td>
<td><p>Limera1n+Racoon String Format Overflow+HFS</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_Touch" title="wikilink">iPod Touch</a> 3G</p></td>
<td><p>5.1</p></td>
<td><p>redsn0w 0.9.10b6</p></td>
<td><p>Limera1n</p></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_Touch" title="wikilink">iPod Touch</a> 4G</p></td>
<td><p>5.0.1</p></td>
<td><p>redsn0w 0.9.10b4</p></td>
<td><p>Limera1n+Racoon String Format Overflow+HFS</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_Touch" title="wikilink">iPod Touch</a> 4G</p></td>
<td><p>5.1</p></td>
<td><p>redsn0w 0.9.10b6</p></td>
<td><p>Limera1n</p></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPod_Touch" title="wikilink">iPod Touch</a> 4G</p></td>
<td><p>6.0</p></td>
<td><p>redsn0w 0.9.15b3</p></td>
<td><p>Limera1n</p></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad" title="wikilink">iPad</a></p></td>
<td><p>5.0.1</p></td>
<td><p>redsn0w 0.9.10b4</p></td>
<td><p>Limera1n+Racoon String Format Overflow+HFS</p></td>
<td></td>
<td><p>否</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad" title="wikilink">iPad</a></p></td>
<td><p>5.1.1</p></td>
<td><p>redsn0w 0.9.10b6</p></td>
<td><p>Limera1n</p></td>
<td></td>
<td><p>是</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_2" title="wikilink">iPad 2</a></p></td>
<td><p>8.4</p></td>
<td><p>N/A</p></td>
<td><p>N/A</p></td>
<td></td>
<td><p>N/A</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/iPad_(第三代)" title="wikilink">New iPad</a></p></td>
<td><p>8.4</p></td>
<td><p>N/A</p></td>
<td><p>N/A</p></td>
<td></td>
<td><p>N/A</p></td>
</tr>
</tbody>
</table>

\[8\]

## Apple的回应

Apple最近修改了其iPhone开发者协议，加入了以下一段：

## 参考文献

## 参见

  - [iPhone Dev
    Team](https://zh.wikipedia.org/wiki/iPhone_Dev_Team "wikilink")
  - [Cydia](../Page/Cydia.md "wikilink")

[Category:自制软体](https://zh.wikipedia.org/wiki/Category:自制软体 "wikilink")
[Category:IOS软件](https://zh.wikipedia.org/wiki/Category:IOS软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.