**`CHKDSK`**（全称Microsoft Check
Disk，意为磁盘检查）是一种可运行在[DOS](../Page/DOS.md "wikilink")、[OS/2和](https://zh.wikipedia.org/wiki/OS/2 "wikilink")[Windows操作系统上的](https://zh.wikipedia.org/wiki/Windows "wikilink")[指令程序](https://zh.wikipedia.org/wiki/指令 "wikilink")。当系统发生[假死机或](../Page/假死机.md "wikilink")[非法关机时](https://zh.wikipedia.org/wiki/非法关机 "wikilink")，[系统将调用它来检查](../Page/操作系统.md "wikilink")[磁盘](../Page/硬盘.md "wikilink")，用户也可以通过[命令行手动调用检查某个](../Page/命令行界面.md "wikilink")[磁盘分区](https://zh.wikipedia.org/wiki/磁碟分區 "wikilink")。该程序会基于被检测的磁盘所使用的[文件系统生成磁盘的状态报告](../Page/文件系统.md "wikilink")，如果提供[参数](https://zh.wikipedia.org/wiki/参数 "wikilink")，程序还可修复多种磁盘文件系统的逻辑错误。

## 命令参数

如果不输入任何参数，CHKDSK将显示被检测磁盘的磁盘状态。若带有参数，还可修复磁盘错误。

|                  |                                                                                                                                                                                                        |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| drive            | 指定要用 CHKDSK 检查的磁盘所在的[驱动器](https://zh.wikipedia.org/wiki/驱动器 "wikilink")。                                                                                                                               |
| \[path\]filename | 指定要用 CHKDSK 进行检查的一个或一组[文件的](../Page/文本文件.md "wikilink")[路径及名称](https://zh.wikipedia.org/wiki/路径 "wikilink")。可使用[通配符](https://zh.wikipedia.org/wiki/通配符#.E8.AE.A1.E7.AE.97.E6.9C.BA "wikilink")（＊或？）指定。 |
| volume           | 指定驱动器号、装入点或卷名。                                                                                                                                                                                         |
| /c               | 仅随 [NTFS](../Page/NTFS.md "wikilink") 使用。跳过[文件夹结构中的周期检查](../Page/目录_\(文件系统\).md "wikilink")，减少运行 CHKDSK 所需的时间。                                                                                         |
| /f               | 修复磁盘上的错误。必须锁定磁盘。如果 CHKDSK 无法锁定驱动器，会显示一条信息，询问用户是否希望在下次重新启动[计算机时检查该驱动器](https://zh.wikipedia.org/wiki/计算机 "wikilink")。                                                                                   |
| /i               | 仅随 NTFS 使用。对索引项进行强度较小的检查，降低运行 CHKDSK 所需时间。                                                                                                                                                             |
| /l\[:size\]      | 仅随 NTFS 使用。将[日志文件的大小更改为由用户输入的大小](https://zh.wikipedia.org/wiki/服务器日志 "wikilink")。如果省略该参数，输入 /l 则会显示当前日志文件的大小。                                                                                          |
| /p               | 即使驱动器不在 CHKDSK 的检查范围内，也执行彻底检查。该参数不会对驱动器做任何更改。                                                                                                                                                          |
| /r               | 找到坏[扇区并恢复可读取的信息](https://zh.wikipedia.org/wiki/引导扇区 "wikilink")。必须锁定磁盘。                                                                                                                                |
| /v               | 磁盘检查时，显示每个目录下的[文件](../Page/文本文件.md "wikilink")。                                                                                                                                                        |
| /x               | 仅随 NTFS 使用。如果必要，会首先强制卸载[卷](https://zh.wikipedia.org/wiki/磁碟分區 "wikilink")。该驱动器的所有打开[句柄都无效](../Page/句柄.md "wikilink")。该参数还包含了/f 的功能。                                                                    |
| /b               | 仅随 NTFS 使用。用于重新评估该卷上的坏[簇](https://zh.wikipedia.org/wiki/簇 "wikilink")。                                                                                                                                 |
| /?               | 在[命令提示符中显示帮助](https://zh.wikipedia.org/wiki/命令提示符 "wikilink")。                                                                                                                                         |

\[1\] \[2\] \[3\]

## 显示效果

在[Windows
XP](../Page/Windows_XP.md "wikilink")[命令提示符中运行不带参数的](https://zh.wikipedia.org/wiki/命令提示符 "wikilink")
CHKDSK 后，效果如下：

``` doscon
 C:\Documents and Settings\Administrator>chkdsk
 文件系统的类型是 NTFS。

 警告! 没有指定  F 参数
 用只读模式运行 CHKDSK。

 CHKDSK 正在校验文件(3 的阶段 1)...
 文件校验完成。00。
 CHKDSK 正在校验索引(3 的阶段 2)...
 索引校验完成。00。
 CHKDSK 正在校验安全描述符(3 的阶段 3)...
 安全描述符校验完成。
 正在修复主控文件表(MFT)位图属性的错误。
 正在修复卷位图的错误。
 Windows 发现文件系统有问题。
 运行 CHKDSK (使用选项 /F) 来更正这些问题。

 总共有   52436128 KB 磁盘空间。
 30031 个文件中有    9202400 KB。
 4522 个索引      10532 KB。
 不正确扇区          0 KB。
 系统正在使用      94348 KB。
 日志文件占用了      54512 KB。
 磁盘上   43128848 KB 可用。

 每个分配单元中有       4096 字节。
 磁盘上共有   13109032 个分配单元。
 磁盘上有   10782212 个可用的分配单元。
```

## 参考链接

## 相关条目

  - [復原主控台](https://zh.wikipedia.org/wiki/復原主控台 "wikilink")
  - [命令提示符](https://zh.wikipedia.org/wiki/命令提示符 "wikilink")

[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")
[Category:Windows实用程序](https://zh.wikipedia.org/wiki/Category:Windows实用程序 "wikilink")

1.  [故障恢复控制台主要命令
    chinaitlab.com](http://windows.chinaitlab.com/system/10410.html)
2.  [CHKDSK(磁盘检测)命令的运用
    [网易科技](../Page/网易.md "wikilink")](http://tech.163.com/05/0329/14/1G15EGH700091589.html)
3.  [Windows 2000 故障恢复控制台说明
    [Microsoft帮助与支持](https://zh.wikipedia.org/wiki/Microsoft "wikilink")](http://support.microsoft.com/kb/229716/zh-cn)