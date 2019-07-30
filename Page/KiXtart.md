**KiXtart**是用于Windows的自由格式的[脚本语言](../Page/脚本语言.md "wikilink")。在它的官方网站上把它描述为登录脚本处理程序和增强的批处理脚本语言。\[1\]它的名称是"kick start"的[混成詞](../Page/混成詞.md "wikilink")。

## 概述

KiXtart的开发者是[微软](../Page/微软.md "wikilink")公司的荷兰职员Ruud van Velsen。它以[careware的方式提供给用户](https://zh.wikipedia.org/wiki/careware "wikilink")。最初开发于1991，旨在提供用于微软局域网管理器(Microsoft LAN Manager)环境的登录脚本。

它含有丰富的内置功能，可简化脚本编写和访问[ADSI](../Page/Active_Directory.md "wikilink")，[ADO](../Page/ADO.md "wikilink")，[WMI等](https://zh.wikipedia.org/wiki/WMI "wikilink")。使用此语言可以显示信息，设置环境变量，启动程序，连接网络驱动器，读取和编辑注册表，改变当前驱动器和目录以及更多的功能。

通过KiXforms，用户还能在KiXtart中创建[GUI](../Page/图形用户界面.md "wikilink")。

### 代碼例子

讀取Windows產品編號

``` kixtart
; Read value from registry
$ProductID = ReadValue("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion","ProductId")

; Display result or error message
If @ERROR = 0
    ? "ProductID=$ProductID"
Else
    ? "Error reading product ID"
Endif
?

; Done
Exit @ERROR
```

## 版本

KiXtart作为登录脚本语言的开发始于1991。

后续版本发布日期如下：\[2\]

  - 23/10/00 v3.63

KiXtart 2001

  - 19/11/01 v4.00
  - 21/01/02 v4.02
  - 08/07/02 v4.10
  - 26/08/02 v4.11
  - 11/11/02 v4.12
  - 17/02/03 v4.20
  - 15/07/03 v4.21
  - 14/11/03 v4.22
  - 31/12/04 v4.23

KiXtart 2010

  - 01/07/05 v4.50
  - 06/10/05 v4.51
  - 21/07/06 v4.52
  - 15/09/06 v4.53
  - 03/10/07 v4.60
  - 24/09/09 v4.61
  - 12/08/11 v4.62
  - 04/09/12 v4.63
  - 25/02/14 v4.64
  - 24/07/15 v4.66

## 相关软件

其他基于KiXtart技术的图形软件包括流行的开源解决方案[Script Start Community](https://archive.is/20130201230704/http://www.scriptstart.com/content.php?s=download)

## 书籍

  - Kelly, Bob. *Start to Finish Guide to Scripting with KiXtart* / [Bob Kelly](https://zh.wikipedia.org/wiki/Bob_Kelly_\(author\) "wikilink"). Greenland, NH : Agility Press, 2004. ISBN 1-932577-09-2
  - Jesse M. Torres. *Windows Admin Scripting Little Black Book, 3rd Edition* / Jesse M. Torres. Paraglyph Press, 2006. ISBN 1-933097-10-8

## 参考

## 另请参阅

  - [AutoIt](../Page/AutoIt.md "wikilink")

## 外部链接

  - [KiXtart.org](https://web.archive.org/web/20061208105737/http://www.kixtart.org/)
  - [KiXforms.org](http://www.kixforms.org/)

[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")

1.  [KiXtart.org - home of KiXtart](http://www.kixtart.org)

2.