[Linux_kernel_interfaces.svg](https://zh.wikipedia.org/wiki/File:Linux_kernel_interfaces.svg "fig:Linux_kernel_interfaces.svg") **Linux标准规范**（，縮寫為 LSB）是一個在[Linux基金會](../Page/Linux基金會.md "wikilink")結構下對[Linux發行版的聯合項目](https://zh.wikipedia.org/wiki/Linux發行版 "wikilink")，其目標使[Linux](../Page/Linux.md "wikilink")[作業系統符合軟件系統架構](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，或文件系統架構標準的規範及標準。LSB基於[POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink")，[統一UNIX規範及其他開放標準](https://zh.wikipedia.org/wiki/統一UNIX規範 "wikilink")，在某些領域擴展它們。

  -
    *The goal of the LSB is to develop and promote a set of open standards that will increase compatibility among Linux distributions and enable software applications to run on any compliant system even in binary form. In addition, the LSB will help coordinate efforts to recruit software vendors to port and write products for Linux Operating System.*

The LSB compliance may be certified for a product by a certification procedure.\[1\]

LSB規範的例子:標準[函式庫](../Page/函式庫.md "wikilink"),一系列的命令和工具以擴大POSIX的標準,文件系統架構的layout,[運行級別](https://zh.wikipedia.org/wiki/運行級別 "wikilink"),打印系統,[假脱机](../Page/假脱机.md "wikilink")如[CUPS](../Page/CUPS.md "wikilink")及幾個[X Window系统的擴展](https://zh.wikipedia.org/wiki/X_Window系统 "wikilink")。

## 發佈歷史

  - 1.0: 首發於2001年6月
  - 1.1: 發佈於2002年1月。新增hardware specific specifications ([IA32](https://zh.wikipedia.org/wiki/IA32 "wikilink"))。
  - 1.2: 發佈2002年6月。新增hardware specific specifications ([PowerPC](../Page/PowerPC.md "wikilink") [32-bit](https://zh.wikipedia.org/wiki/32-bit "wikilink"))。2002年7月開始認證。
  - 1.2.1: 發佈於2002年10月。新增[Itanium](https://zh.wikipedia.org/wiki/Itanium "wikilink")。
  - 1.3: 發佈於2002年12月。新增hardware specific specifications (Itanium, Enterprise System Architecture/390, z/Architecture)。
  - 2.0: 發佈於2004年9月。LSB is modularized to LSB-Core, LSB-CXX, LSB-Graphics, LSB-I18n (沒有發佈)。新增hardware specific specifications (PowerPC [64-bit](https://zh.wikipedia.org/wiki/64-bit "wikilink"), [AMD64](https://zh.wikipedia.org/wiki/AMD64 "wikilink"))。LSB同步Single UNIX Specification (SUS)版本3。
  - 2.0.1: LSB 2.0的[ISO版本](https://zh.wikipedia.org/wiki/ISO "wikilink"), 其中包括所有hardware architectures (除了LSB-Graphics,其中只有一個通用的版本可用)。
  - 2.1: 發佈於2004年。
  - 3.0: 發佈於2005年7月1日。其它函式庫的變化,[C++](../Page/C++.md "wikilink") API is changed to the one used by [gcc](https://zh.wikipedia.org/wiki/gcc "wikilink") 3.4。核心規格更新至ISO [POSIX](https://zh.wikipedia.org/wiki/POSIX "wikilink") (2003), Technical Corrigenda 1: 2005。
  - 3.1: 發佈於2005年10月31日。這個版本提交為ISO/IEC 23360。
  - 3.2: 發佈於2008年1月28日。這個版本提交為ISO/IEC 23360。
  - 4.0: 發佈於2008年11月11日。這個版本有以下的改變:
      - [glibc](https://zh.wikipedia.org/wiki/glibc "wikilink") 2.4
      - 二進制兼容LSB 3.x
      - 更容易使用[SDK](https://zh.wikipedia.org/wiki/SDK "wikilink")
      - 支援新版本的[GTK](../Page/GTK.md "wikilink")及[Cairo圖形函式庫](https://zh.wikipedia.org/wiki/Cairo_\(繪圖\) "wikilink")
      - [Java](../Page/Java.md "wikilink")（可選組件）
      - 更簡單的方法建立符合LSB-compliant RPMp packages
      - 加密 API (通過 Network Secure Sockets library)
  - 4.1: 發佈於2011年2月16日。
      - 移除Java\[2\]\[3\]

## 参考文献

### 引用

### 来源

  - [Linux 标准规范 (LSB)](https://web.archive.org/web/20080329000449/http://www.linux-foundation.org/en/LSB)
  - [OLVER Test Suite for LSB](http://linuxtesting.org/results/testsuite) - **O**pen **L**inux **VER**ification project
  - [Linux Foundation's Linux Developer Network (LDN)](http://ldn.linuxfoundation.org/) - to help developers building portable Linux applications.

<!-- end list -->

  - 媒體报道

<!-- end list -->

  - [Four Linux Vendors Agree On An LSB Implementation (slashdot)](http://linux.slashdot.org/article.pl?sid=04/11/17/1427257&tid=185&tid=190&tid=106)
  - 1998年8月26日 [press release](http://www.debian.org/News/1998/19980826e) describing breakdown of teams (at the time) and who was involved, of historical interest
  - [Do you still think the LSB has some value?](http://www.livejournal.com/users/udrepper/8511.html) - Criticism by Ulrich Drepper
  - [Yes, the LSB Has Value](http://www.licquia.org/archives/2005/09/27/yes-the-lsb-has-value/) - Response to Drepper by Jeff Licquia

{{-}}

[Category:Linux](https://zh.wikipedia.org/wiki/Category:Linux "wikilink")

1.
2.
3.