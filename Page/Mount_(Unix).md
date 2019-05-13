**mount**是一个[UNIX系统上的命令](../Page/UNIX.md "wikilink")。使用者在UNIX[操作系统的機器上開啟一個](../Page/操作系统.md "wikilink")[檔案以前](../Page/電腦檔案.md "wikilink")，包含該檔案的[檔案系統必須先進行掛載的動作](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，此時使用者要對該檔案系統下**mount**的指令以進行掛載。通常是使用在[USB或其他可移除儲存裝置上](https://zh.wikipedia.org/wiki/通用序列匯流排 "wikilink")，而根目錄則保持掛載的狀態。但[Unix檔案系統可以對應一個檔案而不一定要是硬體裝置](https://zh.wikipedia.org/wiki/Unix檔案系統 "wikilink")。

Unix命令列的**mount**指令是告訴作業系統，對應的[檔案系統已經準備好](https://zh.wikipedia.org/wiki/檔案系統 "wikilink")，可以使用了，而該檔案系統會對應到一個特定的點（稱為**掛載點**）。掛載好的檔案、目錄、裝置以及特殊檔案即可提供使用者使用。除了作業系統呼叫的**mount**指令外，**mount_root()**會優先掛載（或稱[根目錄](https://zh.wikipedia.org/wiki/根目錄 "wikilink")）
。在這個情況下，作業系統會在呼叫**setup**前，先呼叫**mount**。

它的對應指令，**umount**，則是告訴作業系統，斷開與該檔案系統的連接，使其脫離掛載點。**mount**與**umount**指令必須以[超級使用者的權限執行](https://zh.wikipedia.org/wiki/超級使用者 "wikilink")。檔案系統也可在`/etc/`檔案中指定特定使用者才能掛載。這同樣也只能由超級使用者進行修改。

每個在指定機器上被掛載的檔案系統都會在**super_blocks\[\]**表格中以**super_block**的形式表現出來（最大數量由NR_SUPER決定）。而在[虛擬檔案系統中](https://zh.wikipedia.org/wiki/虛擬檔案系統 "wikilink")，superblock是由**read_super(
)**進行初始化的動作。

## 使用方式

掛載硬碟的第二個分割區的指令為：

``` bash
$ mount /dev/hda2 /new/subdir
```

卸載同一個分割區的指令為：

``` bash
$ umount /dev/hda2
```

或

``` bash
$ umount /new/subdir
```

列出所有已掛載的檔案系統的指令為：

``` bash
$ mount
```

以特定選項重新掛載分割區：

``` bash
$ mount -o remount,rw /dev/hda2
```

## 衍生指令及軟體

`pmount`是從標準的**mount**指令延伸出來的版本，其可以使普通的使用者掛載可移除裝置而忽略`/etc/`中的設置。

這個軟體包也包含了另一個衍生軟體**pmount-hal**，其可從讀取裝置資訊以及使用**pmount**掛載。

`gnome-mount`軟體包包含了掛載、卸載以及退出儲存裝置的程式。其目標是代替原本的**mount**指令供其他的GNOME程式使用。GNOME曾使用過pmount。需要注意的一點是，gnome-mount並不會直接讓使用者執行。

所有的gnome-mount程式都使用了HAL的模式運行，所以不需要提高權限即可使用。gnome-mount可放置於，以方便集中管理\[1\]。

## 參見

  - [Unix實用程序列表](https://zh.wikipedia.org/wiki/Unix實用程序列表 "wikilink")

## 註釋

## 外部連結

  -
  -
  -
[Category:Unix文件系統相關軟體](https://zh.wikipedia.org/wiki/Category:Unix文件系統相關軟體 "wikilink")
[Category:標準Unix程式](https://zh.wikipedia.org/wiki/Category:標準Unix程式 "wikilink")

1.  [gnome-mount-0.6](http://www.linuxfromscratch.org/blfs/view/svn/gnome/gnome-mount.html)