**touch**是一个被用于更改[文件访问和修改时间的标准](https://zh.wikipedia.org/wiki/计算机文件 "wikilink")[UNIX](../Page/UNIX.md "wikilink")[程序](../Page/计算机程序.md "wikilink")，它也被用于创建新文件。

## 历史

touch程序最早出现在第七版[AT\&T](../Page/AT&T.md "wikilink")[UNIX](../Page/UNIX.md "wikilink")，包含在[GNU核心工具组](../Page/GNU核心工具组.md "wikilink")的touch程序的作者为Paul Rubin，Arnold Robbins，Jim Kingdon，David MacKenzie。

## 使用方法

[单一UNIX规范包含下列程序选项](https://zh.wikipedia.org/wiki/单一UNIX规范 "wikilink")：

  -
    **-a**，只更改访问时间
    **-c**，如果文件不存在，不创建且不声明
    **-m**，只更改修改时间
    **-r file**，使用**file**的访问、修改时间而非当前时间
    **-t time**，使用**time**（格式见下）更改访问、修改时间

**time**的格式为\[\[cc\]yy\]MMDDhhmm\[.ss\]，其中cc代表世纪，yy代表年份的后二位数字，MM代表月份，DD代表天数，hh代表小时，mm代表分钟，ss代表秒数。

其他Unix系统或[类Unix系统](../Page/类Unix系统.md "wikilink")可能添加额外的选项。

## 示例

以当前时间更改访问、修改时间：

``` bash
$ touch myfile.txt
```

注意：touch不修改myfile.txt内容，只更改它的访问、修改时间，如果myfile.txt不存在，它会被创建。

用指定时间更改访问、修改时间：

``` bash
$ touch -t 200701310846.26 index.html
$ touch -d '2007-01-31 8:46:26' index.html
$ touch -d 'Jan 31 2007 8:46:26' index.html
```

## 其他操作系统

其他操作系统，如(Windows、Mac OS）也存在执行相似功能的软件：

  - Windows
      - [File Date Touch](http://date.bghot.com)-[Windows下的](https://zh.wikipedia.org/wiki/Windows "wikilink")[自由软件](../Page/自由软件.md "wikilink")

## 参看

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [chmod](https://zh.wikipedia.org/wiki/chmod "wikilink")

## 外部链接

  - [单一UNIX标准中的touch标准](http://www.opengroup.org/onlinepubs/009695399/utilities/touch.html)

## 文档

  - [GNU版本touch文档](http://www.gnu.org/software/coreutils/manual/html_node/touch-invocation.html)
  - [openBSD版本touch文档](http://www.openbsd.org/cgi-bin/man.cgi?query=touch)

[Category:标准Unix程序](https://zh.wikipedia.org/wiki/Category:标准Unix程序 "wikilink")