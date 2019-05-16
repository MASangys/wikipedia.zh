**VP8**是一個開放的[影像壓縮格式](https://zh.wikipedia.org/wiki/影像壓縮 "wikilink")，最早由[On2
Technologies開發](../Page/On2_Technologies.md "wikilink")，隨後由[Google釋出](../Page/Google.md "wikilink")。同時Google也釋出了VP8編碼的實作函式庫：**libvpx**，以[BSD授權條款的方式發行](https://zh.wikipedia.org/wiki/BSD授權條款 "wikilink")，隨後也附加了專利使用權\[1\]\[2\]\[3\]。而在經過一些爭論之後，最終VP8的授權確認為一個開放原始碼授權\[4\]\[5\]\[6\]\[7\]。

目前支援VP8的[網頁瀏覽器有](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")[Opera](https://zh.wikipedia.org/wiki/Opera "wikilink")、[Firefox和](../Page/Firefox.md "wikilink")[Chrome](https://zh.wikipedia.org/wiki/Chrome "wikilink")\[8\]。

## 發展歷史

VP8編碼的開發從2008年9月13日開始，目的是要取代舊有的VP7編碼格式\[9\]\[10\]。[Google在](../Page/Google.md "wikilink")2010年收購了On2之後\[11\]，各界便呼籲Google釋出VP8的原始碼，在2010年3月12日，[自由軟體基金會發表了一個公開信](https://zh.wikipedia.org/wiki/自由軟體基金會 "wikilink")，希望Google能夠逐漸的以[HTML5和開放的VP](../Page/HTML5.md "wikilink")8，取代[YouTube目前使用的](../Page/YouTube.md "wikilink")[Adobe
Flash
Player和](../Page/Adobe_Flash_Player.md "wikilink")[H.264](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")\[12\]。

2010年5月19日，Google在[Google
I/O年會上](https://zh.wikipedia.org/wiki/Google_I/O "wikilink")\[13\]，以[BSD授權條款的釋出了VP](https://zh.wikipedia.org/wiki/BSD授權條款 "wikilink")8編碼軟體，VP8的位元流格式則是以不可撤回的免費專利使用權釋出\[14\]。VP8也成為第二個On2
Technologies以開放原始碼方式釋出的編碼產品，前一個是捐贈給[Xiph.Org基金會的](../Page/Xiph.Org基金會.md "wikilink")[VP3](https://zh.wikipedia.org/wiki/VP3 "wikilink")\[15\]，隨後成為了影像編碼格式[Theora](../Page/Theora.md "wikilink")。

2013年3月，Google與[MPEG
LA達成協議](https://zh.wikipedia.org/wiki/MPEG_LA "wikilink")：Google取得VP8可能受影響的專利授權，同時Google也可以再次授權給VP8的使用者。\[16\]\[17\]

## 實作

### 編碼

目前VP8-{只}-能透過libvpx來進行編碼\[18\]，而Google聘用了[FFmpeg的開發者Ronald](../Page/FFmpeg.md "wikilink")
Bultje來開發基於[x264架構的VP](https://zh.wikipedia.org/wiki/x264 "wikilink")8編碼器，稱為xvp8，將來釋出後會整合在x264中\[19\]。而芬蘭的WebM硬體開發團隊則是釋出了暫存器轉換階層（Register
transfer level）的VP8硬體編碼器，提供給半導體製造商免費使用。\[20\]\[21\]

### 解碼

libvpx可以解碼VP8的影像\[22\]，在2010年7月23日，[FFmpeg的開發者Jason](../Page/FFmpeg.md "wikilink")
Garrett-Glaser、Ronald Bultje和David
Conrad發佈了名為ffvp8的VP8解碼器，測試結果顯示ffvp8比Google自己的libvpx解碼器效能更佳\[23\]。另外WebM專案的硬體團隊也有釋出暫存器轉換階層（Register
transfer level）的硬體解碼器，同樣是免費使用\[24\]\[25\]。

## 相關格式

### WebM

[WebM專案和VP](../Page/WebM.md "wikilink")8同時在2010年5月19日發表，Mozilla\[26\]、Opera\[27\]\[28\]、Google\[29\]和其他40多家廠商共同協助發展，目的是讓VP8成為HTML5的影像格式\[30\]。WebM為一個容器格式，影像部份使用VP8，聲音格式則是使用[Vorbis](https://zh.wikipedia.org/wiki/Vorbis "wikilink")\[31\]\[32\]。Internet
Explorer
9可以透過安裝解碼器支援WebM影像\[33\]，行動作業系統[Android則是在](../Page/Android.md "wikilink")2.3版（Gingerbread）之後支援WebM\[34\]。[Adobe也宣佈會在將來的](https://zh.wikipedia.org/wiki/Adobe_Systems "wikilink")[Flash
Player中支援VP](../Page/Adobe_Flash_Player.md "wikilink")8影像的播放。\[35\]

### WebP

在2010年9月30日，Google發佈了WebP，是以VP8編碼為基礎的圖片檔案格式\[36\]，目的是取代現有的[JPEG](../Page/JPEG.md "wikilink")，作為網路圖片的傳輸使用，使用的容器格式為[Resource
Interchange File
Format](https://zh.wikipedia.org/wiki/Resource_Interchange_File_Format "wikilink")（RIFF）。

## 和H.264的比較

H.264是目前使用最多的網路影像編碼格式，因此最常拿來和VP8做比較。

[H.264的編碼技術包含專利](https://zh.wikipedia.org/wiki/H.264 "wikilink")（由MPEG-LA提供授權），而且在硬體上使用需要取得授權，VP8則不需要。即使有Google的背書，但VP8仍然很難避過所有的專利，其下場可能跟[VC-1一樣](../Page/VC-1.md "wikilink")。管理H.264专利池的MPEG
LA声称有12家公司持有Google VP8的相關专利。\[37\]美国MPEG
LA表示：“建立VP8专利池的相关准备正在进行”。\[38\]\[39\]

2013年3月，Google與[MPEG
LA及](https://zh.wikipedia.org/wiki/MPEG_LA "wikilink")11個專利持有者達成協議，讓Google取得VP8以及其之前的VPx等編碼所**可能**侵犯的專利授權，同時Google也可以無償再次授權相關專利給VP8的使用者，此協議同時適用於下一代VPx編碼。至此MPEG
LA放棄成立VP8[專利集中授權聯盟](https://zh.wikipedia.org/wiki/專利池 "wikilink")，VP8的使用者將可確定無償使用此編碼而無須擔心**可能的**專利侵權授權金的問題。\[40\]

根據MSU Graphics & Media Lab在2011年5月的測試，VP8需要約213%的資料量，才能達到和H.264相同的影像品質
\[41\]。

[x264的開發者之一](https://zh.wikipedia.org/wiki/x264 "wikilink")：Jason
Garrett-Glaser，給了一些針對VP8的評論，他認為VP8目前並沒有实现真正的位元流規範，而且在一些編碼的技術上有所欠缺\[42\]\[43\]。

## 参见

  - [HTML5](../Page/HTML5.md "wikilink")
  - [WebM](../Page/WebM.md "wikilink")
  - [WebP](../Page/WebP.md "wikilink")
  - [Theora](../Page/Theora.md "wikilink")
  - [VP9](../Page/VP9.md "wikilink")

## 参考

## 外部链接

  - [WebM項目](http://www.webmproject.org/)

  - [Technical Overview Of VP8, An Open Source Video CODEC for the
    Web](http://static.googleusercontent.com/external_content/untrusted_dlcp/research.google.com/en/us/pubs/archive/37073.pdf)（PDF文件）

  - [In Depth Analysis of VP8 and
    WebM](https://web.archive.org/web/20100521090604/http://x264dev.multimedia.cx/?p=377)

  - [VP8视频格式初探](http://www.ruanyifeng.com/blog/2010/05/the_first_view_of_vp8.html)-上文的简单翻译

  - [VP8 Data Format and Decoding
    Specification](http://www.webmproject.org/media/pdf/vp8_bitstream.pdf)

[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink")
[Category:开放源代码](https://zh.wikipedia.org/wiki/Category:开放源代码 "wikilink")
[Category:电脑术语](https://zh.wikipedia.org/wiki/Category:电脑术语 "wikilink")
[Category:Google](https://zh.wikipedia.org/wiki/Category:Google "wikilink")

1.
2.
3.

4.

5.

6.

7.

8.  <http://www.h-online.com/open/news/item/Nokia-lines-up-patents-against-VP8-video-codec-1829299.html>

9.

10.

11. <http://investor.google.com/releases/20100219.html>

12.

13.

14. <http://www.webmproject.org/license/>

15. The Free Library (2002-08-01) [On2 Signs Pact With Xiph.org to
    Develop/Support
    VP3](http://www.thefreelibrary.com/ON2+SIGNS+PACT+WITH+XIPH.ORG+TO+DEVELOP%2FSUPPORT+VP3-a089067501),
    Retrieved on 2009-08-16

16.

17.

18.

19.

20.

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

34.

35.

36.

37.

38.

39.

40.

41.

42.

43.