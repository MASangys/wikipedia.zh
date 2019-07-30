**badblocks**是[Unix-like操作系统下用来检查类似于磁盘分区这样的](https://zh.wikipedia.org/wiki/Unix-like "wikilink")[设备上是否存在](https://zh.wikipedia.org/wiki/设备 "wikilink")[壞軌的命令行程序](../Page/硬碟壞軌.md "wikilink")，其功能类似于[Microsoft Windows或](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[DOS](../Page/DOS.md "wikilink")操作系统中的[SCANDISK或](https://zh.wikipedia.org/wiki/SCANDISK "wikilink")[CHKDSK](../Page/CHKDSK.md "wikilink")。运行后badblocks会给出一份设备上存在问题的[区块](https://zh.wikipedia.org/wiki/区块 "wikilink")（block）列表。

badblocks是[ext2](https://zh.wikipedia.org/wiki/ext2 "wikilink")/[3](https://zh.wikipedia.org/wiki/ext3 "wikilink")/[4](https://zh.wikipedia.org/wiki/ext4 "wikilink")[文件系统](../Page/文件系统.md "wikilink")工具集[e2fsprogs的一部分](https://zh.wikipedia.org/wiki/e2fsprogs "wikilink")。

badblocks在大多数情况下需要配合[e2fsck或](https://zh.wikipedia.org/wiki/e2fsck "wikilink")[mke2fs使用](https://zh.wikipedia.org/wiki/mke2fs "wikilink")，此时需要专门指定合适的"**-b**"参数，也就是badblock所读取的区块大小（block-size）。因此，用户应该通过执行[e2fsck或](https://zh.wikipedia.org/wiki/e2fsck "wikilink")[mke2fs时加上](https://zh.wikipedia.org/wiki/mke2fs "wikilink")"**-c**"参数来调用badblocks，而不是直接使用badblocks。\[1\]

## e2fsck的 "-c" 參數

多數情況下badblocks會透過e2fsck的`"-c"`參數調用，防止資料被寫入壞軌中。透過掃描時所產生的壞軌清單在分配空間時避免使用到壞軌部份。這項測試可以透過唯讀（`"-c"`）或非破壞性寫入（`"-cc"`）進行。\[2\]

### dumpe2fs

執行`dumpe2fs -b`可以列出由`e2fsck`或\>`tune2fs`所紀錄的壞軌清單。

## 範例

`badblocks -nvs /dev/sdb`

這個指令將會對 "sdb"進行非破壞性寫入測試以及顯示檢查進度。

`badblocks -wvs /dev/sdb6`

這個指令將會對"sdb"的第6[硬碟分割區進行破壞性寫入測試](https://zh.wikipedia.org/wiki/硬碟分割 "wikilink")（-w = 寫入模式），對分割區寫入4種不同的方式，並寫驗證其正確性。過程中將會顯示檢查進度（-s = 顯示，-v = 詳細資料）. 指令所執行之分區資料將會被覆蓋。

`badblocks -wvsb 4096 /dev/sdb`

這指令行為與上則相同，不過對象為整個硬碟以及指定區塊大小為4096。將會破壞[MBR分割區及資料](https://zh.wikipedia.org/wiki/MBR "wikilink")。新一點的硬碟並不會顯示損壞的磁區，其原因為在備用磁區尚存時將自動重新定位至備用磁區\[3\]，但是執行在新硬碟上會測試硬碟表面，解析[S.M.A.R.T.](../Page/S.M.A.R.T..md "wikilink")資訊後將會顯示最終所配置的磁區數量。

使用`-w`參數時，將會把原先硬碟的所有資料抹除掉。

## 参考

  - [fsck](https://zh.wikipedia.org/wiki/fsck "wikilink")
  - [e2fsprogs](https://zh.wikipedia.org/wiki/e2fsprogs "wikilink")

## 引用

<references/>

[Category:Unix文件系统相关软件](https://zh.wikipedia.org/wiki/Category:Unix文件系统相关软件 "wikilink")

1.  [badblocks(8) - Linux man page](http://linux.die.net/man/8/badblocks), 2010年5月7日查阅
2.
3.