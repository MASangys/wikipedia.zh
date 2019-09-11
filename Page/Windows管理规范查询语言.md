**Windows管理规范查询语言**（**Windows Management Instrumentation Query Language**，缩写**WQL**）是[微软](../Page/微软.md "wikilink")对（CQL）的实现，该语言是（DMTF）之[通用信息模型](../Page/通用信息模型.md "wikilink")（CIM）标准的一种查询语言。它是[ANSI标准](../Page/美國國家標準協會.md "wikilink")[SQL](../Page/SQL.md "wikilink")的一个子集，小幅改变语义。\[1\]

WQL专用于[WMI](https://zh.wikipedia.org/wiki/WMI "wikilink")，旨在针对[CIM存储库执行查询](../Page/通用信息模型.md "wikilink")，以检索信息或获取事件通知。

## 例子

作为示例，下列WQL查询将选择一台计算机上所有有2 MB或以上空闲空间的：\[2\]

``` sql
SELECT * FROM Win32_LogicalDisk WHERE FreeSpace < 2097152
```

## 参见

  - [Windows管理规范](../Page/Windows管理规范.md "wikilink")（WMI）

  - [通用信息模型](../Page/通用信息模型.md "wikilink")（CIM）

  - （WBEM）

  - [Windows PowerShell](../Page/Windows_PowerShell.md "wikilink")

## 参考资料

## 外部链接

  - [Querying with WQL](http://msdn.microsoft.com/en-us/library/aa392902.aspx)
  - [WQL Operators](http://msdn.microsoft.com/en-us/library/aa394605.aspx)
  - [WQL-Supported Date Formats](http://msdn.microsoft.com/en-us/library/aa394607.aspx)
  - [WQL-Supported Time Formats](http://msdn.microsoft.com/en-us/library/aa394608.aspx)
  - [WQL (SQL for WMI)](http://msdn.microsoft.com/en-us/library/aa394606.aspx)
  - [Using WQL with the WMI Provider for Server Events](http://msdn.microsoft.com/en-us/library/ms180524.aspx)
  - \[<http://msdn.microsoft.com/en-us/library/ms186146(VS.80>).aspx WMI Queries\]
  - [Learn WMI Query Language using PowerShell](http://www.ravichaganti.com/blog/?p=1845)

[Category:SQL](https://zh.wikipedia.org/wiki/Category:SQL "wikilink") [Category:Windows技术](https://zh.wikipedia.org/wiki/Category:Windows技术 "wikilink")

1.  [WQL (SQL for WMI)](http://msdn2.microsoft.com/en-us/library/aa394606.aspx)
2.  \[<http://msdn2.microsoft.com/en-us/library/ms186146(VS.80>).aspx WMI Queries\]