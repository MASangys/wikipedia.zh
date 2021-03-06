> 本文内容由[NTFS重解析点](https://zh.wikipedia.org/wiki/NTFS重解析点)转换而来。


**NTFS重解析点**（），微软官方也译-{zh-cn:重分析点、重新解析点、重新分析点;zh-tw:重新分析點、重新剖析點、重新分析指標}-\[1\]，是[NTFS](../Page/NTFS.md "wikilink")文件系统中的一种对象类型。它在[Windows 2000及之后版本中的NTFS](../Page/Windows_2000.md "wikilink") v3.0及以上版本中可用。重解析点提供一种扩展NTFS文件系统的方法。一个重解析点包含一个重解析标签和数据，文件系统过滤器（file system filter）可以按标签解读它。微软提供了几个默认标签，包括[NTFS符号链接](../Page/NTFS符号链接.md "wikilink")、和[NTFS卷挂载点](../Page/NTFS卷挂载点.md "wikilink")。另外，重解析点在Windows 2000的中作为已移动文件的占位符。它还可以作为硬链接，并且不限于同分卷的文件：可以指向任何本地分卷中的目录。\[2\]

## 设计

一般情况：

  - 硬链接：链接到一个文件（[MFT记录](https://zh.wikipedia.org/wiki/MFT "wikilink")）。数据会保持可用，只要有至少一个指向它的链接存在。
  - 软链接：链接到文件名（文件路径）。

### 软链接

Windows Vista支持新的符号链接能力，它取代Windows 2000和Windows XP中的。它的设计目的是帮助迁移和UNIX操作系统的应用程序的兼容性。不同于，符号链接也可以指向一个文件或或远程[SMB网络路径](../Page/伺服器訊息區塊.md "wikilink")。此外，NTFS符号链接的实现提供了跨文件系统的链接支持。但是，启用跨主机的符号链接功能需要远程系统也支持它，这使支持性限制在Windows Vista及更高版本的Windows操作系统。

  - *[NTFS符号链接](../Page/NTFS符号链接.md "wikilink")(SYMLINK)*：本地或远程，相对或绝对SMB文件或路径。启用跨主机符号链接需要远程系统也支持它，这使支持性限制在Windows Vista及更高版本的Windows操作系统。[Windows Server 2008使用软连接把](../Page/Windows_Server_2008.md "wikilink")`\Users\All Users\ -> \ProgramData\`重定向。符号链接可以指向不存在的目标，因为操作系统不会检查目标是否存在。使用 `mklink` 或 `mklink /D`时，相对符号链接仅限于单个卷。
  - **，也称软链接：可用于同一台计算机的同一个卷或不同卷的目录的链接。不能用于对文件的连接。底层是用重解析点实现。使用 `mklink /J`创建 junction 点后，使用Windows资源管理器删除它时，如果使用了Shift+Delete，将立即删除目标文件 (Windows 2000/XP/2003)。 `del my_junction` 命令不应该使用，因为它会删除目标目录中的所有文件。在Windows Vista及更高版本中，使用junction删除是安全的。
  - [卷装载点](../Page/NTFS卷挂载点.md "wikilink")（Volume Mount Points）：卷装载点和前2者类似，只是更进一层：它能创建对整个卷的链接。
  - 远程存储服务器（Microsoft Remote Storage Server）：Windows 2000的这个特性能利用一些规则来移除NTFS卷上不常用的文件，放到存档介质里（比如CD-RW或磁带）。当它把文件移出到“线下”或“半线下”的存储介质上时，RSS自动创建指向这个存档文件的重解析点，以备日后使用。

### 硬链接

NTFS ：从[Windows NT 4开始](https://zh.wikipedia.org/wiki/Windows_NT_4 "wikilink")：同一驱动器上的文件，有多个路径指向它。从Windows 2000开始，Windows API包括一个 `CreateHardLink()` 函数来创建硬链接，并且 DeleteFile() 可以移除它们。所有Windows NT版本都可以使用 `GetFileInformationByHandle()` 来确定一个文件已关联的硬链接数量。硬链接需要NTFS分区。运行在Windows上的类Unix仿真或软件[兼容层](../Page/兼容层.md "wikilink")（如[Cygwin](../Page/Cygwin.md "wikilink")和基于UNIX应用程序的子系统）允许在Windows上使用POSIX接口。大多数现代操作系统不允许硬链接目录以避免无限递归目录；而且，硬链接目录可能导致父目录的条目不一致；通常使用符号链接和达到此目的。硬链接只能对同一文件系统上的文件创建。如果需要创建到另一文件系统的链接，应该使用符号链接。硬链接可以使用`mklink /H`命令创建。

硬链接使用与原文件相同的MFT记录。添加一个硬链接会创建一个新的文件名属性并增加硬链接计数器（每个新创建的文件+1）。删除一个硬链接会移除相应的文件名并将硬链接计数器-1。当计数器归零时，文件系统将删除该文件、释放其占用的磁盘空间及其MFT记录。所有名称属性是独立的，因此删除、移动或重命名文件不会影响其他硬链接。

## 特性

### 卷挂载点

[NTFS卷挂载点](../Page/NTFS卷挂载点.md "wikilink")类似[Unix挂载点](../Page/UNIX.md "wikilink")，将另一个文件系统的根附加到一个目录。在NTFS中，这允许额外的文件系统不逐一占用驱动器号（如 `C:`、`D:`）并挂载。

如果一个卷被挂在到另一个卷的现有目录上，该目录以前列出的内容将被隐藏，已挂载卷的根目录将取代它。已挂载卷仍然有自己单独分配的驱动器号。文件系统不允许卷被手动互相挂载。卷挂载点可以持久或非持久存在，两者区别是系统重启后是否会自动重新挂载。

已挂载卷可能使用非NTFS的文件系统，并可能有自己的安全设置和根据远程文件系统策略重新映射的访问权限。

### 目录交接点

类似卷挂载点，但引用目标为文件系统中的其他目录而非其他卷。举例来说，目录 `C:\exampledir` 有一个目录junction属性，其包含到 `D:\linkeddir` 的链接，因此当它被用户模式的应用程序访问时，将会自动引用 `D:\linkeddir` 目录。\[3\]此功能在概念上类似[Unix中对目录的符号链接](../Page/UNIX.md "wikilink")，除了NTFS中的目标必须始终是另一个目录（典型的Unix文件系统允许符号链接的目标是任何类型的文件）。

目录交接点（可以在命令行提示符中使用 `MKLINK /J junctionName targetDirectory` 创建，以及用 `RMDIR junctionName` 移除）是持久的，并在服务器侧解析，它们与本地文件系统或挂载内容所在的父卷共享相同的安全领域；不过目录交接点本身可能有不同的安全设置。取消一个目录交接点链接不会删除目标目录中的文件。

某些目录交接点在Windows Vista上已默认安装，目的是保证对以前Windows版本的兼容性，例如系统分区根目录中的`Documents and Settings`就是链接到同个卷根目录中的的`Users`物理目录。不过它在默认情况下是隐藏的，并且设定了安全设置以要求Windows文件资源管理器拒绝在外壳和大多数应用程序中打开它，除了本地内置的SYSTEM用户或本地管理员组（这两个用户帐户用于在系统中安装软件）。这个额外的安全性限制是为了避免用户误入此目录和看到、误以为并删除明显重复的文件。目录交接点的语义不同于硬链接，对目标内容和引用容器本身都不存在引用计数。

目录交接点是一种软链接（它们可以持久存在，哪怕目标目录被删除），可以作为一种有限的符号链接使用（对目标位置有所约束），但它是一个优化的版本，重解析点的设计允许更快地处理它，比NTFS符号链接具有更小的系统开销，并且可以在服务器侧解析（当发现于远程共享目录时）。

### 符号链接

[符号链接](../Page/符号链接.md "wikilink")（或软链接）在Windows Vista中被引入。\[4\]符号链接在客户端侧解析。因此当符号链接被共享时，目标受到客户端而非服务器的访问限制。

符号链接的创建可以指向文件（用 `MKLINK 符号链接 目标文件` 创建）或目录（用 `MKLINK /D 符号链接 目标目录` 创建），但不同于Unix符号链接，创建链接时必须提供链接的类型。符号链接创建时不需要目标存在或可用：在符号链接可用时才会检查可用性，NTFS也会在那时检查类型（文件/目录）是否正确；如果现有目标的类型错误，将会返回“找不到”错误。

它们还可引用远程主机上的共享目录或文件，以及共享项目录中的子目录：它们的目标不会立即挂载，只在使用 OpenFile()或CreateFile() API时临时请求。<span class="cx-segment" data-segmentid="127"></span>

### 分布式链接跟踪（DLT）

分布式链接跟踪允许应用程序跟踪文件、快捷方式和OLE链接，即使它已被重命名或移动到同个机器、域或工作组中的另一个分卷。\[5\]跟踪实现为一个系统服务，使用对象标识符（OID）的索引存储在一个元文件中。\[6\]当应用程序请求跟踪一个文件或目录时，跟踪服务创建指向该文件的OID记录。在文件被重命名、复制或移动到一个NTFS v3分卷时，对象ID也将被复制。因此跟踪服务最终能找到目标文件。

### 单实例存储（SIS）

当多个目录有不同但类似的文件时，这些文件可能有着相同的内容。单实例存储允许相同的文件被合并为一个文件，并创建一个到合并后文件的引用。SIS包括：一个文件系统筛选器，它管理复制、修改和合并文件；一个用户空间服务（或称*groveler*），它搜索相同并需要合并的文件。SIS的主要设计目的是远程安装的服务器，其存在的多个安装镜像可能包含许多相同的文件，SISK可以合并这些。不同于硬链接，每个文件仍然是不同的；对一个副本的更改不会改变其他的副本。这类似于[写时复制](https://zh.wikipedia.org/wiki/寫入時複製 "wikilink")，但那个技术是内存复制并未真正完成，直至副本被修改。\[7\]

### 分层存储管理（HSM）

是一种转移文件的手段，它根据文件热度将数据在普通与昂贵的存储介质间转移。在下次访问该文件时，该文件的重解析点会确定所需的存储介质并从那里检索。<sup>\[*<span title="This claim needs references to reliable sources. (December 2009)">citation needed</span>*\]</sup>

### 原生结构化存储（NSS）

NSS原是[ActiveX](../Page/ActiveX.md "wikilink")文档存储技术，它已被微软停止使用。它允许ActiveX文档存储在ActiveX内部使用的多流格式中。NSS文件系统筛选器可以被加载并处理透明传输到应用该程序的多个流，并在文件被传输到非NTFS格式的磁盘卷时将多个流变为单个流。\[8\]

## Windows Vista（及其後）的默认文件夹位置变化

与Windows XP（Windows NT 5.x）相比，在Windows 7、Windows 10等作業系统（Windows NT 6.x/Windows NT 10.x）中，存放用户数据（user data）和系统数据（system data）的默认文件夹位置发生变化。例如，在Windows XP中存放用户数据的文件为%SystemDrive%\\Documents and Settings；在Windows 7中则为%SystemDriver%\\User。这样的变化无疑对以前应用程序能否在Windows 7下顺利运行带来兼容性问题。为了最大程度地保证对以前在Windows XP运行的程序的兼容性，在Windows 7中采用了junction points（连接点）技术。通过这个技术，原来在Windows XP下运行的程序对%SystemDrive%\\Documents and Settings文件夹下的数据存取操作，能自动地更改到%SystemDriver%\\User文件夹。

| xp、windows2003中的路径                                                           | win7、windows2008中的路径                                              |
| ---------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| \\Documents and Settings                                                     | \\Users                                                           |
| \\Documents and Settings\\Default User或%LOGONSERVER%\\NETLOGON\\Default User | \\Users\\Default 或%LOGONSERVER%\\NETLOGON\\Default                |
| \\Documents and Settings\\<user>\\My Documents                               | \\Users\\<user>\\Documents                                        |
| \\Documents and Settings\\<user>\\My Documents\\My Pictures                  | \\Users\\<user>\\Pictures                                         |
| \\Documents and Settings\\<user>\\My Documents\\My Music                     | \\Users\\<user>\\Music                                            |
| \\Documents and Settings\\<user>\\Favorites                                  | \\Users\\<user>\\Favorites                                        |
| N/A                                                                          | \\Users\\<user>\\Contacts                                         |
| N/A                                                                          | \\Users\\<user>\\Downloads                                        |
| N/A                                                                          | \\Users\\<user>\\SavedGames                                       |
| \\Documents and Settings\\<user>\\Application Data                           | \\Users\\<user>\\AppData\\Roaming                                 |
| \\Documents and Settings\\<user>\\Local Settings\\Application Data           | \\Users\\<user>\\AppData\\Local                                   |
| \\Documents and Settings\\<user>\\Start Menu                                 | \\Users\\<user>\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu |
| \\Documents and Settings\\All Users                                          | \\Users\\Public                                                   |
| \\Documents and Settings\\All Users\\Start Menu                              | \\ProgramData\\Microsoft\\Windows\\Start Menu                     |
| \\Documents and Settings\\All Users\\Desktop                                 | \\Users\\Public\\Desktop                                          |

## 编程解析

重解析点tag是个DWORD，为获取它，使用FindFirstFile函数，如果输出参数的dwFileAttributes结构域包含了FILE_ATTRIBUTE_REPARSE_POINT 属性，那么dwReserved0结构域就是重解析点的tag值。

为判断文件系统是否支持重解析点，调用GetVolumeInformation函数检查FILE_SUPPORTS_REPARSE_POINTS比特标志。

DeviceIoControl函数可以设置、修改、获取、删除重解析点。

GetFileAttributes函数可判断一个文件或目录是否包含重解析点。

CreateFile函数带着FILE_FLAG_OPEN_REPARSE_POINT，可以打开一个重解析点文件。

## 参见

  - [NTFS符号链接](../Page/NTFS符号链接.md "wikilink")
  - [NTFS junction点](https://zh.wikipedia.org/wiki/NTFS_junction点 "wikilink")
  - [NTFS卷挂载点](../Page/NTFS卷挂载点.md "wikilink")
  - [符号链接](../Page/符号链接.md "wikilink")

## 参考资料

## 外部链接

  - [Reparse Point Support in Windows 2000-Based Clusters](http://support.microsoft.com/kb/262797/en-us)
  - [Reparse Points](http://msdn.microsoft.com/en-us/library/aa365503%28v=VS.85%29.aspx) in the Microsoft Developer Network (MSDN) Library

[Category:磁盘文件系统](https://zh.wikipedia.org/wiki/Category:磁盘文件系统 "wikilink") [Category:微软磁盘文件系统](https://zh.wikipedia.org/wiki/Category:微软磁盘文件系统 "wikilink")

1.  <https://www.microsoft.com/Language/zh-tw/Search.aspx> reparse point
2.  "*Microsoft Windows Vista Client Configuration Study Guide*" Wiley Publishing, Inc. 2007 p.285
3.
4.
5.  <http://msdn.microsoft.com/en-us/library/windows/desktop/aa363997.aspx>
6.  <http://technet.microsoft.com/en-us/library/cc736811(WS.10>).aspx
7.
8.  Saville, John (date unknown).