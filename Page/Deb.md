[Gdebi.png](https://zh.wikipedia.org/wiki/File:Gdebi.png "fig:Gdebi.png")\]\] **deb**是[Debian](../Page/Debian.md "wikilink")[软件包格式](https://zh.wikipedia.org/wiki/软件包 "wikilink")，[文件扩展名](../Page/文件扩展名.md "wikilink")为**.deb**，跟*Debian*的命名一样，deb也是因Debra Murdock（Debian创始人[Ian Murdock的前妻](https://zh.wikipedia.org/wiki/Ian_Murdock "wikilink")）而得名。

Debian包是[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")[ar的标准归档](https://zh.wikipedia.org/wiki/ar "wikilink")，将包文件信息以及包内容，经过[gzip和](https://zh.wikipedia.org/wiki/gzip "wikilink")[tar打包而成](https://zh.wikipedia.org/wiki/Tar_\(计算机科学\) "wikilink")。

处理这些包的经典程序是[dpkg](https://zh.wikipedia.org/wiki/dpkg "wikilink")，经常是通过[apt来运作](https://zh.wikipedia.org/wiki/apt "wikilink")。

通过[Alien](../Page/Alien.md "wikilink")工具，可以将deb包转换成其他形式的[软件包](https://zh.wikipedia.org/wiki/软件包 "wikilink")。

## 實做

deb 檔是使用 tar 包裝，包含了三個檔案：

  - debian-binary - deb 格式版本號碼
  - control.tar.gz - 包含套件的[元数据](../Page/元数据.md "wikilink")，如包名称、版本、维护者、依赖、冲突等等。 <small>在dpkg 1.17.6 之后添加了对 [xz](https://zh.wikipedia.org/wiki/xz "wikilink") 压缩和不压缩的 control 元数据的支持。\[1\]</small>
  - data.tar.\* - 實際安裝的內容

其中，"\*"所指代的内容随压缩算法不同而不同。常见的可能值为[xz](https://zh.wikipedia.org/wiki/xz "wikilink")、[gz](https://zh.wikipedia.org/wiki/gzip "wikilink")、或[bz2](https://zh.wikipedia.org/wiki/bzip2 "wikilink")。有时也会使用[lzma](../Page/LZMA.md "wikilink")。

## 參見

  - [歸檔格式列表](https://zh.wikipedia.org/wiki/歸檔格式列表 "wikilink")

## 外部链接

  - [Debian FAQ：Debian包管理系统基础](http://www.debian.org/doc/FAQ/ch-pkg_basics)

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink") [Category:Dpkg](https://zh.wikipedia.org/wiki/Category:Dpkg "wikilink") [Category:扩展名](https://zh.wikipedia.org/wiki/Category:扩展名 "wikilink") [Category:Ubuntu](https://zh.wikipedia.org/wiki/Category:Ubuntu "wikilink") [Category:Debian](https://zh.wikipedia.org/wiki/Category:Debian "wikilink")

1.  [dpkg changelog](http://metadata.ftp-master.debian.org/changelogs/main/d/dpkg/unstable_changelog)