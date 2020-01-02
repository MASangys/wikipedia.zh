> 本文内容由[Rootkit](https://zh.wikipedia.org/wiki/Rootkit)转换而来。


**Rootkit**是指其主要功能為：隱藏其他[程式](https://zh.wikipedia.org/wiki/程式 "wikilink")[进程的](https://zh.wikipedia.org/wiki/进程 "wikilink")[軟體](https://zh.wikipedia.org/wiki/軟體 "wikilink")，可能是一個或一個以上的軟體組合；廣義而言，Rootkit也可視為一項技術。在今天，Rootkit一词更多地是指被作为驱动程序，加载到操作系统内核中的恶意软件。因为其代码运行在特权模式之下，从而能造成意料之外的危险。最早Rootkit用於善意用途，但後來Rootkit也被[駭客用在入侵和攻擊他人的電腦系統上](https://zh.wikipedia.org/wiki/駭客 "wikilink")，[電腦病毒](https://zh.wikipedia.org/wiki/電腦病毒 "wikilink")、[間諜軟體等也常使用Rootkit來隱藏蹤跡](https://zh.wikipedia.org/wiki/間諜軟體 "wikilink")，因此Rootkit已被大多數的[防毒軟體歸類為具危害性的](https://zh.wikipedia.org/wiki/防毒軟體 "wikilink")[惡意軟體](https://zh.wikipedia.org/wiki/惡意軟體 "wikilink")。[Linux](../Page/Linux.md "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[Mac OS等](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")[作業系統都有機會成為Rootkit的受害目標](https://zh.wikipedia.org/wiki/作業系統 "wikilink")。

在现代[操作系统](../Page/操作系统.md "wikilink")中，[应用程序](../Page/应用程序.md "wikilink")不能直接访问[硬件](../Page/硬件.md "wikilink")，而是通过调用操作系统提供的接口来使用硬件，操作系统依赖[内核](../Page/内核.md "wikilink")空间来管理和调度这些应用。内核空间由四大部分组成，分别是：进程管理（负责分配Cpu时间）、文件访问（把设备调配成文件系统，并提供一个一致的接口供上层程序调用）、安全控制（负责强制规定各个进程的具体的权限和单独的内存范围，避免各进程之间发生冲突）和[内存管理](https://zh.wikipedia.org/wiki/内存 "wikilink")（负责进程运行时对内存资源的分配、使用、释放和回收）。内核是一种[数据结构](../Page/数据结构.md "wikilink")，Rootkit技术通过修改这些数据结构来隐藏其它程式的进程、文件、网络通讯和其它相关信息（比如[注册表](../Page/注册表.md "wikilink")和可能因修改而产生的系统[日志等](https://zh.wikipedia.org/wiki/日志 "wikilink")）。例如，通过修改操作系统的EPROCESS链表结构可以达到隐藏进程的效果，挂钩服务调用表可以隐藏文件和目录，挂钩中断描述符表则可以监听键盘击键等等。Rootkit至今仍然是一个发展中的技术领域。

## 歷史

Rootkit一詞最早出現在[Unix系統上](https://zh.wikipedia.org/wiki/Unix "wikilink")。系統入侵者為了取得系統管理員級的root權限，或者為了清除被系統記錄的入侵痕跡，會重新組譯一些[軟體工具](https://zh.wikipedia.org/wiki/軟體 "wikilink")（術語稱為kit），例如ps、netstat、w、passwd等等，這些軟體即稱作Rootkit。其後類似的入侵技術或概念在其他的[作業系統上也被發展出來](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，主要是[檔案](../Page/檔案.md "wikilink")、[行程](../Page/行程.md "wikilink")、系統記錄的隱藏技術，以及網路[封包](https://zh.wikipedia.org/wiki/封包 "wikilink")、[鍵盤輸入的攔截竊聽技術等](https://zh.wikipedia.org/wiki/鍵盤 "wikilink")，許多[木馬程式都使用了這些技術](https://zh.wikipedia.org/wiki/木馬程式 "wikilink")，因此木馬程式也可視為Rootkit的一種。

2005年的[Sony BMG CD防拷醜聞即因](https://zh.wikipedia.org/wiki/Sony_BMG_CD防拷醜聞 "wikilink")[Sony被人揭發暗中使用了Rootkit技術來防止](https://zh.wikipedia.org/wiki/Sony "wikilink")[盜版](https://zh.wikipedia.org/wiki/盜版 "wikilink")，有侵害用戶[隱私之嫌](https://zh.wikipedia.org/wiki/隱私 "wikilink")，並可能對用戶系統造成威脅，因而引發軒然大波。Rootkit一詞也從此事件開始更廣為一般大眾所知。

[Category:惡意軟體](https://zh.wikipedia.org/wiki/Category:惡意軟體 "wikilink")