> 本文内容由[CUE脚本](https://zh.wikipedia.org/wiki/CUE脚本)转换而来。


**cue**脚本（），是一种规定音频映像文件的分轨信息，并辅助相应的软件（如刻录软件，或播放软件）自动识别音频分轨的文本元数据脚本。是最早使用该脚本规范的軟體之一\[1\]\[2\] ，之后越来越多播放软件和刻录软件所支持。

通过该脚本，可以方便将一个整合多个音乐片段的音频文件虚拟划分为多个原来多个音频片段，而无需直接分割该整合音频文件。除外，也可以记录整个音频文件和每个分轨的描述信息 。

## 文件规格和规范命令

cue脚本是一般的文本文件，默认使用[ASCII](../Page/ASCII.md "wikilink")为其文字编码，但部分解释器支持UTF-8的文字编码。如果需要输入其他特定字符的CD-TEXT内容，就要用使用.cdt文件。

以下为规范标准命令：\[3\]

### 基础命令

  -
    `FILE`
      -
        指定进行分轨标识的源文件（可以是音频文件，如[WAV](../Page/WAV.md "wikilink")，[MP3](../Page/MP3.md "wikilink")，[APE](https://zh.wikipedia.org/wiki/APE "wikilink")，或二进制光碟镜像）
    `TRACK`
      -
        定义分轨，后面可跟着多个参数，数字表示为第几个分轨，`AUDIO`表示该分轨为CD音轨。
    `INDEX`
      -
        定义光轨中段落的索引号。其中INDEX 00一般表示该光轨开始时的间歇（留一段空白），而INDEX 01则表示音乐开始了，多段的索引用得比较少，一般表示交响乐中的段落等。跟随一个时间参数，格式为*mm*:*ss*:*ff* （分钟:秒:帧），其中一秒75帧，该时间参数是相对整个源文件的时间的。\[4\]`INDEX 01` 是必需的，而`INDEX 00` 等都是可选的，并在[红皮书定义为留空音轨](https://zh.wikipedia.org/wiki/红皮书_\(音频CD标准\) "wikilink")。
    `PREGAP`和`POSTGAP`
      -
        标识前置空白和后置空白，而且这些空白并不存在于源文件中，一般没意义。后面跟随一个时间参数，格式和`INDEX`定义的时间格式一样。

### CD-Text 和其他元数据命令

  -
    `REM`
      -
        定义注释，该定义的参数列不会被读取并解释。但部分注释内可写入给特定软件读取的命令。
    `CDTEXTFILE`
      -
        标识调入一个 .cdt 文件用于写入。
    `FLAGS`
      -
        声轨的标志，用来表示数字复制保护和声轨类型等信息
    `CATALOG`
      -
        标识源文件的[UPC或](https://zh.wikipedia.org/wiki/UPC "wikilink")[EAN码](https://zh.wikipedia.org/wiki/EAN "wikilink")，可选命令。
    `ISRC`
      -
        定义当前音轨`TRACK`的[ISRC](https://zh.wikipedia.org/wiki/ISRC "wikilink")。
    `TITLE`, `PERFORMER` and `SONGWRITER`
      -
        部分CD-Text的元数据，对应为定义整个源文件或对于那个分轨的名称，演唱者和作者。

## 示范

假设MP3文件 *"Faithless - Live in Berlin.mp3"* 是乐队的演唱，内部分段如下：

1.  Faithless – Reverence
2.  Faithless – She's My Baby
3.  Faithless – Take the Long Way Home
4.  Faithless – Insomnia
5.  Faithless – Bring the Family Back
6.  Faithless – Salva Mea
7.  Faithless – Dirty Old Man
8.  Faithless – God Is a DJ

由于整个MP3文件是整个CD的完整拷贝，可以按照以下格式编写脚本，在播放软件或刻录软件读取时自动对整个音频文件重新分段读取。

``` text
 REM GENRE "Electronica"
 REM DATE "1998"
 PERFORMER "Faithless"
 TITLE "Live in Berlin"
 FILE "Faithless - Live in Berlin.mp3" MP3
   TRACK 01 AUDIO
     TITLE "Reverence"
     PERFORMER "Faithless"
     INDEX 01 00:00:00
   TRACK 02 AUDIO
     TITLE "She's My Baby"
     PERFORMER "Faithless"
     INDEX 01 06:42:00
   TRACK 03 AUDIO
     TITLE "Take the Long Way Home"
     PERFORMER "Faithless"
     INDEX 01 10:54:00
   TRACK 04 AUDIO
     TITLE "Insomnia"
     PERFORMER "Faithless"
     INDEX 01 17:04:00
   TRACK 05 AUDIO
     TITLE "Bring the Family Back"
     PERFORMER "Faithless"
     INDEX 01 25:44:00
   TRACK 06 AUDIO
     TITLE "Salva Mea"
     PERFORMER "Faithless"
     INDEX 01 30:50:00
   TRACK 07 AUDIO
     TITLE "Dirty Old Man"
     PERFORMER "Faithless"
     INDEX 01 38:24:00
   TRACK 08 AUDIO
     TITLE "God Is a DJ"
     PERFORMER "Faithless"
     INDEX 01 42:35:00
```

对于一个CD镜像文件可以使用以下格式。

``` text
 FILE "sampleimage.bin" BINARY
   TRACK 01 MODE1/2352
     INDEX 01 00:00:00
```

## 参考资料

## 外部链接

  - [Cue Sheet](https://web.archive.org/web/20120620182228/http://digitalx.org/cue-sheet/) 来自digitalx.org的介绍
  - [Cuesheet Tutorial](http://qed.qproject.org/tutorial.php) 一个详细教程介绍本脚本语法和使用方法

[Category:元数据](https://zh.wikipedia.org/wiki/Category:元数据 "wikilink")

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.
2.  [How to Burn an Audio CD With a Cue Sheet](http://www.ehow.com/how_6830013_burn-audio-cd-cue-sheet.html)
3.
4.