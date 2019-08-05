**NTFS卷挂载点**（NTFS volume mount points）是专门用来[挂载和提供一个指向其他](https://zh.wikipedia.org/wiki/挂载 "wikilink")的入口点的[NTFS](../Page/NTFS.md "wikilink")[文件系统](../Page/文件系统.md "wikilink")对象。

NTFS挂载点可以在NTFS文件系统的[目录上创建](../Page/目录_\(文件系统\).md "wikilink")，提供对一个已挂载卷之[根目录](../Page/根目录.md "wikilink")的引用。任何空目录都可以转化为挂载点。挂载的卷不局限于NTFS文件系统，而是可以为任何[Microsoft Windows支持的文件系统](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")。卷挂载点自[Windows 2000引入的NTFS](../Page/Windows_2000.md "wikilink") 3.0起开始支持。

虽然这与[Unix和](https://zh.wikipedia.org/wiki/Unix "wikilink")[类Unix系统](../Page/类Unix系统.md "wikilink")中常见的[POSIX挂载点非常类似](https://zh.wikipedia.org/wiki/POSIX "wikilink")，但POSIX挂载点只支持本地文件系统，而在[Windows Vista及更高版本中](../Page/Windows_Vista.md "wikilink")，[NTFS符号链接](../Page/NTFS符号链接.md "wikilink")可以将本地目录链接到远程[SMB网络路径](../Page/伺服器訊息區塊.md "wikilink")。

## 限制

符号链接不能在启动阶段生效，所以不能重定向到如：

  - 包含hiberfile.sys的文件夹（如果配置在根目录以外）
  - \\Windows
  - \\Windows\\System32
  - \\Windows\\Config

不过，它可以重定向到：

  - \\Users
  - \\Documents and Settings
  - \\Program Files
  - \\Program Files (x86)

## 参见

  - [NTFS符号链接](../Page/NTFS符号链接.md "wikilink")

  -
  - [NTFS重解析点](../Page/NTFS重解析点.md "wikilink")

  - [符号链接](../Page/符号链接.md "wikilink")

## 外部链接

  - [Volume Mount Points](https://web.archive.org/web/20080416062501/http://www.microsoft.com/technet/prodtechnol/windows2000serv/reskit/prork/prdf_fls_ogex.mspx?mfr=true)
  - [Creating Volume Mount Points](http://support.microsoft.com/kb/307889)

[Category:微软磁盘文件系统](https://zh.wikipedia.org/wiki/Category:微软磁盘文件系统 "wikilink")