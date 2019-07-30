**ssh-keygen** 是[Unix和类Unix计算机系统上的](../Page/UNIX.md "wikilink")[安全外壳](../Page/Secure_Shell.md "wikilink")（SSH）协议套件的标准组件，用于通过使用各种[加密技术在不安全的](../Page/密码学.md "wikilink")[网络上建立远程计算机之间的安全shell会话](../Page/计算机网络.md "wikilink")。ssh-keygen实用程序用于生成，管理和转换身份验证密钥。

ssh-keygen能够使用三种不同的[数字签字算法之一生成密钥](../Page/數位簽章.md "wikilink")。

在ssh-keygen工具的帮助下，用户可以为任何这些密钥类型创建密码（为了提供无人值守操作，密码可以保留为空，风险更高）。

这些密钥与相关工具 [GNU Privacy Guard使用的密钥不同](../Page/GnuPG.md "wikilink")。

## 支持的密钥格式

最初，SSH的协议 [版本1](../Page/Secure_Shell.md "wikilink") (现已弃用)仅支持 [RSA](../Page/RSA加密演算法.md "wikilink") 算法。 截至2016年，RSA仍然被认为是强大的，但建议的密钥长度随着时间的推移而增加。

SSH协议[版本2还引入了对](../Page/Secure_Shell.md "wikilink")[DSA算法的支持](https://zh.wikipedia.org/wiki/Digital_Signature_Algorithm "wikilink")。 由于DSA算法与美国[国家安全局](../Page/美国国家安全局.md "wikilink") （NSA）有关，因此[爱德华·斯诺登](../Page/爱德华·斯诺登.md "wikilink")的[全球监控披露对其安全性方面提出了质疑](https://zh.wikipedia.org/wiki/Global_surveillance_disclosures_\(2013–present\) "wikilink")，特别是考虑到[Bullrun解密计划](https://zh.wikipedia.org/wiki/Bullrun_\(decryption_program\) "wikilink")。

随后， [OpenSSH](../Page/OpenSSH.md "wikilink")增加了对第三种数字签名算法[ECDSA](../Page/椭圆曲线数字签名算法.md "wikilink")（这种密钥格式不再使用以前的[PEM文件格式用于私钥](https://zh.wikipedia.org/wiki/Privacy-enhanced_Electronic_Mail "wikilink")，也不依赖于[OpenSSL](../Page/OpenSSL.md "wikilink")库来提供加密实现）的支持 。 使用[ed25519支持第四种格式](https://zh.wikipedia.org/wiki/ed25519 "wikilink")，最初由独立密码学研究员[Daniel J. Bernstein开发](https://zh.wikipedia.org/wiki/Daniel_J._Bernstein "wikilink")。

## ssh-keygen命令语法

ssh-keygen命令的语法如下：

` ssh-keygen [选项] `

ssh-keygen命令的一些重要选项如下：

| ssh-keygen命令选项 | 描述                                    |
| -------------- | ------------------------------------- |
| \-b bits       | 指定要创建的密钥中的位数。 最小位长度为768位，默认长度为2048位。  |
| \-C comment    | 提供新注释。                                |
| \-p            | 请求更改私钥文件的密码而非创建新私钥。                   |
| \-t            | 指定要创建的密钥类型。                           |
| \-o            | 使用新的OpenSSH格式。                        |
| \-q            | 静默的ssh-keygen。 在创建新密钥时，/etc/rc文件会使用它。 |
| \-N            | 提供新的密码。                               |
| \-F（或-B）       | 对于ssh-keygen2，以Bubble Babble格式转储密钥的指纹 |

## ssh-keygen实用程序使用的文件

ssh-keygen实用程序使用各种文件来存储公钥和私钥。 ssh-keygen实用程序使用的文件如下：

  - **$HOME/.ssh/identity:** 使用SSH协议版本1时，$HOME/.ssh/identity文件包含RSA私钥。
  - **$HOME/.ssh/identity.pub:** 当你使用SSH协议版本一时，$HOME/.ssh/identity.pub文件包含用于进行身份验证的RSA公钥。用户应将其内容复制到用户希望使用RSA身份验证登录的远程系统的$HOME/.ssh/authorized_keys文件中。
  - **$HOME/.ssh/id_dsa:** $HOME/.ssh/id_dsa文件包含用户的协议版本2 DSA身份验证标识。
  - **$HOME/.ssh/id_dsa.pub:** 当您使用SSH协议版本2时，$HOME/.ssh/id_dsa.pub文件包含用于身份验证的DSA公钥。 用户应将其内容复制到用户希望使用DSA身份验证登录的远程系统的$HOME/.ssh/authorized_keys文件中。
  - **$HOME/.ssh/id_rsa:** $HOME/.ssh/id_rsa文件包含用户的协议版本2 RSA身份验证标识。 除了用户之外，任何人都不应该有读取此文件的权限。
  - **$HOME/.ssh/id_rsa.pub:** $HOME/.ssh/id_rsa.pub文件包含用于身份验证的协议版本2 RSA公钥。 应在用户希望使用公钥认证登录的所有计算机上将此文件的内容添加到$HOME/.ssh/authorized_keys。

## 外部链接

  - [生成SSH密钥](https://help.github.com/articles/generating-an-ssh-key)，[Github的一个指南](https://zh.wikipedia.org/wiki/Github "wikilink") [。](../Page/GitHub.md "wikilink")
  - 来自 [OpenBSD](../Page/OpenBSD.md "wikilink") 项目的[ssh-keygen手册](http://man.openbsd.org/OpenBSD-current/man1/ssh-keygen.1#NAME)
  - 来自 [die.net](http://linux.die.net)的[Linux man page](http://linux.die.net/man/1/ssh-keygen)

[Category:Secure_Shell](https://zh.wikipedia.org/wiki/Category:Secure_Shell "wikilink") [Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink") [Category:操作系统安全](https://zh.wikipedia.org/wiki/Category:操作系统安全 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")