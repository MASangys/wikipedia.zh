**`basename`**是一个标准[UNIX](../Page/UNIX.md "wikilink")[计算机程序](../Page/计算机程序.md "wikilink")。当向`basename`传递一个[路径名时](https://zh.wikipedia.org/wiki/路径_\(计算机\) "wikilink")，它会删除任何前缀，直到最后一个斜线（`'/'`）字符，然后返回结果。[单一UNIX规范中描述了](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")`basename`。其主要用于[shell脚本中](https://zh.wikipedia.org/wiki/shell脚本 "wikilink")。

## 用法

[单一UNIX规范中的](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")`basename`格式如下。

`basename string [suffix]`

  -
    `string`
      -
        [路径名](https://zh.wikipedia.org/wiki/路径_\(计算机\) "wikilink")
    `suffix`
      -
        若指定，则`basename`也将删除此后缀。

## 示例

`$ basename /home/jsmith/base.wiki `
`base.wiki`

`$ basename /home/jsmith/base.wiki .wiki`
`base`

## 性能

由于`basename`只接受一个操作数，在shell脚本的[内层循环使用它可能会影响性能](https://zh.wikipedia.org/wiki/内层循环 "wikilink")。考虑

`while read file; do`
`  basename "$file" ;`
`done < `*`some-input`*

以上片段会导致每一个输入行都会调用一个单独的进程。出于这个原因，通常用于壳层替代代替

`echo "${file##*/}";`

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [`dirname`](https://zh.wikipedia.org/wiki/dirname "wikilink")
  - [路径](https://zh.wikipedia.org/wiki/路径_\(计算机\) "wikilink")

## 外部链接

  -
  -
[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")