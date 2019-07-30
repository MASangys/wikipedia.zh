**Vorbis注释**()是一种[元数据](../Page/元数据.md "wikilink")容器，被应用于 [Vorbis](https://zh.wikipedia.org/wiki/Vorbis "wikilink")、[FLAC](../Page/FLAC.md "wikilink")、[Theora](../Page/Theora.md "wikilink")、[Speex](https://zh.wikipedia.org/wiki/Speex "wikilink") 和 [Opus codec](https://zh.wikipedia.org/wiki/Opus_codec "wikilink") [文件格式中](https://zh.wikipedia.org/wiki/文件格式 "wikilink")。它存储诸如标题、演唱者、轨道数等关于文件的信息并将他们一同存入文件中。

## 格式

Vorbis标签是由一系列形如`FieldName=Data`的标签组成的。标签名是大小写不敏感的(無分大小寫)，范围从[ASCII](../Page/ASCII.md "wikilink")码0x20(space)至0x70('=')，0x3D('}')除外。标签的数量和长度均不能超过4,294,967,295(32位无符号整数所能存储的最大值)，但多数[标签编辑器拥有更严格的限制](https://zh.wikipedia.org/wiki/标签编辑器 "wikilink")。值部分是[UTF-8](../Page/UTF-8.md "wikilink")编码的，所以可以使用任何[Unicode字符](https://zh.wikipedia.org/wiki/Unicode "wikilink")。

与[ID3](../Page/ID3.md "wikilink")相反，标准并没有对存储数据的格式做出任何定义。同一标签名也可以出现不止一次，如一首歌有两个歌手，则鼓励使用两个`ARTIST=...`这样的标签，不推荐将两个歌手的信息存储在一个标签中。

格式规范中给出了一些示例标签名\[1\]，例如`TITLE`和`TRACKNUMBER`。绝大多数程序同时支持一些事实上的标准，例如`DISCNUMBER`和存储含有[回放增益](../Page/回放增益.md "wikilink")的标签。

Vorbis标签不能存储二进制数据，这是由它的设计决定的。存储二进制数据是[Ogg](../Page/Ogg.md "wikilink")等容器格式的任务，任何额外的二进制数据都会在容器中被编码成数据流。

## 参见

  - [APEv2 tag](https://zh.wikipedia.org/wiki/APEv2_tag "wikilink")
  - [ID3](../Page/ID3.md "wikilink")
  - [CD-Text](https://zh.wikipedia.org/wiki/CD-Text "wikilink")

## 参考文献

## 外部链接

  - [Xiph.Org's specification for Vorbis Comments](http://www.xiph.org/vorbis/doc/v-comment.html)
  - [Xiph.Org's proposal for extensions to Vorbis Comments](http://wiki.xiph.org/index.php/VorbisComment)
  - [Metadata issues and proposals for extending the Ogg Vorbis Comment system](https://web.archive.org/web/20080827170644/http://www.gophernet.org/articles/vorbiscomment.html)

[Category:音频格式](https://zh.wikipedia.org/wiki/Category:音频格式 "wikilink")

1.  <http://www.xiph.org/vorbis/doc/v-comment.html>