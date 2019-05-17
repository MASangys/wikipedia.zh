**Windows服务**是指[Windows
NT](../Page/Windows_NT.md "wikilink")[操作系统中的一种](../Page/操作系统.md "wikilink")[运行在后台的计算机程序](../Page/后台进程.md "wikilink")。\[1\]它在概念上类似于[Unix](../Page/UNIX.md "wikilink")[守护进程](../Page/守护进程.md "wikilink")。\[2\]Windows服务必须符合[服务控制管理器](../Page/服务控制管理器.md "wikilink")（负责管理Windows服务的组件）的接口规则和协议。\[3\]

Windows服务可以配置为在操作系统启动时运行，并且在Windows运行期间持续在后台运行。服务也可以手动或基于某个事件而启动。<span class="cx-segment" data-segmentid="65"></span>Windows
NT操作系统包含众多服务，分别运行在三种[用户帐户环境中](../Page/用户.md "wikilink")：系统、网络服务和本地服务。这些Windows组件通常采用[Windows服务托管进程](https://zh.wikipedia.org/wiki/Svchost.exe "wikilink")。因为Windows服务运行在其自身的专用用户帐户中，它们可以在用户未登录时活动。

在[Windows
Vista之前](../Page/Windows_Vista.md "wikilink")，安装为“交互服务”的服务可以与Windows[桌面交互和显示图形用户界面](https://zh.wikipedia.org/wiki/桌面 "wikilink")。但在Windows
Vista中，交互服务已被弃用，并且可能无法正常运行。\[4\]\[5\]

## 管理

Windows管理员可以管理服务，通过：

  - “服务”扩展（在Windows[控制面板的](../Page/控制面板.md "wikilink")“管理工具”中）
  - Sc.exe
  - [Windows PowerShell](../Page/Windows_PowerShell.md "wikilink")

### 服务扩展

服务扩展是基于[Microsoft管理控制台提供的一个组件](https://zh.wikipedia.org/wiki/Microsoft管理控制台 "wikilink")，它可以连接到本地计算机或网络上的远程计算机，用户可以：\[6\]

  - 查看已安装服务的列表，包括服务名称、说明和配置
  - 开始、停止、暂停或重新启动服务\[7\]
  - 适用时指定服务的参数
  - 更改启动类型。可接受的启动类型有：
      - 自动：服务会在系统登录时启动。
      - 自动(延迟启动)：服务会在系统启动后过一会启动。此选项在[Windows
        Vista中引入](../Page/Windows_Vista.md "wikilink")，目的是降低系统启动后到达桌面的等待时间。但是，不是所有服务都支持延迟启动。\[8\]
      - 手动：服务只会在被明确调用时启动。
      - 已停用：服务被停用，開機時将不会启动，開機後必須要再設定為自動或手動才能將服務啟用。
  - 更改各服务运行的[用户帐户上下文](../Page/用户.md "wikilink")
  - 配置服务发生失败时应采取的恢复操作
  - 查阅服务的依赖关系，了解服务或设备驱动程序依赖于哪些特定服务，或者特定服务依赖于哪些服务或设备驱动程序
  - 导出服务列表为文本文件或[CSV文件](../Page/逗号分隔值.md "wikilink")

### Sc.exe

服务扩展的[命令行接口是Sc](../Page/命令行界面.md "wikilink").exe，名为“服务控制”实用工具。\[9\]此工具在Windows
XP\[10\]及更高版本中提供。\[11\]

Sc.exe的管理范围仅限于本地计算机。从[Windows Server
2003开始](../Page/Windows_Server_2003.md "wikilink")，Sc.exe不仅能做到“服务扩展”支持的操作，还可以安装和卸载服务。\[12\]

### Windows PowerShell

Windows PowerShell本质上可以管理Windows服务，相关命令如下：

  - Get-Service\[13\]
  - New-Service\[14\]
  - Restart-Service\[15\]
  - Resume-Service\[16\]
  - Set-Service\[17\]
  - Start-Service\[18\]
  - Stop-Service\[19\]
  - Suspend-Service\[20\]

### 其他管理工具

在服务扩展、Sc.exe和PowerShell以外，Windows还包括第三方可以操作的组件。Net.exe可以启动、停止、暂停或恢复一个Windows服务。\[21\]在Windows
Vista及更高版本中，[Windows
任务管理器可以显示已安装服务的列表和启动与暂停它们](../Page/任务管理器_\(Windows元件\).md "wikilink")。[MSConfig可以启用或禁用Windows服务](../Page/MSConfig.md "wikilink")。

## 开发

### 编写原生服务

可以使用如[Microsoft Visual
Studio或](../Page/Microsoft_Visual_Studio.md "wikilink")[Embarcadero
Delphi等开发工具创建一个Windows服务](../Page/Delphi.md "wikilink")。为了成为一个Windows服务，程序在编写上必须处理“服务控制管理器”的启动、停止和暂停消息。服务控制管理器是负责启动和停止服务的Windows组件。

### 封装应用程序为服务

Windows Resource Kit for [Windows NT
3.51](https://zh.wikipedia.org/wiki/Windows_NT_3.51 "wikilink")、[Windows
NT 4.0和](../Page/Windows_NT_4.0.md "wikilink")[Windows
2000提供工具来控制服务的注册和使用](../Page/Windows_2000.md "wikilink")：`SrvAny.exe`作为服务封装器来处理预期的服务接口（例如处理`service_start`，然后响应`service_started`或`service_failed`）并允许配置任何可执行文件或脚本作为一个服务。`Sc.exe`可以安装、启动、停止和卸载新服务。\[22\]

## 参见

  - Windows服务

<!-- end list -->

  - [svchost.exe](https://zh.wikipedia.org/wiki/svchost.exe "wikilink")

<!-- end list -->

  - 概念

<!-- end list -->

  - [后台进程](../Page/后台进程.md "wikilink")
      - [守护进程](../Page/守护进程.md "wikilink")
      - [驱动程序](../Page/驱动程序.md "wikilink")

## 参考资料

## 进一步资料

  -
  - David B. Probert, [Windows Service
    Processes](http://www.i.u-tokyo.ac.jp/edu/training/ss/lecture/new-documents/Lectures/11-WindowsServices/WindowsServices.ppt)

  - [Windows Sysinternals: Autoruns for Windows
    v13.4](https://technet.microsoft.com/en-us/sysinternals/bb963902.aspx)—An
    extremely detailed query of services

[Category:进程](https://zh.wikipedia.org/wiki/Category:进程 "wikilink")
[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.
2.
3.
4.
5.
6.
7.
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
19.
20.
21.
22.