> 本文内容由[Expect](https://zh.wikipedia.org/wiki/Expect)转换而来。


**Expect**是[Unix系统中用来进行自动化控制和测试的软件工具](https://zh.wikipedia.org/wiki/Unix "wikilink")，由制作，作为[Tcl](../Page/Tcl.md "wikilink")脚本语言的一个扩展，应用在交互式[软件](../Page/软件.md "wikilink")中如[telnet](https://zh.wikipedia.org/wiki/telnet "wikilink")，[ftp](../Page/文件传输协议.md "wikilink")，[Passwd](https://zh.wikipedia.org/wiki/Passwd "wikilink")，[fsck](https://zh.wikipedia.org/wiki/fsck "wikilink")，，，[ssh等等](../Page/Secure_Shell.md "wikilink")。该工具利用Unix伪终端包装其子进程，允许任意程序通过终端接入进行自动化控制；也可利用[Tk](../Page/Tk.md "wikilink")工具，将交互程序包装在[X11的](https://zh.wikipedia.org/wiki/X11 "wikilink")[图形用户界面](../Page/图形用户界面.md "wikilink")中。

## 基本介绍

Expect含有利用正则表达式进行模式匹配以及通用的编程功能，允许简单的脚本智能地管理如下工具：telnet,ftp和ssh（这些工具都缺少编程的功能），宏以及其它程序。Expect脚本的出现使得这些老的软件工具有了新的功能和更多的灵活性。

## 例子

一个简单的脚本程序例子就能实现自动的telnet会话：

`  # 假定 $remote_server, $my_user_id, $my_password, 和$my_command 已经读入。`
`  # 向远程服务器请求打开一个telnet会话，并等待服务器询问用户名`
`  spawn telnet $remote_server`
`  expect "username:"`
`   # 输入用户名，并等待服务器询问密码`
`  send "$my_user_id\r"`
`  expect "password:"`
`   # 输入密码，并等待键入需要运行的命令`
`  send "$my_password\r"`
`  expect "%"`
`   # 输入预先定好的密码，等待运行结果`
`  send "$my_command\r"`
`  expect "%"`
`   # 将运行结果存入到变量中，显示出来或者写到磁盘中`
`  set results $expect_out(buffer)`
`   # 退出telnet会话，等待服务器的退出提示EOF`
`  send "exit\r"`
`  expect eof`

另一个脚本程序例子，自动建立FTP会话

`  # 向远程服务器请求打开一个FTP会话，并等待服务器询问用户名`
`  spawn ftp $remote_server`
`  expect "username:"`
`   # 输入用户名，并等待服务器询问密码`
`  send "$my_user_id\r"`
`  expect "password:"`
`   # 输入密码，并等待FTP提示符的出现`
`  send "$my_password\r"`
`  expect "ftp>"`
`   # 切换到二进制模式，并等待FTP提示符的出现`
`  send "bin\r"`
`  expect "ftp>"`
`   # 关闭ftp的提示符`
`  send "prompt\r"`
`  expect "ftp>"`
`   # 下载所有文件`
`  send "mget *\r"`
`  expect "ftp>"`
`   # 退出此次ftp会话，并等待服务器的退出提示EOF`
`  send "bye\r"`
`  expect eof`

## 用法说明

Expect是一种将现有的实用程序组合起来的胶合剂，通常考虑的是如何使Expect利用系统现有的工具解决问题而不是如何在Expect中解决问题。

Expect主要应用涉及商用软件产品。很多这类的产品都会提供某种命令行工具，但这些工具缺乏脚本编程的能力，只是为了帮助用户管理产品，而商家通常不会在如何实现一个稳定性好的脚本语言上耗费很多精力。Expect脚本中可以包含shell，查询环境变量，通过执行某些Unix命令获得更多的信息，然后在产品所带命令行接口中加入必须的信息，来完成用户的目标。在产品命令行接口中查询相关信息，该脚本可以在多种选择中智能地决定当前应该做什么比较合适。

每次**Expect**操作完成，运行结果将保存在本地环境变量 $expect_out 中。这允许脚本收集这些信息给用户以相应的反馈，同时也允许根据当前情况**发送**相对应的指令。

Expect通常用来建立一组[测试套件](../Page/测试套件.md "wikilink")，可以用在程序、组件或者嵌入式系统中。就是利用Expect写成的一组测试套件。它被大量地应用于测试 [gcc](https://zh.wikipedia.org/wiki/gcc "wikilink")，对于远程目标的测试例如嵌入式开发也是非常合适的。

你可以利用一种叫作"autoexpect"的工具，自动生成expect脚本。这个工具观测你的操作，并利用启发性知识生成expect脚本。尽管生成的代码可能会很长，含义上有点模糊，你可以修改生成的脚本使它成为你需要的代码。

## 观点

### 利

Expect可通过[cron封装系统管理任务](https://zh.wikipedia.org/wiki/cron "wikilink")，在规定的时期运行。能够这样做是因为Expect仅仅使用已经安装在主机中的系统管理工具，不需要学习额外的工具。如果程序员学过[Tcl](../Page/Tcl.md "wikilink")，那么转移到Expect是一件非常简单的工作，相同的编程结构和语法，再加上一些内置的额外功能。

业界对室内管理任务使用Expect提供了很大的支持。Expect在很多的公司广泛使用，例如Silicon Graphics, IBM, HP, Sun, Xerox, Amdahl, Tektronix, AT\&T, ComputerVision和世界银行，利用Expect对开发项目、文件传输、帐号管理、网络测试进行室内自动测试。

Expect已经以多种模块的方式移植到Python和Perl语言中。Expect命令的部分子集移植到Java和嵌入到（基于Java的终端仿真器）之中。这些例行程序通常是原程序的同等功能的另一种解释方式。一旦你理解了其中的概念，如果需要的话，换到其它语言，也就很容易了。

### 弊

Expect继承了Tcl的语法规范，对于使用其它脚本语言的人来说这是相当陌生的。和其它语言如[bash](https://zh.wikipedia.org/wiki/bash "wikilink")、和[Perl](../Page/Perl.md "wikilink")相比，Expect的语法模式是不同的。就像有时候一个变量的前缀冠以"$"，有时候又不需要。有些版本的Expect和[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")语言的语法倒是很相似的。

另一个缺陷是在不同的平台移植Expect脚本很难。例如，一个Expect脚本使用基于Unix的工具，就不可能适合移植到Windows平台。如果可能的话，程序员必须找到相应的命令行程序，能够提供相同的信息，这就可能需要修改expect脚本的send部分，而这部分恰恰就是整个脚本的核心。如果你使用的是tcl,perl或者python这些独立于平台的工具，使用它们各自的[POSIX接口访问文件](https://zh.wikipedia.org/wiki/POSIX "wikilink")、对远端交互进行标准的POSIX处理（telnet,ftp等等），就不会出现上述问题。

一个不明显的缺陷是，有时Expect可能并不是解决问题的最好方法。例如，一个系统管理员需要登录到多个服务器，这些自动的操作要使用Expect就得配以保存的密码，而不是更安全的解决方案采用[ssh代理密钥](../Page/Secure_Shell.md "wikilink")。虽然这种自动交互工具很吸引人，但是还是有很多其它的办法可以更安全稳定地解决同样的问题。

Expect自动化控制命令行工具，但是对[图形用户界面](../Page/图形用户界面.md "wikilink")就失效了。Windows提供了不少有价值的工具，很多是基于图形用户界面的，这就是Expect失效的地方了。Windows下图形界面程序可以通过像[Autohotkey或者](../Page/AutoHotkey.md "wikilink")[AutoIt](../Page/AutoIt.md "wikilink")等工具来实现自动化控制。

## 参考文献

## 进一步阅读

  -
## 外部引用

  - [Expect on SourceForge (current)](http://sourceforge.net/projects/expect/)
  - [Official homepage (*very outdated\!*)](https://web.archive.org/web/20081218233128/http://expect.nist.gov/)
  - [The Tcler's Wiki -- Expect page](http://wiki.tcl.tk/201)
  - [Perl Expect.pm module](http://sourceforge.net/projects/expectperl)
  - [Pexpect a Pure Python Expect-like module](http://pexpect.sourceforge.net)
  - [Expect Scripting Tutorial](https://web.archive.org/web/20081218130427/http://www.gnulamp.com/expect.html)
  - [Empty - expectlike tool to run command-line interactive programs in UNIX shell-scripts](http://empty.sourceforge.net)
  - [Expect-lite -- a wrapper for expect, making automation easy, quick, and fun](http://expect-lite.sourceforge.net/)
  - [Bulletproof: Reliable CLI interface using Expect](https://web.archive.org/web/20180408033212/http://www.cotse.com/dlf/man/expect/bulletproof1.htm)
  - [ExpectJ - a Java implementation of the Unix expect utility](http://expectj.sourceforge.net/)

[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink") [Category:GUI自动化](https://zh.wikipedia.org/wiki/Category:GUI自动化 "wikilink")