**BusyBox**是一個遵循[GPL協議](https://zh.wikipedia.org/wiki/GPL "wikilink")、以[自由軟體形式發行的](https://zh.wikipedia.org/wiki/自由軟體 "wikilink")[應用程式](https://zh.wikipedia.org/wiki/應用程式 "wikilink")。Busybox在单一的[可执行文件中提供了精简的](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")[Unix工具集](https://zh.wikipedia.org/wiki/Unix "wikilink")，可运行于多款[POSIX环境的操作系统](https://zh.wikipedia.org/wiki/POSIX "wikilink")，例如Linux（包括Android\[1\]）、Hurd\[2\]、FreeBSD\[3\]\[4\]等等。由於BusyBox執行檔的檔案大小比較小、並通常使用[Linux內核](https://zh.wikipedia.org/wiki/Linux內核 "wikilink")，這使得它非常適合使用於[嵌入式系统](../Page/嵌入式系统.md "wikilink")。作者将BusyBox稱為「嵌入式Linux的瑞士軍刀」。\[5\]

## 歷史

BusyBox最初是由[布魯斯·斐倫斯在](https://zh.wikipedia.org/wiki/布魯斯·斐倫斯 "wikilink")1996年為Debian
GNU/Linux的軟碟安装編寫的，其原始構想是希望在一張軟碟上能放入一個開機系統，以作為急救盤和安裝盤。後來它變成了嵌入式Linux設備和系統和Linux發行版安裝程序的實質標準，因為每個Linux執行檔需要數KB的空間，而整合兩百多個程式的BusyBox可以節省大量空間。例如：Debian
GNU/Linux的安裝光碟以BusyBox作為[Shell程式](https://zh.wikipedia.org/wiki/Shell "wikilink")。

Enrique Zanardi負責維護BusyBox並專注在Debian安裝系統的需求直到1998年，再由負責的Dave Cinege
接手。Cinege做了一些增加：建立了一個模組化的Build環境、轉移BusyBox的目標到一般高階的[嵌入式系統](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")。當1999年LRP開發進度趨緩時，的Erik
Andersen在1999年開始正式地接手這個專案繼續維護它到2006年三月。在這段期間，Linux的[嵌入式系統的市場明顯地成長](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")，連帶使BusyBox轉趨成熟，同時擴展二者的使用群和功能。

是目前BusyBox的維護者。

## 功能

BusyBox可以被自訂化以提供一個超過兩百種功能的子集。它可以提供多數詳列在[單一UNIX規範裡的功能](../Page/單一UNIX規範.md "wikilink")，以及許多使用者會想在Linux系統上看到的功能。BusyBox使用[ash](https://zh.wikipedia.org/wiki/ash "wikilink")。\[6\]\[7\]在
BusyBox的網站上可以找到所有功能的列表。\[8\]

### 單一可執行檔

典型的電腦程式對每個應用程式都有個別的[二進制](https://zh.wikipedia.org/wiki/二進制檔案 "wikilink")（[執行檔](https://zh.wikipedia.org/wiki/執行檔 "wikilink")）檔案。BusyBox
是一單一二進制程式，這是許多應用程式的集合，在適當參數的特定方法下，每個都可透過以不同的名稱（每個不同的名字藉由[符号链接或](../Page/符号链接.md "wikilink")支援\[9\]）呼叫單一
BusyBox 二進制程式來存取。

BusyBox受惠於單一可執行檔策略，如此一來省去了每個執行檔必需有的檔頭（特別是[ELF的可執行檔](https://zh.wikipedia.org/wiki/可执行与可链接格式 "wikilink")），這也讓Busybox不需要[函式庫便可達成程式碼共用](../Page/函式庫.md "wikilink")。這個技巧與[FreeBSD中的](../Page/FreeBSD.md "wikilink")*crunchgen*\[10\]指令相似。與使用crunchgen建立的合併工具程式不同在於，Busybox只提供每個工具程式的簡化版（例如：ls指令不提供排序功能）。

共享通用的程式碼，並以程式大小最佳化為目標，使以BusyBox建構的系統所需要的空間遠小於使用對應的完整工具所需要的空間。研究\[11\]比較了[GNU](../Page/GNU.md "wikilink")、Busybox、[asmutils及](https://zh.wikipedia.org/wiki/asmutils "wikilink")[Perl實作的標準Unix指令發現特定狀況下](../Page/Perl.md "wikilink")，BusyBox的執行速度會優於其他實作，但並非總是如此。

## 範例

BusyBox所包含的程式只需要簡單的將名稱附加在第一個參數即可執行：

  -
    `/bin/busybox ls`

更常見的作法是，這些指令會以連結（使用或者[符号链接](../Page/符号链接.md "wikilink")）至BusyBox可執行檔，BusyBox會偵測其被連結時的名稱，並執行對應的指令。舉例來說，只要將*/bin/ls*連結到*/bin/busybox*，即可執行

  -
    `/bin/ls`

## 命令

  - [ash](../Page/Almquist_shell.md "wikilink") -
    符合[POSIX的一个简单的shell](https://zh.wikipedia.org/wiki/POSIX "wikilink")
  - [awk](https://zh.wikipedia.org/wiki/awk "wikilink") -
    将文件解析为记录及字段后，按模式匹配操作其内容
  - [cat](https://zh.wikipedia.org/wiki/cat_\(Unix\) "wikilink") -
    将多个文件首尾相连显示于标准输出
  - [chmod](https://zh.wikipedia.org/wiki/chmod "wikilink") - 更改文件的权限设置
  - [cp](https://zh.wikipedia.org/wiki/cp_\(Unix\) "wikilink") - 拷贝文件或目录
  - [date](https://zh.wikipedia.org/wiki/date_\(Unix\) "wikilink") -
    打印/设置日期时间
  - [dd](https://zh.wikipedia.org/wiki/dd_\(Unix\) "wikilink")
  - [df](https://zh.wikipedia.org/wiki/df_\(Unix\) "wikilink") -
    印出檔案系統的使用統計
  - [dmesg](https://zh.wikipedia.org/wiki/dmesg "wikilink") - 查看内核信息
  - [echo](https://zh.wikipedia.org/wiki/echo_\(命令\) "wikilink") -
    打印指定内容
  - [egrep](https://zh.wikipedia.org/wiki/egrep "wikilink") -
    接受扩展正则表达式的grep
  - [fgrep](https://zh.wikipedia.org/wiki/fgrep "wikilink") -
    接受固定字符串模式的grep
  - [grep](https://zh.wikipedia.org/wiki/grep "wikilink") -
    列出文件或标准输入中符合模式的行
  - [gzip](https://zh.wikipedia.org/wiki/gzip "wikilink")
  - [kill](https://zh.wikipedia.org/wiki/kill_\(命令\) "wikilink") -
    關閉一個程序
  - [ln](https://zh.wikipedia.org/wiki/ln_\(Unix\) "wikilink") - 创建链接
  - login - 以某个用户身份登录
  - [ls](https://zh.wikipedia.org/wiki/ls "wikilink") - 列出目錄或檔案
  - mdu
  - [mkdir](https://zh.wikipedia.org/wiki/mkdir "wikilink") - 建立一個目錄
  - [more](https://zh.wikipedia.org/wiki/more_\(命令\) "wikilink")
  - [mount](../Page/Mount_\(Unix\).md "wikilink") 掛載儲存裝置
  - [mv](https://zh.wikipedia.org/wiki/mv_\(Unix\) "wikilink") - 移動檔案
  - [netstat](https://zh.wikipedia.org/wiki/netstat "wikilink") - 查看
    TCP/IP 连接信息
  - ntpc
  - ntpsync
  - nvram
  - [pidof](https://zh.wikipedia.org/wiki/pidof "wikilink")
  - [ping](https://zh.wikipedia.org/wiki/ping "wikilink")
  - [ps](https://zh.wikipedia.org/wiki/ps_\(Unix\) "wikilink") - 印出程序狀態
  - [pwd](https://zh.wikipedia.org/wiki/pwd "wikilink") - 印出工作目錄
  - [rm](https://zh.wikipedia.org/wiki/rm_\(Unix\) "wikilink") - 刪除檔案
  - [rmdir](https://zh.wikipedia.org/wiki/rmdir "wikilink") - 移除目錄
  - rstats
  - [sed](https://zh.wikipedia.org/wiki/sed "wikilink")
  - sh
  - [sleep](https://zh.wikipedia.org/wiki/sleep_\(Unix\) "wikilink")
  - [sync](https://zh.wikipedia.org/wiki/sync_\(Unix\) "wikilink") -
    将缓存写入到硬盘中
  - [tar](https://zh.wikipedia.org/wiki/Archiver "wikilink")
  - [touch](https://zh.wikipedia.org/wiki/touch_\(Unix\) "wikilink")
  - [umount](https://zh.wikipedia.org/wiki/umount "wikilink") 移除掛載的儲存裝置
  - [uname](https://zh.wikipedia.org/wiki/uname "wikilink") - 查看系统信息
  - usleep
  - [vi](https://zh.wikipedia.org/wiki/vi "wikilink") -
    一个带有简单的模式提示的精简版仿[vi编辑器](https://zh.wikipedia.org/wiki/vi "wikilink")
  - [watch](https://zh.wikipedia.org/wiki/watch_\(Unix\) "wikilink")
  - [wget](https://zh.wikipedia.org/wiki/wget "wikilink") - HTTP或FTP下载工具
  - [zcat](https://zh.wikipedia.org/wiki/Gzip#gunzip_and_zcat "wikilink")

<!-- end list -->

  - 实际的命令列表按编译时的设置决定，在有Busybox的系统上执行`busybox --list`即可看到一个列表。

## 註釋

## 參看

  - [toybox](http://landley.net/code/toybox/) - complete implementation
    of the standard Linux command line utilities, with minimal external
    dependencies. by Rob Landley.

## 外部連結

  - [Project home page](http://www.busybox.net/)
  - [Products known to be using
    BusyBox](http://www.busybox.net/products.html)
  - [Building Tiny Linux Systems with
    BusyBox](https://web.archive.org/web/20151122122204/http://www.linuxjournal.com/node/4335/print)
  - [Busybox simplifies embedded Linux
    systems](http://www.ibm.com/developerworks/library/l-busybox/) a
    developerWorks article by M. Tim Jones

[Category:命令壳层](https://zh.wikipedia.org/wiki/Category:命令壳层 "wikilink")
[Category:嵌入式Linux](https://zh.wikipedia.org/wiki/Category:嵌入式Linux "wikilink")
[Category:自由電腦程式設計工具](https://zh.wikipedia.org/wiki/Category:自由電腦程式設計工具 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")

1.  <https://play.google.com/store/apps/details?id=com.jrummy.busybox.installer&hl=zh_CN>
2.  <https://lists.debian.org/debian-bsd/2010/05/msg00048.html>
3.  <https://lists.debian.org/debian-bsd/2010/05/msg00048.html>
4.  <http://portsmon.freebsd.org/portoverview.py?category=sysutils&portname=busybox>
5.  <http://www.busybox.net/downloads/BusyBox.html> The self-dubbed
    slogan for 'The Swiss Army Knife of Embedded Linux' source. The
    slogan is right under the header.
6.  <http://busybox.net/cgi-bin/viewcvs.cgi/trunk/busybox/shell/Config.in?rev=11083>
    The 'ash' shell adds about 60k in the default configuration and is
    the most complete and most pedantically correct shell included with
    busybox. This shell is actually a derivative of the [Debian 'dash'
    shell](https://zh.wikipedia.org/wiki/Debian_Almquist_shell "wikilink")
    (by Herbert Xu), which was created by porting the 'ash'
    shell(written by Kenneth Almquist) from NetBSD.
7.  [ash variants](http://www.in-ulm.de/~mascheck/various/ash/#busybox)
8.  [BusyBox - The Swiss Army Knife of Embedded
    Linux](http://www.busybox.net/downloads/BusyBox.html)
9.  <http://www-128.ibm.com/developerworks/library/l-busybox/index.html>
10. [*crunchgen* man
    page](http://www.freebsd.org/cgi/man.cgi?query=crunchgen) at
    [freebsd.org](http://www.freebsd.org/)
11.