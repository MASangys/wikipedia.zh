<table>
<thead>
<tr class="header">
<th><p><span style="color: #CC0000;">@</span><span style="font-family: Times New Roman;">{{ #expr: {{ #expr: 1000*{{ #expr: 60*{{ #expr: +{{ #expr: 60*{{ #switch: {{ #expr: +1}} | 24 = 0 | #default = {{ #expr: +1}}}}}}}}+{{ #time: s}}}}}}/86400 round 2}}</span></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>現在的Swatch因特网时间，<br />
等於<a href="../Page/UTC+08:00.md" title="wikilink">UTC+08:00</a><em>' {{ #switch: {{ #expr: +8}} | 24 = 00 | 25 = 01 | 26 = 02 | 27 = 03 | 28 = 04 | 29 = 05 | 30 = 06 | 31 = 07 | 8 = 08 | 9 = 09 | #default = {{ #expr: +8}}}}時分{{ #time: s}}秒</em>'。</p></td>
</tr>
<tr class="even">
<td><div style="text-align: right;">
<p><small>※如果時間不對可</small></p>
</div></td>
</tr>
</tbody>
</table>

**Swatch網際網路時間**（Swatch Internet
Time），是[瑞士著名鐘錶業者](https://zh.wikipedia.org/wiki/瑞士 "wikilink")[Swatch與](https://zh.wikipedia.org/wiki/Swatch "wikilink")[麻省理工學院媒體實驗室創辦人](https://zh.wikipedia.org/wiki/麻省理工學院媒體實驗室 "wikilink")[尼古拉斯·尼葛洛龐帝](../Page/尼古拉斯·尼葛洛龐帝.md "wikilink")（）於1998年10月23日合作制定的一種時間度量衡制度，作為網路時制的一種方案，目的之一是為了克服[時區問題](https://zh.wikipedia.org/wiki/時區 "wikilink")，讓世界各地能在同一時間基礎上溝通，不過實際應用並未普及，常見於Swatch所生產的鐘錶上。

## 規格

1.  以Swatch總部（位於瑞士[比爾市](https://zh.wikipedia.org/wiki/比爾市 "wikilink")）的時間為基準時間，稱為「比爾標準時間（Biel
    Mean
    Time，縮寫為**BMT**）」，該地時間相當於中歐時區，也就是[UTC+1](https://zh.wikipedia.org/wiki/UTC+1 "wikilink")。
2.  一律改採計算簡便的[10進制](https://zh.wikipedia.org/wiki/10進制 "wikilink")，而非傳統的[12進制及](https://zh.wikipedia.org/wiki/12進制 "wikilink")[60進制混用](https://zh.wikipedia.org/wiki/60進制 "wikilink")。
3.  將原來的一天24[小時劃分為](https://zh.wikipedia.org/wiki/小時 "wikilink")1000個等份，各等份稱為一個「**.Beat**」（拍／角刻），因此一個Beat相當於86.4秒（=1分26.4秒）。另有一輔助單位「**.cBeat**」（分拍／毫刻），為Beat的1/100，即0.864秒。
4.  一天的起始時間（UTC+1時間的午夜0:00）記為「@000」，結束時間為「@999」，且皆以BMT為準，不像傳統時制有時區之別。因此除了傳統上與BMT同時區的地區之外，各地傳統的午夜0:00都不是@000。

## 算式

| 上午 | :00     | :30     |    | 下午      | :00     | :30 |
| -- | ------- | ------- | -- | ------- | ------- | --- |
| 00 | @708.33 | @729.17 | 12 | @208.33 | @229.17 |     |
| 01 | @750.00 | @770.83 | 13 | @250.00 | @270.83 |     |
| 02 | @791.67 | @812.50 | 14 | @291.67 | @312.50 |     |
| 03 | @833.33 | @854.17 | 15 | @333.33 | @354.17 |     |
| 04 | @875.00 | @895.83 | 16 | @375.00 | @395.83 |     |
| 05 | @916.67 | @937.50 | 17 | @416.67 | @437.50 |     |
| 06 | @958.33 | @979.17 | 18 | @458.33 | @479.17 |     |
| 07 | @000.00 | @020.83 | 19 | @500.00 | @520.83 |     |
| 08 | @041.67 | @062.50 | 20 | @541.67 | @562.50 |     |
| 09 | @083.33 | @104.17 | 21 | @583.33 | @604.17 |     |
| 10 | @125.00 | @145.83 | 22 | @625.00 | @645.83 |     |
| 11 | @166.67 | @187.50 | 23 | @666.67 | @687.50 |     |

UTC+8與Beat時間的換算

\[Beat = 1000 \ \frac{60 (60 (h-x) + m) + s}{86400}\]

其中

\[h=\]所在時區的小時（[24時制](https://zh.wikipedia.org/wiki/24時制 "wikilink")）；

\[m=\]所在時區的分鐘；

\[s=\]所在時區的秒數；

\[x=\]所在時區與UTC+1的時差。

如果\((h-x)\)為負值，可\(+24\)轉為正值。

將[UTC+8換算成Beat時](https://zh.wikipedia.org/wiki/UTC+8 "wikilink")，上述\(x\)以\(7\)代入。

## 人類歷史上類似的度量衡方法

### 中國

古代中國除使用「[時辰](https://zh.wikipedia.org/wiki/時辰 "wikilink")」報時制，亦有使用「[刻](../Page/刻.md "wikilink")」計時：把1日分為100刻，每刻正好等於Swatch因特网时间的每10「**.Beat**」（拍／角刻）。

### 法國

[法蘭西第一共和國時期的革命曆法](https://zh.wikipedia.org/wiki/法蘭西第一共和國 "wikilink")「[法國共和曆](../Page/法國共和曆.md "wikilink")」，把1日分為10小時，把1小時分為100分鐘，把1分鐘分為100秒；而其曆法上分鐘和秒的時間含量正好分別等於Swatch因特网时间的「**.Beat**」（拍／角刻）和「**.cBeat**」（分拍／毫刻）。但Swatch因特网时间跟法國共和曆不同的是，Swatch因特网时间並不含[時差調整的因素設定](https://zh.wikipedia.org/wiki/時差 "wikilink")。

## 外部連結

  - [Swatch因特网时间官方網站
    (台灣)](https://web.archive.org/web/20081205133722/http://www.swatch.com/tw_zh/internettime.html)
  - [Swatch因特网时间官方網站
    (中國大陸)](https://web.archive.org/web/20081019234535/http://www.swatch.com/cn_zh/internettime/itime_howitworks.html)

[Category:时间标准](https://zh.wikipedia.org/wiki/Category:时间标准 "wikilink")
[Category:时间单位](https://zh.wikipedia.org/wiki/Category:时间单位 "wikilink")
[Category:瑞士发明](https://zh.wikipedia.org/wiki/Category:瑞士发明 "wikilink")