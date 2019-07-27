`su`命令，也被称为“替代用户”、“超级用户”或“切换用户”，是可以让计算机操作者在[虚拟控制台切换当前用户帐户的命令](https://zh.wikipedia.org/wiki/虚拟控制台 "wikilink")。

没有其他[命令行参数时](../Page/命令行界面.md "wikilink")，默认将会将当前用户[提权至本地](https://zh.wikipedia.org/wiki/提权 "wikilink")[超级用户](../Page/超级用户.md "wikilink")。

## 用法

在命令行中运行时，`su`会要求目标用户的密码。如果验证通过，操作者将会授予该帐户的权限，并且允许访问该帐户可以访问的文件和目录。

``` bash
john@localhost:~$ su
密码：
root@localhost:/home/john# exit
登出
john@localhost:~$
```

此外，还可以切换到另一个不是超级用户的帐户，例如`su jane`。

``` bash
john@localhost:~$ su jane
密码：
jane@localhost:/home/john$ exit
登出
john@localhost:~$
```

一般来说，[管理员应该使用一个](../Page/超级用户.md "wikilink")[连字号](../Page/连字号.md "wikilink")（`su
-`，等同于`su -
root`），来启动登录shell。这样，用户可以获得目标用户的[用户环境](../Page/用户界面.md "wikilink")：

``` bash
john@localhost:~$ su - jane
密码：
jane@localhost:~$
```

相关的命令[`sudo`](https://zh.wikipedia.org/wiki/sudo "wikilink")也可以允许以另一个用户的身份执行命令，但遵守一组的限制，以决定哪些用户可以以什么用户身份执行什么命令（通常是在配置文件`/etc/sudoers`中，最好使用[`visudo`](https://zh.wikipedia.org/wiki/visudo "wikilink")编辑）。与`su`不同的是，`sudo`验证的是用户自己的密码，而不是目标用户的（允许特定主机上的特定用户执行特定命令，而不用共享密码，同时减轻无人值守终端的风险）。

一些[类Unix系统](../Page/类Unix系统.md "wikilink")有*[wheel](https://zh.wikipedia.org/wiki/Wheel_\(Unix术语\) "wikilink")*组，且只允许组内用户su到root。\[1\]很难说这是否会降低安全风险，因为入侵者可能会轻易入侵其中一个帐户。然而，由于理念不同，[GNU](../Page/GNU.md "wikilink")
su不支持wheel组。[理查德·斯托曼](../Page/理查德·斯托曼.md "wikilink")认为，由于wheel组会阻止用户使用泄露给他们root密码，现有的管理员就可以欺压普通用户。\[2\]

## 参见

  - [Unix安全](https://zh.wikipedia.org/wiki/Unix安全 "wikilink")
  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [授权功能比较](https://zh.wikipedia.org/wiki/授权功能比较 "wikilink")

## 参考

## 外部链接

  - [su](https://web.archive.org/web/20130807001725/http://www.gnu.org/software/coreutils/manual/html_node/su-invocation.html)
    — [GNU核心工具组](../Page/GNU核心工具组.md "wikilink")手册页。

  -
  - [The su command](http://www.linfo.org/su.html) — by The Linux
    Information Project (LINFO)

  - [Definition of
    su](https://web.archive.org/web/20080611162545/http://dictionary.die.net/su)
    — dictionary.die.net

[Category:Unix用户管理和支持相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix用户管理和支持相关实用工具 "wikilink")
[Category:系統管理](https://zh.wikipedia.org/wiki/Category:系統管理 "wikilink")

1.
2.