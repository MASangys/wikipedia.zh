**whoami**是[操作系统中用于查看当前有效](../Page/操作系统.md "wikilink")[用户名的](https://zh.wikipedia.org/wiki/用户_\(计算机科学\) "wikilink")[命令](https://zh.wikipedia.org/wiki/命令 "wikilink")，自
Windows Server 2003 以来每个 [Windows
操作系统和大多数](https://zh.wikipedia.org/wiki/Windows操作系统 "wikilink")[类
Unix
操作系统上都可以找到](https://zh.wikipedia.org/wiki/类Unix操作系统 "wikilink")。它是英文“Who
am
I？”（我是谁？）的拼接结果。当被调用时，打印当前用户的[有效用户名](https://zh.wikipedia.org/wiki/用户ID#有效用户ID "wikilink")。它与
[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink") 命令`id -un`具有相同的效果。

在类Unix操作系统上，命令的输出与`$USER`稍有不同，因为`whoami`输出用户正在使用的用户名，而`$USER`输出用于登录的用户名。例如，例如，假使用户以用户名John登录并使用命令`su`（su默认不调用login
shell）获得了root权限，此时若使用`whoami`命令会输出root，而`echo $USER`对应的输出则是John。

该程序最早创建于 BSD 2.9 中，作为命令“who am i”我是谁的一种便利形式，即伯克利 Unix（Berkeley
Unix）打印登录用户身份的方式。\[1\] GNU版本由Richard Mlynarik编写，是[GNU
核心工具组](../Page/GNU核心工具组.md "wikilink")（coreutils）的一部分。

该命令也可作为 Windows 2000 Resource Kit\[2\]和 Windows XP SP2 支持工具的一部分\[3\]。

除此以外，[文件服务器上](https://zh.wikipedia.org/wiki/文件服务器 "wikilink")[Netware的公共文件夹内也包含了该程序](../Page/Novell_NetWare.md "wikilink")。它还输出当前工作站所连接的服务器的用户名。

## 使用示例

  - Unix/\*nix：

<!-- end list -->

``` console
# whoami
root
```

  - Windows 命令提示符：

<!-- end list -->

``` doscon
C:\Users\admin>whoami
workgroup\admin
```

## 另请参见

  - [`logname`](https://zh.wikipedia.org/wiki/logname "wikilink")
  - [`id`](https://zh.wikipedia.org/wiki/Id_\(Unix\) "wikilink")
  - [`who`](../Page/Who_\(Unix\).md "wikilink")
  - [用户ID (Unix)](../Page/用户ID.md "wikilink")
  - [Unix 实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [GNU 核心工具组命令列表](../Page/GNU核心工具组命令列表.md "wikilink")

## 参考内容

## 外部链接

  -
  - [Microsoft TechNet Whoami
    article](https://web.archive.org/web/20080504001425/http://technet2.microsoft.com/windowsserver/en/library/fc7edb8c-0e13-4d95-bb29-ad7464dac7071033.mspx?mfr=true)

[Category:Unix用户管理和支持相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix用户管理和支持相关实用工具 "wikilink")
[Category:Windows管理](https://zh.wikipedia.org/wiki/Category:Windows管理 "wikilink")

1.  [2.9.1BSD Manual
    Page](http://www.freebsd.org/cgi/man.cgi?query=whoami&apropos=0&sektion=0&manpath=2.9.1+BSD&arch=default&format=html)
2.
3.  [Windows XP Service Pack 2 Support
    Tools](http://www.microsoft.com/downloads/details.aspx?FamilyId=49AE8576-9BB9-4126-9761-BA8011FABF38&displaylang=en)