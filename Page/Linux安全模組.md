**Linux安全模块**（，简称**LSM**）是[Linux内核中用于支持各种](../Page/Linux内核.md "wikilink")[计算机安全模型的](../Page/计算机安全模型.md "wikilink")[框架](../Page/框架.md "wikilink")，它与任何单独的安全实现无关。这个框架使用[GNU通用公共许可证授权](../Page/GNU通用公共许可证.md "wikilink")，并且从Linux
2.6开始成为官方Linux内核的一部分。目前，[AppArmor](../Page/AppArmor.md "wikilink")、[SELinux](../Page/SELinux.md "wikilink")、[Smack](../Page/Simplified_Mandatory_Access_Control_Kernel.md "wikilink")、和[Yama是官方Linux内核中支持的安全模块](../Page/Yama.md "wikilink")。

Linux安全模块提供了[强制访问控制所需的功能](../Page/强制访问控制.md "wikilink")，同时尽量减少对Linux内核的修改。因此，它仅仅用于解决[访问控制的问题](../Page/访问控制.md "wikilink")。Linux安全模块的访问控制和[系统审计很相似](../Page/系统审计.md "wikilink")，但有细微的不同。**审计**要求所有的访问（包括成功的和被阻止的）都被记录下来，而Linux安全模块无法实现此功能。因为访问控制可能在调用Linux安全模块之前就阻止该访问。

目前，[AppArmor为](../Page/AppArmor.md "wikilink")[Ubuntu](../Page/Ubuntu.md "wikilink")、[OpenSUSE](../Page/OpenSUSE.md "wikilink")、[SUSE默认的LSM](../Page/SUSE.md "wikilink")；[SELinux为](../Page/SELinux.md "wikilink")[RHEL](../Page/RHEL.md "wikilink")、[Fedora](../Page/Fedora.md "wikilink")、[CentOS默认的LSM](../Page/CentOS.md "wikilink")。

然而一些开发者并不喜欢Linux安全模块。的作者不喜欢LSM\[1\]，因为LSM导出了它的全部符号，这在方便插入安全模块的同时也方便了恶意模块（[Rootkit](../Page/Rootkit.md "wikilink")）。

## 参考文献

[Category:Linux內核](https://zh.wikipedia.org/wiki/Category:Linux內核 "wikilink")
[Category:操作系统安全](https://zh.wikipedia.org/wiki/Category:操作系统安全 "wikilink")

1.