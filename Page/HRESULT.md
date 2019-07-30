在[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")[编程领域中](https://zh.wikipedia.org/wiki/编程 "wikilink")，**HRESULT**是一种在 [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 操作系统中使用的数据类型，并且曾更早在 [IBM](../Page/IBM.md "wikilink")/Microsoft [OS/2](https://zh.wikipedia.org/wiki/OS/2 "wikilink") [操作系统](../Page/操作系统.md "wikilink")中使用。用来表示错误和警告的情况。

HRESULT的最初目的是为了防止OS/2操作系统的不同子系统中的错误代码之间的冲突，正式地规定第三方和[微软](../Page/微软.md "wikilink")内部使用的错误代码范围。它是基于数字的错误代码，HRESULT中的各个位编码包含有关错误代码的性质及其来源的信息。

HRESULT 错误码在[COM编程领域很常见](https://zh.wikipedia.org/wiki/COM "wikilink")，它们构成了标准化的COM错误处理约定的基础。

## HRESULT 格式

HRESULT值有32位，分为三个字段：严重性[代码](../Page/代码.md "wikilink")、[设施代码和](https://zh.wikipedia.org/wiki/设施 "wikilink")[错误代码](https://zh.wikipedia.org/wiki/错误 "wikilink")。严重性代码指示返回值是表示[信息](../Page/信息.md "wikilink")、[警告还是](https://zh.wikipedia.org/wiki/警告 "wikilink")[错误](https://zh.wikipedia.org/wiki/错误 "wikilink")。设施代码标识负责错误的系统区域。错误代码是分配用于表示异常的唯一编号。 每个异常映射到不同的HRESULT。

HRESULT的结构如下：\[1\]

| Bit   | 31 | 30 | 29 | 28 | 27 | 26       | 25   | 24 | 23 | 22 | 21 | 20 | 19 | 18 | 17 | 16 | 15 | 14 | 13 | 12 | 11 | 10 | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| ----- | -- | -- | -- | -- | -- | -------- | ---- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | - | - | - | - | - | - | - | - | - | - |
| Field | S  | R  | C  | N  | X  | Facility | Code |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |   |   |   |   |   |   |   |   |   |   |

### 格式细节

  - S - 严重性 - 表示成功或失败
      - 0 - 成功
      - 1 - 失败
  - R - 设施代码的保留部分，对应于NT的第二严重性位。
      - 1 - 严重故障
  - C - 第三方。 此位指定值是第三方定义还是Microsoft定义的。
      - 0 - Microsoft-定义
      - 1 - 第三方定义
  - N - 保留部分设施代码。 用于指示映射的NT状态值。
  - X - 保留部分设施代码。 保留供内部使用。 用于指示不是状态值的HRESULT值，而是用于显示字符串的消息标识。
  - 设施 - 表示引发错误的系统服务. 示例设施代码如下所示（完整列表请参见 ).
      - 1 - [RPC](../Page/遠程過程調用.md "wikilink")
      - 2 - 调度（COM调度）
      - 3 - 存储 ([OLE](https://zh.wikipedia.org/wiki/OLE "wikilink") 存储)
      - 4 - ITF (COM/OLE 接口管理)
      - 7 - [Win32](../Page/Windows_API.md "wikilink") (原始 Win32 错误代码)
      - 8 - Windows
      - 9 - SSPI
      - 10 - 控制
      - 11 - CERT (客户端或服务器认证)
      - ...
  - Code - 设施的状态代码

ITF设施代码随后被再次用作COM组件可以定义自己的组件特定错误代码的范围。

## HRESULT 是如何工作的

HRESULT是一个不透明的结果[句柄](../Page/句柄.md "wikilink")，定义为从[函数](../Page/函数.md "wikilink")成功返回为0或正值，对失败为负值。一般的, 成功的函数返回 `S_OK` HRESULT 值 (这个HRESULT等于0)。但在极少数情况下，函数可能返回成功代码与附加信息，例如`S_FALSE=0x01`。

当显示HRESULT时，它们通常呈现为 无符号[十六进制](../Page/十六进制.md "wikilink")值, 通常用 `0x` 做前缀。在这种情况下，可以通过以十六进制数字8或更高开始来标识指示故障的数字。

HRESULT最初在IBM/Microsoft OS/2操作系统中作为一般目的的错误返回代码，并随后在[Windows NT中使用](../Page/Windows_NT.md "wikilink")。 Microsoft [Visual Basic](../Page/Visual_Basic.md "wikilink") 的大幅度增加HRESULT错误报告机制，通过关联的一个 `IErrorInfo` 对象错误代码，通过存储指向一个`IErrorInfo`COM对象的线程本地存储。 `IErrorInfo`机制允许程序将各种信息与特定的HRESULT错误相关联：引发错误的对象的类，引发错误的对象的接口，错误文本; 以及帮助文件中帮助主题的链接。 此外，HRESULT错误的接收器可以根据需要获得错误消息的本地化文本。

随后，HRESULT和相关联的 `IErrorInfo` 机制用作COM中的默认错误报告机制。

在Windows中支持IErrorInfo机制是非常不一致的。 较旧的Windows API往往不支持它，返回HRESULTS没有任何 IErrorInfo 数据。 更多的现代Windows COM子系统通常会在IErrorInfo对象的消息描述中提供大量的错误信息。 IErrorInfo错误机制的更高级功能——帮助链接和按需定位，很少使用。

在[.NET Framework中](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，从本机代码转换为[托管代码时](https://zh.wikipedia.org/wiki/托管代码 "wikilink")，HRESULT / `IErrorInfo`错误代码将转换为[CLR异常](https://zh.wikipedia.org/wiki/CLR "wikilink"); 当从托管转换为本机COM代码时，CLR异常将转换为HRESULT / IErrorInfo错误代码。

## 使用 HRESULT

winerror.h文件定义了一些通用的HRESULT值。 有些HRESULT值被硬编码在给定子系统的关联头文件（.h文件）中。 这些值也使用Microsoft Windows平台SDK或DDK在相应的标题（.h）文件中定义。

要检查返回HRESULT的调用是否成功，请确保S字段为0（即数字为非负数）或使用`FAILED()`。要获取HRESULT的代码部分，请使用`HRESULT_CODE()`。您还可以使用名为ERR.EXE的工具获取值，并将其转换为相应的错误字符串。 另一个名为ERRLOOK.EXE的工具也可用于显示与给定HRESULT值相关联的错误字符串。 可以在[Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")[命令提示符下运行ERRLOOK](https://zh.wikipedia.org/wiki/命令提示符 "wikilink").EXE。

Windows 原生的 `SetErrorInfo` 和 `GetErrorInfo` API 用于将 HRESULT 返回码与对应的`IErrorInfo`对象相关联。

`FormatMessage` [API](https://zh.wikipedia.org/wiki/API "wikilink")[函数](../Page/函数.md "wikilink")可用于将一些非`IErrorInfo` HRESULT转换为用户可读的字符串。

## 示例

  - `0x80070005`
      - 8 - 错误
      - 7 - Win32
      - 5 - "E_FAULT"
  - `0x80090032`
      - 8 - 错误
      - 9 - SSPI
      - 32 - "此请求不被支持"<ref name="msdnwin32errorcodes"> Win32

错误代码</ref>

## 引用

<references />

## 扩展链接

  - [Microsoft Open Protocol Specification - HRESULT Values](http://msdn.microsoft.com/en-us/library/cc231198.aspx)
  - [Microsoft Developer Network Reference](http://msdn.microsoft.com/en-us/library/ms526450.aspx)
  - [Windows Data Types](http://msdn.microsoft.com/en-us/library/aa383751.aspx#ctl00_LibFrame_ctl112)
  - [Using Macros for Error Handling](http://msdn.microsoft.com/en-us/library/ms691242.aspx)
  - [List of DOS, Windows and OS/2 error codes](https://web.archive.org/web/20090503085807/http://www.megos.ch/support/doserrors_e.txt), 包括很多常用的HRESULT

[Category:数据类型](https://zh.wikipedia.org/wiki/Category:数据类型 "wikilink")

1.  \[<http://msdn.microsoft.com/en-us/library/cc231198(PROT.10>).aspx MSDN Windows Error Code reference\].