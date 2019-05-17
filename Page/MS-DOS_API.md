**MS-DOS
API**最初是中的[应用程序接口](../Page/应用程序接口.md "wikilink")（API），并也被[MS-DOS](../Page/MS-DOS.md "wikilink")/[PC-DOS及其他](../Page/PC-DOS.md "wikilink")[DOS兼容操作系统使用](../Page/DOS.md "wikilink")。大多数对DOS
API的调用是使用[中斷](../Page/中斷.md "wikilink")21h（ 21h）。在调用INT 21h时，在AH
[寄存器中带有子函数号](../Page/寄存器.md "wikilink")，其他寄存器中带有其他参数，从而调用各个DOS服务。DOS服务包括键盘输入、视频输入、磁盘文件访问、执行程序、内存分配及其他事务。在1980年代后期，围绕（DPMI）的[DOS扩展器允许程序在](../Page/DOS扩展器.md "wikilink")16位元或32位元的保护模式下运行，并仍可访问DOS
API。

## DOS API的历史

在86-DOS和MS-DOS 1.0中的原始DOS
API在设计上与[CP/M兼容](https://zh.wikipedia.org/wiki/CP/M "wikilink")。文件访问使用（FCB）。在MS-DOS
2.0中的DOS
API大大扩展了数个Unix概念，包括使用[文件描述符](../Page/文件描述符.md "wikilink")、[分层目录和设备I](../Page/目录_\(文件系统\).md "wikilink")/O控制的文件访问。\[1\]DOS
3.1中添加了的支持。MS-DOS 3.31中，INT 25h/26h函数被增强以支持大于32MB的硬盘。MS-DOS
5添加了使用（UMB）的支持。在MS-DOS 5之后，连续、独立发布的DOS没有改变DOS API。

## DOS API与Windows

在[Windows
9x](../Page/Windows_9x.md "wikilink")，DOS通常作为引导加载程序加载受保护模式的操作系统和图形外壳。DOS通常从一个（VDM）访问，但也可以不加载Windows而直接启动到真实模式的MS-DOS
7.0。DOS
API已增强国际化和[长文件名支持](https://zh.wikipedia.org/wiki/长文件名 "wikilink")，尽管长文件名支持仅在VDM中可用。随着[Windows
95](../Page/Windows_95.md "wikilink")
OSR2，DOS被更新到7.1，添加了[FAT32及对其DOS](https://zh.wikipedia.org/wiki/FAT32 "wikilink")
API的支持。[Windows 98和](../Page/Windows_98.md "wikilink")[Windows
Me也实现了MS](../Page/Windows_Me.md "wikilink")-DOS 7.1
API，尽管Windows ME本身自称为MS-DOS 8.0。

[Windows NT及基于它的系统](../Page/Windows_NT.md "wikilink")（例如[Windows
XP和](../Page/Windows_XP.md "wikilink")[Windows
Vista](../Page/Windows_Vista.md "wikilink")）不是基于MS-DOS，但也可使用一个[虛擬機器](../Page/虛擬機器.md "wikilink")——处理DOS
API。NTVDM将DOS程序在[虚拟8086模式](https://zh.wikipedia.org/wiki/虚拟8086模式 "wikilink")（[Intel
80386及更高处理器上可在](../Page/Intel_80386.md "wikilink")[保護模式下进行](../Page/保護模式.md "wikilink")[真實模式的仿真](../Page/真實模式.md "wikilink")）模式下运行。NTVDM支持DOS
5.0 API。面向[Linux的](../Page/Linux.md "wikilink")使用类似的方法。

## DOS使用的中断向量

<table>
<thead>
<tr class="header">
<th><p>中断向量</p></th>
<th><p>描述</p></th>
<th><p>版本</p></th>
<th><p>备注</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>终止程序并检查空白空间</p></td>
<td><p>1.0+</p></td>
<td><p>在DOS内核中实现</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Main DOS API</p></td>
<td><p>1.0+</p></td>
<td><p>在DOS内核中实现</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>程序终止地址</p></td>
<td><p>1.0+</p></td>
<td><p>返回调用程序中的地址</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Control-C处理器地址</p></td>
<td><p>1.0+</p></td>
<td><p>默认处理程序在命令外壳（通常是COMMAND.COM）</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>严重错误处理器地址</p></td>
<td><p>1.0+</p></td>
<td><p>默认处理程序在命令外壳（通常是COMMAND.COM）</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>绝对磁盘读取</p></td>
<td><p>1.0+</p></td>
<td><p>在DOS内核中实现，在DOS 3.31中增强，最多支持2 GB分区</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>绝对磁盘写入</p></td>
<td><p>1.0+</p></td>
<td><p>在DOS内核中实现，在DOS 3.31中增强，最多支持2 GB分区</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>终止并驻留</p></td>
<td><p>1.0+</p></td>
<td><p>DOS 1.0中在COMMAND.COM中实现，DOS 2.0+中则在DOS内核</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Idle callout</p></td>
<td><p>2.0+</p></td>
<td><p>等待输入时由DOS内核调用</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>快速控制台输出</p></td>
<td><p>2.0+</p></td>
<td><p>由内置的控制台设备驱动程序或替换驱动程序（如ANSI.SYS）实现</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>网络和关键部分</p></td>
<td><p>3.0+</p></td>
<td><p>由DOS内核调用，与网络软件交互</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>未使用</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>未使用</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>未使用</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Reload transient</p></td>
<td><p>2.0+</p></td>
<td><p>在COMMAND.COM中实现</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Multiplex</p></td>
<td><p>3.0+</p></td>
<td><p>在DOS内核和各种程序（PRINT、MSCDEX、DOSKEY、APPEND等）中实现，取决于子功能号码</p></td>
</tr>
</tbody>
</table>

## DOS INT 21h服务

<table>
<thead>
<tr class="header">
<th></th>
<th><p>描述</p></th>
<th><p>版本</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>程序终止</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>字符输入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>字符输出</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>辅助输入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>辅助输出</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>打印机输出</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>直接控制台I/O</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>无回显直接控制台输入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>无回显控制台输入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>显示字符串</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>缓冲的键盘输入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取输入状态</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>Flush输入缓冲区和输入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>磁盘重置</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>设置默认驱动器</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>打开文件</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>关闭文件</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>查找第一个文件</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>查找下一个文件</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>删除文件</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>顺序读</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>顺序写</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>创建或截断文件</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>Rename file</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>保留</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取默认驱动器</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>设置磁盘传输地址</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取默认驱动器的分配信息</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取指定驱动器的分配信息</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>保留</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>保留</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取默认驱动器的磁盘参数块</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>保留</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>随机读取</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>随机写入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取记录中的文件大小</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>设置随机记录号</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>设置中断向量</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>创建PSP</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>随机块读取</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>随机块写入</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>解析文件名</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取日期</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>设置日期</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取时间</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>设置时间</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>设置验证标志</p></td>
<td><p>1.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取磁盘传输地址</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取DOS版本</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>终止并驻留</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取指定驱动器的磁盘参数块</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取或设置Ctrl-Break</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取InDOS标志指针</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取中断向量</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取可用磁盘空间</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取或设置开关字符</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取或设置国家/地区信息</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>创建子目录</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>移除子目录</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>更改当前目录</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>创建或截断文件</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>打开文件</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>关闭文件</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>读取文件或设备</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>写入文件或设备</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>删除文件</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>移动文件指针</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取或设置文件属性</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>设备的I/O控制</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>复制句柄</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>重定向句柄</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取当前目录</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>分配内存</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>释放内存</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>重新分配内存</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>执行程序</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>用指定返回代码终止</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取程序返回代码</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>查找第一个文件</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>查找下一个文件</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>设置当前PSP</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取当前PSP</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取DOS内部指针（SYSVARS）</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>创建磁盘参数块</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取验证标志</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>创建程序PSP</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>重命名文件</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取或设置文件的日期和时间</p></td>
<td><p>2.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取或设置分配策略</p></td>
<td><p>2.11+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取扩展错误信息</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>创建唯一文件</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>创建新文件</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>锁定或解锁文件</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>文件共享功能</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>网络功能</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>网络重定向功能</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>限定文件名</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>保留</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取当前PSP</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取DBCS引导字节表指针</p></td>
<td><p>3.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>设置等待外部事件标志</p></td>
<td><p>3.2+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取扩展的国家信息</p></td>
<td><p>3.3+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>获取或设置代码页</p></td>
<td><p>3.3+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>设置句柄数</p></td>
<td><p>3.3+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>提交文件</p></td>
<td><p>3.3+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>获取或设置ID</p></td>
<td><p>4.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>提交文件</p></td>
<td><p>4.0+</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>保留</p></td>
<td><p>4.0+</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>扩展的打开/创建文件</p></td>
<td><p>4.0+</p></td>
</tr>
</tbody>
</table>

## 支持MS-DOS API的操作系统

  - [MS-DOS](../Page/MS-DOS.md "wikilink") - 最广泛的化身

  - [PC DOS](../Page/PC-DOS.md "wikilink") - MS-DOS的IBM OEM版本

  - [DR-DOS](../Page/DR-DOS.md "wikilink") -
    数字研究DOS系列，包括[DR-DOS](../Page/DR-DOS.md "wikilink")、[DR-DOS](../Page/DR-DOS.md "wikilink"),
    [DR-DOS等](../Page/DR-DOS.md "wikilink")。

  - \- PhysTechSoft和Paragon DOS克隆，包括

  - \- Datalight ROM DOS版本

  - [FreeDOS](../Page/FreeDOS.md "wikilink") - 自由、开源的DOS克隆

  - [ReactOS](https://zh.wikipedia.org/wiki/ReactOS "wikilink")（[IA-32和](https://zh.wikipedia.org/wiki/IA-32 "wikilink")[X86-64版本](../Page/X86-64.md "wikilink")）

  - [Windows 95](../Page/Windows_95.md "wikilink") - 包含MS-DOS 7.0

  - [Windows 98](../Page/Windows_98.md "wikilink") - 包含MS-DOS 7.1

  - [Windows 98](../Page/Windows_98.md "wikilink") - 包含MS-DOS 7.1

  - [Windows Me](../Page/Windows_Me.md "wikilink") - 包含MS-DOS 8.0

  - [Windows NT](../Page/Windows_NT.md "wikilink")（64位版本外的所有版本）

## 支持MS-DOS API的程序

  - （仅3.1）的 – 基于CP/M-86的Digital Research操作系统，使用可选的PC DOS模拟器

  - – 内置PC DOS模拟器的Digital Research CDOS家族

  - – Concurrent PC DOS 4.1–5.0的一个简化的单用户变种

  - – Digital Research/Novell MDOS家族，包含、等。

  - 用于[Windows NT的](../Page/Windows_NT.md "wikilink")

  - 用于[Linux的](../Page/Linux.md "wikilink")

  - [DOSBox](../Page/DOSBox.md "wikilink")

## 参见

  - [BIOS中斷呼叫](../Page/BIOS中斷呼叫.md "wikilink")

  -
  -
  -
  - [DOS MZ可执行文件](../Page/DOS_MZ可执行文件.md "wikilink")

  - [COMMAND.COM](https://zh.wikipedia.org/wiki/COMMAND.COM "wikilink")

## 参考资料

  - [The x86 Interrupt List](http://www.cs.cmu.edu/~ralf/files.html)
    (a.k.a. RBIL, Ralf Brown's Interrupt List)

  - [ctyme.com - INT Calls by
    function](http://www.ctyme.com/intr/cat-010.htm)

  - [wustl.edu - Description of MS-DOS
    services](https://web.archive.org/web/20020622163518/http://www.arl.wustl.edu/~lockwood/class/cs306/books/artofasm/toc.html)

  - *Microsoft MS-DOS Programmer's Reference - The Official Technical
    Reference to MS-DOS*, Microsoft Press, 1993 ISBN 1556155468

  - *The MS-DOS Encyclopedia*, Microsoft Press, 1988, ISBN 1556151748

  -
  - *The Programmer's PC Sourcebook* by Thom Hogan, Microsoft Press,
    1991 ISBN 155615321X

  - *The New Peter Norton Programmer's Guide to the IBM PC & PS/2* by
    Peter Norton and Richard Wilton, Microsoft Press, 1987 ISBN
    1-55615-131-4.

  - [IBM PC DOS 7 Technical
    Update](https://web.archive.org/web/20060721115437/http://www.redbooks.ibm.com/redbooks/pdfs/gg244459.pdf)

  - Caldera, Inc. (1997). *OpenDOS Developer's Reference Series —
    OpenDOS Programmer's Guide — System and Programmer's Guide*. Printed
    in the UK, August 1997. Caldera Part No. 200-DOPG-003
    ([1](https://web.archive.org/web/20120625021802/http://www.drdos.net/documentation/sysprog/httoc.htm)).

[Category:DOS技术](https://zh.wikipedia.org/wiki/Category:DOS技术 "wikilink")
[Category:操作系统API](https://zh.wikipedia.org/wiki/Category:操作系统API "wikilink")
[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")
[Category:中断](https://zh.wikipedia.org/wiki/Category:中断 "wikilink")

1.