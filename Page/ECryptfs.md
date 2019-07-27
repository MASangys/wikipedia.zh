**eCryptfs**（，**企业加密文件系统**）是适用于加密[Linux](../Page/Linux.md "wikilink")的磁盘加密软件，兼容[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")[文件系统](../Page/文件系统.md "wikilink")级加密，自[Linux内核](../Page/Linux内核.md "wikilink")版本
2.6.19成为其一部分。[Ubuntu](../Page/Ubuntu.md "wikilink")自9.04开始提供eCryptfs包。

文件系统级加密相对[磁盘加密](../Page/磁盘加密.md "wikilink")既有优点也有不足。磁盘加密工作在块（block）级别，要求另外的文件系统加载到自己的分区上，文件系统级加密能在已存在的分区中工作，不需要划开特定块区域（block
area）供其使用。\[1\]同时也可以选择性的加密单个文件或文件夹。

## 历史

eCryptfs衍生于[Erez Zadok](http://www.cs.sunysb.edu/~ezk/)的Cryptfs。\[2\]

## 参考

## 外部链接

  - [archlinux
    wiki：用eCryptfs加密系统](https://wiki.archlinux.org/index.php/System_Encryption_with_eCryptfs)
  - [eCryptfs教程](http://bodhizazen.net/Tutorials/Ecryptfs/)
  - [eCryptfs常见问题](https://web.archive.org/web/20121121100518/http://ecryptfs.sourceforge.net/ecryptfs-faq.html)
  - [Cryptfs：可堆叠VNODE级加密文件系统](http://www.fsl.cs.sunysb.edu/docs/cryptfs/cryptfs.html)

[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")

1.
2.