**WavPack**是由David
Bryant开发的一个自由、开放源代码的[无损音频压缩格式](../Page/无损数据压缩.md "wikilink")，其文件的后缀名为.wv。

## 特点

WavPack允许用户压缩、恢复8、16、24、32位整型以及32位浮点表示的[WAV格式音频文件](../Page/WAV.md "wikilink")，另外它还支持[多声道数据流以及非常高的](../Page/多声道.md "wikilink")[采样率](../Page/采样率.md "wikilink")。与其它无损压缩机制一样，这种算法的压缩比例也随源数据的不同而改变。但对于普通的流行音乐，通常介于30%到70%之间；对于古典音乐以及其它音域较宽的音乐，通常能得到更高的比例。

另外WavPack引入了一种独特的“混合”模式，它使用一个附加的文件从而也具有了有损压缩的优点。与其它方法只生成一个文件不同，这种模式生成两个文件，其中一个是相对较小、可以单独使用的高质量有损压缩文件，另外一个是与有损文件一起使用实现无损数据恢复的“修正”文件。对于一些用户来说，这就意味着他们不必再考虑使用有损还是无损压缩这样一个问题。

### 概要

  - 快速高效压缩与解压
  - [开放源代码](../Page/开放源代码.md "wikilink")，按照类似于[BSD许可证的方式发布](../Page/BSD许可证.md "wikilink")
  - 多平台
  - 出错时的健壮性
  - 支持[流媒体](../Page/流媒体.md "wikilink")
  - 支持多声道以及高分辨率
  - 混合／有损模式
  - 硬件支持
  - 支持标签（[ID3v1](../Page/ID3.md "wikilink")、[APEv2标签](../Page/APEv2_tag.md "wikilink")）
  - 支持[RIFF格式的大块数据](../Page/RIFF.md "wikilink")
  - 兼容[回放增益](../Page/回放增益.md "wikilink")
  - 良好的软件支持
  - 能够生成Win32平台下的自解压文件
  - 支持32位浮点数据流
  - 支持嵌入式[节目单](../Page/节目单.md "wikilink")
  - 包含用于完整性检查的[MD5散列函数](../Page/MD5.md "wikilink")
  - 可以按照对称或者不对称模式进行编码（降低编码速度可以提高解码速度）。

## 历史

David
Bryant在1998年年中开始了WavPack的开发并发布了1.0版，这第一个版本只有无损压缩解压音频这项功能，但是当时它就已经跻身效率与速度比最好的编码器之列了。

在1.0版之后，很快Bryant就发布了2.0版，这个版本的特点是使用了有损编码，它直接对预测残余进行了量化以减少数据量，而没有使用[心理声学masking模型](../Page/心理声学.md "wikilink")。

1999年，他发布了3.0版，新颖的功能成为这个版本的特点，例如通过减小压缩比实现的快速模式、压缩无头原始[PCM音频文件以及使用](../Page/PCM.md "wikilink")32位[循环冗余校验的错误检测功能](../Page/循环冗余校验.md "wikilink")。

WavPack的开发仍在继续，在后面的3.x版本中添加的一个主要特点就是混合模式，在这种模式下编码器生成一个有损文件以及一个纠正文件，这样它们就可以经过解压还原出原始的PCM数据流。

WavPack
4包括许多重要的改进，如快速搜索、多声道支持、高分辨率音频支持等等，这些特性使它成为功能最全的时髦无损音频压缩器之一。4.31版本针对Linux/OSX的错误修正之后得到用于这些系统的4.32版，但是它没有与质量相关的更改。WavPack
4.4版本包括的功能有针对单声道或者接近单声道的音频数据的改进处理、以及重新设计的压缩质量系统，这种改进可以以大幅增强的效率实现类似的压缩。[1](http://www.hydrogenaudio.org/forums/index.php?showtopic=47389&hl=)

## 支持

### 软件

  - 由Speek开发的自定义[Windows前端](http://members.home.nl/w.speek/wavpack.htm)
  - NullSoft
    [Winamp](../Page/Winamp.md "wikilink")（[插件](http://www.wavpack.com/downloads.html)w/
    ReplayGain & Media Library支持）
  - [foobar2000](../Page/foobar2000.md "wikilink") - Advanced Audio
    Player（官方插件，w/ ReplayGain & Cuesheets支持）
  - [Windows Media
    Player](../Page/Windows_Media_Player.md "wikilink")（带有[CoreWavPack](http://corewavpack.corecodec.org/)
    directshow滤波器）
  - [XMMS](../Page/XMMS.md "wikilink")（带有Kuniklo的[插件](http://www.wavpack.com/downloads.html)，[源代码](http://svn.caddr.com/svn/)）
  - [LAMIP](http://freakforever.net/lamip/wiki/index.php/LAMIP_Sources)（官方插件）-
    用于Linux及相关系统的模块化音频播放器 -
    [主页](http://fondriest.frederic.free.fr/realisations/lamip/)
  - [Adobe Audition](../Page/Adobe_Audition.md "wikilink") (and
    CoolEdit) ([filter](http://www.wavpack.com/downloads.html) w/ 32-bit
    floats & extra info save support)
  - [mp3Tag Pro](http://maniactools.com/soft/mp3tag-pro/index.shtml) -
    通用标签编辑器
  - [dBpowerAMP](http://www.dbpoweramp.com/) - Music Converter / Audio
    Player / CD Writer（官方插件）
  - [Apollo Audio
    Player](http://koti.welho.com/hylinen/apollo/)（[插件](http://www.wavpack.com/downloads.html)支持w/
    ReplayGain）
  - [MusikCube](http://www.musikcube.com/) - 自由音频播放器（w/ WavPack
    [插件](http://www.musikcube.com/page/plugins/view/15)）
  - Ahead [Nero Burning ROM](../Page/Nero_Burning_ROM.md "wikilink")（w/
    [插件](http://www.wavpack.com/downloads.html)）
  - [MrQuestionMan](http://www.burrrn.net/) - Audio Identifier
  - [Burrrn](http://www.burrrn.net/) - 直接从不同的格式烧制音频CD
  - [Mp3tag](http://www.mp3tag.de/en/) - 通用标签编辑器
  - [Exact Audio Copy](../Page/Exact_Audio_Copy.md "wikilink") - CD
    Ripper（w/
    [wavpack.exe](http://www.wavpack.com/downloads.html)是外部压缩程序）
  - [VUPlayer](http://www.vuplayer.com/vuplayer.php) - 自由的多种格式音频播放器与转换器
  - [mp3Tag Pro](http://maniactools.com/soft/mp3tag-pro/index.shtml) -
    通用标签编辑器
  - [Xist (beta)](http://www.caddr.com/xist/) - 支持WavPack的OS
    X播放器（[源代码](http://svn.caddr.com/svn/)）
  - 带有官方[插件](http://support.xmplay.com/file.php?count_per_page=all&cat_id=11&submit=Set)的[XMPlay](http://www.un4seen.com/xmplay.html)，
    - 用于Windows的自由小播放器
  - [Cog](http://cogosx.sourceforge.net/) - 支持WavPack的用于OS X的新播放器
  - [MPXPlay](http://mpxplay.cjb.net/) -
    支持WavPack的基于[DOS](../Page/DOS.md "wikilink")（[MS-DOS](../Page/MS-DOS.md "wikilink")、[FreeDOS](../Page/FreeDOS.md "wikilink")、[DR-DOS](../Page/DR-DOS.md "wikilink")）的播放器
  - [1by1](http://www.mpesch3.de/)与[Coolplayer](http://coolplayer.sourceforge.net/)，带有[Winamp](../Page/Winamp.md "wikilink")
    WavPack [插件](http://www.wavpack.com/downloads.html)
  - [不同平台的WavPack编译版本](http://rarewares.org/lossless.html)
  - [The GodFather](http://users.otenet.gr/~jtcliper/tgf) - 标签与音乐管理器
  - [Wavpack4Wavelab](http://wavpack.gl.tter.org/) -
    第一款商用／专业波形编辑的第三方文件输入输出插件[Steinberg
    Wavelab 5/6](http://www.steinberg.de/ProductPage_sb0f7f.html?Product_ID=2442&Langue_ID=4)
  - [Easy CD-DA Extractor](http://www.poikosoft.com/) - 商业CD音轨抓取、编码及转换工具
  - [OggdropXPd](http://rarewares.org/ogg.html) -
    直接从包括WavPack在内的各种无损格式转换成有损开放源代码Ogg
    Vorbis格式
  - [Quintessential
    Player](https://web.archive.org/web/20041121041338/http://www.quinnware.com/)带有[插件](http://www.quinnware.com/list_plugins.php?plugin=43)
  - [KSP Sound Player中缺省支持](../Page/KSP_Sound_Player.md "wikilink")

### 硬件

  - 运行开放源代码[Rockbox固件的播放器](../Page/Rockbox.md "wikilink")，如iriver
    ihp100、ihp120、ihp140、H320、H340以及iPod
    Video/Color/Photo/Nano（[Rockbox主页](http://www.rockbox.org/)）
  - [Roku PhotoBridge
    HD](http://www.rokulabs.com/products/photobridge/features.php)（w/
    [插件](http://www.wavpack.com/downloads.html)）

### DVD+Audio

自从2005年起，WavePack就开始用于[DVD+Audio上的音频压缩取代](../Page/DVD+Audio.md "wikilink")[DVD-Audio上昂贵的](../Page/DVD-Audio.md "wikilink")[Meridian
Lossless Packing](../Page/Meridian_Lossless_Packing.md "wikilink")。

## 技术

为了保证高速运算，WavPack完全使用整数算术这样一种简单的预测，在“最快”模式下，预测值是前面两个采样的简单数学外推。例如，如果前面两个采样是
-10与20，那么预测值就是50。在缺省模式下，使用一个简单的自适应因子衡量前面采样对于预测影响的权重。在我们的这个例子中预测值可能从20到50之间变化，也就是前面的采样从没有影响到影响最大这样一个范围变化。这个权重因子随着音频数据频谱特性的变化而不断更新，所以它是“自适应”的。

然后从待编码的实际采样中减去生成的预测值得到误差，在单声道模式下这个值直接送到编码器去，但是[立体声信号通常在两个声道之间有一些能在后面使用的相关性](../Page/立体声.md "wikilink")，所以左右声道分别计算出各自的误差值。在“快速”运算模式下这两个新生成的值直接送到编码器而不管它是左声道还是右声道。在缺省模式下，这个误差值总是随着平均、左或者右三者之一发送到编码器。自适应算法根据声道不断变化的平衡性确定发送三者中最有效的一个。

David
Bryant为WavPack开发了一个独特的数据编码器，他认为这个编码器有两个方面要比[Rice编码优秀](../Page/Rice编码.md "wikilink")。由于对于这种类型的数据来说Rice编码代表了最优的位编码（有时也称作[哈夫曼编码](../Page/哈夫曼编码.md "wikilink")）。WavPack编码要比它稍稍逊色一点，大约差距是0.15位／采样，也就是说16位数据大约差1%。WavPack编码器的第一个优点是在编码前数据无需缓存，它将每个采样直接转换成位码。这从计算的角度来讲效率更高，在一些延迟控制很关键的应用中表现更好。它的第二个优点是很容易适应有损编码，这是因为除了隐含的一个[最高位之外所有重要的数据位都直接进行发送](../Page/最高位.md "wikilink")。按照这种方法，就可以只传送每个采样中带有符号的最高3位。实际上，可以只传送符号位以及用平均3.65位／采样表示的使用隐含最高位的采样值。

这个编码机制用于实现WavPack的“有损”模式。在“快速”模式下，非自适应去相关的输出只是简单地四舍五入到最近的特定位数的编码值。在缺省模式下，使用自适应的去相关，它可以将噪声平均减小1
[dB](../Page/分貝.md "wikilink")，并且当前以及下一个采样在选择两个可用的编码值时都参与衡量，这又将噪声减小1 dB。

由于开发者认为[整数运算受不同芯片的影响较小](../Page/整数.md "wikilink")，而芯片的不同可能带来无损压缩特性的变化，如Pentium
[浮点运算的缺陷就是一个明显的例子](../Page/浮点.md "wikilink")，所以他决定在WavPack算法的数据处理中不使用浮点运算。使用浮点运算的无损压缩工具如果运行在有缺陷的Pentium芯片上可能就会生成不同的结果。即使我们不考虑这些已经存在的缺陷，浮点运算也很复杂，在不同的“正确”实现之间也可能有微小差别，对于这类应用可能会带来麻烦。为了进一步加强WavPack压缩数据的完整性，编码器在生成的数据流后包括有一个32位的错误检测码。

WavPack的源代码非常易于移植到其它平台，它已经可以在几种不同的Unix系统上编译，如[Linux](../Page/Linux.md "wikilink")、[Mac
OS
X](../Page/Mac_OS_X.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、康柏[Tru64](../Page/Tru64.md "wikilink")、[HP-UX等等](../Page/HP-UX.md "wikilink")，另外它也可以在[Microsoft
Windows](../Page/Microsoft_Windows.md "wikilink")、[DOS](../Page/DOS.md "wikilink")、[Palm
OS以及](../Page/Palm_OS.md "wikilink")[OpenVMS上编译](../Page/OpenVMS.md "wikilink")。它可以在许多平台上工作，如[x86](../Page/x86.md "wikilink")、[ARM架构](../Page/ARM架构.md "wikilink")、[PowerPC](../Page/PowerPC.md "wikilink")、[AMD64](../Page/AMD64.md "wikilink")、[IA-64](../Page/IA-64.md "wikilink")、[SPARC](../Page/SPARC.md "wikilink")、[DEC
Alpha](../Page/DEC_Alpha.md "wikilink")、[PA-RISC](../Page/PA-RISC.md "wikilink")、[MIPS以及](../Page/MIPS.md "wikilink")[Motorola
68k](../Page/Motorola_68k.md "wikilink")。

## 参见

  - [DVD+Audio](../Page/DVD+Audio.md "wikilink")
  - [FLAC](../Page/FLAC.md "wikilink")
  - [TTA](../Page/TTA.md "wikilink")
  - [Monkey's Audio](../Page/Monkey's_Audio.md "wikilink")
  - [Meridian Lossless
    Packing](../Page/Meridian_Lossless_Packing.md "wikilink")
  - [TAK](../Page/TAK.md "wikilink")

## 外部链接

  - [官方网站](http://www.wavpack.com/)
  - [Hydrogenaudio
    Forums上的WavPack论坛](http://www.hydrogenaudio.org/forums/index.php?showforum=68)
  - [ReallyRareWares上的历史版本](http://www.rjamorim.com/rrw/wavpack.html)
  - Hydrogenaudio
    Wiki上的[几种无损音频编码器比较](http://wiki.hydrogenaudio.org/index.php?title=Lossless_comparison)

[Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink")
[Category:自由音訊軟體](https://zh.wikipedia.org/wiki/Category:自由音訊軟體 "wikilink")
[Category:无损音频编解码器](https://zh.wikipedia.org/wiki/Category:无损音频编解码器 "wikilink")