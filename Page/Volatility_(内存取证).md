> 本文内容由[Volatility \(内存取证\)](https://zh.wikipedia.org/wiki/Volatility_\(内存取证\))转换而来。


**Volatility**是一个用于[事件响应和](https://zh.wikipedia.org/wiki/事件响应 "wikilink")[恶意软件](../Page/恶意软件.md "wikilink")分析的[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[内存取证框架](https://zh.wikipedia.org/wiki/内存取证 "wikilink")。它是用[Python](../Page/Python.md "wikilink")编写的，支持[Microsoft Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，[macOS和](https://zh.wikipedia.org/wiki/macOS "wikilink")[Linux](../Page/Linux.md "wikilink")（从版本2.5\[1\]开始）。

Volatility是由[计算机科学家和](https://zh.wikipedia.org/wiki/计算机科学家 "wikilink")[企业家](../Page/企业家.md "wikilink")Aaron Walters创建，借鉴了他在[内存取证方面所做的学术研究](https://zh.wikipedia.org/wiki/内存取证 "wikilink")。\[2\]\[3\]

## 操作系统支持

Volatility支持调查以下内存镜像：

Windows：

  - 32位 Windows XP （Service Pack 2和3）
  - 32位 Windows 2003 Server （Service Pack 0，1，2）
  - 32位 Windows Vista （Service Pack 0，1，2）
  - 32位 Windows 2008 Server （Service Pack 1，2）
  - 32位 Windows 7 （Service Pack 0，1）
  - 32位 Windows 8，8.1和8.1 Update 1
  - 32位 Windows 10 （初步支持）
  - 64位 Windows XP （Service Pack 1和2）
  - 64位 Windows 2003 Server （Service Pack 1和2）
  - 64位 Windows Vista （Service Pack 0，1，2）
  - 64位 Windows 2008 Server （Service Pack 1和2）
  - 64位 Windows 2008 R2 Server （Service Pack 0和1）
  - 64位 Windows 7 （Service Pack 0和1）
  - 64位 Windows 8，8.1和8.1 Update 1
  - 64位 Windows Server 2012和2012 R2
  - 64位 Windows 10 （至少包括10.0.14393）
  - 64位 Windows Server 2016 （至少包括10.0.14393.0）

macOS：

  - 32位 10.5.x Leopard（唯一的64位 10.5版本是服务器，不受支持）
  - 32位 10.6.x Snow Leopard
  - 32位 10.7.x Lion
  - 64位 10.6.x Snow Leopard
  - 64位 10.7.x Lion
  - 64位 10.8.x Mountain Lion
  - 64位 10.9.x Mavericks
  - 64位 10.10.x Yosemite
  - 64位 10.11.x El Capitan
  - 64位 10.12.x Sierra

Linux:

  - 32位 Linux内核 2.6.11到4.2.3
  - 64位 Linux内核 2.6.11到4.2.3
  - OpenSuSE, Ubuntu, Debian, CentOS, Fedora, Mandriva, 等等。

## 内存格式支持

Volatility支持各种样本文件格式以及在这些格式之间进行转换的能力：

  - 原始或已填充的物理内存
  - 苹果火线（IEEE 1394）
  - 专家证人（EWF）
  - 32位和64位的Windows崩溃dumps
  - 32位和64位的Windows休眠文件（支持Windows 7或更早版本）
  - 32位和64位的Mach-O文件
  - Virtualbox的核心dumps
  - VMware的暂停状态文件（.vmss）和快照文件（.vmsn）
  - HPAK格式（FastDump）
  - QEMU内存dumps
  - LiME格式

## 参考文献

[Category:计算机取证](https://zh.wikipedia.org/wiki/Category:计算机取证 "wikilink")

1.  <http://www.volatilityfoundation.org/#!25/c1f29>
2.  Petroni, N. L., Walters, A., Fraser, T., & Arbaugh, W. A. (2006). *FATKit: A framework for the extraction and analysis of digital forensic data from volatile system memory*. Digital Investigation, 3(4), 197-210.
3.  Walters, A., & Petroni, N. L. (2007). Volatools: Integrating Volatile Memory into the Digital Investigation Process. [Black Hat Briefings](https://zh.wikipedia.org/wiki/Black_Hat_Briefings "wikilink") DC 2007, 1-18.