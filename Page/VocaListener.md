> 本文内容由[VocaListener](https://zh.wikipedia.org/wiki/VocaListener)转换而来。


**VocaListener**（簡稱****）是一個自動測定用戶歌聲的[語音合成參數的系統](https://zh.wikipedia.org/wiki/語音合成 "wikilink")，可以簡單地把輸入的歌聲轉換成另一種風格或聲質的技術。技術分為三部分：一是合成歌聲模仿目標歌聲的核心技術「VocaListener-core」，二是編輯目標歌聲的技術「VocaListener-plus」，三是分析歌聲的技術「VocaListener-front-end」。主要由中野倫靖和後藤真孝參與研究，先後以[VOCALOID 2的](../Page/VOCALOID.md "wikilink")[初音未來](../Page/初音未來.md "wikilink")、[鏡音鈴、連](../Page/鏡音鈴、連.md "wikilink")、[GACKPOID和VOCALOID的](https://zh.wikipedia.org/wiki/GACKPOID "wikilink")[MEIKO](https://zh.wikipedia.org/wiki/MEIKO "wikilink")、[KAITO作研究測試](https://zh.wikipedia.org/wiki/KAITO "wikilink")，採用的原因是因為產品已發放於市場，較容易入手。而音樂採用RWC研究用音樂資料庫（流行音樂）（RWC-MDB-P-2001）。研究目的是希望可以做到輕易合成高品質的歌聲，從而探索動聽歌聲的技巧，並在歌唱中得知人類個人的知覺。

## 歷史

技術早於2006年8月已進行研究\[1\]。最初於2008年4月28日公開，於[NICONICO動畫上載](https://zh.wikipedia.org/wiki/NICONICO動畫 "wikilink")[音樂軟件](https://zh.wikipedia.org/wiki/音樂軟件 "wikilink")[初音未來](../Page/初音未來.md "wikilink")版本的《[PROLOGUE](http://www.nicovideo.jp/watch/sm3128145)》，歌曲原唱為[聲優](../Page/聲優.md "wikilink")[緒方智美](https://zh.wikipedia.org/wiki/緒方智美 "wikilink")。但最初只是寫作簡稱「」，並沒有正式發表技術，是一個試驗性質的公開。當時正值初音未來熱潮後不久，其極為自然、非常接近人類的歌聲大大超越初音未來平常歌曲的水準而被稱為「神調教」（把初音未來的歌曲調整得十分自然之意），更引起一段短暫對新技術真相的猜測\[2\]。同年5月2日承認「」就是VocaListener\[3\]。在5月28日的[第75回音樂資訊科學研究會](http://www.ipsj.or.jp/sigmus/SIG/sig200805program.html)正式發表。6月6日再公開鏡音鈴版本的《[Game of Love](http://www.nicovideo.jp/watch/sm3571447)》，歌曲原唱為[吉井弘美](https://zh.wikipedia.org/wiki/吉井弘美 "wikilink")。9月22日再同時公開KAITO、MEIKO、初音未來、鏡音鈴、連ACT2、GACKPOID和合唱版本的[演歌](../Page/演歌.md "wikilink")《大漁船》，2009年2月6日再公開[巡音流歌](../Page/巡音流歌.md "wikilink")的版本，歌曲原唱為西一男。4月27日開始[Yamaha的](https://zh.wikipedia.org/wiki/Yamaha "wikilink")「」Alpha版測試，只提供部份功能\[4\]。

## 技術

系統先以VocaListener-front-end分析目標歌聲和歌詞，辨認音高、音量、歌詞等，再由用戶以VocaListener-plus編輯修正，其後以VocaListener-core分析歌聲並加以合成，反覆測定音高、音量、歌詞等的相似度，由用戶加以微調，最後得到合成歌聲的參數。

### VocaListener-core

這是合成歌聲模仿目標歌聲的核心技術，由歌聲分析、歌聲合成、反覆的合成參數更新三種要素組成。歌聲分析的對象不止目標歌聲，亦會對合成後的歌聲作出分析，但分析的使用技術[Viterbi alignment會有辨認錯誤的問題](https://zh.wikipedia.org/wiki/Viterbi_alignment "wikilink")，需要反覆分析，務求兩者的風格盡量相近。判定音高分為[MIDI](../Page/MIDI.md "wikilink")的音名數值和[滑音](../Page/滑音.md "wikilink")斜率。在音名數值中，組合VOCALOID 2滑音斜率（PIT、Pitch Bend）和滑音斜率敏感度（PBS、Pitch Bend Sensitivity）最多可以做出高或低兩個[八度](../Page/八度.md "wikilink")的滑音，而音名數值由以下數式選擇（NoteNumber：音名數值、σ=0.03、t是音符長度。）：

\({NoteNumber}=\overset{argmax}{n}{\Big({\sum_t exp}{\Big\{-\frac{{(n-F_0(t))^2}}{2\sigma^2}\Big\}}\Big)}\)

而合成歌聲是\(F0\overset{(n)}{syn}(t)\)、目標歌聲則是\(F0_{org}(t)\)。經過重複計算而把兩個數值不斷更新，變得相似。把PIT和PBS轉換為數式則是如此：

\({Pb}^{(n+1)}{(t)}={Pb}^{(n)}{(t)}+{\Big({{F0_{org}}(t)}-{F0\overset{(n)}{syn}(t)}\Big)}\)

而音量測定上是使用相對數值，反覆測定而得到從0至127的強弱（DYN、Dynamics）數值。

### VocaListener-plus

這是編輯目標歌聲的技術，可以令歌聲有更廣闊的種類，但並非一定要使用。技術中分為兩種類，分別是改變[音高](../Page/音高.md "wikilink")和改變歌唱風格的機能。前者的改變音高，用途可以是修正[走音](https://zh.wikipedia.org/wiki/走音 "wikilink")，或可以合成原唱者不能唱出的音高。然而在音符較短的時候，可能會不能修正音高。後者可調整[振音的強弱](https://zh.wikipedia.org/wiki/振音 "wikilink")、音高、[音量的平滑感](https://zh.wikipedia.org/wiki/音量 "wikilink")，藉以改變歌唱風格，甚至加強歌唱的表現。

### VocaListener-front-end

VocaListener-front-end則分為歌聲分析及歌聲合成，在歌聲分析中需要從原歌聲中抽出音高、音量、發音開始時間和[音長](../Page/音長.md "wikilink")。

  - 音高
    由以下數式轉換為[MIDI](../Page/MIDI.md "wikilink")的[音名](../Page/音名.md "wikilink")數值（fHz：[基本頻率](../Page/基本頻率.md "wikilink")、fNoteNumber：MIDI的音名數值）：

\({fNoteNumber}={12}*{\log_2}\frac{fHz}{440}+{69}\)

  - 音量
    由以下數式計算（N：窗幅、x(t)：聲音[波形](https://zh.wikipedia.org/wiki/波形 "wikilink")、h(t)：[窗函數](https://zh.wikipedia.org/wiki/窗函數 "wikilink")）：

\(Pow(t)=\sum_{r=t-N/2}^{t+N/2} {\Big(\sqrt{(x(r)*h(r-t))^2}\Big)}\)

  -
    技術中N為2048（約46[毫秒](https://zh.wikipedia.org/wiki/毫秒 "wikilink")）、h(t)為[漢寧（Hanning）窗](https://zh.wikipedia.org/wiki/窗函数#Hann窗 "wikilink")。
  - 發音開始時間和音長
    使用Viterbi alignment辨認音聲，再從歌詞轉換為[音素](https://zh.wikipedia.org/wiki/音素 "wikilink")，但偶然會有辨認錯誤，需要用戶修正。

## 參見

  - [語音合成](https://zh.wikipedia.org/wiki/語音合成 "wikilink")
  - [VOCALOID](../Page/VOCALOID.md "wikilink")
  - [產業技術綜合研究所](https://zh.wikipedia.org/wiki/產業技術綜合研究所 "wikilink")

## 参考資料

<div class="references-small">

<references />

  -
  -

</div>

## 外部連結

  - [VocaListener](http://staff.aist.go.jp/m.goto/VocaListener/index-j.html)

  - [NICONICO動畫：VocaListener Demonstrations](http://www.nicovideo.jp/mylist/7012071)

  - [產業技術綜合研究所](http://www.aist.go.jp/)

  - [後藤 真孝's Home Page](http://staff.aist.go.jp/m.goto/index-j.html)

  - [中野倫靖個人檔案](https://web.archive.org/web/20050313024231/http://www.slis.tsukuba.ac.jp/~nakano/profile.html)

  - [RWC音樂資料庫：流行音樂](http://staff.aist.go.jp/m.goto/RWC-MDB/rwc-mdb-p.html)

  - [RWC音樂資料庫：音樂分類](http://staff.aist.go.jp/m.goto/RWC-MDB/rwc-mdb-g.html)

[Category:語音合成](https://zh.wikipedia.org/wiki/Category:語音合成 "wikilink") [Category:電子音樂軟體](https://zh.wikipedia.org/wiki/Category:電子音樂軟體 "wikilink")

1.  [](http://hil.t.u-tokyo.ac.jp/publications/download.php?bib=Kameoka2006MUS08.pdf)，[發佈頁](http://hil.t.u-tokyo.ac.jp/publications/publist.php)
2.
3.
4.