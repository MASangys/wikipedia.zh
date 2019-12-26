****（TAK）是一種無損音質的音樂[編解碼器](https://zh.wikipedia.org/wiki/編解碼器 "wikilink")。不但具有近似於[Monkey's Audio的高壓縮比](../Page/Monkey's_Audio.md "wikilink")，也擁有接近[FLAC](../Page/FLAC.md "wikilink")的解碼速度。不過就目前來說，支援的軟體極少，僅有像是foobar2000與Winamp等知名音樂播放軟體配合使用外掛程式才能播放。

## 特色

  - 媲美[APE的高壓縮比](../Page/Monkey's_Audio.md "wikilink")
  - 接近[FLAC](../Page/FLAC.md "wikilink")的[編碼與](https://zh.wikipedia.org/wiki/編碼 "wikilink")[解碼速度](https://zh.wikipedia.org/wiki/解碼 "wikilink")
  - 支援[串流媒体](https://zh.wikipedia.org/wiki/串流 "wikilink")（流媒体）
  - 支援[多线程](../Page/多线程.md "wikilink")的編碼（1.0.3以後的版本）
  - 具有錯誤容忍（單一[bit的錯誤不會影響超過](../Page/位元.md "wikilink")250[ms](https://zh.wikipedia.org/wiki/ms "wikilink")）
  - 具有錯誤偵測（每個frame具有一個24-bit的[CRC](https://zh.wikipedia.org/wiki/循環冗餘檢驗 "wikilink")）
  - 支援最高24-bit、192khz的音源
  - 支援[APEv2標籤](https://zh.wikipedia.org/wiki/APEv2_tag "wikilink")

### 目前的限制

  - 尚未開放[原始碼](https://zh.wikipedia.org/wiki/原始碼 "wikilink")（未來預定以C++開放原始碼）
      - 虽然原作者尚未公开源代码，但[FFmpeg](../Page/FFmpeg.md "wikilink")开发者已通过反向工程实现了一个开源的TAK解码器，并已入到FFmpeg中\[1\]。
  - 無硬體支援
  - 僅少數的播放軟體支援（[Airplay](../Page/Airplay.md "wikilink")、[Winamp](../Page/Winamp.md "wikilink")、Quintessential Media Player、uLilith、XMPlay與[foobar2000的](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")[外掛程式](https://zh.wikipedia.org/wiki/外掛程式 "wikilink")）

## 軟體支援

  - TAK[軟體發展套件](https://zh.wikipedia.org/wiki/軟體發展套件 "wikilink")
  - Winamp/XMPlay/Quintessential Player外掛程式
  - foo_input_tak，及foobar2000用的TAK解碼器
  - [Airplay](../Page/Airplay.md "wikilink")免安裝綠色播放程式，程式本身內建支援TAK格式，不需要安裝任何額外插件擴充外掛
  - [Mp3tag](../Page/Mp3tag.md "wikilink")（2.38以後的版本）
  - shntool（3.0.6以後的版本）
  - [千千靜聽](https://zh.wikipedia.org/wiki/千千靜聽 "wikilink")（5.5.2以後的版本僅支援TAK 1.0，5.9.6版本支援TAK 2.2）
  - Aimp
  - [FFmpeg](../Page/FFmpeg.md "wikilink")
  - [MPlayer](../Page/MPlayer.md "wikilink")
  - uLilith
  - MiniPlayer（已支援TAK格式，無須外掛）

## 参见

  - [音频编码格式的比较](https://zh.wikipedia.org/wiki/音频编码格式的比较 "wikilink")

## 註解

## 外部連結

  - [TAK官網](https://www.webcitation.org/65tn8b7U4?url=http://thbeck.de/Tak/Tak.html)

  - [使用TAK編碼器](http://www.hydrogenaudio.org/forums/index.php?showtopic=54721)

  - [各種無損音質壓縮格式比較](http://wiki.hydrogenaudio.org/index.php?title=Lossless_comparison)

[Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink") [Category:无损压缩算法](https://zh.wikipedia.org/wiki/Category:无损压缩算法 "wikilink") [Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink")

1.  [\[FFmpeg-devel](http://ffmpeg.org/pipermail/ffmpeg-devel/2012-September/131785.html) \[PATCH\] TAK demuxer and decoder\]