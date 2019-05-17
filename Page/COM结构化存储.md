**[COM结构化存储](../Page/组件对象模型.md "wikilink")**（也称“[OLE结构化存储](../Page/对象链接与嵌入.md "wikilink")”）是微软在Windows操作系统上开发的一种技术，以在一个文件内存储层次化的数据。严格讲，术语“structured
storage”是指COM的一套接口。并提供了有限形式的数据访问。

结构化存储广泛用于[Microsoft
Office应用程序](../Page/Microsoft_Office.md "wikilink")。但从[Office
2007开始默认使用基于](../Page/Microsoft_Office_2007.md "wikilink")[XML的](../Page/XML.md "wikilink")[Office
Open
XML](../Page/Office_Open_XML.md "wikilink")。[SQL Server也使用结构化存储](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")。

## 概述

结构化存储是为了解决在一个文件中存放多个数据对象的本质性困难。当修改一个对象从而改变其尺寸时，如果这些对象在文件内是顺序存放的，则被修改对象的尺寸扩大时所有在其后的对象都需要向后移动以腾出空间，被修改对象缩小尺寸时所有在其后的对象都需要向前移动。这样的困难有很多种办法应对，但应用程序开发者并不希望处理这样低层次的二进制文件格式问题。

结构化存储把文件系统的概念引入到文件内部。在文件内部构造一个树状层次结构。由存储对象和流对象构成。根节点为根存储，根存储下面可以有子存储或流对象。子存储下面可以再有子存储或流对象。存储对象本身不包含信息，它是子存储和流对象的容器。流对象是叶子节点，是数据的载体。

## COM接口

### 简介

结构化存储提供了一种抽象，称为“流”（stream），用COM接口`IStream`表示。一个流在概念上类似一个文件，使用`IStream`接口的方法来读写。流可以存在于内存中、文件中，或其它流中。另外一个重要抽象是“storage”，表示为COM接口`IStorage`。一个storage在概念上类似于文件系统的目录。Storage可以包含流或其他storages。

一个应用程序如果要把几个数据对象保存到一个文件中，一种办法是打开一个`IStorage`以表示文件，然后把
每个对象存入单独的`IStream`（这可通过标准COM接口`IPersistStream`）。

结构化存储的事务机制，针对写模式而不是读模式。创建、打开存储和流时可以指定事务模式。只有Commit后，所有的变化才提交到上级。revert可以恢复到上次commit以来的状态。事务的实现是在内存中或临时文件中保存文件拷贝的方式。事务可以嵌套。

增量访问，可以减少保存文件的操作时间。对于文件碎片，调用根存储CopyTo解决。

### IStream接口

`  class IStream::public IUnknown `

方法：

`   Read`
`   Write`
`   Seek`
`   CopyTo`
`   Commit 把所有变化提交到包容该流对象的存储对象。`
`   Revert   rollback取消上次提交以来的所有操作。针对事务模式的流`

### IStorage接口

`   class IStorage：public IUnknown  `
`   CreateStream `
`   OpenStream 操作子流对象，返回IStream接口指针`
`   CreateStorage `
`   OpenStorage 操作子存储对象，返回IStorage接口指针`
`   EnumElements 枚举所有的子流对象和子存储对象。`
`   commit`
`   Revert。针对事务模式的存储。`
`   Stat 获取存储对象的CLSID标识符`
`   SetClass 为存储对象赋一个CLSID标识符，并可通过Stat函数获取此CLSID值。通过此CLSID值把存储对象与一段可执行代码联系起来，当客户程序希望执行与存储对象相联系的代码时，它利用CLSID值，并调用 CoCreateInstamce函数创建一个COM对象，再把存储对象交给COM对象，由它处理存储对象。 `

### Windows API函数用于CLSID有关操作

  - WriteClassStg和ReadClassStg函数封装了
    IStorage::SetClass和IStorage::Stat成员函数，可以完成存储对象的CLSID的设置和获取操作。存储对象只是个容器，它本身不包含数据信息，所以它的CLSID信息被写在其下面的一个子流对象中，其名字为“\\x01CompObj”。
  - WriteClassStm和ReadClassStm函数使用一致的格式在流对象的当前位置分别写或者读CLSID信息。通常情况下，在流的起始处放置CLSID信息。
  - GetClassFile函数返回一个与给定文件相联系的CLSID。Windows利用CLSID把数据文件与应用程序联系起来。

## 复合二进制文档

Microsoft实现的一种称为复合二进制文档（Compound File Binary
Format，简称“复合文档”）的COM结构化存储，广泛用于结构化存储实现。使用类似于[FAT的结构表示存储与流](../Page/FAT.md "wikilink")。文件片（chunk）被称为扇区（sector）按需分配给新的流或增加尺寸的流。如果流被删除或收缩尺寸，不再需要的扇区可以重新被其他流使用。

使用复合二进制文档的应用程序有：

  - [Microsoft Office](../Page/Microsoft_Office.md "wikilink")
    [97](https://zh.wikipedia.org/wiki/Office_97 "wikilink")–[2003](https://zh.wikipedia.org/wiki/Office_2003 "wikilink")
    文档：
      - [Word](../Page/Microsoft_Word.md "wikilink") 文档(.DOC, .DOT)
      - [Excel](../Page/Microsoft_Excel.md "wikilink") spreadsheets
        (.XLS, .XLT)
      - [PowerPoint](../Page/Microsoft_PowerPoint.md "wikilink")
        presentations (.PPT, .POT)
      - [Publisher](../Page/Microsoft_Publisher.md "wikilink") 文件(.PUB)
      - [Visio](https://zh.wikipedia.org/wiki/Microsoft_Visio "wikilink")
        文件(.VSD)
      - [Project](../Page/Microsoft_Project.md "wikilink") 文件(.MPP)
      - [Microsoft PhotoDraw](../Page/Microsoft_PhotoDraw.md "wikilink")
        文件(.MIX)
      - [Microsoft Outlook](../Page/Microsoft_Outlook.md "wikilink")
        文件(.MSG)
  - [Windows Installer](../Page/Windows_Installer.md "wikilink")
    文件(.MSI, .MSP, .MST)
  - [Microsoft Picture
    It\!](https://zh.wikipedia.org/wiki/Microsoft_Picture_It! "wikilink")
    / [Microsoft Digital
    Image](https://zh.wikipedia.org/wiki/Microsoft_Digital_Image "wikilink")
    文件(.MIX)
  - Internet Explorer RSS Feeds [Windows RSS
    Platform](https://zh.wikipedia.org/wiki/Windows_RSS_Platform "wikilink")
    文件(.feed-ms)
  - Windows 7 StickyNotes (.SNT)
  - Windows 7 jumplists 文件
  - [Thumbs.db](https://zh.wikipedia.org/wiki/Windows_thumbnail_cache "wikilink")
  - Microsoft SQL 2000 Server
    [DTS](https://zh.wikipedia.org/wiki/Data_Transformation_Services "wikilink")
    packages

### LockBytes对象

LockBytes对象是所有存储介质的一种抽象。存储介质描述称为一般化的字节流，LockBytes对象负责从字节流中读写字节。复合文档通过一个被称为“LockBytes”的对象，把根存储与底层的存储介质联系起来，其他的子对象则通过根存储与底层存储介质进行数据通信，从而实现了整个结构化存储体系结构。复合文档通过LockBytes对象把根存储对象与底层的文件操作隔离开来，在访问存储对象或者流对象时避开了文件句柄操作。

LockBytes对象实现了ILockBytes接口以提供基本的读写操作。COM库提供了缺省的基于文件句柄的LockBytes对象，以及基于内存的LockBytes对象。

例如，可按照如下步骤创建基于内存的复合文档。

1.  GlobalAlloc()获得一个内存句柄
2.  CreateILockBytesOnHGlobal()创建一个LockBytes对象。这步类似于GlobleLock()
3.  StgCreateDocfileOnILockBytes()创建一个基于指定的LockBytes对象的复合文档

其他方法：

  - 使用StgCreateDocfile()创建一个基于磁盘文件的复合文档。
  - StgCreateDocfileOnLockBytes()
  - 使用StgOpenStorage()打开一个基于磁盘文件的复合文档
  - 使用StgOpenStorageOnILockBytes()打开一个基于内存的复合文档
  - GetHGlobalFromILockBytes
  - CreateStreamOnHGlobal
  - GetHGlobalFromStream
  - StgIsStorageFile
  - StgSetTimes

### 永久对象

概念上，永久对象与存储对象和流对象没有联系。永久对象可以把状态信息存储下来，以后可以重建这样的对象，且恢复到以前的状态。可以很方便地使用COM的结构化存储机制或别的机制（如磁盘文件，系统注册表，目录服务，数据库服务等）来保存永久对象的状态。

COM定义了四个常用的永久接口：IPersistStorage, IPersistStream, IPersistStreamInit
和IPersistFile。前三个接口使用的结构化存储机制。后一个接口直接使用文件。接口都包含三个基本函数

  - IsDirty：反映了自上次保存后是否被修改
  - Load：从存储介质中装入永久对象的状态数据
  - Save：把永久对象的状态数据保存到存储介质中

## Native Structured Storage

During the [beta
testing](https://zh.wikipedia.org/wiki/beta_testing "wikilink") phase of
[Windows 2000](../Page/Windows_2000.md "wikilink"), it included a
feature titled **Native Structured Storage** (**NSS**) for storage of
Structured Storage documents (like the binary [Microsoft
Office](../Page/Microsoft_Office.md "wikilink") formats and the
`thumbs.db` file [Windows
Explorer](https://zh.wikipedia.org/wiki/Windows_Explorer "wikilink")
uses to cache thumbnails) with each *Stream* that makes up a document
stored in a separate [NTFS](../Page/NTFS.md "wikilink") [data
stream](https://zh.wikipedia.org/wiki/Alternate_Data_Stream "wikilink").
It included utilities that automatically split up the streams in a
regular Structured Storage document into NTFS data streams and vice
versa. However, the feature was withdrawn after Beta 3 due to
incompatibilities with other OS components, and any NSS files
automatically converted to the single data stream format.\[1\]

## 类似功能产品

  - Microsoft .NET:
      - [GemBox.CompoundFile](http://www.gemboxsoftware.com/CompoundFile.htm)
        – .NET component for accessing structured storage files.
      - [OpenMCDF](http://sourceforge.net/projects/openmcdf/) – Free
        .NET component for accessing OLE structured storage files, MPL
        licensed.
  - Linux:
      - [GNOME Structured File
        Library](http://www.gnome.org/projects/libgsf/) – Can read
        Microsoft structured storage files.
      - [POLE](https://web.archive.org/web/20130429210533/http://pole.berlios.de/).
  - 跨平台 C++用于 Window/MacOSX/Linux:
      - [POLE v3 and up](http://www.dimin.net/software/pole/).
  - Java:
      - [POIFS](https://web.archive.org/web/20070521192832/http://jakarta.apache.org/poi/poifs/index.html)
        – Java implementation of the OLE 2 Compound Document format,
        part of [Apache POI](../Page/Apache_POI.md "wikilink").
  - Perl:
      - [LAOLA Binary
        Structures](https://web.archive.org/web/20091016040350/http://user.cs.tu-berlin.de/~schwartz/pmh/index.html)

## 参考文献

## 外部链接

  -
  - [Open Specifications: Compound File Binary File
    Format](http://msdn.microsoft.com/en-us/library/dd942138.aspx)

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.