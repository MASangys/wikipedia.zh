**`wc`**
（）是在[类UNIX操作系统中的一个命令](https://zh.wikipedia.org/wiki/类UNIX "wikilink")。

程序从[标准输入流或文件列表读取文件](https://zh.wikipedia.org/wiki/标准输入 "wikilink")，并生成一个或多个下列统计信息：
文件包含的字节数、单词数以及文件的行数（也就是[换行符的个数](https://zh.wikipedia.org/wiki/换行 "wikilink")）。如果用户提供的是一个文件列表，则每个文件的单独统计和总体统计结果都会给出。

`wc`程序示例：

``` bash
 $ wc foo bar
      40     149     947 foo
    2294   16638   97724 bar
    2334   16787   98671 total
```

第一列表示文件中的行数，以上实例表示文本文件`foo`有40行，并且`bar`文件包含2294行，总计2334行。
第二列表示文件中的单词个数：`foo`文件包含149个单词，且`bar`文件中有16638个单词，总计16787个单词。
第三列表示文件中包含的字符个数：`foo`文件总共有947个字符，且`bar`文件中有97724个字符，总计有98761个字符。

较新版本的`wc`可以区别[比特和](https://zh.wikipedia.org/wiki/比特 "wikilink")[字符的统计](../Page/字符.md "wikilink")。区别在于：[Unicode字符集包含了多字节的字符](https://zh.wikipedia.org/wiki/Unicode "wikilink")。可以通过选择
`-c` 或是 `-m` 参数来选择所需的行为。

[GNU](../Page/GNU.md "wikilink") `wc` 曾是 GNU
[textutils软件包的一部分](https://zh.wikipedia.org/wiki/textutils "wikilink")。现在属于GNU
[coreutils软件包](https://zh.wikipedia.org/wiki/coreutils "wikilink")。

## 用法

  - ` wc -l  `<文件名> 输出行数统计
  - ` wc -c  `<文件名> 输出字节数统计
  - ` wc -m  `<文件名> 输出字符数统计
  - ` wc -L  `<文件名> 输出文件中最长一行的长度
  - ` wc -w  `<文件名> 输出单词数统计

## 参见

  - [Unix工具列表](https://zh.wikipedia.org/wiki/Unix工具列表 "wikilink")

## 外部链接

  - [wc(1)](http://man.cat-v.org/unix-1st/1/wc) - Original Unix First
    Edition manual page for wc.
  - [wc](http://www.linuxmanpages.com/man1/wc.1.php) - wc
    程序的[手册页](../Page/手册页.md "wikilink")
  - [The `wc` Command](http://www.linfo.org/wc.html) by The Linux
    Information Project (LINFO)

[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")