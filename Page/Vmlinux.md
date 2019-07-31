[Linux-kernel-vmlinux.png](https://zh.wikipedia.org/wiki/File:Linux-kernel-vmlinux.png "fig:Linux-kernel-vmlinux.png")  在linux系統中，vmlinux（vmlinuz）是一個包含linux kernel的靜態連結的執行檔，檔案型態可能是linux接受的執行檔格式之一（[ELF](https://zh.wikipedia.org/wiki/ELF "wikilink")、[COFF或](https://zh.wikipedia.org/wiki/COFF "wikilink")[a.out](https://zh.wikipedia.org/wiki/a.out "wikilink")），vmlinux若要用於除錯時則必須要在開機前增加symbol table。

## 位置

一般來說，核心的位置會在檔案系統的 /boot 目錄下，然而因为bootloader 必須使用 [BIOS](../Page/BIOS.md "wikilink") 的硬碟驅動程式，在一些i386的機器上必須要放在前 1024 個磁柱內。

為了克服這個限制，Linux 發行版鼓勵使用者建立一個磁區用來存放 bootloader 與核心相關的開機檔案，例如 [GRUB](https://zh.wikipedia.org/wiki/GRUB "wikilink"), [LILO](../Page/LILO.md "wikilink") 與 [SYSLINUX](../Page/SYSLINUX.md "wikilink") ... 。而這個磁區通常會掛載到系統的／boot 上，這是 FHS (Filesystem Hierarchy Standard) 標準內定義的。

## 壓縮

一般來說，當建立一個可啟動的核心時，此核心會先經過 zlib 演算法壓縮，而在核心內會包含一個相當小的解壓縮程式 stub，當 stub 解壓縮核心程式的時候會對 console 視窗印出"點"來表示解壓縮進度。

解壓縮所花費的時間在開機時間中所佔程度來說其實是相當小的，而在早期的 bzImage 的發展中對於核心的大小會有所限制（特別是 i386 架構），在此情況下壓縮則是必須的。

## vmlinuz

vmlinuz 是vmlinux 经过 gzip和objcopy 制作出来的压缩文件，当然不再是vmlinux的一个简单的压缩版，这么简单。vmlinuz是一种统称，有两种具体的表现形式zImage 和bzImage。bzimage和zImage的区别在于本身的大小，以及加载到内存时的地址不同，zImage在0～640KB，而bzImage则在1M以上的位置。

## vmlinux.bin（需要修正）

vmlinux.bin 是进行如下操作得来，除二进制内容一无所有，而vmlinux是elf格式的文件里面包含了elf头部内容：

`#objcopy -O binary vmlinux vmlinux.bin.`

## bzImage

隨著 linux Kernel 的成長，核心的內容日益增加超越了原本的限制大小。bzImage (big zImage) 格式則為了克服此缺點開始發展，利用將核心切割成不連續的記憶體區塊來克服大小限制。

bzImage 格式仍然是以 zlib 演算法來做壓縮，雖然有一些廣泛的誤解就是因為以 bz- 為開頭，而讓人誤以為是使用 bzip2 壓縮方式（bzip2 套件所帶的工具程式通常是以 bz- 為開頭的，例如 bzless, bzcat ...）。

bzImage 檔案是一個特殊的格式，包含了 bootsect.o + setup.o + misc.o + piggy.o 串接。piggy.o 包含了一個 gzip 格式的 vmlinux 檔案（可以參看 arch/i386/boot／下的 compressed/Makefile piggy.o）

## 標題

## 參見

  - [Linux kernel](https://zh.wikipedia.org/wiki/Linux_kernel "wikilink")
  - [可載入核心模組](https://zh.wikipedia.org/wiki/可載入核心模組 "wikilink")

## 外部連結

  - [Kernel HOWTO](http://www.faqs.org/docs/Linux-HOWTO/Kernel-HOWTO.html#kernel_files_info)
  - [Boot process](http://www.faqs.org/docs/kernel_2_4/lki-1.html)

[Category:Linux內核](https://zh.wikipedia.org/wiki/Category:Linux內核 "wikilink")