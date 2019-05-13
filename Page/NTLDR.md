**NTLDR**（*NT
loader*的[缩写](../Page/缩写.md "wikilink")）是[微软的](../Page/微软.md "wikilink")[Windows
NT系列](../Page/Windows_NT.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")（包括[Windows
XP和](../Page/Windows_XP.md "wikilink")[Windows Server
2003](../Page/Windows_Server_2003.md "wikilink")）的引导程序。NTLDR可以从[硬盘以及](../Page/硬盘.md "wikilink")[CD-ROM](../Page/CD-ROM.md "wikilink")、[U盘等移动存储器运行并引导Windows](../Page/U盘.md "wikilink")
NT系统的启动。如果要用NTLDR启动其他操作系统，则需要将该操作系统所使用的[启动扇区代码保存为一个文件](../Page/启动扇区.md "wikilink")，NTLDR可以从这个文件加载其它[引导程序](../Page/引导程序.md "wikilink")。
[Windows_Advanced_Options_menu.png](https://zh.wikipedia.org/wiki/File:Windows_Advanced_Options_menu.png "fig:Windows_Advanced_Options_menu.png")
NTLDR主要由两个文件组成，这两个文件必须放在系统分割區（大多数情况下都是C盘）：

  - `NTLDR`，这是引導程序本身
  - `boot.ini`，这是引導程序的組態檔

当boot.ini丢失时，NTLDR会启动第一块硬盘第一个分区上的\\Windows目录中的系统。

在安装、维护Windows
NT系统时，可以使用`format`命令会在[卷引导记录中写入启动NTLDR引导程序的代码](../Page/卷引导记录.md "wikilink")。

[Windows Vista](../Page/Windows_Vista.md "wikilink")、[Windows Server
2008及以后版本的操作系统中](../Page/Windows_Server_2008.md "wikilink")，NTLDR被[BOOTMGR替代](../Page/BOOTMGR.md "wikilink")。

NTLDR不支援多語言，如果[中日韓版本的Windows](../Page/中日韓.md "wikilink") NT 5.x
NTLDR找不到BOOTFONT.BIN字型檔案，會自動顯示英語代替。[Windows Boot
Manager支援多語言](../Page/Windows_Boot_Manager.md "wikilink")。

## 常见問題

NTLDR的問題常见于使用者不慎将该文件删除，这样會导致Windows NT系列系统无法启動，开机时将以黑屏白字显示错误信息："NTLDR is
missing, Press CTRL+ALT+DEL to restart." 当用户重启后又将出现上述信息，这样就无法进入系统。

解决该问题需要向[光驱内放入一张相应的Windows安装光碟](../Page/光驱.md "wikilink")，开机时先将[BIOS设置为从光盘启动](../Page/BIOS.md "wikilink")，进入系统安装菜单后再选择进入故障恢复台，按屏幕相关说明进入命令行模式，然后将光盘根目录下i386文件夹内的“ntldr”文件和“ntdetect.com”拷贝至系统分区根目录下，重新启动后将BIOS设置回复为硬盘启动即可\[1\]。

## 参考来源

<references/>

[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")
[Category:引导程序](https://zh.wikipedia.org/wiki/Category:引导程序 "wikilink")

1.  [NTLDR文件丢失的解决方案](http://www.piaoyi.org/computer/NTLDR-is-missing.html)