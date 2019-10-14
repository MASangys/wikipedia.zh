**任务计划程序**（），也称**计划任务**。这是[Microsoft Windows中的一个组件](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，可以预先计划在特定时间或指定时间后启动程序或脚本。它在[Windows 95的](../Page/Windows_95.md "wikilink")[Microsoft Plus\!中以](https://zh.wikipedia.org/wiki/Microsoft_Plus! "wikilink")“系统代理”（System Agent）首次引入，随后在[Windows 98中被更名为任务计划程序](../Page/Windows_98.md "wikilink")。任务计划程序启动前，[Windows事件记录服务必须已在运行](https://zh.wikipedia.org/wiki/Windows事件记录 "wikilink")。

此服务不应与[计算机调度混淆](../Page/调度_\(计算机\).md "wikilink")，因其为分配[CPU资源到内存中的进程](../Page/中央处理器.md "wikilink")。

## 版本

### 任务计划1.0

任务计划程序1.0搭载于[Windows 2000](../Page/Windows_2000.md "wikilink")、[Windows XP和](../Page/Windows_XP.md "wikilink")[Windows Server 2003](../Page/Windows_Server_2003.md "wikilink")。\[1\]它运行为一个[Windows服务](../Page/Windows服务.md "wikilink")，任务定义和计划存储于[二进制的](https://zh.wikipedia.org/wiki/二进制文件 "wikilink")`.job`文件，操作各任务就是直接操作各`.job`文件，每个任务对应一个操作。在[Windows 95](../Page/Windows_95.md "wikilink")、[Windows 98和](../Page/Windows_98.md "wikilink")[Windows Me中](../Page/Windows_Me.md "wikilink")，任务计划程序使用一个普通的`mstask.exe`程序运行。在Windows 95和Windows 98中，它还在通知区域显示一个状态图标；在Windows Me中则是运行为一个隐藏服务，但可以显示一个托盘图标。\[2\]在Windows 2000、Windows XP和Windows Server 2003中，它被实现为一个[Windows服务](../Page/Windows服务.md "wikilink")，计算机程序和[脚本可以通过六个](../Page/脚本语言.md "wikilink")[COM](../Page/组件对象模型.md "wikilink")[接口访问此服务](../Page/介面_\(資訊科技\).md "wikilink")。\[3\]微软还提供了一个计划助手DLL、一个例子[VBScript](../Page/VBScript.md "wikilink")和一个自动任务计划程序的配置文件。\[4\]

任务计划程序除了[控制面板](../Page/控制面板.md "wikilink")中的图形用户界面，Windows还提供两个命令行工具来管理计划任务：`at.exe`（已弃用）和`schtasks.exe`。\[5\]\[6\]但是，`at.exe`不能访问用控制面板或`schtasks.exe`创建或修改的任务。\[7\]另外，使用`at.exe`创建的任务默认非交互；交互任务需要被显式请求。\[8\]

### 任务计划2.0

任务计划程序2.0在[Windows Vista](../Page/Windows_Vista.md "wikilink")、[Windows Server 2008及之后版本中存在](../Page/Windows_Server_2008.md "wikilink")。\[9\]重新设计的“任务计划程序”用户界面基于[微软管理控制台](../Page/微软管理控制台.md "wikilink")。除了在指定的时间或时间间隔后运行任务，任务计划程序2.0还支持日历和基于事件的触发器，比如在特定日志被记录到事件日志时启动一个任务，或者在发生一系列事件时启动任务。另外，同一个事件触发的多个任务可以配置为同时或者按预先配置的顺序以链式执行一系列动作，而无须创建多个计划任务。任务也可配置为基于系统状态运行，诸如闲置指定时间、启动时、注销时，或者只是特定周期或指定时间。对[Windows事件日志还可以使用](../Page/事件檢視器.md "wikilink")[XPath](../Page/XPath.md "wikilink")表达式过滤。任务也可在指定事件发生后延迟指定时间再执行，或者不断重复直至其他某些事件发生。任务还可配置运行失败时执行的操作。操作可以响应触发器，既基于事件又基于时间，不仅包含启动应用程序，还执行一系列自定义操作。任务计划程序已包含大量为众多应用程序准备的内置操作，包括发送电子邮件、显示消息框、触发一个[COM句柄等](../Page/组件对象模型.md "wikilink")。使用任务计划程序API还可指定自定义操作。任务计划程序会在历史日志保留所有任务的所有执行详细信息。\[10\]Windows Vista使用任务计划程序2.0运行各种系统级任务；\[11\]因此，任务计划程序服务不再允许被禁用（除非直接修改注册表）。

任务计划程序2.0提供了一个[API以允许计算机程序和脚本创建任务](../Page/应用程序接口.md "wikilink")。\[12\]它采用42个[COM](../Page/组件对象模型.md "wikilink")[接口组成](../Page/介面_\(資訊科技\).md "wikilink")。\[13\]任务计划程序2.0的任务文件基于[XML](../Page/XML.md "wikilink")并且人类可读，遵循“任务计划程序方案架构”。\[14\]虽然可以做到，但微软不建议手动创建任务文件，而应该使用任务计划程序API。

#### 其他功能

  - 新的安全功能，包括使用“凭据管理器”为计算机的任务提供密码，使用[Active Directory为](../Page/Active_Directory.md "wikilink")的计算机的任务提供凭据，以防止这些信息被轻易检索。另外，计划任务会在其自身的会话执行，而不是使用当前用户的系统服务会话。
  - 可以唤醒远程计算机，或使用[BIOS](../Page/BIOS.md "wikilink")计时器将机器从睡眠或休眠中唤醒，以执行计划任务或运行刚错过的计划任务。
  - 可以将任务直接附加到[事件查看器中的事件](../Page/事件檢視器.md "wikilink")。

## 任务

任务计划程序按各项受管理的任务运作。任务会在特定条件下以执行操作响应。<span class="cx-segment" data-segmentid="228"></span>定义一个任务可以关联一系列操作，其中可以包括启动应用程序或采取其他自定义操作，to a set of triggers, which can either基于时间或基于事件。此外，一个任务也可以包含定义如何执行操作的元数据，例如任务将在哪个安全上下文运行。任务被序列化为`.job`文件并存储在名为“任务文件夹”的[特殊文件夹](../Page/特殊文件夹.md "wikilink")中。在编程角度，任务文件夹可以使用`ITaskFolder`接口或`TaskFolder`脚本对象访问，单个任务可以使用`IRegisteredTask`接口或`RegisteredTask`对象访问。\[15\]

## 软件缺陷

在Windows 2000和Windows XP中，分配为使用SYSTEM权限运行的任务在计算机准备使用[`sysprep`](https://zh.wikipedia.org/wiki/sysprep "wikilink")的磁盘映像时不会生效。Sysprep会更改[安全标识符](../Page/安全标识符.md "wikilink")（SID）以避免重复，但不会更新计划任务为使用新的SID。因此，所有SYSTEM的计划任务在映像的计算机上都会运行失败。没有适用于此问题的解决方案，但重新计划该任务可以暂时缓解问题。\[16\]

在Windows Vista和Windows Server 2008上，如果未安装Service Pack 2，任务计划程序中的“下次运行时间”可能显示错误。\[17\]

當用戶在[Windows Vista](../Page/Windows_Vista.md "wikilink")、7、2008以及2008 R2作業系統上的「微软管理控制台」运行“任务计划程序2.0”版本时会提示用户當前正在运行“任务计划程序1.0”的通知。雖然只是一个不足为虑的小瑕疵，很可能是软件开发人员在重写该组件时忘记修复此Bug。但在后续的Windows 8和Windows Severe 2012作業系統中已得到糾正。

## 参见

  -
  - [cron](https://zh.wikipedia.org/wiki/cron "wikilink")

  -
  - [Windows任务管理器](../Page/任务管理器_\(Windows元件\).md "wikilink")

## 参考资料

## 外部链接

  - [Task Scheduler](http://msdn2.microsoft.com/en-us/library/aa383614.aspx) on [MSDN](../Page/微软开发者网络.md "wikilink")
  - [The Log File in the Task Scheduler May Be Incorrectly Formatted and Difficult to Read](http://support.microsoft.com/kb/303204)
  - [Unable to Delete Text in the Task Scheduler Log File](http://support.microsoft.com/kb/191427/en-us)
  - [Task Scheduler Service Does Not Start](http://support.microsoft.com/kb/215937/en-us)
  - [Scheduled Program Does Not Start in Task Scheduler](http://support.microsoft.com/kb/178691/en-us)
  - [Cannot Disable Task Scheduler](http://support.microsoft.com/kb/195933/en-us)
  - [Scheduled Tasks for Active Directory Management](http://adaxes.com/active-directory_scheduled-tasks.htm)
  - [Task Scheduler Managed Wrapper](http://taskscheduler.codeplex.com)

[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink") [Category:Windows服务](https://zh.wikipedia.org/wiki/Category:Windows服务 "wikilink")

1.  <cite class="citation web">["About the Task Scheduler"](http://msdn2.microsoft.com/en-us/library/aa446802.aspx)<span class="reference-accessdate">. </span></cite>
2.  [How to Enable the Scheduled Tasks Icon in Windows Me](http://support.microsoft.com/kb/272962)
3.
4.  [Task Scheduler Using VBScript](http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=601d75e2-f907-4e51-ad88-adb818df1d27)
5.
6.
7.
8.
9.  <cite class="citation web">["About the Task Scheduler"](http://msdn2.microsoft.com/en-us/library/aa446802.aspx)<span class="reference-accessdate">. </span></cite>
10.
11. [Description of the scheduled tasks in Windows Vista](http://support.microsoft.com/kb/939039)
12.
13.
14.
15.
16.
17.