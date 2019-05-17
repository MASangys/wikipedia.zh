在计算机[文件系统领域中](../Page/文件系统.md "wikilink")，**fork**是一个与文件系统对象相关的数据集。没有fork机制的文件系统只允许内容拥有单个数据集，而有fork的文件系统允许多个内容。每个非空的文件至少有一个fork（通常为默认类型）；因文件系统而不同，一个文件可能有一个或多个相关联的fork；fork可能包含有关该文件主体的数据，或者只是[元数据](../Page/元数据.md "wikilink")。不同于通常为固定大小的一个类似的文件系统特性——[扩展文件属性](../Page/扩展文件属性.md "wikilink")，fork可以为可变大小，甚至可能大于文件的主数据fork。一个文件的大小是其各fork大小的总和。因为其是可变大小（不同于固定大小的元数据），Fork也称为数据**流**（streams），但它与其他的“[流](../Page/字串流.md "wikilink")”所表现出的“可用性随时间而变动（包括无限期）”不同。

## 方案

在没有fork的文件系统上，用户可以使用彼此互相关联的多个单独文件，尤其是用[sidecar
file来存储元数据](https://zh.wikipedia.org/wiki/sidecar_file "wikilink")。但是，这些文件间的连接不会由文件系统自动保留，并且每个程序都必须支持按这些文件来工作。另一种选择是[容器文件](https://zh.wikipedia.org/wiki/容器文件 "wikilink")，其将额外数据存储在指定的文件格式或者一个[archive
file中](https://zh.wikipedia.org/wiki/archive_file "wikilink")，因此允许在一个文件（单个fork）中存储多个文件及元数据。这将要求程序处理容器文件或压缩文件，而不是由操作系统处理fork。这些替代方案均需要处理数据的程序进行额外的处理，但对不支持fork的文件系统的可移植性更佳。

## 实现

### 苹果公司

[蘋果公司的](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[分层文件系统](../Page/分层文件系统.md "wikilink")（HFS）中fork与文件系统关系密切。\[1\][HFS与原有的](../Page/分层文件系统.md "wikilink")[Mac系列](https://zh.wikipedia.org/wiki/Mac系列 "wikilink")（麦金塔）的文件系统（MFS）允许一个文件系统对象有多种fork：一个，一个，以及多个命名fork。

资源fork的设计是为存储被系统的[图形用户界面](../Page/图形用户界面.md "wikilink")（GUI）使用的非编译数据，例如可本地化文本字符串，由[Finder或菜单使用的文件图标](../Page/Finder.md "wikilink")，以及应用程序相关的菜单和对话框等。\[2\]但这个特性非常灵活，因此也出现了额外的用途，例如将文字处理文档处理为内容和表示法，然后将各个部分存储在单独的资源中。由于编译后的软件代码也存储在资源中，所以应用程序通常只包含一个资源fork，而没有数据fork。

[HFS+的一项最晦涩的特性是](https://zh.wikipedia.org/wiki/HFS_Plus "wikilink")，一个文件除了传统的数据和资源fork之外，还可以有任意数量的自定义的“命名fork”。此特性很少被使用，因为苹果公司从未在[Mac
OS
8.1至](https://zh.wikipedia.org/wiki/Mac_OS_8#Mac_OS_8.1 "wikilink")[10.3.9上添加对它的支持](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.3 "wikilink")。从[10.4开始](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.4 "wikilink")，一个部分实现被完成，以支持苹果的[扩展内联属性](../Page/扩展文件属性.md "wikilink")。

在[Mac OS X
v10.4之前](https://zh.wikipedia.org/wiki/Mac_OS_X_v10.4 "wikilink")，用户运行[Mac
OS
X上所自带的经典的](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")[Unix命令行实用工具](https://zh.wikipedia.org/wiki/Unix "wikilink")（例如[tar](https://zh.wikipedia.org/wiki/tar_\(文件格式\) "wikilink")）可能带来数据丢失风险，因为这些工具未被更新以支持处理文件的资源fork，直到v10.4。\[3\]

### Novell

从1985年开始，Novell
（NWFS）及其继任者（NSS）就已从头设计多种存储文件元数据的方法。部分元数据存储在（NDS）中，部分元数据存储在磁盘上的目录结构中，部分存储在文件本身的“多项数据流”中。多项数据流还允许Macintosh客户端附加和使用[NetWare服务器](https://zh.wikipedia.org/wiki/NetWare "wikilink")。

### 微软

在[Windows NT
3.1引入的](../Page/Windows_NT_3.1.md "wikilink")[NTFS文件系统支持被称为](../Page/NTFS.md "wikilink")[替代数据流](https://zh.wikipedia.org/wiki/替代数据流 "wikilink")（ADS）文件系统fork。\[4\]随[Windows
Server
2012引入的新文件系统](../Page/Windows_Server_2012.md "wikilink")[ReFS](../Page/ReFS.md "wikilink")，最初不支持ADS，\[5\]\[6\]\[7\]，但在[Windows
8.1](../Page/Windows_8.1.md "wikilink") 64位及Server 2012
R2中已支持ADS，唯其长度最多128K的限制被加入到ReFS。\[8\]

ADS最初是为添加与现有的支持fork的操作系统的兼容性。计算机程序可以直接在文件路径的后面添加一个冒号（:）及指定的ADS名称来打开一个ADS。\[9\]尽管有此支持，但包括[檔案總管和](../Page/檔案總管.md "wikilink")[DIR命令](../Page/Dir_\(命令\).md "wikilink")（Windows
Vista之前）在内的大多数程序都会忽略ADS。Windows檔案總管会复制ADS并在目标文件系统不支持ADS时发出警告，但只计算主流的大小，并且不会列出文件或文件夹的流。[Windows
Vista中的DIR命令支持显示ADS](../Page/Windows_Vista.md "wikilink")。\[10\][Windows
PowerShell](../Page/Windows_PowerShell.md "wikilink")
v3.0及之后的版本支持操作ADS。\[11\]

#### 使用

[Windows
2000使用ADS以在图像文件中存储](../Page/Windows_2000.md "wikilink")[缩略图](https://zh.wikipedia.org/wiki/缩略图 "wikilink")，并且在任何文件中存储摘要信息（诸如标题、作者等），这样不更改主数据流。\[12\]\[13\]在[Windows
XP中](../Page/Windows_XP.md "wikilink")，微软已意识到当文件被移出NTFS卷时，其所含的ADS容易丢失；因此Windows
XP为只要文件格式支持，就尽量将数据存储在主数据流中。\[14\]Windows
Vista停止支持添加摘要信息，微软认为用ADS操作它过于敏感。\[15\]但是，用于其他目的的ADS没有停止，Windows
XP的Service Pack
2引入了附件执行服务，它将已下载文件的原始来源详情存储在一个名为“区域标识符”的ADS中，以努力保护用户免受下载文件所带来的风险。\[16\][Internet
Explorer和Windows](../Page/Internet_Explorer.md "wikilink")
8则是通过[Microsoft
SmartScreen执行此功能](https://zh.wikipedia.org/wiki/Microsoft_SmartScreen "wikilink")。\[17\]Internet
Explorer也使用ADS来在[Internet快捷方式文件中存储](../Page/書籤_\(瀏覽器\).md "wikilink")[Favicon](../Page/Favicon.md "wikilink")。\[18\]

### Sun

[Solaris第](../Page/Solaris.md "wikilink")9版及之后的版本允许文件有“扩展属性”，这实际上就是fork；一个扩展属性的最大大小与文件的最大大小相同，并且读写它们是采用与读写文件相同的方式。在内部，它们实际上像普通文件一样存储和访问，因此其所有权和权限可能与父文件的所有权和权限相异。因为路径会与子目录冲突，因此它们的文件名不能包含“/”字符。

[网络文件系统](../Page/网络文件系统.md "wikilink")（NFS）第4版支持扩展文件属性，与Solaris的方式大致相同。

## 可能的安全问题和数据丢失风险

在文件系统支持某种或多种fork时，应用程序应该感知它们，以及注意数据和安全风险。允许访问无适当[兼容层的数据是发生此类问题的主要原因](../Page/兼容层.md "wikilink")。

如果各类系统实用程序（磁盘资源管理器、防病毒软件、压缩归档程序等）未感知fork，可能导致遇到下列问题：

  - 用户不会得知任何fork的存在，也不知道文件的实际总大小，只能看到文件的主数据流的大小。
  - [计算机病毒可能在Windows上使用替代数据流](../Page/计算机病毒.md "wikilink")（ADS）隐藏而逃脱检测，如果防病毒软件未意识到fork的存在。
  - 在通过fork不敏感的通道发送文件时，数据可能丢失。这些渠道包括例如[电子邮件](../Page/电子邮件.md "wikilink")、不支持fork的文件系统，并也包括在支持fork的文件系统上使用不支持fork的软件复制或打包（压缩、归档）文件。

## 参见

  - [扩展文件属性](../Page/扩展文件属性.md "wikilink")

## 参考资料

## 外部链接

  - [MSDN Library: File
    Streams](http://msdn.microsoft.com/en-us/library/windows/desktop/aa364404)
  - [Alternate Data Streams](http://2kevin.net/datastreams.html)
  - [Alternate Data Streams in
    Windows](http://archive.wikiwix.com/cache/20100413000000/http://www.think-techie.com/2010/04/alternate-data-streams.html)

[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")

1.

2.

3.

4.

5.

6.

7.  [Windows Server 2012: Does ReFS replace NTFS? When should I use
    it?](http://blogs.technet.com/b/askpfeplat/archive/2013/01/02/windows-server-2012-does-refs-replace-ntfs-when-should-i-use-it.aspx)
    - Martin Lucas, *[TechNet](../Page/TechNet.md "wikilink")*

8.

9.

10.

11.

12.

13.

14.
15.

16.

17.

18.