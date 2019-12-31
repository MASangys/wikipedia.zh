> 本文内容由[Unicode控制字符](https://zh.wikipedia.org/wiki/Unicode控制字符)转换而来。


**[Unicode控制字符](https://zh.wikipedia.org/wiki/Unicode "wikilink")**用于控制文本解释或者显示，但这些字符不可见或不占空间。

## ISO 6429控制字符(C0与C1)

[控制字符](../Page/控制字符.md "wikilink") U+0000–U+001F 与 U+007F 来自[ASCII](../Page/ASCII.md "wikilink")。此外，[ISO 8859字符集定义了](https://zh.wikipedia.org/wiki/ISO/IEC_8859 "wikilink") U+0080–U+009F 。二者都定义在[ISO 6429中](https://zh.wikipedia.org/wiki/ISO/IEC_6429 "wikilink")，常被称为C0与C1控制字符。

大部分这些字符在Unicode文本处理中没有明确作用。字符, , , , 常用于格式化字符。

## Unicode引入的分隔符

为了简化几种换行字符，Unicode引入了它自己的分隔符来格式化文本：

  -
  -
## 语言标记

Unicode以前定义了，包含了128个字符表示语言标签，但现在已经过时了。这些字符实际上镜像了128个ASCII字符。用于表示随后的文本属于[IETF語言標籤](../Page/IETF語言標籤.md "wikilink")（BCP 47）所指的特定语言。例如，表示随后文本使用“美国英语”en-us，用字符串开始为‘Language Tag character’ (U+E0001)后跟序列：‘Tag Small Letter e’ (U+E0065), ‘Tag Small Letter n’ (U+E006E), ‘Tag Hyphen-minus’ (U+E002D), ‘Tag Small Letter u’ (U+E0075), ‘Tag Small Letter s’ (U+E0073).

这种语言标签自身不会被显示。但可提供用于文本处理的信息。例如，中日韩统一汉字的文本，指明是韩语而非日文，可以把一些字符用韩语特有的字形来表示。另一个例子，把数字0-9用语言特定的字形表示。

语言标记字符U+E0001, U+E0020–U+E007E, U+E007F 已经被Unicode 5.1 (2008)宣布过时，不再作为语言标记使用。\[1\]

Unicode 8.0 (2015)宣布U+E0020–U+E007E不再是过时，用于未来表示除了语言标签以外的的其他用途。\[2\](U+E0001 LANGUAGE TAG 与 U+E007F CANCEL TAG 仍然过时)。

## 行间标注

3个格式化字符用于支持[interlinear annotation](https://zh.wikipedia.org/wiki/旁註標記 "wikilink") (U+FFF9, U+FFFA, U+FFFB).

## 双向文本控制

Unicode支持从左到右、从右到左，或者其混合排版，而不需要任何特殊字符。但为了处理一些特殊情形，Unicode定义了12个字符(U+061C, U+200E, U+200F, U+202A, U+202B, U+202C, U+202D, U+202E, U+2066, U+2067, U+2068, U+2069)以帮助控制嵌入式双向文本最大125层深。\[3\]

## 异体字选择器

中日韩汉字、拉丁字母的双拼连写等等，在Unicode中被视作异体字。有些专名（如地名、姓名）必须使用某个异体字。为此，Unicode 3.2 与 4.0定义了256个异体字选择器，可选择前一个字符的最多256个可能的异体字。

## 控制字符的图片

Unicode在**Control Pictures**块中提供图形表示[C0控制字符以及其他控制符](../Page/C0与C1控制字符.md "wikilink")。

## 参见

  -
  -
## 参考文献

<references/>

[Category:Unicode特殊碼位](https://zh.wikipedia.org/wiki/Category:Unicode特殊碼位 "wikilink")

1.
2.
3.