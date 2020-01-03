> 本文内容由[Tera Term](https://zh.wikipedia.org/wiki/Tera_Term)转换而来。


**Tera Term**（テラターム），一开始是由一名叫 寺西 高（てらにし たかし 的物理学家开发并发布的，之后是由TeraTerm Project 在 [BSD许可证](../Page/BSD许可证.md "wikilink")下 进行维护支持。这是一款远程客户端操作软件。

该软件支持的[通信协议有](../Page/网络传输协议.md "wikilink")[SSH](../Page/Secure_Shell.md "wikilink")、[telnet](https://zh.wikipedia.org/wiki/telnet "wikilink")、[串行通信](../Page/串行通信.md "wikilink")（serial）<sup>\[待考证\]</sup> ，支持操作系统有[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink") 。

## 功能

### 脚本语言

Tera Term语言(简称TTL)，是一门针对Tera Term的宏语言，并由MACRO (TTPMACRO.EXE)编译器进行解释，提供了诸多功能，包含：自动输入、自动登录等。\[1\]

自动登录\[2\]：

    ; 自动登录脚本.ttl
    connect 'myserver /ssh /auth=password /user=username /passwd=password'

端口转发\[3\]：

    ; 自动登录+端口转发脚本.ttl
    ; 远程服务器的22端口转发至本地计算机的2250端口
    connect 'myserver /ssh /auth=password /user=username /passwd=password /ssh-L2250:127.0.0.1:22'

登录后的操作，示例如下\[4\]：

    ;执行 ssh username@hostname命令并输入密码

    ;等待画面出现$符号面
    wait '$'
    sendln 'ssh username@hostname'

    ;等待画面出现字符串password
    wait 'password'
    sendln 'password'

## 相关名词

  - [Secure Shell](../Page/Secure_Shell.md "wikilink")
      - [OpenSSH](../Page/OpenSSH.md "wikilink")
      - [WinSCP](../Page/WinSCP.md "wikilink")
      - [RLogin](https://zh.wikipedia.org/wiki/RLogin "wikilink")
      - [Putty](../Page/PuTTY.md "wikilink")
      - Poderosa
  - [SSH客户端比较](../Page/SSH客户端比较.md "wikilink")
  - [Telnet](../Page/Telnet.md "wikilink")
  - [终端仿真器](../Page/虚拟终端.md "wikilink")
  - [XMODEM](https://zh.wikipedia.org/wiki/XMODEM "wikilink")
  - [ZMODEM](../Page/ZMODEM.md "wikilink")
  - Kermit

## 外部链接

  - [Tera Term开源项目](https://web.archive.org/web/20151224000034/https://ttssh2.osdn.jp/index.html.ja)

[Category:Secure_Shell](https://zh.wikipedia.org/wiki/Category:Secure_Shell "wikilink") [Category:1994年软件](https://zh.wikipedia.org/wiki/Category:1994年软件 "wikilink") [Category:开源软件](https://zh.wikipedia.org/wiki/Category:开源软件 "wikilink") [Category:終端模擬器](https://zh.wikipedia.org/wiki/Category:終端模擬器 "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.
3.
4.