**嵌入式OpenType字体**（，简称**EOT**）是被[微软设计用来在网页使用的字体格式](https://zh.wikipedia.org/wiki/Microsoft "wikilink")。该字体格式是[OpenType](../Page/OpenType.md "wikilink")字体的压缩格式。文件的[扩展名通常是](../Page/文件扩展名.md "wikilink")"`.eot`"。

通过使用[微软的网页字体工具](https://zh.wikipedia.org/wiki/Microsoft "wikilink")（WETF）、其他版权软件或者开源软件，并且基于的存在的[TrueType](../Page/TrueType.md "wikilink")字体文件，这种字体文件也能够被制作。

通过只包括需要使用文字的[子集](../Page/子集.md "wikilink")，或者通过[压缩](https://zh.wikipedia.org/wiki/压缩 "wikilink")，文件也能够减少它的空间占用。（LZ compression, part of [Agfa](https://zh.wikipedia.org/wiki/Agfa "wikilink")'s [MicroType Express](http://www.w3.org/Printing/porell.html)）并且像OTF字体那样，EOT字体也支持[Postscript以及TrueType轮廓](https://zh.wikipedia.org/wiki/Postscript "wikilink")。\[1\]

简单地把字体嵌入到网页中可能会导致受版权保护的字体在网络上肆意复制。所以嵌入式OpenType包括了一些特性来阻止复制行为。在字体文件中只包括需要的文字的子集降低了字体的使用价值。一般的字体文件能够删除一半以上的文字。其他的一些保护方法包括对字体文件进行[加密](https://zh.wikipedia.org/wiki/加密 "wikilink")，或者在文件尾部追加允许的文件来源。又或者在接受文件后，附带发送一个专用的解密库。

如果在某种情况（丢失文件，错误的解密密匙，或者不被浏览器所支持）会导致字体在网页上无法使用，于是字体定义的第二个字体将会被使用。请确保当嵌入式字体无效时，网页依然可用。

## 参考资料

## 参见

  - [WOFF](https://zh.wikipedia.org/wiki/WOFF "wikilink")

[Category:字体格式](https://zh.wikipedia.org/wiki/Category:字体格式 "wikilink")

1.  <http://blog.typekit.com/2010/12/08/type-rendering-font-outlines-and-file-formats/>