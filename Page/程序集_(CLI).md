[通用语言基础架构](https://zh.wikipedia.org/wiki/通用语言基础架构 "wikilink") (CLI) 中的**程序集**是编译得到的，供CLR进一步编译执行的代码库。代码是用[通用中间语言](../Page/通用中间语言.md "wikilink")（CIL）表示，在[运行时被](https://zh.wikipedia.org/wiki/运行时 "wikilink")[即時編譯](../Page/即時編譯.md "wikilink")为[机器语言](../Page/机器语言.md "wikilink")。在[.NET Framework实现中](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")，这种[即時編譯](../Page/即時編譯.md "wikilink")是[通用语言运行时](https://zh.wikipedia.org/wiki/通用语言运行时 "wikilink") (CLR)的一部分。

CLI程序集可分为两类：进程程序集（[EXE](https://zh.wikipedia.org/wiki/EXE "wikilink")）、库程序集（[DLL](../Page/动态链接库.md "wikilink")）。

一个程序集可包含一个或多个文件。代码文件成为模块（module）。

## 程序集名字

程序集名字包括4部分：

1.  短名字。对于Windows系统，是指[PE文件名字](https://zh.wikipedia.org/wiki/PE文件 "wikilink")，不包括文件扩展名。
2.  culture。RFC 1766定义的locale的标识符。一般应是culture中立的。culture只用于[satellite程序集](https://zh.wikipedia.org/wiki/#Satellite程序集 "wikilink")。
3.  版本号。[点分隔的数字](https://zh.wikipedia.org/wiki/软件版本号 "wikilink")，由4部分组成：major, minor, build, revision
4.  [公钥token](https://zh.wikipedia.org/wiki/公钥 "wikilink")。公钥的64比特[哈希值](https://zh.wikipedia.org/wiki/密碼雜湊函數 "wikilink")，用于[签名](../Page/公开密钥加密.md "wikilink")\[1\]该程序集。一个签名的程序集称为“强名字”（strong name）。者能预防程序集重名。由于[FAT32与](https://zh.wikipedia.org/wiki/FAT32 "wikilink")[NTFS](../Page/NTFS.md "wikilink")只识别PE文件名，因此CLI引入了[全局程序集缓存](../Page/全局程序集缓存.md "wikilink")（GAC）处理运行时单个文件夹被映射为不同的嵌套的文件夹系统。

## 程序集版本

CLI程序集可以用版本信息，以避免由于共享的程序集版本差别引起的应用程序冲突。\[2\] However, this does not eliminate all possible versioning conflicts between assemblies.\[3\]

## 引用程序集

通过C\#编译器的/reference标记，可以引用一个可执行代码库。

## 程序集延迟签名

一个共享程序集是强名字的，但在开发时不产生私钥，仅当部署时才产生私钥。

## 程序集的语言

程序集编译为CIL代码，这是一种中间语言。框架内部把CIL字节码转换为本地的[汇编代码](../Page/汇编语言.md "wikilink")。对于打印"Hello World"的程序，其等效的CIL代码是：

``` csharp
 .method private hidebysig static void  Main(string[] args) cil managed {
  .entrypoint
  .custom instance void [mscorlib]System.STAThreadAttribute::.ctor() = ( 01 00 00 00 )
  // Code size       11 (0xb)
  .maxstack  1
  IL_0000:  ldstr      "Hello World"
  IL_0005:  call       void [mscorlib]System.Console::WriteLine(string)
  IL_000a:  ret } // end of method Class1::Main
```

CIL代码装入String到[运行栈](https://zh.wikipedia.org/wiki/运行栈 "wikilink")，然后调用WriteLine函数再返回。

## 参见

  - [Manifest (CLI)](https://zh.wikipedia.org/wiki/Manifest_\(CLI\) "wikilink")

## 参考文献

[Category:通用语言基础设施](https://zh.wikipedia.org/wiki/Category:通用语言基础设施 "wikilink")

1.  [Giving a .NET Assembly a Strong Name](http://www.codeguru.com/csharp/.net/net_general/article.php/c4643/)
2.
3.