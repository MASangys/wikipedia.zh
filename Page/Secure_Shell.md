**Secure Shell**（安全外壳协议，简称**SSH**）是一种加密的[网络传输协议](../Page/网络传输协议.md "wikilink")，可在不安全的网络中为网络服务提供安全的传输环境\[1\]。SSH通过在网络中建立来实现SSH客户端与服务器之间的连接\[2\]。虽然任何网络服务都可以通过SSH实现安全传输，SSH最常见的用途是远程登录系统，人们通常利用SSH来传输[命令行界面](../Page/命令行界面.md "wikilink")和远程执行命令。使用频率最高的场合[类Unix系统](../Page/类Unix系统.md "wikilink")，但是[Windows操作系统也能有限度地使用SSH](https://zh.wikipedia.org/wiki/Windows "wikilink")。2015年，微软宣布将在未来的操作系统中提供原生SSH协议支持\[3\]，[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 10 1809 版本已提供可手動安裝的 [OpenSSH](../Page/OpenSSH.md "wikilink")工具\[4\]。

在设计上，SSH是[Telnet](../Page/Telnet.md "wikilink")和非安全[shell的替代品](../Page/Unix_shell.md "wikilink")。Telnet和Berkeley 、[rsh](../Page/远程外壳.md "wikilink")、等协议采用[明文传输](https://zh.wikipedia.org/wiki/明文 "wikilink")，使用不可靠的密码，容易遭到监听、[嗅探和](../Page/數據包分析器.md "wikilink")[中间人攻击](../Page/中间人攻击.md "wikilink")\[5\]。SSH旨在保证非安全网络环境（例如[互联网](../Page/互联网.md "wikilink")）中信息加密完整可靠。

不过，SSH也被指出有被嗅探甚至解密的漏洞。早在2011年，[中國的網際網路審查機構已經有能力針對SSH連線的刺探及干擾](https://zh.wikipedia.org/wiki/中華人民共和國網絡審查 "wikilink")。\[6\]\[7\]而後[爱德华·斯诺登](../Page/爱德华·斯诺登.md "wikilink")泄露的文件也指出，[美国国家安全局](../Page/美国国家安全局.md "wikilink")有时能够把SSH协议传输的信息解密出来，从而读出SSH会话的传输内容\[8\]。2017年7月6日，非营利组织[維基解密](../Page/維基解密.md "wikilink")确认[美国中央情报局已经开发出能够在](https://zh.wikipedia.org/wiki/美国中央情报局 "wikilink")[Windows或](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[Linux](../Page/Linux.md "wikilink")操作系统中窃取SSH会话的工具。\[9\]

## 概述

SSH以[非对称加密实现](https://zh.wikipedia.org/wiki/非对称加密 "wikilink")[身份验证](https://zh.wikipedia.org/wiki/身份验证 "wikilink")\[10\]。身份验证有多种途径，例如其中一种方法是使用自动生成的公钥-私钥对来简单地加密网络连接，随后使用密码认证进行登录；另一种方法是人工生成一对公钥和私钥，通过生成的密钥进行认证，这样就可以在不输入密码的情况下登录。任何人都可以自行生成密钥。公钥需要放在待访问的电脑之中，而对应的私钥需要由用户自行保管。认证过程基于生成出来的私钥，但整个认证过程中私钥本身不会传输到网络中。

SSH协议有两个主要版本，分别是SSH-1和SSH-2。无论是哪个版本，核实未知密钥来源都是重要的事情，因为SSH只验证提供用户是否拥有与公钥相匹配的私钥，只要接受公钥而且密钥匹配服务器就会授予许可。这样的话，一旦接受了恶意攻击者的公钥，那么系统也会把攻击者视为合法用户。

## 密钥管理

在[类Unix系统](../Page/类Unix系统.md "wikilink")中，已许可登录的公钥通常保存在用户 /home 目录的 \~/.ssh/authorized_keys 文件中\[11\]，该文件只由SSH使用。当远程机器持有公钥，而本地持有对应私钥时，登录过程不再需要手动输入密码。另外为了额外的安全性，私钥本身也能用密码保护。

私钥会保存在固定位置，也可以通过命令行参数指定（例如ssh命令的“-i”选项）。[ssh-keygen是生成密钥的工具之一](https://zh.wikipedia.org/wiki/ssh-keygen "wikilink")。

SSH也支持基于密码的身份验证，此时密钥是自动生成的。若客户端和服务端从未进行过身份验证，SSH未记录服务器端所使用的密钥，那么攻击者可以模仿服务器端请求并获取密码，即[中间人攻击](../Page/中间人攻击.md "wikilink")。但是密码认证可以禁用，而且SSH客户端在发现新密钥或未知服务器时会向用户发出警告。

## 使用

SSH的经典用途是登录到远程电脑中执行命令。除此之外，SSH也支持[隧道协议](../Page/隧道协议.md "wikilink")、[端口映射和](https://zh.wikipedia.org/wiki/端口映射 "wikilink")[X11连接](../Page/X_Window系統.md "wikilink")。借助[SFTP或](../Page/SSH文件传输协议.md "wikilink")[SCP协议还可以传输文件](../Page/安全复制.md "wikilink")\[12\]。

SSH使用[客户端-服务器模型](../Page/主從式架構.md "wikilink")。服务器端需要开启SSH[守护进程](../Page/守护进程.md "wikilink")以便接受远端的连接，而用户需要使用SSH客户端与其建立连接。标准端口中的22端口分配给了SSH服务\[13\]。

大多数现代操作系统（包括[macOS](https://zh.wikipedia.org/wiki/macOS "wikilink")、大部分[Linux](../Page/Linux.md "wikilink")、[OpenBSD](../Page/OpenBSD.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")等系统）都提供了SSH，但Windows系统未自带SSH程序。Windows用户可以使用[Cygwin](../Page/Cygwin.md "wikilink")来建立SSH服务。SSH客户端种类很多，包括[专有软件](../Page/专有软件.md "wikilink")、[免費軟體](../Page/免費軟體.md "wikilink")和[开源软件](../Page/开源软件.md "wikilink")，例如[PuTTY](../Page/PuTTY.md "wikilink")和传输文件专用的[WinSCP](../Page/WinSCP.md "wikilink")等。

从[云计算的角度上讲](https://zh.wikipedia.org/wiki/云计算 "wikilink")，SSH能够阻止一些因直接暴露在互联网而产生的安全问题，在解决连接问题上发挥了重要作用。SSH隧道可以在互联网、[防火墙](../Page/防火墙.md "wikilink")和虚拟机之间提供一个安全的通道\[14\]。

## 历史

### 1.x版本

芬兰[赫尔辛基理工大学](../Page/赫尔辛基理工大学.md "wikilink")的[塔图·于勒宁](../Page/塔图·于勒宁.md "wikilink")发现自己学校存在嗅探密码的网络攻击，便于1995年编写了一套保护信息传输的程序，并称其为“secure shell”，简称SSH\[15\]，设计目标是取代先前的、[Telnet](../Page/Telnet.md "wikilink")、[FTP](https://zh.wikipedia.org/wiki/FTP "wikilink")\[16\]和[rsh等安全性不足的协议](../Page/远程外壳.md "wikilink")。1995年7月，于勒宁以[免費軟體](../Page/免費軟體.md "wikilink")的形式将其发布。程序很快流行起来，截至1995年底，SSH的用户数已经达到两万，遍布五十个国家。

1995年12月，于勒宁创立了SSH通信安全公司来继续开发和销售SSH。SSH的早期版本用到了很多[自由软件](../Page/自由软件.md "wikilink")，例如[GNU libgmp](../Page/GNU多重精度运算库.md "wikilink")，但后来由SSH公司发布的版本逐渐变成了[专有软件](../Page/专有软件.md "wikilink")。

截至2000年，已经有两百万用户使用SSH。\[17\]

### OpenSSH和OSSH

1999年，开发者们希望使用自由版本的SSH，于是重新使用较旧的1.2.12版本，这也是最后一个采用[开放源代码](../Page/开放源代码.md "wikilink")许可的版本。随后瑞典程序员Björn Grönvall基于这个版本开发了OSSH。不久之后，[OpenBSD](../Page/OpenBSD.md "wikilink")的开发者又在Grönvall版本的基础上进行了大量修改，形成了[OpenSSH](../Page/OpenSSH.md "wikilink")，并于OpenBSD 2.6一起发行。从该版本开始，OpenSSH又逐渐移植到了其他操作系统上面。\[18\]

截至2005年，OpenSSH是唯一一种最流行的SSH实现，而且成为了大量操作系统的默认组件，而OSSH已经过时\[19\]。OpenSSH仍在维护，而且已经支持SSH-2协议。从7.6版开始，OpenSSH不再支持SSH-1协议。

### 2.x版本

2006年，SSH-2协议成为了新的标准。与SSH-1相比，SSH-2进行了一系列功能改进并增强了安全性，例如基于[迪菲-赫爾曼密鑰交換](../Page/迪菲-赫爾曼密鑰交換.md "wikilink")的加密和基于[訊息鑑別碼的完整性检查](https://zh.wikipedia.org/wiki/訊息鑑別碼 "wikilink")。SSH-2还支持通过单个SSH连接任意数量的shell会话。SSH-2协议与SSH-1不兼容，由于更加流行，一些实现（例如[lsh和](https://zh.wikipedia.org/wiki/lsh "wikilink")[Dropbear](../Page/Dropbear.md "wikilink")）只支持SSH-2协议。

### 1.99版

RFC 4253规定支持2.0及以前版本SSH的SSH服务器应将其原始版本标为“1.99”\[20\]。“1.99”并不是实际的软件版本号，而是为了表示[向下兼容](../Page/向下兼容.md "wikilink")。

## 基本架構

SSH协议框架中最主要的部分是三个协议：

1.  **传输层协议**（The Transport Layer Protocol）：传输层协议提供[服务器](../Page/服务器.md "wikilink")认证，数据机密性，信息完整性等的支持。
2.  **用户认证协议**（The User Authentication Protocol）：用户认证协议为服务器提供客户端的身份鉴别。
3.  **连接协议**（The Connection Protocol）：连接协议将加密的信息隧道复用成若干个逻辑通道，提供给更高层的应用协议使用。

同时还有为许多高层的网络安全应用协议提供扩展的支持。

各种高层应用协议可以相对地独立于**SSH**基本体系之外，并依靠这个基本框架，通过连接协议使用**SSH**的安全机制。

## SSH的安全验证

在客户端来看，SSH提供两种级别的安全验证。

  - 第一种级别（基于密碼的安全验证），知道帐号和密碼，就可以登录到远程主机，并且所有传输的数据都会被加密。但是，可能会有别的伺服器在冒充真正的伺服器，无法避免被「中间人」攻击。
  - 第二种级别（基于[密钥的安全验证](../Page/公开密钥加密.md "wikilink")），需要依靠密钥，也就是你必须为自己创建一对密钥，并把公有密钥放在需要访问的伺服器上。客户端软件会向伺服器发出请求，请求用你的密钥进行安全验证。服务器收到请求之后，先在你在该伺服器的用户根目录下寻找你的公有密钥，然后把它和你发送过来的公有密钥进行比较。如果两个密钥一致，伺服器就用公有密钥加密「质询」（challenge）并把它发送给客户端软件。从而避免被「中间人」攻击。

在服务器端，SSH也提供安全验证。 在第一种方案中，主机将自己的公用密钥分发给相关的客戶端，客戶端在访问主机时则使用该主机的公开密钥来加密数据，主机则使用自己的私有密钥来解密数据，从而实现主机密钥认证，确保数据的保密性。 在第二种方案中，存在一个密钥认证中心，所有提供服务的主机都将自己的公开密钥提交给认证中心，而任何作为客戶端的主机则-{只}-要保存一份认证中心的公开密钥就可以了。在这种模式下，客戶端必须访问认证中心然后才能访问服务器主机。

## SSH协议的可扩展能力

SSH协议框架中设计了大量可扩展的冗余能力，比如用户自定义算法、客户自定义密钥规则、高层扩展功能性应用协议。这些扩展大多遵循[IANA的有关规定](https://zh.wikipedia.org/wiki/IANA "wikilink")，特别是在重要的部分，像命名规则和消息编码方面。

## 参考文献

## 外部連結

  - [SSH Communications Security Corporation的网站](http://www.ssh.com)
  - [OpenSSH组织的网站](http://www.openssh.org)
  - [IANA的标准及组织](http://www.iana.org)
  - [RFC4251:The Secure Shell (SSH) Protocol Architecture](ftp://ftp.rfc-editor.org/in-notes/rfc4251.txt)

[Category:Secure_Shell](https://zh.wikipedia.org/wiki/Category:Secure_Shell "wikilink") [Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink")

1.

2.

3.

4.

5.  [SSH Hardens the Secure Shell](http://www.serverwatch.com/news/print.php/3551081), Serverwatch.com

6.

7.

8.

9.

10.
11. [SSH setup manual](http://wiki.qnap.com/wiki/How_To_Set_Up_Authorized_Keys)

12.
13.

14.

15.

16.

17.

18.

19.

20.