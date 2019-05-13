**netcat**是個[计算机网络公用程式](../Page/计算机网络.md "wikilink")，用來對網路連線[TCP或者](../Page/TCP.md "wikilink")[UDP進行讀寫](../Page/UDP.md "wikilink")。

netcat
在2001年insecure.org對[nmap用戶郵件列表舉辦的投票被推選為第二有用的網路保全工具](../Page/nmap.md "wikilink")\[1\]。2003年投票結果是第四名\[2\]；2006年的投票繼續穩佔同樣第四名寶座。\[3\]

## 範例

透过端口3333（-l 监听状态listen）从机器foo复制到机器bar复制档案：

``` bash
  user@bar$ nc -l -p 3333 > backup.iso
  user@foo$ nc bar 3333 < backup.iso
```

在端口25建立內容未加工过的连接（类似[telnet](../Page/telnet.md "wikilink")）：

``` bash
  nc mail.server.net 25
```

利用零模式I/O（参数 -z）检查192.168.0.1的UDP端口（参数 -u）80-90是否开启：

``` bash
  nc -vzu 192.168.0.1 80-90
```

## 變體

netcat原始版本是一個[Unix程式](../Page/Unix.md "wikilink")。已知的作者叫做[\*Hobbit\*](../Page/*Hobbit*.md "wikilink")。他於1996年3月發行版本1.1。
2013年，由chenghao0511由netcat-1.11升级到netcat-1.12,netcat-1.13,netcat-1.14直到netcat-1.15。
netcat-1.12，在使用-e选项的时候，对ctrl+c进行了处理。 netcat-1.13，添加了-C选项，类似于-L选项。
netcat-1.14，对netcat的传输功能进行了修正，可以在传输完成后立即退出。
netcat-1.15，可以使用UDP模式，既-u和-e选项一起使用得到一个shell。
Netcat完全[POSIX相容](../Page/POSIX.md "wikilink")，並且目前現存多種不同的實現：[完全重新改寫的GNU](../Page/重寫_\(編成\).md "wikilink")
netcat是由喬凡尼加克比 (Giovanni Giacobbi)
維護；[視窗版本是由克利斯衛索柏](../Page/視窗.md "wikilink")（Chris
Wysopal, Weld Pond網路保全公司）創造。[安德烈畢斯確夫（Andreas
Bischoff）](http://en.wikipedia.org/wiki/User:Andreas_Bischoff)將視窗版移植到[Windows
CE](../Page/Windows_CE.md "wikilink")（不是現今的[Windows
Mobile](../Page/Windows_Mobile.md "wikilink")）上。

在某些系統上，修改過的netcat或類似的公用程式以下面命令名出現：

*nc*, *ncat*, *pnetcat*, *socat*, *sock*, *socket*, *sbd*。

*socat* 是 netcat 較複雜的姊妹程式。它比起netcat更大更複雜，並且有更多的選項得在給定作業前先設定。

[Cryptcat](http://sourceforge.net/projects/cryptcat/) 是 netcat
一個內建加密傳輸能力的版本。

*Ncat*是由[Nmap開發團隊實做的另一個netcat版本](../Page/Nmap.md "wikilink")。

## 參考文獻

## 參見

  - [TELNET](../Page/TELNET.md "wikilink")

<!-- end list -->

  - [Unix程式列表](../Page/Unix程式列表.md "wikilink")

<!-- end list -->

  - [Socat (Unix)](../Page/Socat_\(Unix\).md "wikilink")

## 外部連結

  - [OpenBSD版](../Page/OpenBSD.md "wikilink")[nc(1) 的 man
    page](http://www.openbsd.org/cgi-bin/man.cgi?query=nc)
  - [GNU netcat](http://netcat.sourceforge.net/)
  - [Download 視窗版的 Netcat](http://joncraton.org/files/nc111nt.zip) --
    [Md5sum](../Page/Md5sum.md "wikilink")=37f2383aa4e825e7005c74099f8bb2c3
  - [Socat](http://www.dest-unreach.org/socat/)
  - [Windows CE 版的
    Netcat](https://web.archive.org/web/20081008040552/http://prt.fernuni-hagen.de/~bischoff/wince/Andreas_WINCE_stuff.html#netcat)
    (PocketPC, Windows Mobile)
  - [Guida a
    Netcat](https://web.archive.org/web/20090126085148/http://www.compago.it/index.php/manuali/35-utilita/165-guida-a-netcat)

[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")
[Category:网络软件](https://zh.wikipedia.org/wiki/Category:网络软件 "wikilink")
[Category:端口掃描器](https://zh.wikipedia.org/wiki/Category:端口掃描器 "wikilink")

1.
2.
3.