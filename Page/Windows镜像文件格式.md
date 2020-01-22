> 本文内容由[Windows镜像文件格式](https://zh.wikipedia.org/wiki/Windows镜像文件格式)转换而来。


**Windows 映像文件格式**（）是一个基于[文件的](https://zh.wikipedia.org/wiki/文件 "wikilink")[磁盘映像](https://zh.wikipedia.org/wiki/磁盘映像 "wikilink")[格式](https://zh.wikipedia.org/wiki/格式 "wikilink")。它由[微软公司设计且发布于](https://zh.wikipedia.org/wiki/微软公司 "wikilink")[Windows Vista及其之后的Windows](../Page/Windows_Vista.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")中，用来支持他们的一部分标准安装过程。它与旧版Windows操作系统兼容良好，且部分用于[Windows Fundamentals for Legacy PCs中](../Page/Windows_Fundamentals_for_Legacy_PCs.md "wikilink")。\[1\]。

## 设计

与其它[磁盘镜像格式类似](https://zh.wikipedia.org/wiki/磁盘映像 "wikilink")，WIM格式包含一系列的文件与所关联的[文件系统](../Page/文件系统.md "wikilink")[元数据](../Page/元数据.md "wikilink")。然而，与其他基于[磁盘扇区的格式](https://zh.wikipedia.org/wiki/磁盘扇区 "wikilink")（如[ISO格式](https://zh.wikipedia.org/wiki/ISO "wikilink"),[CUE格式](https://zh.wikipedia.org/wiki/CUE "wikilink"),[BIN格式的光盘格式](https://zh.wikipedia.org/wiki/BIN "wikilink")）不同，WIM是基于文件的。这意味着信息的最小单元是一个[文件](https://zh.wikipedia.org/wiki/计算机文件 "wikilink")。这使其最主要的优点是硬件独立，且一个文件的[SIS可在系统中被使用多次](https://zh.wikipedia.org/wiki/单一实例存储 "wikilink")。

## 文件布局

WIM标头 - 定义 .wim 文件的内容，包括关键资源（元数据资源、查找表、XML 数据）的内存位置，以及各种 .wim 文件属性（版本、大小、压缩类型）。

文件资源 - 包含捕获数据的一系列程序包，如源文件。

元数据资源 - 包含有关正在捕获的文件的信息，包括目录结构和文件属性。.wim 文件中的每个映像都有一个元数据资源。

查找表 - 包含 .wim 文件中的资源文件的内存位置。

XML数据 - 包含有关映像的其他数据。

完整性表 - 包含用于在应用操作期间验证映像完整性的安全哈希信息。

## 用途

Windows 映像格式由于部署较方便，因此取代Windows NT 5.X 的安装方式，成为从[Windows Vista之后的标准部署方式](../Page/Windows_Vista.md "wikilink")。而使用者也不一定要使用Windows Setup 进行Windows 安装，其实仍可以透过DISM及ImageX来达到与Windows Setup 完全一样效果，这时候将只需要安装媒体中sources文件夹的install.wim的档案以及一个Windows 环境(Windows、 Windows To Go、 [Windows PE等](https://zh.wikipedia.org/wiki/Windows_PE "wikilink")...)和命令提示字符来完成安装。 Windows 映像格式除了能够部署Windows 安装，它也能用于[Windows PE及Windows](https://zh.wikipedia.org/wiki/Windows_PE "wikilink") 修复环境(Windows安装媒体\\sources\\boot.wim)。

[Windows PE提供支持NTFS及](https://zh.wikipedia.org/wiki/Windows_PE "wikilink")64位(WOW64)程序的好处，请见[Windows PE](https://zh.wikipedia.org/wiki/Windows_PE "wikilink")。除此之外，它也能用于备份Windows(较少使用)和复原Windows(有些计算机厂商的还原扇区即是利用此方式)。

## 部署及掛載

可以利用DISM及ImageX的相关指令来进行部署及挂载(以及脱机升级版本、更改语言、更改相关设定) 如DISM可利用X:\\Windows\\System32:DISM.exe /Mount-wim /WimFile:文件路徑 /Index:子映像編號 /MountDir:掛載路徑 來掛載Windows 映像。 而部署也能利用類似指令(不是/Mount-Wim)來部署 DISM 是 Deployment Image Servicing and Management (中文:部署映像服务与管理) 的缩写，是[Microsoft开发的程序](https://zh.wikipedia.org/wiki/Microsoft "wikilink")。内建于[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") 及以后版本，Vista 可以自行下载，NT5.X可能无法顺利支持。 ImageX 也是一款具有相同功能的工具，也是[Microsoft开发的程序](https://zh.wikipedia.org/wiki/Microsoft "wikilink")，随附于Windows ADK ([Windows 8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink") / [Windows Server 2012](../Page/Windows_Server_2012.md "wikilink") 部署工具)、Windows AIK ([Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") / [Windows Server 2008 R2](../Page/Windows_Server_2008_R2.md "wikilink") 部署工具)、以及和[Windows 7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink") 部署工具同名但内核不一样的Windows AIK ([Windows Vista](../Page/Windows_Vista.md "wikilink") / [Windows Server 2008](../Page/Windows_Server_2008.md "wikilink") 部署工具)。

## 参考资料

[Category:歸檔格式](https://zh.wikipedia.org/wiki/Category:歸檔格式 "wikilink") [Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink") [Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink") [Category:Windows_Server_2008](https://zh.wikipedia.org/wiki/Category:Windows_Server_2008 "wikilink") [Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")

1.  <https://technet.microsoft.com/zh-cn/library/cc749478>