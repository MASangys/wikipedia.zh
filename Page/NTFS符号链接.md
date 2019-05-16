**NTFS符号链接**（Symbolic
Link），又稱**符號連結**\[1\]，是[NTFS](../Page/NTFS.md "wikilink")[文件系统中指向文件系统中的另一个对象的一类对象](../Page/文件系统.md "wikilink")。被指向的对象叫做“目标”。它们可以像普通文件一样操作，但所有对符号链接的操作都实际作用于目标对象。[符号链接对用户而言是透明的](../Page/符号链接.md "wikilink")，符号链接看上去和普通的文件和文件夹没有区别，操作方法也一模一样。NTFS符号链接的设计目的是为了和[POSIX标准的](https://zh.wikipedia.org/wiki/POSIX "wikilink")[操作系统兼容](../Page/操作系统.md "wikilink")、並用來增進與舊版作業系統的相容性，它首次出现于[Windows
Vista](../Page/Windows_Vista.md "wikilink")。

[Windows
2000开始就有的](../Page/Windows_2000.md "wikilink")\[2\]，只能用于目录，且只能用于本地文件系统。而符号链接既可以指向本地文件，也可以指向远程[SMB网络路径](https://zh.wikipedia.org/wiki/服务器消息区块 "wikilink")。NTFS连接点只支持本地驱动器的绝对路径，但NTFS符号链接允许使用相对路径。还有，NTFS符号链接允许跨文件系统使用，但是对于跨主机的符号链接，还需要远程机器也支持这一功能才行。

硬链接只能用于文件，不能用于目录。硬链接相当于一个实体文件有多个彼此平等的名字。删除一个文件名字后，还可以用其它名字访问该文件。硬链接只能用于同一个磁盘分区内的文件。硬链接不能用于空文件，而符号链接可以用于空文件或空目录。

## 命令及其参数\[3\]

在NT6内核的操作系统，例如[Windows
Vista或](../Page/Windows_Vista.md "wikilink")[Windows
7中](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")，符号链接可以由命令`mklink`创建，mklink是`cmd.exe`的内部命令，语法如下：

``` text
mklink [[NTFS符号链接/D]|[/H]]] link target
```

  - `/D` –创建指向目录的符号链接，如果不指定此参数，默认为创建文件符号链接。
  - `/H`
    –创建[硬链接](https://zh.wikipedia.org/wiki/硬链接 "wikilink")（Hardlink），或稱[永久連結](https://zh.wikipedia.org/wiki/永久連結 "wikilink")\[4\]。
  - `/J` –创建（Junction point）。
  - `link` –指定符号链接的名字
  - `target` –指定符号链接指向的对象的路径（相对或绝对皆可）。

和普通文件一样，删除符号链接也可以使用`del`命令，具体语法如下：

``` text
del filename
```

  - `filename` –要被删除的符号链接的名字

和普通目錄（資料夾）一样，删除目錄符号链接也可以使用`rd`命令，具体语法如下：

``` text
rd directoryname
```

  - `directoryname` –要被删除的符号链接的名字

需要提升為管理員權限才能建立符號連結。

复制链接的文件或目录时，使用`copy /L`或`xcopy /B`，可以复制这些符号链接，而不是复制文件或目录实体本身。

## 其他功能

符号链接可以指向不存在的对象，在创建符号链接时，系统并不会检查对象是否存在。\[5\]

## 限制

Windows操作系统启动时不支持符号链接。所以不应该对下列文件夹重定向：

  - 目录包含了hiberfil.sys (如果被配置在根目录以外)
  - \\Windows
  - \\Windows\\system32
  - \\Windows\\system32\\Config

Windows Installer不完整支持符号链接。对\\Windows\\Installer重定向会导致多数基于.msi的Windows
installers失败报告error 2755 或 error 1632.

可以重定向下列目录:

  - \\Documents and Settings
  - \\ProgramData
  - \\Program Files
  - \\Program Files (x86)
  - \\Users

但是对\\Users与\\ProgramData重定向不被推荐，因为会打破[Windows
Update与Windows](../Page/Windows_Update.md "wikilink") Store Apps.\[6\]

## 內建符號連結的範例

Windows Vista中預先建立了一些符號連結（Junction point），以增進與舊版作業系統（Windows
XP）間的相容性，部分範例如下：

  - C:\\Document and Settings → C:\\Users（連接點）
  - C:\\Users\\All Users → C:\\ProgramData（目錄符號連結）

## 参考资料與附註

<references/>

## 外部链接

  - [Documentation for NTFS symbolic links on
    MSDN](http://msdn2.microsoft.com/en-us/library/aa365680.aspx)
  - [CreateSymbolicLink function in the Win32
    API](http://msdn2.microsoft.com/en-us/library/aa363866.aspx)
  - [Link Shell
    Extension](http://schinagl.priv.at/nt/hardlinkshellext/hardlinkshellext.html),
    which presents a graphical interface for creating
    [hard](https://zh.wikipedia.org/wiki/hard_link "wikilink") and
    symbolic links as well as directory junctions
  - [Symlink accessible driver
    for 2000/XP/2003](https://web.archive.org/web/20100716075342/http://homepage1.nifty.com/emk/symlink.html)，
  - \[<http://technet.microsoft.com/zh-tw/library/cc754077(WS.10>).aspx
    符號連結（Microsoft Technet上的中文說明）\]

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")

1.  Windows Vista繁體中文版內所使用的名稱。
2.  Junction Point在Windows繁體中文版內使用**連接點**的名稱。
3.  \[<http://technet.microsoft.com/en-us/library/cc753194(WS.10>).aspx
    mklink on a technet.microsoft.com\]
4.  Windows Vista繁體中文版內所使用的名稱。
5.  <http://msdn.microsoft.com/en-us/library/aa365460(VS.85>).aspx
6.