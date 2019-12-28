**Theora**是一個免權利金、開放格式的[有損](https://zh.wikipedia.org/wiki/破壞性資料壓縮 "wikilink")[影像壓縮技術](https://zh.wikipedia.org/wiki/影像壓縮 "wikilink")，由[Xiph.Org基金會](../Page/Xiph.Org基金會.md "wikilink")開發，該基金會還開發了著名的聲音編碼技術[Vorbis](https://zh.wikipedia.org/wiki/Vorbis "wikilink")，以及多媒體容器檔案格式[Ogg](../Page/Ogg.md "wikilink")。**libtheora**則是Xiph.Org基金會針對Theora格式的實作\[1\]\[2\]。

Theora是由[On2 Technologies公司專屬的](../Page/On2_Technologies.md "wikilink")[VP3編碼器](https://zh.wikipedia.org/wiki/VP3 "wikilink")，經過開放原始碼後衍生而來，目標是達成比[MPEG-4 Part 2更好的編碼效率](../Page/MPEG-4.md "wikilink")。Theora的命名來自於一個電視節目Max Headroom中的角色：Theora Jones\[3\]。

## 發展歷史

### 開發緣起

Theora的前身是由On2 Technologies所開發的專屬影像編碼格式*On2 TrueMotion VP3*，VP3.1在2000年5月推出，三個月後推出的VP3.2則成為了Theora的基礎\[4\]\[5\]\[6\]\[7\]。2001年8月，On2 Technologies宣佈將會釋出一個VP3.2的開放原始碼版本，同年9月在網站www.vp3.com上面釋出VP 3.2的原始碼以及演算法\[8\]\[9\]\[10\]\[11\]\[12\]\[13\]。

### 轉變為自由軟體

2002年3月，On2將VP3原始碼的許可認證更改為[LGPL](https://zh.wikipedia.org/wiki/LGPL "wikilink")\[14\]；同年6月，On2將VP3以BSD-like的許可認證方式捐贈給Xiph.Org基金會\[15\]\[16\]\[17\]\[18\]，並且放棄VP3包含的智慧財產，允使任何人將VP3編碼作更動、衍生\[19\]\[20\]。

2002年8月，On2宣佈和Xiph.Org基金會達成-{zh-hant:協議; zh-hans:协议}-，將會以VP3編碼器為基礎，製作一個新的影音編碼格式：Theora。On2認可Theora為VP3的後繼者，在2002年10月3日，On2和Xiph.Org基金會共同完成了Theora的實作：libtheora的最初版本，2003年6月9日，完成了Alpha 2版本\[21\]；2004年3月20日推出了Alpha 3版本\[22\]。

在VP3開放原始碼時，並沒有針對VP3的位元流格式做規範，2003年，Mike Melanson建立了一個不完整的VP3位元流描述，而後在Theora的規範中採用了部份VP3的位元流描述。\[23\]\[24\]

Theora的繼任者為[Daala](../Page/Daala.md "wikilink")\[25\]。

### Theora I規格

[I-15bis.ogg](https://zh.wikipedia.org/wiki/File:I-15bis.ogg "fig:I-15bis.ogg")雙翼滑翔機正在表演特技飛行。\]\]

Theora I位元流格式最終在2004年6月libtheora 1.0alpha3版本釋出後確立\[26\]，之後只要用libtheora編碼的影像都能夠正確無誤的播放\[27\]\[28\]，最終*Theora I規格*在2004年正式推出\[29\]。

Theora影像的實作libtheora花了數年的時間在測試版狀態，最終正式版1.0版本在2008年11月釋出\[30\]\[31\]，隨後針對libtheora 1.0版本的作改進的1.1版（代號*"Thusnelda"*）也在在2009年11月釋出\[32\]，1.1版本帶來了許多新特性和改進，像是位元率控制以及[二次{{}}編碼](https://zh.wikipedia.org/wiki/二次{{}}編碼 "wikilink")。下個版本的 libtheora 也正在開發中，代號為*Ptalarbvorm*\[33\]，不過目前Theora的程式碼已經近3年沒有重大更新，開發呈現停滯狀態\[34\]。

隨著Theora逐漸成熟，使用Theora編碼的軟體也逐漸增加，例如維基百科就以Theora作為影片的編碼格式。Theora也曾經被確認為HTML5影像編碼的標準格式，但是在一些爭論之後被撤銷\[35\]。

## 技術細節

Theora是一個[變動位元率](https://zh.wikipedia.org/wiki/可變位元速率 "wikilink")、以[DCT為基礎的影像壓縮格式](https://zh.wikipedia.org/wiki/DCT "wikilink")。和多數的影像編碼格式一樣，Theora使用了[色度抽樣](https://zh.wikipedia.org/wiki/色度抽樣 "wikilink")、block based motion compensation和8×8 DCT block，也支援[視訊壓縮圖像類型和](https://zh.wikipedia.org/wiki/intra-coded_frames（I-frames） "wikilink")[視訊壓縮圖像類型](https://zh.wikipedia.org/wiki/forward_predictive_frames（P-frames） "wikilink")，但是不支援使用在[H.264和](https://zh.wikipedia.org/wiki/H.264 "wikilink")[VC-1](../Page/VC-1.md "wikilink")的[bi-predictive frames（B-frame）](../Page/視訊壓縮圖像類型.md "wikilink")，Theora也不支援[隔行掃描](https://zh.wikipedia.org/wiki/隔行掃描 "wikilink")、可变帧率，或8位以上原色色深。\[36\]。

Theora的影像流可以儲存在任何的容器檔案格式中，最常用的是和聲音編碼[Vorbis一起儲存在](https://zh.wikipedia.org/wiki/Vorbis "wikilink")[Ogg](../Page/Ogg.md "wikilink")檔案格式中，這種方式可以提供完全開放、免權利金的多媒體檔案。此外Theora影像也可以儲存在[Matroska](../Page/Matroska.md "wikilink")檔案中\[37\]。

## 影像表現

### 編碼表現

早期的VP3\[38\]和Theora\[39\] \[40\] \[41\]編碼器在編碼結果上明顯不如同時期的其他編碼器。Google公司的員工Chris DiBona也在2009年宣稱Theora的編碼品質不佳\[42\]，為了回應這個論點，Xiph基金會的開發者用Theora 1.1版本的編碼器和[YouTube](../Page/YouTube.md "wikilink")上的[H.264以及](https://zh.wikipedia.org/wiki/H.264 "wikilink")[H.263](../Page/H.263.md "wikilink")+編碼器做比較，結果發現Theora的編碼畫質可以比擬H.264，且更勝於H.263+\[43\]\[44\]。

### 播放表現

針對Theora的硬體解碼器，目前有開放原始碼的[VHDL](../Page/VHDL.md "wikilink")程式正在開發中\[45\]。而2006年開始也有針對[Nios II以及](../Page/Nios_II.md "wikilink")[LEON處理器做為解碼器的開發計畫](https://zh.wikipedia.org/wiki/LEON "wikilink")\[46\]，不過目前並沒有任何可以針對Theora影像做硬體解碼的產品出現在市面上。

## 播放

### 瀏覽器原生支援

  - [Mozilla Firefox在](../Page/Firefox.md "wikilink")3.5之後的版本\[47\]\[48\]包括了[Firefox Mobile](https://zh.wikipedia.org/wiki/Firefox_Mobile "wikilink")（Fennec）\[49\]。

<!-- end list -->

  - [Google Chrome在](../Page/Google_Chrome.md "wikilink")3.0.182.2之後的版本\[50\]\[51\] including [Chromium](../Page/Chromium.md "wikilink") as of 14 July 2009.\[52\]。

<!-- end list -->

  - [SeaMonkey](../Page/SeaMonkey.md "wikilink")在2.0之後的版本\[53\]。

<!-- end list -->

  - [Konqueror](../Page/Konqueror.md "wikilink")在4.4.2之後的版本\[54\]\[55\]。

<!-- end list -->

  - [Opera在](https://zh.wikipedia.org/wiki/Opera "wikilink")10.50之後的版本\[56\]\[57\]，在Opera 9.5的實驗版本中也有支援\[58\]\[59\]。

### 瀏覽器外掛程式（Plug-in）

可以透過下列的[外掛程式讓瀏覽器播放Theora影像](https://zh.wikipedia.org/wiki/外掛程式 "wikilink")

  - [Annodex的外掛程式](https://zh.wikipedia.org/wiki/Annodex "wikilink")（透過[OggPlay](http://wiki.xiph.org/index.php/OggPlay)）
  - [Cortado](https://zh.wikipedia.org/wiki/Cortado_\(software\) "wikilink")，一個以[Java](../Page/Java.md "wikilink")語言開發的播放器應用程式（applet）
  - [VLC媒體播放器針對IE以及Firefox的瀏覽器外掛程式](https://zh.wikipedia.org/wiki/VLC_media_player "wikilink")

### 支援的應用程式

  - [FFmpeg](../Page/FFmpeg.md "wikilink")（有自己的實做）
  - [Helix Player](https://zh.wikipedia.org/wiki/Helix_project "wikilink")
  - [Miro Media Player](https://zh.wikipedia.org/wiki/Miro_Media_Player "wikilink")（舊名Democracy Player）
  - [MPlayer](../Page/MPlayer.md "wikilink")以及其前端程式
  - [Songbird](../Page/Songbird.md "wikilink")、[Totem](https://zh.wikipedia.org/wiki/Totem "wikilink")、[Moovida和所有以](https://zh.wikipedia.org/wiki/Moovida "wikilink")[GStreamer](../Page/GStreamer.md "wikilink")為基礎的播放器
  - [VLC](https://zh.wikipedia.org/wiki/VLC_media_player "wikilink")（原生支援）
  - [xine和以libxine為基礎的播放器](https://zh.wikipedia.org/wiki/xine "wikilink")，像是[Kaffeine](../Page/Kaffeine.md "wikilink")
  - [Dragon Player和所有以](../Page/Dragon_Player.md "wikilink")[Phonon為基礎的播放器](../Page/Phonon_\(KDE\).md "wikilink")

## 參見

  - [Ogg](../Page/Ogg.md "wikilink")
  - [WebM](../Page/WebM.md "wikilink")

## 参考资料

[Category:使用BSD許可證的軟體](https://zh.wikipedia.org/wiki/Category:使用BSD許可證的軟體 "wikilink") [Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10. StreamingMedia.com（2001-09-07）[On2 Offers Up VP3.2 Source Code](http://www.streamingmedia.com/article.asp?id=7871) , Retrieved on 2009-08-16
11. On2（2001-09-07）[On2 Technologies Makes Video Compression Technology Available to Open-Source Community](http://www.on2.com/index.php?id=486&news_id=364) , Retrieved on 2009-08-16
12.
13. Linux.com（2001-09-06）[On2 Technologies Open-Sources VP3 video compression code](http://www.linux.com/archive/feature/16482), Retrieved on 2009-08-16
14. The Free Library（2002-03-28）\[<http://www.thefreelibrary.com/On2+Alters+Licensing+Terms+for+VP3%3b+Company+Responds+to+Open+Source>...-a084233138 On2 Alters Licensing Terms for VP3; Company Responds to Open Source Community Demands.\], Retrieved on 2009-08-16
15. On2（2002-06-24）[VP3 Combines with Vorbis to Create First Open-Source Multimedia Platform](http://www.on2.com/index.php?id=486&news_id=313) , Retrieved on 2009-08-16
16.
17. Linux.com（2002-06-23）[Ogg Vorbis, VP3 combining forces to create Open Source multimedia package](http://www.linux.com/archive/articles/23630?tid=6), Retrieved on 2009-08-16
18. InternetNews.com（2002-06-24）[On2 Throws More Open-Source at MPEG-4](http://www.internetnews.com/bus-news/article.php/1370341), Retrieved on 2009-08-16
19. Xiph.org [libtheora license (Subversion - Trunk)](http://svn.xiph.org/trunk/theora/LICENSE), Retrieved on 2009-08-16
20. Xiph.org [VP32 codec license (Subversion - Trunk)](http://svn.xiph.org/trunk/vp32/LICENSE), Retrieved on 2009-08-16
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34. <https://github.com/aptana/studio3/pull/211>
35.
36.
37.
38.
39.
40.
41.
42.
43.
44.
45.
46.
47.
48.
49.
50.
51.
52.
53.
54.
55.
56.
57.
58.
59.