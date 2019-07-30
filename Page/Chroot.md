**chroot**是在unix系统的一个操作，針對正在運作的軟體行程和它的[子进程](../Page/子进程.md "wikilink")，改变它外顯的[根目录](https://zh.wikipedia.org/wiki/根目录 "wikilink")。一個運行在這個環境下，經由chroot設定根目錄的程式，它不能夠對這個指定根目錄之外的檔案進行存取動作，不能讀取，也不能更改它的內容。chroot这一特殊表达可能指`chroot(2)`系统调用或`chroot(8)`前端程序。

由chroot創造出的那个根目录，叫做“chroot监狱”（chroot jail，或chroot prison）。

## 历史

1979年，在开发[Version 7 Unix時](https://zh.wikipedia.org/wiki/Unix "wikilink")，chroot系统调用首次問世。1982年3月18日，在[4.2BSD发布前](../Page/BSD.md "wikilink")17个月，[比尔·乔伊](../Page/比尔·乔伊.md "wikilink")（Bill Joy）將chroot機制移植到[BSD](../Page/BSD.md "wikilink")系統上，主要用于测试安装和构建系统。

1991年，[威廉·齊斯韋克](https://zh.wikipedia.org/wiki/威廉·齊斯韋克 "wikilink")（William Cheswick）開發出第一個[蜜罐程式](https://zh.wikipedia.org/wiki/蜜罐_\(電腦科學\) "wikilink")，來監視入侵[駭客的行動](https://zh.wikipedia.org/wiki/駭客 "wikilink")。他使用了chroot來進行實作，這是chroot最早被用於開發程式的先例，也因此，chroot創造出的根目錄空間，之後被人稱為軟體監獄（chroot jail）。

2000年，FreeBSD團隊，將原本chroot機制，導入[虛擬化](../Page/虛擬化.md "wikilink")技術的概念，開發了新的[jail系統命令](../Page/FreeBSD_jail.md "wikilink")，伴隨著FreeBSD 4.0版一同發布。

2004年，因為駭客開發出許多可以破解chroot機制的方法，出現了[jailbreak這個術語](https://zh.wikipedia.org/wiki/jailbreak "wikilink")。

2005年，[昇陽電腦](../Page/昇陽電腦.md "wikilink")在[Solaris](../Page/Solaris.md "wikilink")系統上開發出[Solaris Containers](https://zh.wikipedia.org/wiki/Solaris_Containers "wikilink")，稱它是吃了類固醇的chroot（chroot on steroids）。

2006年，Linux內核中開發出[cgroups](https://zh.wikipedia.org/wiki/cgroups "wikilink")。2007年，被加到Linux 2.6.24版內核中。2008年，基於cgroups，開發出[LXC](../Page/LXC.md "wikilink")，以及Docker。2013年被加入Linux 3.8版中。

## 应用

應用chroot，可以创建并运行一个隔离的虚拟软件系统拷贝。這对于以下应用是十分有用的:

  - 测试和开发 : 可以經由chroot建立一個測試環境，用來測試軟體。這可以減少將軟體直接布署到整個生產系統中可能造成的風險。
    依赖控制 : 可以在chroot建立的環境下，進行軟體開發，組建以及測試，只保留這個程式需要的軟體依賴。這可以避免在系統中預先安裝的各種[軟體庫](https://zh.wikipedia.org/wiki/軟體庫 "wikilink")，影響到開發，造成軟體開發者在組建軟體時，可能遇到一些連結衝突。
    兼容性 : 早期遗留软件或使用不同[应用二进制接口](../Page/应用二进制接口.md "wikilink")（ABI）的软件，因为它们提供的[軟體庫和宿主机的库之間](https://zh.wikipedia.org/wiki/軟體庫 "wikilink")，可能發生名称或链接冲突，可以在chroot环境下运行，以保持系統安全。
    修复 : 当一个系统不能启动时，可以使用chroot，先從另一個根檔案系統（比如從安裝媒體，或是[Live CD](../Page/Live_CD.md "wikilink")）下開機，之後再回到受損的環境中，重新修正系統。
    特权分离 : 將允許開啟檔案描述子（例如檔案，[管線或是網路連線](../Page/管道_\(Unix\).md "wikilink")）的程式放到chroot下執行，不用特地將工作所需的檔案，放到chroot路徑底下，這可以簡化軟體監獄的設計。chroot簡化了安全設計，可以創造出一個沙盒環境，來執行一個有潛在危險的特權程式，以先期防禦可能的安全漏洞。但值得注意的是，chroot沒有足夠能力去防禦一個擁有root特權的行程造成危害。

## 限制

chroot机制的設計中，並不包括抵抗特权用戶（root）的蓄意篡改。在大多数的系统中，chroot環境沒有設計出適當的堆疊，所以一個在chroot下執行的程式，可能會透過[第二次chroot](https://web.archive.org/web/20160127150916/http://www.bpfh.net/simes/computing/chroot-break.html)來獲得足夠權限，逃出chroot的限制。为了减轻这种安全漏洞所带来的风险，在使用chroot后，在chroot下執行的程序，應該盡快放棄root权限，或是改用其他机制來替代，例如[FreeBSD jail](../Page/FreeBSD_jail.md "wikilink")。在某些作業系統中，例如FreeBSD，已經采取预防措施，來防止第二次chroot的攻擊\[1\]。

  - 在支持设备节点的文件系统中，一个在chroot中的root用户仍然可以创建设备节点和挂载在chroot根目录的文件系统；尽管，chroot机制不是被打算用来阻止低特权用户级访问系统设备。
  - 在启动时，程序都期望能在某些预设位置找到[scratch space](https://zh.wikipedia.org/wiki/交换空间 "wikilink")，配置文件，[设备节点和](https://zh.wikipedia.org/wiki/设备节点 "wikilink")[共享库](https://zh.wikipedia.org/wiki/共享库 "wikilink")。对于一个成功启动的被chroot的程序，在chroot目录必须最低限度配备的这些文件设置。这使得chroot很困难作为一般的沙箱来使用。
  - 只有root用户可以执行chroot。这是为了防止用户把一个[setuid的程序放入一个特制的chroot监牢](https://zh.wikipedia.org/wiki/setuid "wikilink")（例如一个有着假的`/etc/passwd`和`/etc/shadow`文件的chroot监牢）由于引起提权攻击。

<!-- end list -->

  - 在chroot的机制本身也不是为限制资源的使用而设计，如[I/O](https://zh.wikipedia.org/wiki/输入/输出 "wikilink")，带宽，磁盘空间或CPU时间。大多数Unix系统都没有以完全文件系统为导向，以即给可能通过网络和过程控制，通过系统调用接口来提供一个破坏chroot的程序。

一些Unix系统提供扩展的chroot机制，一般称为[作業系統層虛擬化](../Page/作業系統層虛擬化.md "wikilink")—至少解决其中的一些限制。包括:

  - [AIX中的](https://zh.wikipedia.org/wiki/IBM_AIX_\(operating_system\) "wikilink")[Workload Partitions](https://zh.wikipedia.org/wiki/Workload_Partitions "wikilink")
  - [Solaris中的](https://zh.wikipedia.org/wiki/Solaris_Operating_System "wikilink")[Containers](https://zh.wikipedia.org/wiki/Solaris_Containers "wikilink")
  - [Linux](../Page/Linux.md "wikilink")下的[Linux-VServer](https://zh.wikipedia.org/wiki/Linux-VServer "wikilink"), [FreeVPS和](https://zh.wikipedia.org/wiki/FreeVPS "wikilink")[OpenVZ](../Page/OpenVZ.md "wikilink")
  - [FreeBSD](../Page/FreeBSD.md "wikilink") 中的[Jails](../Page/FreeBSD_jail.md "wikilink")
  - [NetBSD](../Page/NetBSD.md "wikilink")和[OpenBSD](../Page/OpenBSD.md "wikilink")中的[Sysjails](https://zh.wikipedia.org/wiki/sysjail "wikilink")
  - [DragonFly BSD中的](../Page/DragonFly_BSD.md "wikilink")[DragonFly BSD jails](https://zh.wikipedia.org/wiki/DragonFly_BSD_jails "wikilink")

## 在chroot中使用图形界面

在chroot环境中使用图形界面是可能的，参见以下几个方案：

  - [xhost](https://zh.wikipedia.org/wiki/xhost "wikilink")
  - 使用内置像[Xnest这样的X服务](https://zh.wikipedia.org/wiki/Xnest "wikilink")，或现代一点的[Xephyr](https://zh.wikipedia.org/wiki/Xephyr "wikilink")（或者在监牢中启动真正的X服务）
  - 通过开启X11转发（X11 forwarding）的 [SSH连接到chroot中](https://zh.wikipedia.org/wiki/SSH "wikilink")（ssh -X）
  - 当一个X服务启动是设置为不监听tcp端口或没有可用的SSH服务器时，使用[openroot](https://zh.wikipedia.org/wiki/openroot "wikilink")
  - 通过一个X11 VNC服务，链接到在外环境的VNC客户端

## 参见

  - [Unix实用程序列表](../Page/Unix实用程序列表.md "wikilink")
  - [操作系统级虚拟化](https://zh.wikipedia.org/wiki/操作系统级虚拟化 "wikilink")
  - [沙盒 (计算机安全)](https://zh.wikipedia.org/wiki/沙盒_\(计算机安全\) "wikilink")
  - [sudo](https://zh.wikipedia.org/wiki/sudo "wikilink")

## 参考

## 外部链接

  -
  -
  -
  - [openroot - an extended chroot with X11 access, /dev & /media automounting & more.](http://www.elstel.com/openroot/)

[Category:Unix进程和任务管理相关软件](https://zh.wikipedia.org/wiki/Category:Unix进程和任务管理相关软件 "wikilink") [Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink") [Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")

1.  <http://man.freebsd.org/chroot/2>