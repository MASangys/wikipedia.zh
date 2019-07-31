**xargs**是一条[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix](https://zh.wikipedia.org/wiki/类Unix "wikilink")[操作系统](../Page/操作系统.md "wikilink")的常用命令。它的作用是将参数列表转换成小块分段传递给其他命令，以避免参数列表过长的问题\[1\]。xargs的作用一般等同于大多数[Unix shell中的](../Page/Unix_shell.md "wikilink")[反引号](https://zh.wikipedia.org/wiki/反引号 "wikilink")，但更加灵活易用，并可以正确处理输入中有空格等特殊字符的情况。对于经常产生大量输出的命令如[find](https://zh.wikipedia.org/wiki/find "wikilink")、[locate和](https://zh.wikipedia.org/wiki/locate "wikilink")[grep来说非常有用](https://zh.wikipedia.org/wiki/grep "wikilink")。

## 示例

例如，下面的命令：

``` bash
rm $(find /path -type f)
```

如果path目录下文件过多就会因为“参数列表过长”而报错无法执行。但改用xargs以后，问题即获解决。

``` bash
find /path -type f -print0 | xargs -0 rm
```

本例中xargs将[find产生的长串文件列表拆散成多个子串](https://zh.wikipedia.org/wiki/find "wikilink")，然后对每个子串调用[rm](https://zh.wikipedia.org/wiki/rm "wikilink")。-print0表示輸出以null分隔（-print使用換行）；-0表示輸入以null分隔。这样要比如下使用find命令效率高的多。

``` bash
find /path -type f -exec rm '{}' \;
```

上面这条命令会对每个文件调用"rm"命令。当然使用新版的"find"也可以得到和"xargs"命令同样的效果：

``` bash
find /path -type f -exec rm '{}' +
```

``` bash
find . -name "*.foo" | xargs grep bar
```

该命令大体等价于

``` bash
grep bar $(find . -name "*.foo")
```

``` bash
find . -name "*.foo" -print0 | xargs -0 grep bar
```

使用了GNU特殊规定的空字符。

``` bash
find . -name "*.foo" -print0 | xargs -0 -t -r vi
```

与上面的基本相同但启动[vi进行编辑](https://zh.wikipedia.org/wiki/vi "wikilink")。-t参数会提前打印错误信息。-r参数是一个GNU扩展，表明在无输入情况下则不构造命令执行。

``` bash
find . -name "*.foo" -print0 | xargs -0 -i mv {} /tmp/trash
```

使用-i参数将{}中内容替换为列表中的内容。

## 参见

  - [GNU parallel](../Page/GNU_parallel.md "wikilink")
  - [pexec](https://zh.wikipedia.org/wiki/pexec "wikilink")

## 参考

## 外部链接

  -
### 手册页

  -
  -
  -
  -
  -
[Category:Unix文字处理实用工具](https://zh.wikipedia.org/wiki/Category:Unix文字处理实用工具 "wikilink") [Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")

1.  [GNU Core Utilities FAQ](http://www.gnu.org/software/coreutils/faq/coreutils-faq.html#Argument-list-too-long)