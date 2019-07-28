**APE
tag**是一種用來描述数字音乐檔案[元数据](../Page/元数据.md "wikilink")的[標籤](https://zh.wikipedia.org/wiki/標籤_\(元數據\) "wikilink")。起初是為了讓[Monkey's
Audio使用而開發](../Page/Monkey's_Audio.md "wikilink")，不過目前已經有[Musepack](../Page/Musepack.md "wikilink")、[WavPack](../Page/WavPack.md "wikilink")、
[OptimFROG](../Page/OptimFROG.md "wikilink")，以及[TAK](../Page/TAK.md "wikilink")等其他音樂檔案格式使用。

## 版本

### APEv1

APEv1 tag是为了[Monkey's
Audio](../Page/Monkey's_Audio.md "wikilink")（文件扩展名：.ape）而开发的，因此得名。当添加到[MP3](../Page/MP3.md "wikilink")格式的文件时，会放在文件的末尾，从而不影响MP3文件本身的内容。以[ASCII](../Page/ASCII.md "wikilink")編碼。

### APEv2

前[Musepack](../Page/Musepack.md "wikilink")的开发者 Frank Klemm 将APE
tag扩充，允许其添加到文件的头部，更增加了[Unicode的支持](https://zh.wikipedia.org/wiki/Unicode "wikilink")。由于其简单易用又灵活，[WavPack](../Page/WavPack.md "wikilink")、[OptimFROG](../Page/OptimFROG.md "wikilink")等格式很快将其采纳为默认的元数据存储方式。[Monkey's
Audio从v](../Page/Monkey's_Audio.md "wikilink")3.99起正式从APEv1 tag切换到APE v2
tag。MP3也支持APEv2格式标签。

该格式也得到了众多音乐播放器，如[Winamp](../Page/Winamp.md "wikilink")、[foobar2000的支持](https://zh.wikipedia.org/wiki/foobar2000 "wikilink")。

## 特性

与MP3中常用的[ID3](../Page/ID3.md "wikilink")相比，APE
tag的结构更接近[Vorbis注释](../Page/Vorbis注释.md "wikilink")。
在APEv2
tag中，以[UTF-8](../Page/UTF-8.md "wikilink")編碼來儲存值，而以[ASCII](../Page/ASCII.md "wikilink")儲存鍵的名稱。并且允許自由的欄位名稱。在儲存值的部分，提供了三種不同的種類的旗標（flag）：
"text"、"binary"，與"external"。一個欄位可儲存多筆資訊（以null字元來分隔）。

## 与其他标签格式比較

### [ID3](../Page/ID3.md "wikilink")v2

  - 標準中無明確的編碼限制
  - 嚴格的鍵／值（key/value）對應

### Vorbis comment

  - 以[UTF-8](../Page/UTF-8.md "wikilink")編碼
  - 允許自由的欄位名稱
  - 一個欄位只能儲存一筆資訊（例如：如果有兩個作者，就必須使用兩個artist欄位）

## 格式定義

| tag              | bytes      |
| ---------------- | ---------- |
| APE Tags Header  | 32 bytes   |
| APE Tag Item 1   | 10.. bytes |
| APE Tag Item 2   | 10.. bytes |
| ...              | 10.. bytes |
| APE Tag Item n-1 | 10.. bytes |
| APE Tag Item n   | 10.. bytes |
| APE Tags Footer  | 32 bytes   |

## 參見

  - [ID3](../Page/ID3.md "wikilink")
  - [Vorbis
    comment](https://zh.wikipedia.org/wiki/Vorbis_comment "wikilink")
  - [Monkey's Audio](../Page/Monkey's_Audio.md "wikilink")
  - [Mp3tag](../Page/Mp3tag.md "wikilink")

## 外部連結

  - [APEv2
    tag詳細規格](http://wiki.hydrogenaudio.org/index.php?title=APEv2_specification)

[Category:元数据](https://zh.wikipedia.org/wiki/Category:元数据 "wikilink")