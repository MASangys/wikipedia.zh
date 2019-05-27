**NuGet**是一个[自由开源](../Page/自由及开放源代码软件.md "wikilink")[软件包管理系统](../Page/软件包管理系统.md "wikilink")。用于Microsoft开发平台。以前称NuPack。\[1\]\[2\]

2010年首次发布。已经进化为一个庞大的工具与服务生态系统。\[3\]

NuGet作为[Visual
Studio扩展](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink")，能够简化在Visual
Studio项目中添加、更新和删除库（部署为程序包）的操作。NuGet包是打包成单个ZIP
文件，文件扩展名是.nupkg，使用[开放打包约定](../Page/开放打包约定.md "wikilink")
(OPC) 格式，包含编译代码 (Dll)、与该代码相关的其他文件以及描述性清单（包含包版本号等信息）。从Visual Studio
2012开始，缺省预安装了NuGet。NuGet也集成入了[SharpDevelop](../Page/SharpDevelop.md "wikilink")。NuGet也可以用于命令行或者脚本自动化。

支持多种语言的软件包：

  - [.NET
    Framework的包](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")
  - [C++的包](../Page/C++.md "wikilink"),\[4\]
    ，创建时使用[CoApp](http://coapp.org/)辅助。

## 使用

在Visual Studio中，菜单Tools-\>NuGet Package Manager-\>Manage NuGet Packages
for Solution，或者在Solution名称位置右键选择Manage NuGet Packages for
Solution，就打开NuGet管理器。有三个页面：Installed packages(Recent
packages)，Online（Browse）、Updates。已安装的包可以uninstall。

NuGet提取程序包的内容放到程序包文件夹中（在必要时创建文件夹）。程序包文件夹在.sln文件的并列位置。如果solution的多个project中安装了同一个程序包，则仅提取该程序包一次并由各project共享。\[5\]

在project名称位置右键选择Build Dependencies-\>Build
Customizations，使得project引用程序包。于是，就会自动添加include路径、lib路径、添加相应的lib、自适应于x86/x64以及debug/release版本。

## 参见

  -
## 参考文献

## 外部链接

  - [NuGet 简介](https://docs.microsoft.com/zh-cn/nuget/what-is-nuget)

  -
  -
[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink")
[Category:微软自由软件](https://zh.wikipedia.org/wiki/Category:微软自由软件 "wikilink")

1.
2.
3.  [An Overview of the NuGet
    Ecosystem](http://www.codeproject.com/Reference/628210/An-Overview-of-the-NuGet-Ecosystem).
    CodeProject (18 August 2013). Retrieved on 6 February 2015.
4.
5.  [Phil Haack:《NuGet: 使用 NuGet
    管理项目库》，MSDN杂志，2011年11月](https://msdn.microsoft.com/zh-cn/magazine/hh547106.aspx)