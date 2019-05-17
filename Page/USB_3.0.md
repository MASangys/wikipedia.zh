[SuperSpeed_USB.svg](https://zh.wikipedia.org/wiki/File:SuperSpeed_USB.svg "fig:SuperSpeed_USB.svg")
[USB_&_Thunderbolt™_Speed_Comparison.jpg](https://zh.wikipedia.org/wiki/File:USB_&_Thunderbolt™_Speed_Comparison.jpg "fig:USB_&_Thunderbolt™_Speed_Comparison.jpg")的速度比較表\]\]

**USB 3.0**，或**USB 3.2 Gen 1×1**\[1\]，其USB速率模式稱爲「Super
Speed」，是[通用串列匯流排](https://zh.wikipedia.org/wiki/通用串列匯流排 "wikilink")（Universal
Serial
Bus，USB）的第三個主要修訂版本。其主要技術標準有：支援[全雙工](https://zh.wikipedia.org/wiki/全雙工 "wikilink")，並採用發送列表區段來進行數據發包，供電標準為900[mA](../Page/安培.md "wikilink")，且理论上有支援[光纤传输的潜力](https://zh.wikipedia.org/wiki/光纤 "wikilink")，傳輸速度為5Gbit/s。USB
3.0的设计兼容USB 2.0与USB
1.1版本，并採用[三級多層電源管理技術](https://zh.wikipedia.org/wiki/三級多層電源管理技術 "wikilink")，可以為不同設備提供不同的電源管理方案。

USB
3.0採用新的封包[路由傳輸技術](../Page/路由.md "wikilink")，線纜設計8條內部線路，除[VBus和](https://zh.wikipedia.org/wiki/VBus "wikilink")[GND作為電源提供線外](../Page/接地.md "wikilink")，剩餘3對均為數據傳輸線路其中保留D+與D-兩條兼容USB
2.0的線路，新增[SSRX與](https://zh.wikipedia.org/wiki/SSRX "wikilink")[SSTX專為新版所設的線路](https://zh.wikipedia.org/wiki/SSTX "wikilink")，因此USB
3.0比USB 2.0多了數個[觸點](https://zh.wikipedia.org/wiki/觸點 "wikilink")。USB
3.0的Standard-A接口繼續採用與早先版本一樣的尺寸方案，外观以蓝色区分，只是內部觸點有變化，新的觸點將會並排在目前4個觸點的後方。引入展頻時脈技術，降低電磁輻射的逸散。

Intel發表的[xHCI已经可以支持USB](https://zh.wikipedia.org/wiki/xHCI "wikilink")3.0的接口，且向下兼容USB2.0的接口。

## 電磁干擾

USB使用[差動訊號進行資料傳輸](../Page/差分信号.md "wikilink")，以USB
2.0爲例，要達成480Mbps的傳輸率，那麼其傳輸的差動訊號運作頻率須為240MHz，USB
3.0需要2.5GHz的差動訊號頻率方能達成5Gbps傳輸率。而爲了降低高運作頻率產生的電磁干擾，USB
3.0引入[展頻時脈](https://zh.wikipedia.org/wiki/展頻 "wikilink")，將原本集中在2.5GHz頻率的能量，USB
3.0以2.5GHz為中心呈現[正弦函數的絕對值分布](https://zh.wikipedia.org/wiki/正弦函數 "wikilink")，降低2.5GHz集中的能量，這樣下次出現能量集中的地方為三次[諧波](https://zh.wikipedia.org/wiki/谐波 "wikilink")7.5GHz（也因這樣所以在USB
3.0線材規範中都有針對7.5GHz制定要求）。\[2\]

然而，2.5GHz的運作頻率與[ISM頻段](https://zh.wikipedia.org/wiki/ISM頻段 "wikilink")（2.412～2.462GHz）靠得太近，加上展頻時脈技術的緣故，原本單一的2.5GHz訊號的能量會延展成從直流到數GHz的頻寬干擾，令USB
3.0在運作時其電磁波訊號的能量會覆蓋ISM頻段的訊號，也無法使用濾波器過濾訊號。因此同一電路板上USB
3.0無法與[藍芽](https://zh.wikipedia.org/wiki/藍芽 "wikilink")、2.4GHz頻段的WLAN在相鄰不遠的情況下一同運作，而USB論壇針對此一現象，也僅能要求製造商將電磁遮蔽做好，從USB插槽、線材、直到外接裝置端都需要做屏蔽接地的動作，盡量壓低輻射出來的電磁波。\[3\]\[4\]而實測表明USB
3.0與藍芽、2.4GHz的WiFi裝置在靠近的情況下，出現了斷流、連線中斷、傳輸效能明顯下降等情況，而將USB
3.0的連接點做好遮蔽，或者將藍芽、2.4GHz WiFi等裝置使用延長線連接並遠離USB
3.0裝置，同時運作的干擾問題明顯改善。\[5\]

USB 3.0與ISM頻段的電磁相容性問題，也間接令不少行動裝置（如智慧型手機）等沒有考慮對USB
3.0的支援，雖然也有少數智慧型手機支援USB 3.0（如[三星Galaxy
Note 3](../Page/三星Galaxy_Note_3.md "wikilink")）。\[6\]

## 針腳定義

[USB_3.0_A_Buchse_13.jpg](https://zh.wikipedia.org/wiki/File:USB_3.0_A_Buchse_13.jpg "fig:USB_3.0_A_Buchse_13.jpg")
[USB3_Panel_ext_HD_IMGP8200_smial_wp.jpg](https://zh.wikipedia.org/wiki/File:USB3_Panel_ext_HD_IMGP8200_smial_wp.jpg "fig:USB3_Panel_ext_HD_IMGP8200_smial_wp.jpg")
[Connector_USB_3_IMGP6017_wp.jpg](https://zh.wikipedia.org/wiki/File:Connector_USB_3_IMGP6017_wp.jpg "fig:Connector_USB_3_IMGP6017_wp.jpg")
[USB_3.0_Micro-B_plug.svg](https://zh.wikipedia.org/wiki/File:USB_3.0_Micro-B_plug.svg "fig:USB_3.0_Micro-B_plug.svg")

<table>
<caption>USB 3.0 Standard-A和Standard-B[7]</caption>
<thead>
<tr class="header">
<th><p>针脚编号</p></th>
<th><p>颜色</p></th>
<th><p>信号<br />
(Type A)</p></th>
<th><p>信号<br />
（Type B）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1</p></td>
<td><p>红色</p></td>
<td><p>VBUS</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>白色</p></td>
<td><p>D−</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>绿色</p></td>
<td><p>D+</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>黑色</p></td>
<td><p>GND</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>5</p></td>
<td><p>蓝色</p></td>
<td><p>StdA_SSRX−</p></td>
<td><p>StdB_SSTX−</p></td>
</tr>
<tr class="even">
<td><p>6</p></td>
<td><p>黄色</p></td>
<td><p>StdA_SSRX+</p></td>
<td><p>StdB_SSTX+</p></td>
</tr>
<tr class="odd">
<td><p>7</p></td>
<td><p>Shield</p></td>
<td><p>GND_DRAIN</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>8</p></td>
<td><p>紫色</p></td>
<td><p>StdA_SSTX−</p></td>
<td><p>StdB_SSRX−</p></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>橙色</p></td>
<td><p>StdA_SSTX+</p></td>
<td><p>StdB_SSRX+</p></td>
</tr>
</tbody>
</table>

| 针脚编号 | 信号          | 描述                                       |
| ---- | ----------- | ---------------------------------------- |
| 1    | VBUS        | POWER                                    |
| 2    | D-          | USB 2.0 DIFFERENTIAL PAIR                |
| 3    | D+          |                                          |
| 4    | GND         | Ground for Power Return                  |
| 5    | StdB_SSTX- | Superspeed transmitter differential pair |
| 6    | StdB_SSTX+ |                                          |
| 7    | GND_DRAIN  | Ground for signal return                 |
| 8    | StdB_SSRX- | Superspeed receiver differential pair    |
| 9    | StdB_SSRX+ |                                          |
| 10   | DPWR        | Power provided by device                 |
| 11   | DGND        | Ground return to DPWR                    |

USB 3.0 Powered-B\[8\]

## USB 3.2 Gen 2×1

[Usb-3.1-logo.jpg](https://zh.wikipedia.org/wiki/File:Usb-3.1-logo.jpg "fig:Usb-3.1-logo.jpg")
**USB 3.2 Gen 2×1**（**SuperSpeed+**，官方全名：**SuperSpeed USB 10
Gbps**）是基於**USB 3.0（USB 3.2 Gen
1×1）**改良推出的[USB連接介面的最新版本](../Page/USB.md "wikilink")。2013年底，負責制定USB
3.0規範的組織USB 3.0 Promoter Group公佈了下一代USB
3.1介面的標準規範。2014年4月，負責USB介面規範的[USB開發者論壇](../Page/USB開發者論壇.md "wikilink")（USB-IF）公佈了USB
3.1連接介面設計圖，包括Type-A、Type-B以及全新設計的[Type-C](../Page/USB_Type-C.md "wikilink")\[9\]\[10\]\[11\]\[12\]\[13\]。

請注意，USB 3.1 Gen 2在2019年更名後的正確名稱為USB 3.2 Gen 2×1，而USB 3.0則更名為USB 3.2 Gen
1×1。

| 版本                | 名稱          | 頻寬        | 編碼        | 備註         |
| ----------------- | ----------- | --------- | --------- | ---------- |
| **USB 3.1 Gen 1** | SuperSpeed  | 5 Gbit/s  | 8b/10b    | 與USB 3.0相同 |
| **USB 3.1 Gen 2** | SuperSpeed+ | 10 Gbit/s | 128b/130b | 新標準        |

## USB 3.2 Gen 1×2 和 Gen 2×2

USB 3.2是2017年7月25日USB開發者論壇（USB Implementers Forum）宣佈基於USB
3.1改良推出的USB連接介面的最新版本，除了將傳輸速度從10Gbps倍增至20Gbps，也建議各裝置統一採用Type-C型式端子為主。此外USB
3.2也能向下相容於較舊的規範，無論是將USB 3.2裝置插入舊端子，或是將舊裝置插入USB 3.2端子，仍能以較低的速度正常運作。

| 版本                  | 名稱          | 頻寬        | 編碼        | 備註                |
| ------------------- | ----------- | --------- | --------- | ----------------- |
| **USB 3.2 Gen 1×1** | SuperSpeed  | 5 Gbit/s  | 8b/10b    | 與USB 3.1 Gen 1相同  |
| **USB 3.2 Gen 1×2** | SuperSpeed+ | 10 Gbit/s | 8b/10b    | 雙通道模式，需要USB 3.2電纜 |
| **USB 3.2 Gen 2×1** | SuperSpeed+ | 10 Gbit/s | 128b/130b | 與USB 3.1 Gen 2相同  |
| **USB 3.2 Gen 2×2** | SuperSpeed+ | 20 Gbit/s | 128b/130b | 雙通道模式，需要USB 3.2電纜 |

## 参考资料

## 外部鏈結

  - [USB.org](http://www.usb.org/)
  - [为什么 Wi-Fi 和 USB 3.0
    会互相干扰？](https://www.zhihu.com/question/28422159)

[Category:USB](https://zh.wikipedia.org/wiki/Category:USB "wikilink")
[Category:2008年面世](https://zh.wikipedia.org/wiki/Category:2008年面世 "wikilink")

1.

2.

3.

4.

5.

6.  [手机厂商阉割Type-C接口的真相：影响手机信号！](http://m.sohu.com/n/445606397/)

7.   100806 interfacebus.com

8.
9.

10.

11.

12.

13.