**grep**是一个最初用于[Unix操作系统的](https://zh.wikipedia.org/wiki/Unix "wikilink")[命令行工具](https://zh.wikipedia.org/wiki/命令行 "wikilink")。在给出文件列表或[标准输入后](https://zh.wikipedia.org/wiki/标准输入 "wikilink")，grep会对匹配一个或多个[正则表达式](../Page/正则表达式.md "wikilink")的文本进行搜索，并只输出匹配（或者不匹配）的行或文本。

## 歷史

grep這個應用程式最早由[肯·汤普逊](../Page/肯·汤普逊.md "wikilink")寫成。grep原先是ed下的一個應用程式，名稱來自於g/re/p（globally search a regular expression and print，以正規表示法進行全域尋找以及列印）。在ed下，輸入g/re/p這個命令後，會將所有符合先定義樣式的字串，以行為單位列印出來。

在1973年，Unix第四版中，grep首次出現在man頁面中。

## 功能和用法

这个程序的名称来自[Unix文本编辑器](https://zh.wikipedia.org/wiki/Unix "wikilink")[ed类似操作的命令](https://zh.wikipedia.org/wiki/ed_\(文本编辑器\) "wikilink")：

``` vim
g/re/p
```

这个命令搜索整个文件中匹配给定[正则表达式](../Page/正则表达式.md "wikilink")的文本行，并显示出来。有很多不同的命令行用于改变grep的默认行为，包括显示出不匹配的文本行、查找或排除搜索的文件以及用不同的方式在输出中进行注释。同时也有很多经典Unix下grep的现代版本，这些版本都有着独特的功能。

这里是一个常见的grep用法：

``` bash
grep apple fruitlist.txt
```

在这个例子里，grep会返回“fruitlist.txt”中所有包含“apple”的文本行。要注意的是，grep不会返回匹配“Apple”（A字母大写）的文本行，因为grep默认情况下是大小写敏感的。像大多数Unix命令行一样，grep接受参数来改变或增加一些特别的功能。例如：

``` bash
grep -i apple fruitlist.txt
```

这个命令会返回所有匹配“apple”、“Apple”、“apPLE”或其它混合大小写的拼写。

在一些grep版本中，参数 -e 可以用于使用多个匹配样式来进行搜索。

## 修改版

存在很多grep的修改版，例如[agrep表示](https://zh.wikipedia.org/wiki/agrep "wikilink")“近似的grep”*approximate grep*用于模糊字符串搜索，**fgrep**用于固定样式搜索*fixed pattern searches*，而**egrep**用于搜索更复杂的[正则表达式](../Page/正则表达式.md "wikilink")语法。

fgrep和egrep同**grep**基本上是一样的程序。因为通过调用不同的参数，grep可以实现大多数功能。[Tcgrep是用](https://zh.wikipedia.org/wiki/Tcgrep "wikilink")[Perl正则表达式语言重写的grep](https://zh.wikipedia.org/wiki/Perl正则表达式 "wikilink")。所有grep的修改版都被应用到很多不同的[操作系统](../Page/操作系统.md "wikilink")中。

有一些其它的命令行名称也包含了"grep"。如[pgrep是用来显示名称匹配](https://zh.wikipedia.org/wiki/pgrep "wikilink")[正则表达式](../Page/正则表达式.md "wikilink")的[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")。

在[Perl](../Page/Perl.md "wikilink")中，grep是内置的功能，当提供[正则表达式](../Page/正则表达式.md "wikilink")（或通用代码块）和一个列表时，会返回列表中匹配表达式的元素。在[函數程式語言中](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")，这个高阶函数常称为“过滤器”。

[微软](../Page/微软.md "wikilink")的[Windows平台提供了一个叫](https://zh.wikipedia.org/wiki/Windows "wikilink")"findstr"的工具来执行grep的大多数功能。

## 作为动词的用法

由于“grep”很适合用英语发音，所以常被作为动词使用，意为“搜索”–这种搜索通常是指使用grep工具来对已知的一系列文件进行的搜索。和*[google](https://zh.wikipedia.org/wiki/Google_\(动词\) "wikilink")*作为动词时的用法类似，grep可以直接接搜索对象做谓语，如“*在他的[Usenet](../Page/Usenet.md "wikilink")上搜索自己的名字（ grepped his [Usenet](../Page/Usenet.md "wikilink") spool for his name.）*”。有时候会用*visual grep*来表示使用grep的形式来从文本中找出某些信息。

2003年12月，“[牛津英语辞典在线版](https://zh.wikipedia.org/wiki/牛津英语辞典 "wikilink")”添加了"grep"词条，该词条可以作为名词或动词来使用。

作为一个动词，grep一个常见的用法如下： “*你不能grep死了的树（You can't grep dead trees*）” -由于纸是由死了的树做成的，所以这句话是说：你不能在传统的非数字媒体上使用grep如此简单强大的搜索功能。

单词“grep”也成了正则表达式的同义词。许多[文档处理器现在也有了使用](https://zh.wikipedia.org/wiki/文档处理器 "wikilink")[正则表达式](../Page/正则表达式.md "wikilink")搜索的功能，这些功能常被称为“grep工具”或“grep模式”并可以创建“grep样式”，同时也导致出现混淆，特别是在非Unix环境下。

## egrep和fgrep

grep的早期修改版包括了egrep和fgrep。前者使用了[Ken Thompson最初的正则表达式实现后添加到UNIX的扩展](../Page/肯·汤普逊.md "wikilink")[正则表达式](../Page/正则表达式.md "wikilink")语法。后者则是简单地读取一系列固定字符串来对文件进行搜索。这些早期的修改版被加入到多数现代的grep实现，只需要使用简单的命令行参数就行了（如在[GNU中](https://zh.wikipedia.org/wiki/GNU计划 "wikilink")，只要分别简单地加上`-E`和`-F`就可以了）。

## 参考文献

  -
  - Andrew Hume. Grep wars: The strategic search initiative. In Peter Collinson, editor, *Proceedings of the EUUG Spring 88 Conference*, pages 237–245, Buntingford, UK, 1988. European UNIX User Group.

  -
## 外部链接

  - [GNU grep (german)](https://www.grepmaster.eu)

  - [GNU grep](http://www.gnu.org/software/grep/) - 这个版本的grep常附带在各种[Linux发行版](../Page/Linux发行版.md "wikilink")中

  - [GNU grep](https://web.archive.org/web/20071128092105/http://unixhelp.ed.ac.uk/CGI/man-cgi?grep)

  - [The grep Command](http://www.linfo.org/grep.html) - Linux信息项目（The Linux Information Project, LINFO）制作

  - [AIX grep reference](https://web.archive.org/web/20010421031139/http://www.unet.univie.ac.at/aix/cmds/aixcmds2/grep.htm)

  - ["The Treacherous Optimization"](http://ridiculousfish.com/blog/archives/2006/05/30/old-age-and-treachery/) -（讨论在最佳和最糟情况下使用grep，如何进行权衡）

  - [Egrep for linguists](http://stts.se/index.php?lang_id=en_uk&page=egrep) 对egrep的介绍

  - [Tony Abou-Assaleh's list of Greps](http://tony.abou-assaleh.net/greps.html)

  - [Grep for Windows](https://web.archive.org/web/20080111034245/http://www.opbarnes.com/blog/Software/OPB/grep_for_windows.html)

## 参见

  - [Boyer-Moore字符串搜索算法](../Page/Boyer-Moore字符串搜索算法.md "wikilink")
  - [Unix工具列表](https://zh.wikipedia.org/wiki/Unix工具列表 "wikilink")
  - [正则表达式](../Page/正则表达式.md "wikilink")
  - [Searchmonkey](https://zh.wikipedia.org/wiki/Searchmonkey "wikilink")

{{-}}

[Category:Unix文字处理实用工具](https://zh.wikipedia.org/wiki/Category:Unix文字处理实用工具 "wikilink") [Category:GNU计划软件](https://zh.wikipedia.org/wiki/Category:GNU计划软件 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink") [Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")