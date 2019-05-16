**VST**（），中文名为**虚拟工作室技术**，是[Steinberg公司推出的一项软件接口技术](https://zh.wikipedia.org/wiki/Steinberg "wikilink")，主要用于计算机音乐制作领域，以插件的形式供音频处理相关的软件来使用。使用VST插件，用户可以对音频讯号进行处理，也可以使用VST乐器（）来创作音乐。开发者可以使用Steinberg所提供的开发套件，来自主开发各种类型的VST插件。

## 历史

VST由Steinberg创立，它最初的的标准和SDK首发于1996年，与其同时推出的还有VST宿主机[Cubase](../Page/Cubase.md "wikilink")
3.02。当时的VST主要用于音频信号的处理，为音频添加效果。第一批VST插件是Steinberg推出的Espacial（混响插件）、Choirus（合唱效果插件）、Stereo
Echo（回声效果插件）和Auto-Panner（声相插件）。

1999年，Steinberg将VST接口规范更新到2.0版本，其中的一个新增能力是插件能够接收并处理MIDI数据。由此，VST乐器技术诞生，开发者可以基于此开发软件合成器和采样器。第一个VSTi插件是Steinberg推出的Neon。\[1\]

2006年，VST接口规范更新到2.4版本，其改动包括增加采用64位精度处理音频的能力。\[2\]

2008年，Steinberg推出VST
3.0接口规范。它采用了与先前版本差别较大的格式（由先前的**[动态链接库](../Page/动态链接库.md "wikilink")**（DLL）格式改为专有的**VST3**格式），使得诸如[REAPER](https://zh.wikipedia.org/wiki/REAPER "wikilink")、[FL
Studio等宿主通常将其与先前版本分开进行管理](../Page/FL_Studio.md "wikilink")。

2011年2月，VST 3.5接口规范发布。

2013年9月，Steinberg停止了对VST 2 SDK的维护。12月，Steinberg停止发布该版本的SDK。

## 分类

根据处理对象的不同，VST插件一共有三种类型。在宿主软件中，“VST”一词单用，通常指的就是VST效果或VST
MIDI处理器；只有在明确指出“VSTi”的情况下才能表示VST乐器。

### VSTi

**VSTi**（），即**VST乐器**，是VST家族中用于生成音频的一类VST插件。它们作为[音源来使用](https://zh.wikipedia.org/wiki/音源 "wikilink")，一般都是虚拟的[合成器或](../Page/合成器.md "wikilink")[采样器](https://zh.wikipedia.org/wiki/采样器 "wikilink")。其中合成器通过软件[算法和](../Page/算法.md "wikilink")[DSP](https://zh.wikipedia.org/wiki/DSP "wikilink")，模拟真实乐器、硬件合成器或独创性地生成乐音；而采样器则是采样真实乐器的声音，并通过VST插件播放出来。值得一提的是，一些VSTi插件能够通过软件合成媲美真实乐器的声音，效果堪比真实乐器，却拥有比采样音源小的多的体积。

### VST效果

VST效果是VST最基本也是最核心的用途。它们执行和硬件音频处理器相同的功能，即时处理计算机中的音频信息，为音频添加各种效果。同时也可以实时监测音频信息，并为用户提供可视化的反馈，如频谱分析和测量。大多数宿主程序，尤其是[DAW](https://zh.wikipedia.org/wiki/DAW "wikilink")，都允许同时加载多个效果，组成VST效果链，极大提升了音频处理的体验。

### VST MIDI处理器

顾名思义，VST
MIDI处理器主要用于处理[MIDI消息](../Page/MIDI.md "wikilink")，它是为使用MIDI进行音乐创作的音乐工作者而设计的。比如，有的VST插件可以给MIDI消息加上诸如[转置](https://zh.wikipedia.org/wiki/转置 "wikilink")、[琶音等效果](https://zh.wikipedia.org/wiki/琶音 "wikilink")，也有的可以操作[MIDI控制器以改变宿主处理MIDI的行为](https://zh.wikipedia.org/wiki/MIDI控制器 "wikilink")。

## 宿主

**VST宿主**（****），又称**VST主机**，是VST插件所运行的软件应用或硬件设备，它们为VST插件提供加载[UI的接口](https://zh.wikipedia.org/wiki/UI "wikilink")，与VST插件直接交互。

典型的宿主通常可分为以下几类：

### 将VST插件作为插件运行

这样的宿主软件通常会利用VST插件来扩展自己的功能。最典型、最为重要的就是[数字音频工作站](https://zh.wikipedia.org/wiki/数字音频工作站 "wikilink")（），如[Cubase](../Page/Cubase.md "wikilink")、[FL
Studio](../Page/FL_Studio.md "wikilink")、[REAPER](https://zh.wikipedia.org/wiki/REAPER "wikilink")、[Ableton
Live等](../Page/Ableton_Live.md "wikilink")。同时，一些处理音频的软件也支持VST效果插件，如[Adobe
Audition](../Page/Adobe_Audition.md "wikilink")、[Audacity](../Page/Audacity.md "wikilink")。

### 独立专用主机

这样的宿主软件一般只为一款VST插件提供主机环境，而不是将其作为插件来扩展自己的功能。它们通常会根据自己所运行的插件进行实时优化。

最典型的就是各种VST插件开发者所推出的插件的“独立版本”（），独立版本实际上就是一个集成了VST插件运行环境的可执行文件，只要运行就会自动加载对应的插件，界面的核心也正是插件的UI。通常开发者会在宿主中添加一些插件之外的功能，提高宿主的实用性，如音频设备设置、MIDI输入、导出缩混音频等。这种设计常用于各种VSTi，主要供用户直接运行插件而不通过运行DAW，方便用户演奏乐器；一些VST效果也会提供独立版本来方便用户直接处理现有的音频文件。

### 硬件宿主

硬件VST宿主可以加载特殊版本的VST插件。这些单元是便携式的，并且在没有计算机的情况下可用，尽管其中一些单元需要计算机进行编辑。通常硬件VST宿主可以独立进行音频处理的运算，从[CPU接管音频处理](https://zh.wikipedia.org/wiki/CPU "wikilink")，同时释放[RAM](https://zh.wikipedia.org/wiki/RAM "wikilink")。典型的例子就是[VST机架](https://zh.wikipedia.org/wiki/VST机架 "wikilink")。

## 开发

开发VST插件，需要使用Steinberg的VST
SDK。它使用[C++开发](../Page/C++.md "wikilink")，是一套基于C
API的C++类。可以从官方网站上下载。

Steinberg也开发了VST GUI，这是VST
SDK的一部分，也是另外一套C++类，可用于构建图形界面，但相对来说都比较低级。一般地，插件的外观仍然必须由插件的开发者创建。

大量的商业和开源的VST插件是使用[Juce框架编写的](https://zh.wikipedia.org/wiki/Juce "wikilink")，而不是直接调用VST
SDK，因为它允许从单个代码库构建多格式（VST，AudioUnit和Real Time AudioSuite）的二进制文件。

## 外部链接

  - [Steinberg的VST产品页面](https://www.steinberg.net/en/products/vst.html)
  - [Steinberg的GitHub组织页面](https://github.com/steinbergmedia/)
  - [Steinberg在GitHub上公布的VST 3
    SDK](https://github.com/steinbergmedia/vst3sdk)

## 注释

<references group="註" />

## 参考资料

<references />

1.  [Neon By Steinberg. KVR
    Audio.](http://www.kvraudio.com/product/neon-by-steinberg/details)
2.  [Steinberg releases VST 2.4 standard with new features.
    Steinberg.](https://www.steinberg.net/index.php?id=334&L=1)