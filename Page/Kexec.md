**kexec**（**k**ernel **exec**ution，类似于[Unix或](../Page/UNIX.md "wikilink")[Linux](../Page/Linux.md "wikilink")的[系统调用](https://zh.wikipedia.org/wiki/系统调用 "wikilink")）是[Linux内核](../Page/Linux内核.md "wikilink")的一种机制，它允许从当前运行的[内核](../Page/内核.md "wikilink")启动新内核。kexec会跳过由系统固件（[BIOS](../Page/BIOS.md "wikilink")或[UEFI](../Page/統一可延伸韌體介面.md "wikilink")）执行的[引导加载程序阶段和硬件初始化阶段](../Page/啟動程式.md "wikilink")，直接将新内核加载到主[内存并立即开始执行](https://zh.wikipedia.org/wiki/内存 "wikilink")。这避免了与完全重新启动相关的漫长时间，并且可以通过最小化[停机时间来帮助系统满足高可用性要求](https://zh.wikipedia.org/wiki/停机时间 "wikilink")。\[1\]\[2\]

虽然可行，但使用kexec等机制会带来两大挑战：

  - 旧内核的内存被新内核覆盖，而旧内核仍在执行。
  - 新的内核通常希望所有的硬件设备处于一个定义良好的状态，在这种状态下，系统重启后系统固件会将其重置为“正常”状态。绕过真正的重新启动可能会使设备处于未知状态，新内核将不得不从中恢复。

支持仅通过kexec引导已[签名的内核已合并到](../Page/數位簽章.md "wikilink")2014年10月5日发布的Linux内核主线的3.17版中。\[3\] 这不允许[Root用户通过kexec加载并执行任意代码](../Page/超级用户.md "wikilink")，补充了[UEFI安全启动和内核安全机制](https://zh.wikipedia.org/wiki/統一可延伸韌體介面#Secure_Boot "wikilink")，以确保只有经过签名的Linux内核模块才能被插入正在运行的内核中。\[4\]\[5\]\[6\]

## 参见

  - [kdump](https://zh.wikipedia.org/wiki/kdump "wikilink") Linux内核的崩溃转储机制，它在内部使用kexec

  - SUSE开发的Linux内核实时修补技术

  - 由[红帽开发的Linux内核实时修补技术](../Page/紅帽公司.md "wikilink")

  - [Ksplice](https://zh.wikipedia.org/wiki/Ksplice "wikilink") Ksplice公司开发的Linux内核实时修补技术，后来被Oracle收购

## 参考文献

## 外部链接

  - [Using kexec and kdump to get core files on Fedora and CentOS hosts](http://prefetch.net/blog/index.php/2009/07/06/using-kdump-to-get-core-files-on-fedora-and-centos-hosts/)

[Category:Linux内核功能](https://zh.wikipedia.org/wiki/Category:Linux内核功能 "wikilink")

1.
2.
3.
4.
5.
6.