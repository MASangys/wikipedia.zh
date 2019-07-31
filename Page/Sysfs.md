**Sysfs** 是Linux 2.6所提供的一種[虛擬檔案系統](https://zh.wikipedia.org/wiki/虛擬檔案系統 "wikilink")。這個[檔案系統不僅可以把](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")[裝置](https://zh.wikipedia.org/wiki/裝置 "wikilink")（devices）和[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")（drivers）的資訊從内核輸出到[用户空间](https://zh.wikipedia.org/wiki/用户空间 "wikilink")，也可以用來對裝置和驅動程式做設定。

## 歷史

[Linux内核](../Page/Linux内核.md "wikilink")開發團隊在Linux 2.5的開發過程中引入了『[Linux驅動程式模型](https://zh.wikipedia.org/wiki/Linux驅動程式模型 "wikilink")』（Linux driver model），以解決2.4核心遭遇的以下問題：

  - 沒有統一的機制表達驅動程式和裝置的關係。
  - 不存在一般的[熱插拔](https://zh.wikipedia.org/wiki/熱插拔 "wikilink")（hotplug）機制。
  - [procfs檔案系統過度混亂](https://zh.wikipedia.org/wiki/procfs "wikilink")，包含了許多不是[行程](../Page/行程.md "wikilink")（process）的資訊。

sysfs的目的是把一些原本在procfs中的，關於裝置的部份，獨立出來，以『裝置階層架構』（device tree）的形式呈現。這個檔案系統由[Patrick Mochel所寫](https://zh.wikipedia.org/wiki/Patrick_Mochel "wikilink")，之后[Maneesh Soni撰寫](https://zh.wikipedia.org/wiki/Maneesh_Soni "wikilink")“sysfs backing store path”，以降低在大型系統中對記憶體的需求量。

sysfs一開始[ramfs為基礎](https://zh.wikipedia.org/wiki/ramfs "wikilink")，也是一個只存在於記憶體中的檔案系統。ramfs是在2.4核心處於穩定階段時加入的。ramfs是一個優雅的實做，證明了要在當時仍很新的[虛擬檔案系統下寫一個簡單的檔案系統是多麼容易的一件事](https://zh.wikipedia.org/wiki/虛擬檔案系統 "wikilink")。由於ramfs的簡潔以及使用了VFS，稍後的一些記憶體形式的檔案系統都以它作為開發基礎。

sysfs剛開始被命名成ddfs(Device Driver Filesystem)，當初只是為了要對新的驅動程式模型除錯而開發出來的。它在除錯時，會把裝置架構（device tree）的資訊輸出到procfs檔案系統中。但在[Linus Torvalds的急切督促下](https://zh.wikipedia.org/wiki/Linus_Torvalds "wikilink")，ddfs被轉型成一個以ramfs為基礎的檔案系統。在新的驅動程式模型被整合進2.5.1核心時，ddfs被改名成driverfs，以更確切描述它的用途。

在2.5核心開發的次年，新的“驅動程式模型”和"driverfs"證明了對核心中的其他子系統也有用處。kobjects被開發出來，作為核心物件的中央管理機制，而此時driverfs也被改名成sysfs。

## 技術概觀

每個被加入driver model tree內的对象，包括驅動程式、裝置以及class裝置，都會在sysfs檔案系統中以一個目錄呈現。对象的属性作为文件出现。符号链接代表对象间的关系。通常安装在/sys目录下：

`mount -t sysfs sysfs /sys`

## 外部連結

  - [The sysfs Filesystem(pdf), by Patrick Mochel](http://www.kernel.org/pub/linux/kernel/people/mochel/doc/papers/ols-2005/mochel.pdf)
  - [Driver model overview from the LWN porting to 2.6 series](http://lwn.net/Articles/31185/)
  - [kobjects and sysfs from the LWN porting to 2.6 series](http://lwn.net/Articles/54651/)
  - [Ramfs](http://wiki.debian.org/ramfs)

[Category:特殊目的自由文件系统](https://zh.wikipedia.org/wiki/Category:特殊目的自由文件系统 "wikilink") [Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink") [Category:Linux内核接口](https://zh.wikipedia.org/wiki/Category:Linux内核接口 "wikilink")