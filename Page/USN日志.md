**USN日志**（**USN
Journal**）是[NTFS的一个特性](../Page/NTFS.md "wikilink")，全称**U**pdate
**S**equence **N**umber **Journal**（更新序列号码日志），或称更改日志（Change
Journal）\[1\]，它维护一个对已做更改的记录。注意不要与[NTFS文件系统的日志设计混淆](../Page/NTFS.md "wikilink")。

在[Windows
2000发布时](../Page/Windows_2000.md "wikilink")，[微软提供了](../Page/微软.md "wikilink")[NTFS](../Page/NTFS.md "wikilink")
3.0版，其中包含众多新的特性和改进。自Windows
2000起，可以设置在NTFS[分区上跟踪该卷的文件和目录的更改](../Page/硬盘分区.md "wikilink")，提供各种对象在何时、做了何种更改的记录。在该功能启用后，系统将在该卷的USN日志中记录对该卷的更改。

每个NTFS卷的日志维护并存储在名为$Extend\\$UsnJrnl的[NTFS元文件中](../Page/NTFS.md "wikilink")。它最初会是一个空[文件](../Page/電腦檔案.md "wikilink")。每当对该卷进行更改时，一条记录就被添加到该文件。每条记录以一个[64位元更新序列号码](../Page/64位元.md "wikilink")（简称USN）标识。更改日志中的每条记录都包含USN（即号码）、文件的名称，以及有关此更改的信息。

更改日志使用位元标志描述所关联的更改（例如USN_REASON_DATA_OVERWRITE\[2\]），因此它并不包含与更改相关的所有[数据或详细信息](https://zh.wikipedia.org/wiki/数据 "wikilink")。因而，更改日志不能用于撤销NTFS中对文件的操作。

## 使用

[Windows
8中引入的](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")[文件历史记录使用USN日志测定上次备份以来哪些文件已被更改](../Page/Windows_8新功能.md "wikilink")，以便仅将已更改的文件添加到历史记录。\[3\]

## 参考资料

## 外部链接

  -
  -
  -
  -
[Category:文件系统](https://zh.wikipedia.org/wiki/Category:文件系统 "wikilink")
[Category:微软磁盘文件系统](https://zh.wikipedia.org/wiki/Category:微软磁盘文件系统 "wikilink")

1.
2.
3.