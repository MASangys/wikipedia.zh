**Initrd ramdisk**或者**initrd**是指一个临时[文件系统](../Page/文件系统.md "wikilink")，它在启动阶段被[Linux内核](../Page/Linux内核.md "wikilink")调用。initrd主要用于当[“根”文件系统被](../Page/根目录.md "wikilink")[挂载之前](../Page/Mount_\(Unix\).md "wikilink")，进行准备工作。\[1\]

## 基本原理

同其他[Unix系统一样](https://zh.wikipedia.org/wiki/Unix "wikilink")，[Linux](../Page/Linux.md "wikilink")操作系统首先要将内核引导入内存。内核驻留于操作系统与应用程序的整个活动周期，其中应用程序（软件）在“用户空间”内运行，位于内核控制之下。

為了使載入記憶體最小化，一些核心 Linux 程式轉化成模組形式，可以動態載入系統中。

initrd 系統中的檔案在開機階段可以被核心存取，裡面的內容會被掛載成一個 loop 型態的檔案，早期是將 initrd 放在小的軟碟片內。initrd 通常被壓縮成 gzip 類型，在開機的時候由 bootloader(LILO, GRUB) 來告知核心 initrd 的位置。不过在2.6版本内核之后出现了initramfs，它和initrd实现同样的功能，但是它基于一种cpio档，无须挂载就可以展开成一个文件系统，因此省去了各种相关的权限，在自动化方面更方便了。

## initramfs 與 initrd

[initramfs是initrd的一个替代品](https://zh.wikipedia.org/wiki/initramfs "wikilink")，以另外一种方式实现了曾经initrd的功能。initrd是一个被加载的块设备，内部有[ext2一类文件系统的存在](https://zh.wikipedia.org/wiki/ext2 "wikilink")，于是由于Linux内核的缓存机制，其中的内容还会被缓存到内存上，造成一定的内存空间浪费。而initramfs本身就是一个[tmpfs的内存盘](https://zh.wikipedia.org/wiki/tmpfs "wikilink")，拥有最小化的设计，绕过了缓存机制，也消除了多余的内存占用。\[2\]

initramfs的生成方式也远比initrd简单。对于initramfs，只需 `geninitramfs() { cd "$1"; find . -depth| cpio -o -H newc | ${3-cat}> "$2"; }` 就可以利用[cpio生成这样一个文件](https://zh.wikipedia.org/wiki/cpio "wikilink")，同时使用一些程序进行压缩（通过额外的管道实现，其中使用cat仅用于无压缩时转发输出，可省去）。对于initrd，则涉及生成一定大小的空文件，然后创建文件系统，挂载并添加文件等等诸多步骤。

## 最终用户端实现

核心與 initrd 必須儲存在 bootloader 可以存取的位置，通常是在：

  - root 檔案系統內
  - 一個小的 ext2 或 FAT 格式的分割區（通常掛載到 /boot）
  - TFTP server 內（系統必須使用網路開機）

bootloader 會將核心與 initrd 載入記憶體中並將 initrd 的位址傳給核心，在開機的最後核心會試著去決定 initrd 的格式

如果 initrd 是檔案系統的映像檔，則將會被當一個特殊的區塊檔案（/dev/ram），會被掛載當成 initial root file system， 這個檔案系統格式的驅動程式會被靜態連結到核心內，許多發行版使用 ext2 格式的 initrd 檔案系統，也有些發行版（Debian 3.1）使用 cramfs 格式。在一些記憶體受限的系統上，因為 cramfs 格式被掛載並不需要解壓縮。一旦 initial root file system 建立，則核心會用 /sbin/init 去執行 /linuxrc 當成第一個程序。在 initramfs 中，核心執行 /init script 當成第一個程序。

有一些 Linux 發行版將會建立客製化只包含必要元件的的 initrd 映像檔，例如只包含 ATA, SCSI以及檔案系統核心模組。

有一些 Linux 發行版（例如 Fefora 或 Ubuntu）會建立較一般化的 initrd，他們會用裝置檔來啟動檔案系統（或是使用 [UUID](https://zh.wikipedia.org/wiki/UUID "wikilink")），大部分的裝置都在開機階段來做尋找，如此，開機會造成較複雜的開機掛載檔案系統過程：

  - 任何硬體驅動程式的載入與否是在開機時期來決定，一般的作法是將常見的儲存裝置的核心模組放在 initrd，接著呼叫 hotplug 來決定載入偵測到的硬體所對應的驅動程式。

<!-- end list -->

  - 若是檔案系統採用 NFS 方式：
      - 啟動主要的網路介面
      - 啟動 DHCP 客戶端，取得 DHCP lease
      - 取得 NFS server 的位址
      - 掛載 NFS 檔案系統

<!-- end list -->

  - 大部分的根檔案系統會有 /linuxrc 或 /init 的 script 以及包含最小的 shell（通常是 /bin/ash）與一些必要的 user-space 工具程式（通常是 BusyBox 工具），所使用的一些空間用量較小的的函式庫（例如用 gcc -Os 選項編譯的函式庫），例如一些 c 函式庫， [dietlibc](https://zh.wikipedia.org/wiki/dietlibc "wikilink") 或 [klibc](https://zh.wikipedia.org/wiki/klibc "wikilink")。

## 参考

  -

<references/>

## 更多链接

  - A [detailed comparison](http://wiki.debian.org/InitrdReplacementOptions) of initrd-generating toolkits
  - [Kernel documentation](https://www.kernel.org/doc/Documentation/early-userspace/README) on Early userspace support
  - [分析linux initrd文件](https://archive.is/20121227180523/http://blog.microsuncn.com/?p=253)

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")

1.
2.