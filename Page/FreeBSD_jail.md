**FreeBSD jail**，一種[作業系統層虛擬化](../Page/作業系統層虛擬化.md "wikilink")技術，在[FreeBSD](../Page/FreeBSD.md "wikilink")作業系統中運作。利用這個技術，FreeBSD的系統管理者，可以創造出幾個小型的軟體系統，這些軟體系統被稱為監獄（jails）。

這個技術被採納，加入FreeBSD系統中。2000年，伴隨FreeBSD 4.0版的發布，正式對外公開。系統管理者可以使用[jail(8)](http://www.freebsd.org/cgi/man.cgi?query=jail&sektion=8#end)這個命令來調用這個服務。

## 目標

這個技術的目標是：

1.  虛擬化：每個軟體監獄（jail）都是在主機機器上執行的一個[虛擬環境](../Page/虛擬機器.md "wikilink")，有它自己的檔案系統，行程，使用者與超級使用者的帳戶。在軟體監獄內運行的行程，它面對的環境，跟實際的作業系統環境幾乎是一樣的。
2.  安全性：每個軟體監獄都是獨立運作，與其他軟體監獄隔離，因此能夠提供額外的安全層級。
3.  容易刪除及創建：因為每個軟體監獄的運作範圍有限，這使得系統管理者可以在不影響整體系統的前提下，以超級使用者的權限，來刪除在軟體監獄下運作的行程。

這個技術是基於[類Unix系統下的](https://zh.wikipedia.org/wiki/類Unix "wikilink")[chroot機制](https://zh.wikipedia.org/wiki/chroot "wikilink")，進一步發展而來。chroot jail限制行程只能存取某個部份的檔案系統，但是FreeBSD jail機制限制了在軟體監獄中運作的行程，不能夠影響作業系統的其他部份。也就是說，在軟體監獄中的行程，是運作在一個[沙盒上](../Page/沙盒_\(電腦安全\).md "wikilink")。

## 外部連結

  - [Jails: Confining the omnipotent root](http://phk.freebsd.dk/pubs/sane2000-jail.pdf)
  - [jail(8) man page](http://www.freebsd.org/cgi/man.cgi?query=jail&format=html)
  - [FreeBSD jails](http://www.onlamp.com/pub/a/bsd/2003/09/04/jails.html) at ONLamp
  - [Jail on FreeBSD 6](http://www.freebsddiary.org/jail-6.php)
  - [FreeBSD Handbook: Jails](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/jails.html)

[Category:FreeBSD](https://zh.wikipedia.org/wiki/Category:FreeBSD "wikilink") [Category:自由虚拟化软件](https://zh.wikipedia.org/wiki/Category:自由虚拟化软件 "wikilink")