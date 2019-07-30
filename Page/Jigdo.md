**Jigdo**（"**Jig**saw **do**wnload"，曲线下载）是为[Debian](../Page/Debian.md "wikilink")套件设计的[下载](../Page/下载.md "wikilink")工具，可以从几个[镜像站点下载不同的文件](https://zh.wikipedia.org/wiki/镜像站点 "wikilink")，然后再生成一个CD映像。

Jigdo的标准程序包括一个`jigdo-file`工具。用户要收集一个CD映像，先得下载一个非常小的*imagename.jigdo*文件。jigdo-file工具就将这个文件作为参数，从网络上获取相应的文件：*imagename.template*和一系列[.deb包](https://zh.wikipedia.org/wiki/deb "wikilink")（在.jigdo文件中已经列出）。然后通过[mkisofs工具生成一个ISO映像](https://zh.wikipedia.org/wiki/mkisofs "wikilink")。

Jigdo在Debian下实现，目的是减轻镜像站点的负荷，这些镜像站点一般都存放有许多的CD映像，不但要求大容量硬盘，还占用很多的带宽，这样才能够提供足够的光盘映像下载（一张CD是650M，[DVD是](https://zh.wikipedia.org/wiki/DVD "wikilink")4.7G）。而Jigdo的要求就不是这样了，它可以获取各自的Debian包，而不要求一定要单独归档的光盘映像，这样就可以直接从[apt-get列表中完成取得下载](https://zh.wikipedia.org/wiki/apt-get "wikilink")，最后才在本机生成CD/DVD文件。

## 參見

## 外部链接

  - [jigdo的首页](http://atterer.org/jigdo/)
  - [用jigdo下载Debian光盘](http://www.debian.org/CD/jigdo-cd/)
  - [Debian Jigdo mini-HOWTO](http://tldp.org/HOWTO/Debian-Jigdo/)
  - [针对Mac OS X（包括GUI）的移植](https://web.archive.org/web/20050318024003/http://jigdoosx.berlios.de/)
  - [使用jigdo下载Debian光盘映像文件](https://web.archive.org/web/20051031084935/http://people.linux.org.tw/~chihchun/CDDP/www/CD/jigdo-cd/index.zh-cn.html)

[Category:Debian](https://zh.wikipedia.org/wiki/Category:Debian "wikilink")