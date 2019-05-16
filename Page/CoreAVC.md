**CoreAVC**是一个用于解码[H.264格式视频的](https://zh.wikipedia.org/wiki/H.264 "wikilink")[私有](https://zh.wikipedia.org/wiki/私有軟體 "wikilink")[解码器](../Page/编解码器.md "wikilink")。

该解码器是目前最快的软解码器之一，甚至可以和一些硬解码器相媲美。\[1\]它能让处理能力较低的计算机播放低分辨率的H.264视频，而使处理能力较高的计算机播放[高清视频](https://zh.wikipedia.org/wiki/高清视频 "wikilink")。CoreAVC支持除4:2:2与4:4:4以外的任何H.264档案。

拥有最多功能的CoreAVC解码器售价约为10美元。\[2\]

CoreAVC是CorePlayer Multimedia
Framework的一部分，也曾被用于[Joost使用的一个已停止开发的客户端](../Page/Joost.md "wikilink")。\[3\]

## 对CoreAVC-For-Linux的控告

在[Google
Code上的一个名为CoreAVC](https://zh.wikipedia.org/wiki/Google_Code "wikilink")-For-Linux的[开源项目可以对开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[媒体播放器](https://zh.wikipedia.org/wiki/媒体播放器 "wikilink")[MPlayer的载入代码部分打一个补丁](../Page/MPlayer.md "wikilink")，从而使MPlayer可在[自由软件环境下使用原本仅供Windows使用的CoreAVC](../Page/自由软件.md "wikilink")
[DirectShow](../Page/DirectShow.md "wikilink")
filter。它不包含CoreAVC，而只是简单地使MPlayer能利用CoreAVC。该项目也包含功能相同的、对[MythTV和](../Page/MythTV.md "wikilink")[Xine的补丁](https://zh.wikipedia.org/wiki/Xine "wikilink")。

2008年5月，CoreAVC-For-Linux因一次根据[-{zh-hans:数字千年版权法;zh-hant:數位千禧年著作權法}-的控告而被](https://zh.wikipedia.org/wiki/数字千年版权法 "wikilink")[Google撤下](../Page/Google.md "wikilink")。\[4\]这次控告值得思考，因为该项目作为一种包装方法，并没有使用任何有版权的内容，但也许是[逆向工程被使用却未能得到事先许可](../Page/逆向工程.md "wikilink")，这使CoreCodec公司认为该行为违反了-{zh-hans:数字千禧年版权法案;zh-hant:數位千禧年著作權法案}-。\[5\]CoreCodec公司之后申明-{zh-hans:数字千禧年版权法案;zh-hant:數位千禧年著作權法案}-并未禁止逆向工程\[6\]
并为此向开源社区道歉。\[7\]该项目现在仍在运作，且被CoreCodec认可。

## 多平台支持

2008年初，由于普遍的要求，CoreCodec将一直以来只在Windows下运行的CoreAVC拓展到多平台与多[CPU架构支持](https://zh.wikipedia.org/wiki/CPU "wikilink")，甚至包括一些[GPU](https://zh.wikipedia.org/wiki/GPU "wikilink")。现在Windows，Mac
OS X和Linux都被支持，在移动与嵌入式平台中被支持的有PalmOS，Symbian，Windows CE和Windows
Mobile——尽管Linux版本并不零售而仅供应给[OEM](https://zh.wikipedia.org/wiki/OEM "wikilink")。和新的操作系统一起，一些新的CPU架构现在也被支持。CoreAVC（现在改名为[CorePlayer](http://coreplayer.com/)
Desktop/Mobile）现在不仅能在32位与64位[x86平台上运行](https://zh.wikipedia.org/wiki/x86 "wikilink")，也能在[PPC](../Page/PowerPC.md "wikilink")（包含[Altivec](../Page/Altivec.md "wikilink")-Support），[ARM9](https://zh.wikipedia.org/wiki/ARM架构 "wikilink")，[ARM11和](https://zh.wikipedia.org/wiki/ARM架构 "wikilink")[MIPS架构上运行](https://zh.wikipedia.org/wiki/MIPS "wikilink")。对于GPU，[Intel
2700g](https://zh.wikipedia.org/wiki/Intel_2700g "wikilink")，ATI
[Imageon](https://zh.wikipedia.org/wiki/Imageon "wikilink")，Marvell
Monahan，（有限的）Qualcomm QTv都被支持，且申明即将到来的版本会支持更多的CPU。

## Nvidia CUDA支持

2009年2月10日，CoreCodec发布CoreAVC的升级版\[8\]它实现了对[Nvidia](https://zh.wikipedia.org/wiki/Nvidia "wikilink")
[CUDA技术的支持](../Page/CUDA.md "wikilink")。通过利用CUDA技术，可让特定的Nvidia显卡协助视频解码运算。

## 参考文献

## 额外连接

  - [The CoreAVC H.264 主页](http://www.coreavc.com/)
  - [CoreCodec主页](http://www.corecodec.com/)
  - [CorePlayer (跨平台)](http://coreplayer.com/)
  - [Doom9.org
    对CoreAVC的讨论](http://forum.doom9.org/showthread.php?t=104277)
  - [Openlaw -
    现行美国法律与逆向工程](http://cyber.law.harvard.edu/openlaw/DVD/1201.html#f)
  - [coreavc-for-linux - Google
    Code](http://code.google.com/p/coreavc-for-linux/)

[Category:编解码器](https://zh.wikipedia.org/wiki/Category:编解码器 "wikilink")
[Category:媒体播放器](https://zh.wikipedia.org/wiki/Category:媒体播放器 "wikilink")
[Category:付費軟件](https://zh.wikipedia.org/wiki/Category:付費軟件 "wikilink")
[Category:多媒體](https://zh.wikipedia.org/wiki/Category:多媒體 "wikilink")
[Category:视频编解码器](https://zh.wikipedia.org/wiki/Category:视频编解码器 "wikilink")

1.  [CoreAVC stronger than AVIVO & PureVideo
    ?](http://www.behardware.com/news/8117/coreavc-stronger-than-avivo-purevideo.html)
     (April 2006)
2.
3.  [Joost - FAQ:
    Technology](http://joost.com/support/faq/Technology.html)
4.
5.  [DMCA takedown of coreavc-for-linux/CoreCodec
    Homepage](http://www.corecodec.com/forums/index.php?topic=981.msg5695)
     (May 2008)
6.  [DMCA takedown of coreavc-for-linux,
    message 5780](http://www.corecodec.com/forums/index.php?topic=981.msg5780#msg5780)
     (May 2008)
7.  [DMCA takedown of coreavc-for-linux,
    message 5785](http://www.corecodec.com/forums/index.php?topic=981.msg5785#msg5785)
     (May 2008)
8.  [GPU support for NVIDIA CUDA
    released](http://www.coreavc.com/index.php?option=com_content&task=view&id=27&Itemid=1)
     (Feb 2009)