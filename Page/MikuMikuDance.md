**M**iku**M**iku**D**ance，簡稱為**MMD**，又稱**未來未來舞**、**萌萌躂**，是[日本人](../Page/日本人.md "wikilink")所開發的一款免費的[3D動畫製作軟體](https://zh.wikipedia.org/wiki/3D動畫 "wikilink")，通过其他3D建模軟體將[VOCALOID](../Page/VOCALOID.md "wikilink")的[初音未來](../Page/初音未來.md "wikilink")等角色製作成3D模組后導入MikuMikuDance進行動畫製作。

## 概要

MikuMikuDance在2008年2月24日公開，至3月10日已超過11萬人下載\[1\]。同年10月29日為止[NICONICO動畫上含有](https://zh.wikipedia.org/wiki/NICONICO動畫 "wikilink")「MikuMikuDance」標籤的投稿動畫更有2300件以上。

此軟體由[Visual C++](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink") 2005 Express Edition、[DirectX](../Page/DirectX.md "wikilink") 7 SDK開發，所需[硬碟容量相當少](https://zh.wikipedia.org/wiki/硬碟 "wikilink")，[解壓縮後也只有數MB程度](https://zh.wikipedia.org/wiki/解壓縮 "wikilink")。初音未來的3D模型基於為「」所製作的資料，並經過一些輕量化步驟減少容量。

由所製作、能夠讓[鏡音鈴跳舞的非官方測試版](https://zh.wikipedia.org/wiki/鏡音鈴 "wikilink")「RinRinDance」，在初音未來發售一週年的2008年8月30日整合至MikuMikuDance 3.01版（另一個角色是「」），從此可以同時編輯顯示複數的角色。2008年9月11日的3.10版加入[鏡音連](https://zh.wikipedia.org/wiki/鏡音連 "wikilink")、10月30日3.20版加入「」、11月23日3.21a版加入「」，2009年1月5日3.40版加入[KAITO](https://zh.wikipedia.org/wiki/KAITO "wikilink")、3月5日4.00版加入初音未來Ver.2，2010年1月20日6.19版加入鏡音鈴Act2、8月23日7.07版加入[MEIKO](https://zh.wikipedia.org/wiki/MEIKO "wikilink")，現在總共可以使用11個角色。2009年5月25日4.03版加入英語顯示，2010年11月16日7.17版開始可以在日文版以外的[Windows執行](https://zh.wikipedia.org/wiki/Windows "wikilink")。

2009年7月2日發表的5.00版加入物理運算機能後，從前需要由人手調整的角色頭髮或裙擺等等現在都可以交由程式運算。

2010年9月18日，舞力介入Ｐ於NICONICO動畫發表MikuMikuDance的擴充工具MikuMikuEffect\[2\]，可以做到原始MikuMikuDance無法呈現的特效，例如招風、喚雨、下雪、火炎、材質變換、特殊光線、特殊背景等等。

目前最新版MikuMikuDance能與Open[Kinect](../Page/Kinect.md "wikilink")進行連結，並利用Kinect捕捉製作者動態，直接調整MikuMikuDance的人物模組動作。

樋口優於2011年5月27日宣布退出MikuMikuDance的發展\[3\]\[4\]\[5\]，因此7.39曾經被視為是MikuMikuDance最終版本。

但在2011年10月25日，樋口優再次對MikuMikuDance進行修正性更新，也是目前32位元版本中的最終穩定版本，版本號為7.39.或稱7.39dot。

2012年8月15日，距離樋口優宣布退出後，第三度對MikuMikuDance做出更新，釋出64位元版本，版本號為7.39.x64\[6\]。更新中包括支援[多執行緒運算](https://zh.wikipedia.org/wiki/多執行緒 "wikilink")、使用 [Radeon](../Page/Radeon.md "wikilink") 系列顯示卡時 AVI 輸出高速化\[7\]、[Mipmap](../Page/Mipmap.md "wikilink") 成為標準配備功能、其他使用體驗上的更新。另有非正式公開的32位元多執行緒版本\[8\]。

其後一直到2012年底以前，樋口優多次做出小幅度更新，但版本號仍舊維持7.39.x64。

自從樋口優宣布退出開發後，由Mogg所開發的MikuMikuMoving便繼承遺志，被視為MikuMikuDance的後繼者\[9\]。目前更新速度頻繁，相較於MikuMikuDance有較多的新功能可使用，也支援最新的PMX2.1\[10\]與[SoftBody技術](https://zh.wikipedia.org/wiki/SoftBody "wikilink")。但起始操作介面較為複雜、小功能較多，對於新手較難入門。目前最新版本是2018年6月3日公開的1.2.9.2版。\[11\]

2013年6月1日，樋口優重啟開發MikuMikuDance的作業：目前為止最新版本是為應對[Windows 10系統](../Page/Windows_10.md "wikilink")，在2017年12月公開的9.31版。\[12\]

## 軟體問題

雖然MikuMikuDance有提供英文版介面，但軟體本身並非完全支援[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")。以中文語系的Windows使用者為例，通常情況下，將一個只有包含日文名稱、bone標籤的PMX模型載入MikuMikuDance，骨骼（bone）會變成[亂碼](../Page/亂碼.md "wikilink")。亂碼會導致bone旋轉異常、vmd動作數據載入失敗。

此亂碼問題無法使用[AppLocale解決](https://zh.wikipedia.org/wiki/AppLocale "wikilink")，因為它會導致MikuMikuDance在某些功能上強制關閉。

目前解決方法有兩個：

1.  將「控制台\>時鐘、語言和區域\>地區及語言\>系統管理\>非Unicode程式的語言」更改為日文（日本），但此解決方法只適用於[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")。
2.  使用非官方編譯的[漢化](../Page/漢化.md "wikilink")版。

## 角色模組

7.07版為止內建的可用角色。

  - [初音未來](../Page/初音未來.md "wikilink")
  - 初音未來Ver2
  - 初音未來metal
  - [鏡音鈴](../Page/鏡音鈴、連.md "wikilink")
  - 鏡音鈴Act2
  - [鏡音連](../Page/鏡音鈴、連.md "wikilink")
  - [亞北ネル](https://zh.wikipedia.org/wiki/初音未來#衍生角色 "wikilink")
  - [弱音ハク](https://zh.wikipedia.org/wiki/初音未來#衍生角色 "wikilink")
  - 咲音MEIKO
  - [MEIKO](https://zh.wikipedia.org/wiki/MEIKO "wikilink")
  - [KAITO](https://zh.wikipedia.org/wiki/KAITO "wikilink")

## 知名作品

MikuMikuDance發佈以來不斷有新發想、模組所製作的作品公開。另有一群志工為了推廣而自發舉辦[MMD杯](https://sites.google.com/site/mmdcuphp/)選拔大會，每年兩次，由參加者從當屆主題中擇一製作影片，經過初選及決賽的網路投票選出最受歡迎作品。

| 作品                                                                        | 公開日         | 紀錄                | 說明                                                                                                                                                                                                                                       |
| ------------------------------------------------------------------------- | ----------- | ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [](http://www.nicovideo.jp/watch/sm3540549)                               | 2008年6月3日   | 10月29日超過66萬次觀看    | 日本綜藝節目《》的重現影片。                                                                                                                                                                                                                           |
| [](http://www.nicovideo.jp/watch/sm4220022)                               | 2008年8月8日   | 10月29日超過38萬次觀看    | 歌曲為電視動畫《[偶像宣言](https://zh.wikipedia.org/wiki/偶像宣言 "wikilink")》第2首片頭曲，由演唱的「」。影片忠實重現了歌曲MV中的舞蹈。                                                                                                                                             |
| [](http://www.nicovideo.jp/watch/sm4242615)                               | 2008年8月10日  | 第1屆MMD杯優勝作品\[13\] | 歌曲為電視動畫《[超時空要塞 Frontier](https://zh.wikipedia.org/wiki/超時空要塞_Frontier "wikilink")》的插入曲「[星間飛行](../Page/星間飛行.md "wikilink")」。                                                                                                              |
| [MikuMikuDanceでVirtual Insanity](http://www.nicovideo.jp/watch/sm4975807) | 2008年10月18日 | 10月29日超過20萬次觀看    | [傑米羅奎爾](../Page/傑米羅奎爾.md "wikilink")的歌曲，原曲MV贏得MTV錄影帶大獎多個獎項殊榮。該影片相當完整地重現MV內容。                                                                                                                                                             |
| [](http://www.nicovideo.jp/watch/sm6150411)                               | 2009年2月14日  | 第2屆MMD杯優勝作品       | 背景歌曲是《[男女蹺蹺板](../Page/男女蹺蹺板.md "wikilink")》的「」。                                                                                                                                                                                          |
| [Chaining Intention【PV】](http://www.nicovideo.jp/watch/sm9692478)         | 2010年2月13日  | 第4屆MMD杯優勝作品       | 初音未來原創歌曲PV。使用Lat所製作的初音未來3D模組。                                                                                                                                                                                                            |
| \[<http://www.nicovideo.jp/watch/sm11820316> Bad AApple                   | \]          | 2010年8月20日        | 第5屆MMD杯優勝作品                                                                                                                                                                                                                              |
| [-DDR-神速ステップ-](http://www.nicovideo.jp/watch/sm13571564)                  | 2011年2月12日  | 第6屆MMD杯優勝作品       | 由初音在360°舞台表現超人的[Dance Dance Revolution舞踏技巧](https://zh.wikipedia.org/wiki/Dance_Dance_Revolution "wikilink")，以及其他搞怪要素。                                                                                                                   |
| [Sweet Magicを魔法使い　が踊ってくれました](http://www.nicovideo.jp/watch/sm15356096)    | 2011年8月19日  | 第7屆MMD杯優勝作品       | 目前NICONICO動畫上最高點閱的MMD作品。                                                                                                                                                                                                                 |
| [MMDDFF【FF再現バトル】](http://www.nicovideo.jp/watch/sm16944590)               | 2012年2月12日  | 第8屆MMD杯優勝作品       | 《[最終幻想](https://zh.wikipedia.org/wiki/最終幻想 "wikilink")》戰鬥重現影片，超過300萬次點閱。                                                                                                                                                                 |
| [MMDスーパーロボット大戦Z](http://www.nicovideo.jp/watch/sm18668868)                | 2012年8月20日  | 第9屆MMD杯優勝作品       | 以MMD表現《[超級機器人大戰](https://zh.wikipedia.org/wiki/超級機器人大戰 "wikilink")》影片。                                                                                                                                                                   |
| [戦場アイドル春香さん](http://www.nicovideo.jp/watch/sm20088507)                    | 2013年2月15日  | 第10屆MMD杯優勝作品      | 《[偶像大師](https://zh.wikipedia.org/wiki/偶像大師 "wikilink")》角色與《[潛龍諜影](../Page/潛龍諜影系列.md "wikilink")》的結合。                                                                                                                                     |
| [ルパン三世ＶＳアイドルマスター](http://www.nicovideo.jp/watch/sm21606743)               | 2013年8月16日  | 第11屆MMD杯優勝作品      | 《[魯邦三世](https://zh.wikipedia.org/wiki/魯邦三世 "wikilink")》與《偶像大師》的共演。                                                                                                                                                                       |
| [艦娘たちの円舞曲](http://www.nicovideo.jp/watch/sm22835208)                      | 2014年2月14日  | 第12屆MMD杯優勝作品      | 由三段[動畫MV風格影片穿插小故事構成的](../Page/动画音乐录像.md "wikilink")《[艦隊收藏](https://zh.wikipedia.org/wiki/艦隊收藏 "wikilink")》作品。歌曲分別出自《[進擊的巨人](../Page/進擊的巨人.md "wikilink")》、《[蒼藍鋼鐵戰艦](../Page/蒼藍鋼鐵戰艦.md "wikilink")》、《[輕鬆百合](../Page/輕鬆百合.md "wikilink")》。 |
| [艦これエクストリーム演習 FULL BOOST！](http://www.nicovideo.jp/watch/sm24268856)      | 2014年8月18日  | 第13屆MMD杯優勝作品      | 以《》風格表現《艦隊收藏》的作品。                                                                                                                                                                                                                        |
| [声なき声に力を。](http://www.nicovideo.jp/watch/sm25567517)                      | 2015年2月13日  | 第14屆MMD杯優勝作品      | 一般男性[律师與](https://zh.wikipedia.org/wiki/律师 "wikilink")《[超人力霸王傑克](../Page/超人力霸王傑克.md "wikilink")》的結合。                                                                                                                                     |
| [生まれる](http://www.nicovideo.jp/watch/sm26950809)                          | 2015年8月17日  | 第15屆MMD杯優勝作品      | 由一般男性[律师的恐怖影片](https://zh.wikipedia.org/wiki/律师 "wikilink")。                                                                                                                                                                             |

## 相關軟體

  - **MikuMikuVoice**

> 除了MikuMikuDance以外，還開發了能夠將自己演唱的歌曲讓初音未來等角色歌唱的「MikuMikuVoice」\[14\]。即使是不懂樂譜的人，只要會唱歌，就能夠保留原曲的氣氛將歌曲變成由初音未來等角色演唱。

  - **PMXEditor/PMDEditor**\[15\]

> 簡稱為**PE**，全名PMDEditor，或是PMXEditor，前者為舊版，後者為新版，製作者為日本人「極北P」。
>
> 是一個MikuMikuDance專用的簡易建模和修模軟體，相較於專業級建模軟體，PE操作與功能較為簡易，但它保留必備的功能來專門編輯MikuMikuDance使用的模型，並且作者極北P也協助制訂了PMX2.1標準，使的PE成為使用MikuMikuDance時的必備軟體之一。但對於初次接觸的使用者而言，操作介面仍舊稍微複雜。
>
> PE適合做換頭、增減衣著首飾之類。同時也可以匯出X格式模型，用它來綁骨和加剛體。舊版本是PMD和PMX都支援，新版是專門支援PMX，但仍可以使用「匯出」功能保存為PMD或X。
>
> 其他的3D建模軟體（例如：Metasequoia水杉）若想做MMD專用模型需要安裝相應的外掛插件。

  - **mikumikumoving（简称MMM）** 是一款由Mogg开发的与MikuMikuDance相兼容,可以进行3DCG动画制作的软件。

## 參考資料

## 外部連結

  -

  -

  - [VPVP wiki](http://www6.atwiki.jp/vpvpwiki/) - MikuMikuDance相關綜合wiki

  - [Niconico大百科上對MikuMikuDance的介紹](http://dic.nicovideo.jp/a/mikumikudance)

  - [Lat式ミクとは (ラトシキミクとは) ニコニコ大百科](http://dic.nicovideo.jp/a/lat%E5%BC%8F%E3%83%9F%E3%82%AF)

  - [NICO上查詢模型下載的MMDモデル配布あり檢索結果。請登錄NICO用戶後再進入本檢索結果查看](http://www.nicovideo.jp/tag/MMD%E3%83%A2%E3%83%87%E3%83%AB%E9%85%8D%E5%B8%83%E3%81%82%E3%82%8A)

[Category:三维图像软件](https://zh.wikipedia.org/wiki/Category:三维图像软件 "wikilink") [Category:動畫軟件](https://zh.wikipedia.org/wiki/Category:動畫軟件 "wikilink") [Category:免費軟體](https://zh.wikipedia.org/wiki/Category:免費軟體 "wikilink") [Category:Vocaloid](https://zh.wikipedia.org/wiki/Category:Vocaloid "wikilink")

1.
2.  <http://www.nicovideo.jp/watch/sm12149815MikuMikuEffect>
3.
4.
5.
6.
7.
8.
9.
10.
11. <https://sites.google.com/site/mikumikumoving/>
12. <http://www6.atwiki.jp/vpvpwiki>
13.
14.
15.