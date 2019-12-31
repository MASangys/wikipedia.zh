> 本文内容由[FLAC](https://zh.wikipedia.org/wiki/FLAC)转换而来。


**FLAC**（；全称：**F**ree **L**ossless **A**udio **C**odec），中文直译為**自由無損音頻壓縮編碼**（注：这里“*Free*”指的是**[自由软件](../Page/自由软件.md "wikilink")**——而并不仅是**免费**）。FLAC是一款的[自由](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[音頻壓縮](https://zh.wikipedia.org/wiki/音頻壓縮 "wikilink")[編碼](https://zh.wikipedia.org/wiki/編碼 "wikilink")，其特點是可以对音频文件[無損壓縮](../Page/无损数据压缩.md "wikilink")。不同於其他[有損壓縮編碼](../Page/有损数据压缩.md "wikilink")（如[MP3](../Page/MP3.md "wikilink") 、[AAC等](../Page/進階音訊編碼.md "wikilink")），壓縮後不會有任何音質損失，現在已被很多軟體及硬體音頻產品所支持。

## 历史

FLAC项目由Josh Coalson在2000年发起并开发\[1\]。FLAC位元流格式在进入FLAC 0.5版本[內部測試時被冻结](https://zh.wikipedia.org/wiki/内测 "wikilink")，2001年1月15日FLAC 0.5版本发布，做為第一個FLAC的參考實做，2001年7月20日，FLAC 1.0正式釋出\[2\]。

2003年1月29日，[Xiph.Org基金會](../Page/Xiph.Org基金會.md "wikilink")宣佈FLAC併入旗下，连同[Ogg Vorbis](https://zh.wikipedia.org/wiki/Ogg_Vorbis "wikilink")，[Ogg Theora及](https://zh.wikipedia.org/wiki/Ogg_Theora "wikilink")[Speex成為旗下的開源项目](https://zh.wikipedia.org/wiki/Speex "wikilink")\[3\]\[4\]\[5\]。

2013年5月26日，FLAC 1.3.0发布，并将开发转移至Xiph.org [Git](../Page/Git.md "wikilink")仓库\[6\]。

2014年11月25日，FLAC 1.3.1发布。

2017年1月1日，FLAC 1.3.2发布。

2019年8月4日，FLAC 1.3.3发布，但 Windows 版本并未被编译为EXE格式，且在主页上的latest news处也未显示，仅在changelog中出现。

## 项目组成

FLAC项目包含：

  - 音頻格式
  - libFLAC，一個參考的編碼及解碼程式庫，及一個元數據介面
  - libFLAC++，一個配合libFLAC的物件壓縮器
  - flac，一個文字介面的壓縮指令，配合libFLAC以編碼或解碼.flac檔案
  - metaflac，一個文字介面的.flac元數據編輯器
  - input plugins，不同的音樂播放軟體的輸入插件（如[Winamp](../Page/Winamp.md "wikilink")，[XMMS](../Page/XMMS.md "wikilink")，[foobar2000](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")，[musikCube](https://zh.wikipedia.org/wiki/musikCube "wikilink")）

*自由*指的是這個音頻格式可以在不需事先授權的情況下使用（xiph.org保留了製定FLAC規格及認證相容規挌的權利）。而不論是FLAC格式還是其編碼及解碼方法均沒有任何[軟體專利保護](https://zh.wikipedia.org/wiki/軟體專利 "wikilink")，這表示整個FLAC是[自由軟體](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")：libFLAC及libFLAC++的源代碼是在[BSD許可證下發佈](https://zh.wikipedia.org/wiki/BSD許可證 "wikilink")，而flac，metaflac及其他插件的源代碼均是在[GPL下發佈](https://zh.wikipedia.org/wiki/GPL "wikilink")。

在其官方的目標中，FLAC計劃不鼓励开发者在其中加入任何反复制特性。

## 技術

FLAC只支持[定點取樣](https://zh.wikipedia.org/wiki/定點取樣 "wikilink")，並不支持[浮點取樣](https://zh.wikipedia.org/wiki/浮點取樣 "wikilink")，這是因為它要確保沒有任何約數錯誤以致影響音質。它能支持任何[PCM](https://zh.wikipedia.org/wiki/PCM "wikilink")[位分辨率](https://zh.wikipedia.org/wiki/位分辨率 "wikilink")，由4至32 bits per sample皆有。它亦支持任何[取樣頻率](https://zh.wikipedia.org/wiki/取樣頻率 "wikilink")，由1 Hz至655,350 Hz不等，並可逐1 Hz微調。

FLAC支持很多不同的平台：大多數的[Unix-like系統](https://zh.wikipedia.org/wiki/Unix-like "wikilink")（包括[Linux](../Page/Linux.md "wikilink")，[BSD](../Page/BSD.md "wikilink")，[Solaris及](https://zh.wikipedia.org/wiki/Solaris_Operating_Environment "wikilink")[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")），[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，[BeOS](../Page/BeOS.md "wikilink")及[OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink")。支持這麼多平台的原因是因為它是由[autoconf](https://zh.wikipedia.org/wiki/autoconf "wikilink")／[automake](https://zh.wikipedia.org/wiki/automake "wikilink")、[MSVC](../Page/Microsoft_Visual_C++.md "wikilink")、[Watcom C及Project](https://zh.wikipedia.org/wiki/Watcom_c "wikilink") Builder編譯的。

FLAC的技术特点如下：

  - 无损压缩：被编码的音频（PCM）数据没有任何信息损失，解码输出的音频与编码器的输入的每一个字节都是一样的。每个数据帧都有一个当前帧的16-bit CRC校验码，用于监测数据传输错误。对整段音频数据，在文件头中还保存有一个针对原始未压缩音频数据的MD5标记，用于在解码和测试时对数据进行校验。
  - 灵活的压缩策略：与libflac使用是“质量”的参数，该参数变化从0（最快）至8（最小）。虽然在压缩过程（压缩文件总是完美的“无损”表示的原始数据）。涉及速度和容量之间的折衷，解码过程中始终是相当快的，而不是非常依赖于压缩
  - 快速：FLAC更看重解码的速度。解码只需要整数运算，并且相对于大多数编码方式而言，对计算速度要求很低。在很普通的硬件上就可以轻松实现实时解码。
  - 硬件支持：由于FLAC提供了免费的解码范例，而且解码的复杂程度低，所以FLAC是目前少数获得硬件支持的无损压缩编码之一。（APE格式也有少数硬件支持）
  - 可以流化：FLAC的每个数据帧都包含了解码所需的全部信息。解码当前帧无需参照它前面或后面的数据帧。FLAC使用了同步代码和CRC（类似于MPEG等编码格式），这样解码器在数据流中跳跃定位时可以有最小的时间延迟。
  - 可以定位：FLAC支持快速采样精确定位。这不仅对于播放有益，更使得FLAC文件便于编辑。
  - 富于弹性的metadata：可以定义和实现新类型的metadata数据块，而不会影响旧的数据流和解码器的使用。目前已有的metadata类型包括tag，[cue表](../Page/CUE脚本.md "wikilink")，和定位表。已经注册的应用程序可以定义自己专用的metadata类型（这一点与MIDI标准相似）。
  - 非常适合于存档应用：FLAC是一个开放的编码格式，并且没有任何数据的损失，你可以将它转换为你需要的任何其他格式。除了每个数据帧的CRC和MD5标记对数据完整性的保障，flac（FLAC项目提供的命令行方式编码工具）还提供了一个verify（校验）选项，当使用该选项进行编码的时候，编码的同时就会立即对已编码数据进行解码并与原始输入数据进行比较，一旦发现不同就会退出并且报警提示。
  - 便于对CD进行备份：FLAC有一个cue表，表内的metadata数据块用于保存CD的内容列表和所有音轨的索引点。你可以将一张CD保存到一个单一文件，并导入CD的cue表格，这样一个FLAC文件就可以完整地记录整张CD的全部信息。当你的原来的CD损坏的时候，你就可以用这个文件恢复出与原来一模一样的CD副本。
  - 抗损伤：由于FLAC的帧结构，當数据流损坏时，数据损失会被限制在受损的数据帧之内。一般只会丢失很短的一个片段。而很多其他无损音频压缩格式在遇到损坏时，一个损坏就会造成后面所有数据丢失。

## 比較

FLAC與其他無損壓縮式，如[ZIP及](https://zh.wikipedia.org/wiki/ZIP_\(算法\) "wikilink")[gzip的主要分別在於FLAC可即時播放已壓縮的音頻資料](https://zh.wikipedia.org/wiki/gzip "wikilink")，而且FLAC比ZIP這類無損壓縮格式有更高的壓縮比率。（FLAC在壓縮音樂時有大約五成壓縮率，但ZIP在同一情況下則只有一至兩成壓縮率。）

雖然有損壓縮格式如[MP3](../Page/MP3.md "wikilink")，[ogg等有更高的壓縮率](https://zh.wikipedia.org/wiki/Ogg_Vorbis "wikilink")，但它們會破壞了音頻的原來數據，使其不可變回原來音質，而且FLAC可自由選擇壓縮率及壓縮時間，較高的壓縮率會帶來較高的解壓縮時間。相比起其他無損壓縮格式如[Monkey's Audio](../Page/Monkey's_Audio.md "wikilink")（拓展名为.APE）及[Shorten](https://zh.wikipedia.org/wiki/Shorten "wikilink")，虽然压缩率稍有不及[Monkey's Audio](../Page/Monkey's_Audio.md "wikilink")，FLAC技术更先进，占用资源更低，而且是开放的，所以，更多的平台及硬體產品支持FLAC。

在Hydrogenaudio維基有一個各類無損音頻壓縮的比較表，里面包括了FLAC格式。\[7\]

## 参见

  - [無損壓縮格式比較列表](https://zh.wikipedia.org/wiki/無損壓縮格式比較列表 "wikilink")
  - [有損壓縮比較列表](https://zh.wikipedia.org/wiki/有損壓縮比較列表 "wikilink")
  - [音頻壓縮格式列表](https://zh.wikipedia.org/wiki/音頻壓縮格式列表 "wikilink")
  - [Monkey's Audio](../Page/Monkey's_Audio.md "wikilink")
  - [音频编码格式的比较](https://zh.wikipedia.org/wiki/音频编码格式的比较 "wikilink")
  - [无损数据压缩](../Page/无损数据压缩.md "wikilink")

## 註解

## 外部連結

  - [etree.org維基](http://wiki.etree.org/index.php?page=FLAC)
  - [FLAC项目主頁 (旧)](http://flac.sourceforge.net/)
  - [FLAC项目主頁](https://xiph.org/flac)
  - [支持FLAC的音樂播放程式列表](http://www.hydrogenaudio.org/forums/index.php?showtopic=34401)由推廣FLAC計劃組織所編寫。
  - [FLAC與其他無損音頻格式比較列表](https://web.archive.org/web/20101125045330/http://members.home.nl/w.speek/comparison.htm)
  - [Speek的無損音頻及有損音頻格式比較列表](http://www.bobulous.org.uk/misc/audioFormats.html)：比較FLAC, Wave, Ogg Vorbis及MP3格式的壓縮率及時間。
  - [無損壓縮格式的比較列表](https://web.archive.org/web/20090703042443/http://web.inter.nl.net/users/hvdh/lossless/lossless.htm)由Hans Heiden所製作
  - [無損音頻壓縮日誌](http://losslessaudio.blogspot.com/)

[Category:SourceForge专案](https://zh.wikipedia.org/wiki/Category:SourceForge专案 "wikilink") [Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink") [Category:无损音频编解码器](https://zh.wikipedia.org/wiki/Category:无损音频编解码器 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:2001年软件](https://zh.wikipedia.org/wiki/Category:2001年软件 "wikilink")

1.
2.
3.
4.
5.
6.
7.  [Lossless comparison](http://wiki.hydrogenaudio.org/index.php?title=Lossless_comparison)