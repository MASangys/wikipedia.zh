**bcrypt**是一個由Niels Provos以及David
Mazières根據[Blowfish加密](../Page/Blowfish.md "wikilink")[演算法所設計的密碼雜湊函式](https://zh.wikipedia.org/wiki/演算法 "wikilink")，於1999年在[USENIX中展示](../Page/USENIX.md "wikilink")\[1\]。實作中bcrypt會使用一個[加鹽的流程以防禦](https://zh.wikipedia.org/wiki/鹽_\(密碼學\) "wikilink")[彩虹表攻擊](../Page/彩虹表.md "wikilink")，同時bcrypt還是適應性函式，它可以藉由增加[疊代之次數來抵禦日益增進的電腦運算能力透過](https://zh.wikipedia.org/wiki/疊代 "wikilink")[暴力法破解](../Page/蛮力攻击.md "wikilink")。

由bcrypt加密的文件可在所有支持的[操作系统和](../Page/操作系统.md "wikilink")[处理器上进行转移](https://zh.wikipedia.org/wiki/处理器 "wikilink")。它的[口令必须是](https://zh.wikipedia.org/wiki/口令 "wikilink")8至56个字符，并将在内部被轉化为448位的[密钥](https://zh.wikipedia.org/wiki/密钥 "wikilink")。然而，所提供的所有字符都具有十分重要的意义。密码越强大，您的[数据就越](https://zh.wikipedia.org/wiki/数据 "wikilink")[安全](../Page/安全.md "wikilink")。

除了对您的数据进行加密，默认情况下，bcrypt在[删除数据之前将使用](https://zh.wikipedia.org/wiki/删除 "wikilink")[随机数据三次](https://zh.wikipedia.org/wiki/随机 "wikilink")[覆盖原始输入文件](https://zh.wikipedia.org/wiki/覆盖 "wikilink")，以阻挠可能会获得您的[计算机数据的人](https://zh.wikipedia.org/wiki/计算机 "wikilink")[恢复数据的尝试](https://zh.wikipedia.org/wiki/恢复 "wikilink")。如果您不想使用此功能，可設定禁用此功能。

具体来说，bcrypt使用[保羅·柯切爾的算法实现](https://zh.wikipedia.org/wiki/保羅·柯切爾 "wikilink")。随bcrypt一起发布的[源代码对原始版本作了略微改动](../Page/源代码.md "wikilink")。

## 參考資料

## 外部連結

  - [Counterpane Blowfish
    加密算法](http://www.counterpane.com/blowfish.html)
  - [原始版本的源代码](http://www.counterpane.com/bfsh-koc.zip)

[Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink")
[Category:密码散列函数](https://zh.wikipedia.org/wiki/Category:密码散列函数 "wikilink")

1.