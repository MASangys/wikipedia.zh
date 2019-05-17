**SoundFont**是一个[品牌名统称](../Page/品牌.md "wikilink")，它是指使用来播放[MIDI文件的](../Page/MIDI.md "wikilink")[檔案格式和相关技术](../Page/檔案格式.md "wikilink")。其最早在声卡上用于其[General
MIDI支持](../Page/General_MIDI.md "wikilink")。

## 规范

SoundFont文件格式最新版本是2.04（通常不正确地称为2.4）。它基于[RIFF格式](../Page/資源交換檔案格式.md "wikilink")。详细描述可见规范，规范目前仅在各个公司的网站上提供副本，例如
<http://www.synthfont.com/sfspec24.pdf> （PDF；518
kB；该文档不正确地在页脚声称版本为2.01）。

## 历史

原始的SoundFont文件格式在1990年代初由和[创新科技](../Page/创新科技.md "wikilink")（Creative
Labs）开发。此版本规范从未向公众发布。在1994年，Creative的是第一个也是唯一一个使用该版本的主流设备。此种格式的文件通常采用.SBK或.SB2作为[文件扩展名](../Page/文件扩展名.md "wikilink")。

SoundFont
2.0于1996年制定。该文件格式使用感性添加现实世界单位一般化了数据表示，重新定义了格式中的一些仪器分层特征，添加了真正的立体声样本支持，并删除了第一个版本中行为难以指定的一些模糊特性。此版本被完全公开而为公共规范，目的是使SoundFont格式成为行业标准。所有SoundFont
1.0兼容设备都被更新，以便在发布给公众后不久就支持SoundFont
2.0格式，并且1.0版本已经过时。此种及其他所有2.x格式的文件（见下文）通常采用SF2作为文件扩展名。

SoundFont文件格式2.01版本\[1\]\[2\]（有时错误称为2.1）于1998年随E-mu的一款称为Audio Production
Studio的声卡产品推出。2.01版本增加的功能允许音频设计师配置MIDI控制器影响合成器参数的方式。2.01格式与2.0双向兼容，这意味着定义为渲染2.0格式的合成器也能呈现2.01格式，反之亦然，但不能应用新的特性。

SoundFont
2.04（从未有过2.02或2.03版本）于2005年随推出。2.04格式添加了24位元样本支持。2.04格式与2.01格式双向兼容，因此能呈现2.0或2.01格式的合成器将能以16位精度自动渲染使用24位采样的乐器。

SoundFont是的一个[注册商标](../Page/商标.md "wikilink")，并且已经收购重新格式化和管理历史性SoundFont内容的独占许可。\[3\]

## 功能

MIDI文件不包含任何声音，只是描述如何播放它。为播放此类文件，基于样本的MIDI合成器使用存储在文件或[ROM芯片中的乐器录音和音效](https://zh.wikipedia.org/wiki/ROM "wikilink")。SoundFont兼容的合成器允许用户使用自定义样本的SoundFont
bank播放音乐。

一个SoundFont
bank在[PCM格式](../Page/脈衝編碼調變.md "wikilink")（类似[WAV文件](../Page/WAV.md "wikilink")）中包含基础样本，这些样本被映射为音乐键盘上的功能。一个SoundFont
bank还包含其他音乐合成参数，如循环、[抖音效果和速度敏感的音量变化](https://zh.wikipedia.org/wiki/抖音 "wikilink")。
 SoundFont bank可以符合如[General
MIDI等标准声音集](../Page/General_MIDI.md "wikilink")，或者使用完全自定义的声音集。

## SoundFont创作软件（.sf2格式）

有多种.sf2编辑器可用：

  - [创新科技的Vienna](../Page/创新科技.md "wikilink")，需要一个特定的声卡（例如Sound Blaster）
  - Viena\[4\]（只有一个“n”），创建于2002年
  - Swami\[5\]，用于编辑和管理MIDI音乐作品的乐器设施的自由软件集合，主要在[Linux上使用](../Page/Linux.md "wikilink")
  - Polyphone\[6\]，适用于[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")、[Mac
    OS
    X和](../Page/MacOS.md "wikilink")[Linux的自由编辑器](../Page/Linux.md "wikilink")，创建于2013年。

## 参见

  -
  -
  - [General MIDI](../Page/General_MIDI.md "wikilink")（简称GM）

  -
  -
  -
  - （简称GS）

  -
## 参考资料

## SoundFonts资源

  - [SoundFont 2.04规范](http://www.synthfont.com/sfspec24.pdf)

[Category:音频编解码器](https://zh.wikipedia.org/wiki/Category:音频编解码器 "wikilink")
[Category:數位音訊](https://zh.wikipedia.org/wiki/Category:數位音訊 "wikilink")
[Category:MIDI标准](https://zh.wikipedia.org/wiki/Category:MIDI标准 "wikilink")
[Category:软件合成器](https://zh.wikipedia.org/wiki/Category:软件合成器 "wikilink")

1.
2.
3.
4.  [Viena, free sf2 editor](http://www.synthfont.com).
5.  [Swami, free soundfonts editor for
    Linux](http://www.swamiproject.org/).
6.  [Polyphone, free sf2 editor for Windows, Mac OS X and
    Linux](http://www.polyphone-soundfonts.com).