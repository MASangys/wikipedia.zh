<onlyinclude></onlyinclude>

**Sudo** （**s**ubstitute **u**ser \[或 **s**uper**u**ser\] **do**），是一種[程式](https://zh.wikipedia.org/wiki/電腦程式 "wikilink")，用於[類Unix](https://zh.wikipedia.org/wiki/類Unix系統 "wikilink")[作業系統如](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[BSD](../Page/BSD.md "wikilink")，[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")，以及[GNU/Linux以允許使用者透過安全的方式使用特殊的權限執行程式](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink") （通常為[系統的](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[超級使用者](https://zh.wikipedia.org/wiki/超級使用者 "wikilink")）。

## 原理

在sudo於1980年前後被寫出之前\[1\]，一般使用者管理系統的方式是利用 [`su`](https://zh.wikipedia.org/wiki/su_\(Unix\) "wikilink") 切換為超級使用者。但是使用su的缺點之一在於必須要先告知超級使用者的密碼。

sudo使一般使用者不需要知道超級使用者的密碼即可獲得權限。首先超級使用者將普通用户的名字、可以执行的特定命令、按照哪种用户或用户组的身份执行等信息，登記在特殊的檔案中（通常是`/etc/sudoers`），即完成對該使用者的授權（此時該使用者稱為「sudoer」）\[2\]；在一般使用者需要取得特殊權限時，其可在命令前加上「`sudo`」，此時sudo將會詢問該使用者**自己的**密碼（以確認終端機前的是該使用者本人），回答後系統即會將該命令的[-{zh-tw:行程;zh-cn:进程}-以超級使用者的權限執行](https://zh.wikipedia.org/wiki/进程 "wikilink")。之後的一段時間內（預設為5分鐘\[3\]，可在`/etc/sudoers`自訂），使用sudo不需要再次輸入密碼。

由於不需要超級使用者的密碼，部分Unix系統甚至利用sudo使一般使用者取代超級使用者作為管理帳號，例如[Ubuntu](../Page/Ubuntu.md "wikilink")、[macOS等](https://zh.wikipedia.org/wiki/macOS "wikilink")。

## 语法

` sudo [-bhHpV][-s ][-u  `<用户>`][指令]`

或

`sudo [-klv]`

### 参数

　　-b　　在后台执行指令。

　　-h　　显示帮助。

　　-H　　将HOME环境变量设为新身份的HOME环境变量。

　　-k　　结束密码的有效期限，也就是下次再执行sudo时便需要输入密码。

　　-l　　列出目前用户可执行与无法执行的指令。

　　-p　　改变询问密码的提示符号。

　　-s　　执行指定的shell。

　　-u　　<用户> 　以指定的用户作为新的身份。若不加上此参数，则预设以root作为新的身份。

　　-v　　延长密码有效期限5分钟。

　　-V　　显示版本信息。

　　-S　　从标准输入流替代终端来获取密码

## 參考資訊

## 外部連結

  -
  - [How to audit and log user and root shells with sudo via sudosh](http://sourceforge.net/projects/sudosh/)

  - [sudo tools](http://www.komar.org/pres/sudo-tools/)

  - [a logging root shell](http://sourceforge.net/projects/rootsh)

  - [sudo(8) man page](http://www.openbsd.org/cgi-bin/man.cgi?query=sudo) from [OpenBSD](../Page/OpenBSD.md "wikilink")

  - [sudo(8) man page](http://www.linuxmanpages.com/man8/sudo.8.php) from linuxmanpages.com

  - [sudo explained in webcomic form](http://xkcd.com/c149.html) by *[Xkcd](../Page/Xkcd.md "wikilink")*

[Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink") [Category:系統管理](https://zh.wikipedia.org/wiki/Category:系統管理 "wikilink") [Category:Unix用户管理和支持相关实用工具](https://zh.wikipedia.org/wiki/Category:Unix用户管理和支持相关实用工具 "wikilink")

1.
2.  在Ubuntu系统中，管理员通过执行`visudo`来编辑`/etc/sudoers`，给普通用户授予某些sudo的权力
3.  依各發行版可能有所異同，例如Ubuntu下預設為15分鐘。