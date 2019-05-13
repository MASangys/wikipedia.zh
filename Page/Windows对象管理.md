**对象管理**是[Windows
Executive的一个子系统实现](https://zh.wikipedia.org/wiki/Windows_Executive "wikilink")，用于管理Windows资源。
资源包括物理设备、文件、文件目录、[注册表条目](https://zh.wikipedia.org/wiki/Windows_Registry "wikilink")、正在运行的进程等等。所有子系统访问资源都必须通过对象管理子系统。

## 体系结构

[Windows
NT操作系统体系结构中](../Page/Windows_NT.md "wikilink")，对象管理子系统管理所有的资源。资源被表示为对象。对象管理子系统保持着对每个对象的[引用计数](../Page/引用计数.md "wikilink")。任何访问对象的系统调用都必须通过对象管理子系统。Windows对象可分为内核对象、用户对象、GDI对象：

  - 用户对象（User interface
    object）：支持窗口管理。每个对象仅有一个句柄，句柄不能复制或继承，不能引用其他用户会话中的进程的用户句柄。任何进程只要有对某个用户句柄的安全访问权限，即可以访问该用户对象，即用户对象在当前会话下是全局的。一个进程最多有
    65536 个用户对象句柄。用户对象包括：快捷键表HACCEL、插入点HCaret、鼠标指针HCURSOR、DDE
    会话、窗口钩子HOOK、图标 HICON、菜单 HMENU、窗口 HWND、窗口位置Window
    position。\[1\]
  - GDI 对象：支持图形。每个对象仅有一个句柄，句柄为进程私有。一个进程最多有 65536 个 GDI 对象句柄。GDI 对象包括：位图
    HBITMAP、画刷
    HBRUSH、设备环境HDC、[增强型图元文件（EMF）](https://zh.wikipedia.org/wiki/EMF "wikilink")、EMF
    设备环境、字体 HFONT、内存 DC、图元文件Metafile、图元文件 DC、调色板 HPALETTE、画笔
    HPEN、区域（Region）HRGN。\[2\]
  - 内核对象：支持内存管理、进程执行、[进程间通信](https://zh.wikipedia.org/wiki/进程间通信 "wikilink")。内核对象句柄是进程私有的，必须创建或者打开内核对象以获取其句柄。当进程创建或打开内核对象时，进程的句柄表中增加一个条目指向内核对象实例。进程的句柄表的索引称为**[句柄](../Page/句柄.md "wikilink")**（handle）\[3\]。对象管理子系统使用句柄与命名两种方式管理对象实例。句柄在一个进程内部是线程共享的，但在进程之间不是直接可复用，需要特别方式在进程间传递对象句柄。一个进程任何时刻最多拥有
    2<sup>24</sup>，即大约 16,000,000
    个句柄。句柄按照对象的分类可分为文件句柄、事件句柄、进程句柄等。一个进程对一个对象可以有多个句柄，以便按照不同权限来访问对象。

对象可分为**内核对象**（Kernel objects）与**执行对象**（Executive
objects）。内核对象表示一些基本资源，如物理设备、同步服务等等。用户态的程序不能访问内核对象。\[4\]用户态的系统服务与应用程序使用执行对象，这是[Windows
Executive对外暴露的对象](https://zh.wikipedia.org/wiki/Windows_NT体系结构 "wikilink")，用来封装一个或多个内核对象。执行对象还用于实现
NT 子系统或 POSIX 子系统的一些功能。

Windows NT 暴露的执行对象包括:

<table>
<thead>
<tr class="header">
<th><p>类别</p></th>
<th><p>描述</p></th>
<th><p>创建 / 获取句柄函数</p></th>
<th><p>释放句柄函数</p></th>
<th><p>未通知状态</p></th>
<th><p>通知状态</p></th>
<th><p>等待成功的副作用</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/进程" title="wikilink">进程</a></p></td>
<td><p>线程的集合，拥有共同的虚拟内存空间与控制信息</p></td>
<td><p>CreateProcess<br />
OpenProcess<br />
GetCurrentProcess</p></td>
<td><p>CloseHandle<br />
TerminateProcess</p></td>
<td><p>进程仍然活动时</p></td>
<td><p>进程终止运行时<br />
（TerminateProcess<br />
ExitProcess）</p></td>
<td><p>无</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/线程.md" title="wikilink">线程</a></p></td>
<td><p>进程内部，执行程序的实体。</p></td>
<td><p>CreateThread<br />
CreateThreadEx<br />
OpenThread<br />
GetCurrentThread</p></td>
<td><p>CloseHandle<br />
TerminateThread</p></td>
<td><p>线程仍然活动时</p></td>
<td><p>线程终止运行时<br />
（TerminateThread<br />
ExitThread）</p></td>
<td><p>无</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/作業_(電腦).md" title="wikilink">作业</a></p></td>
<td><p>进程的集合</p></td>
<td><p>CreateJobObject</p></td>
<td><p>CloseHandle</p></td>
<td><p>当作业的时间尚未结束时</p></td>
<td><p>当作业的时间已经结束时</p></td>
<td><p>无</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/電腦檔案.md" title="wikilink">文件</a></p></td>
<td><p>一个打开的计算机文件或 I/O 设备。</p></td>
<td><p>CreateFile</p></td>
<td><p>CloseHandle<br />
DeleteFile</p></td>
<td><p>当 I/O 请求正在处理时</p></td>
<td><p>当 I/O 请求处理完毕时</p></td>
<td><p>无</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/文件映射对象" title="wikilink">文件映射对象</a></p></td>
<td><p>一块内存区域，映射到一个文件。</p></td>
<td><p>CreateFileMapping</p></td>
<td><p>CloseHandle</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/访问令牌" title="wikilink">访问令牌</a></p></td>
<td><p>一个对象的访问权。</p></td>
<td><p>CreateRestrictedToken<br />
DuplicateToken<br />
DuplicateTokenEx<br />
OpenProcessToken<br />
OpenThreadToken</p></td>
<td><p>CloseHandle</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/事件_(同步原语)" title="wikilink">事件</a></p></td>
<td><p>封装了某些信息的一个对象，用于通知某些进程。</p></td>
<td><p>CreateEvent<br />
CreateEventEx<br />
OpenEvent</p></td>
<td><p>CloseHandle</p></td>
<td><p>ResetEvent，或 PulseEvent，或自动重置事件等待成功</p></td>
<td><p>当调用 SetEvent，或 PulseEvent</p></td>
<td><p>自动重置事件等待成功后将自动重置</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/信号量.md" title="wikilink">信号量</a></p></td>
<td><p>用于串行化访问某些资源的对象。</p></td>
<td><p>CreateSemaphore<br />
CreateSemaphoreEx<br />
OpenSemaphore</p></td>
<td><p>CloseHandle</p></td>
<td><p>当数量 &lt;=0 时</p></td>
<td><p>当数量 &gt;0 时（ReleaseSemaphore）</p></td>
<td><p>数量减 1</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/互斥锁.md" title="wikilink">互斥锁</a></p></td>
<td><p>用于串行化访问某些资源的对象。</p></td>
<td><p>CreateMutex<br />
CreateMutexEx<br />
OpenMutex</p></td>
<td><p>CloseHandle</p></td>
<td><p>被其他线程拥有时</p></td>
<td><p>未被其他线程拥有时</p></td>
<td><p>等待成功的线程获得 CPU 所有权</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/临界区域" title="wikilink">临界区域</a></p></td>
<td><p>使得指定的代码段被串行执行</p></td>
<td><p>InitializeCriticalSection<br />
InitializeCriticalSectionAndSpinCount</p></td>
<td><p>DeleteCriticalSection</p></td>
<td><p>被其他线程拥有时（试图 EnterCriticalSection）</p></td>
<td><p>未被其他线程拥有时（LeaveCriticalSection）</p></td>
<td><p>等待成功的线程获得 CPU 所有权</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/定时器" title="wikilink">定时器</a></p></td>
<td><p>按照固定时间间隔通知某些进程的对象。</p></td>
<td><p>CreateWaitableTimer<br />
CreateWaitableTimerEx</p></td>
<td><p>CloseHandle</p></td>
<td><p>CancelWaitableTimer 或自动重置定时器等待成功</p></td>
<td><p>当时间到时（SetWaitableTimer）</p></td>
<td><p>自动重置定时器等待成功将 reset</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/Timer_queue" title="wikilink">Timer queue</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Timer-queue_timer" title="wikilink">Timer-queue timer</a></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/注册表.md" title="wikilink">注册表键值</a></p></td>
<td><p>Windows 注册表条目的键值，数据类型不是 HANDLE 而是 HKEY</p></td>
<td><p>RegCreateKeyEx<br />
RegOpenKeyEx</p></td>
<td><p>RegCloseKey</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/桌面" title="wikilink">桌面</a></p></td>
<td><p>包含 <a href="https://zh.wikipedia.org/wiki/GUI" title="wikilink">GUI</a> 元素的一个逻辑显示面，数据类型是 HDESK</p></td>
<td><p>CreateDesktop<br />
OpenDesktop<br />
GetThreadDesktop</p></td>
<td><p>CloseDesktop</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>WindowStation</p></td>
<td><p>包含一些桌面对象、一块剪贴板对象、以及其他对象的对象，数据类型是 HWINSTA</p></td>
<td><p>CreateWindowStation<br />
OpenWindowStation<br />
GetProcessWindowStation</p></td>
<td><p>CloseWindowStation</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/剪贴板.md" title="wikilink">剪贴板</a></p></td>
<td><p>用于其它对象的临时存储空间。</p></td>
<td><p>OpenClipboard</p></td>
<td><p>CloseClipboard</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/符号链接.md" title="wikilink">符号链接</a></p></td>
<td><p>对其他对象的引用</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/事件日志" title="wikilink">事件日志</a></p></td>
<td></td>
<td><p>OpenEventLog<br />
RegisterEventSource<br />
OpenBackupEventLog</p></td>
<td><p>CloseEventLog</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>目录下更改通知</p></td>
<td><p>若指定的目录下发生了文件名、属性等更改，则唤起本事件</p></td>
<td><p>FindFirstChangeNotification</p></td>
<td><p>FindCloseChangeNotification</p></td>
<td><p>没有发生指定监视类型的修改</p></td>
<td><p>发生了指定监视类型的修改</p></td>
<td><p>重置事件状态；若需要监视下一次更改，使用循环搭配 FindNextChangeNotification</p></td>
</tr>
<tr class="odd">
<td><p>通信设备</p></td>
<td></td>
<td><p>CreateFile("COM1") 等</p></td>
<td><p>CloseHandle</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/控制台" title="wikilink">控制台输入</a><a href="https://zh.wikipedia.org/wiki/缓冲区" title="wikilink">缓冲区</a></p></td>
<td></td>
<td><p>GetStdHandle(STD_INPUT_HANDLE)</p></td>
<td><p>CloseHandle</p></td>
<td><p>不存在任何输入时</p></td>
<td><p>存在输入时</p></td>
<td><p>无</p></td>
</tr>
<tr class="odd">
<td><p>控制台输出（屏幕）缓冲区</p></td>
<td></td>
<td><p>GetStdHandle(STD_OUTPUT_HANDLE)<br />
GetStdHandle(STD_ERROR_HANDLE)</p></td>
<td><p>CloseHandle</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/堆" title="wikilink">堆内存</a></p></td>
<td></td>
<td><p>HeapCreate<br />
GetProcessHeap<br />
GetProcessHeaps</p></td>
<td><p>HeapDestroy<br />
不应释放进程的缺省堆</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="../Page/IOCP.md" title="wikilink">I/O 完成端口</a></p></td>
<td></td>
<td><p>CreateIoCompletionPort</p></td>
<td><p>CloseHandle</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Mailslot" title="wikilink">Mailslot</a></p></td>
<td></td>
<td><p>CreateMailslot</p></td>
<td><p>CloseHandle</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>内存资源通知</p></td>
<td></td>
<td><p>CreateMemoryResourceNotification</p></td>
<td><p>CloseHandle</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Portable_Executable" title="wikilink">模块</a></p></td>
<td><p>只有自己 LoadLibrary 加载的 DLL 才需要释放；数据类型为 HMODULE；WinMain 函数的 hInstance 参数是指向 EXE 主程序的 HMODULE（数据类型为 HINSTANCE）</p></td>
<td><p>LoadLibrary<br />
LoadLibraryEx<br />
GetModuleHandle<br />
GetModuleHandleEx<br />
WinMain 函数的 hInstance 参数</p></td>
<td><p>FreeLibrary</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/管道" title="wikilink">管道</a></p></td>
<td><p>不同于 Unix 管道，Windows 连匿名管道也可以是双工（双向传输）的；创建管道的一方称为服务端，连接到已存在或将要存在的管道的一方称为客户端</p></td>
<td><p>CreateNamedPipe<br />
CreatePipe<br />
CreateFile</p></td>
<td><p>CloseHandle<br />
DisconnectNamedPipe</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/套接字" title="wikilink">套接字</a></p></td>
<td><p>Unix 下的套接字只是普通 <a href="../Page/文件描述符.md" title="wikilink">fd</a>，而 Windows 下的套接字一般而言和普通（<a href="../Page/文件系统.md" title="wikilink">文件系统</a>）文件不一样，推荐使用专门的套接字 API 操作；数据类型是 SOCKET（UINT_PTR）</p></td>
<td><p>WSASocket<br />
WSAAccept</p></td>
<td><p>closesocket</p></td>
<td></td>
<td></td>
<td><p>与文件类似</p></td>
</tr>
<tr class="even">
<td><p>资源更新</p></td>
<td><p>使用 UpdateResource 更新某个 PE 模块中的资源（Resource，包括字符串、图标等）</p></td>
<td><p>BeginUpdateResource</p></td>
<td><p>EndUpdateResource</p></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 对象结构

每个被对象管理子系统所管理的对象，包含头部和体部。头部是对象管理子系统使用的状态信息。体部是对象相关的数据与暴露的服务。

对象头部对外暴露的信息称为`Properties`, 包括：

  - `Object Name`，用来标识对象
  - `Object Directory`，对象所属类别
  - [`Security``
     ``Descriptors`](https://zh.wikipedia.org/wiki/Security_Descriptor "wikilink")，对象的访问权限，一般在创建对象时传入，大多数时候传入值为NULL，表示采用默认安全属性。
  - `Quota Charges`，对象的资源使用信息
  - `Open handle count`，打开的句柄计数
  - `Open handle list`，活动引用的进程列表
  - `Reference count`，活动引用进程的计数
  - `Type`，用来标识对象体部结构

对象管理子系统所管理的对象必须提供下属服务:

  - `Close`，关闭对象的一个句柄
  - `Duplicate`，创建对象的另一个句柄，用来给另一个进程共享访问该对象
  - `Query object`，获得对象的属性与性质等信息
  - `Query security`，得到对象的安全描述信息
  - `Set security`，改变对象的安全访问信息
  - `Wait`，同步一个或多个对象，通过特定事件。

同一类型的对象具有一些相同的属性，如类型名、是否分配在非分页内存、访问权限、同步信息等。这些由一个类型对象（type
object）来表示。所有同一类型的对象实例共享这唯一的类型对象。
可以创建新的对象类型，这通过把一个对象的属性作为对外暴露的状态，把其方法作为对外暴露的服务来实现。

对象名（`Object
name`）是一个对象的描述性标识。对象管理子系统保持一个已经用于表示对象的名字列表，映射每个名字到对象实例。实际上大多数访问对象的行为是通过句柄；通过对象名来查找对象实例仅发生在创建对象时、跨进程共享一个对象时。

`Object directories`用于按照类型来分类对象。预定义的`Object directories`包括：

  - `\??` （Win32 设备名，其中只有符号链接）
  - `\BaseNamedObjects` （互斥、事件、信号量、可等待计时器和段对象）
  - `\Callback` （回调函数）
  - `\Device` （设备）
  - `\Drivers`
  - `\FileSystem`
  - `\KnownDlls`
  - `\Nls` (language tables)
  - `\ObjectTypes` （对象类型对象）
  - `\RPC Controls`
    （[RPC端口](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")）
  - `\Security` （安全子系统对象）
  - `\Windows` （窗口子系统对象）

对象属于命名空间（*Namespace*）. 每个用户会话（user
session）是一个名字空间。这使得多个客户同时运行一个应用程序而不会发生干扰。在所有名字空间共享的对象属于*GLOBAL*命名空间。例如，在Global命名空间中创建一个事件，名字叫CSAPP：

`CreateEvent( NULL, FALSE, FALSE, "Global\\CSAPP" );`

全局命名空间使得多个客户会话间的进程可以通信。例如，一个客户/服务器使用互斥锁来同步，服务器模块在全局命名空间创建一个互斥锁对象，然后客户进程使用"Global\\"前缀来打开这个互斥锁对象。
客户进程可以明示使用 "Local\\"前缀来在客户会话命名空间中创建对象。\[5\]

OBJECT_ATTRIBUTES 结构:

``` cpp
 typedef struct _OBJECT_ATTRIBUTES{
  ULONG Length;
  HANDLE RootDirectory;
  PUNICODE_STRING ObjectName;
  ULONG Attributes;
  PSECURITY_DESCRIPTOR SecurityDescriptor;
  PSECURITY_QUALITY_OF_SERVICE SecurityQualityOfService;
 }OBJECT_ATTRIBUTES;
```

Attributes 成员域可以是 0，或下述标志的组合：

`OBJ_INHERIT`
`OBJ_PERMANANT`
`OBJ_EXCLUSIVE`
`OBJ_CASE_INSENSITIVE`
`OBJ_OPENIF`
`OBJ_OPENLINK`
`OBJ_KERNEL_HANDLE`

## 参加

  - [Windows
    NT体系结构](https://zh.wikipedia.org/wiki/Windows_NT体系结构 "wikilink")

## 参考文献

  -

<references/>

## 外部链接

  - \[<http://msdn.microsoft.com/en-us/library/windows/hardware/ff557759(v=vs.85>).aspx
    Object Manager Routines (Windows Drivers)\]
  - [Channel9
    Interview](http://channel9.msdn.com/ShowPost.aspx?PostID=73995)

[Category:微软API](https://zh.wikipedia.org/wiki/Category:微软API "wikilink")
[Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")
[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")
[Category:Windows_NT](https://zh.wikipedia.org/wiki/Category:Windows_NT "wikilink")

1.  [User
    Objects](http://msdn.microsoft.com/en-us/library/windows/desktop/ms725486%28v=vs.85%29.aspx)
2.  [GDI
    Objects](http://msdn.microsoft.com/en-us/library/windows/desktop/ms724291%28v=vs.85%29.aspx)
3.  每个进程中都存在一个句柄表，列出了所有本进程内可以使用的句柄。句柄表实际上是一个数组，每个数组元素为一个结构，包含一个指向内核对象的指针、访问掩码、继承标识等。句柄实际上是进程句柄表数组的索引。因此句柄是进程私有的。进程的句柄表的表头数据结构为HANDLE_TABLE。所有进程的句柄表表头形成一个List。句柄表的表项的数据结构为HANDLE_TABLE_ENTRY，长度为8字节，其中前四个数据为内核对象地址，后四个字节为访问掩码或在当前表项为空闲时存储下一空闲表项的索引值。
4.  [Kernel
    objects](http://msdn.microsoft.com/en-us/library/windows/desktop/ms724485%28v=vs.13%29.aspx)
5.  [Kernel object
    namespaces](http://msdn.microsoft.com/en-us/library/aa382954%28v=vs.13%29.aspx)