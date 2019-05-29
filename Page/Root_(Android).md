**Root**是[Android系统的一个术语](../Page/Android.md "wikilink")，它使得用户可以获取[Android](../Page/Android.md "wikilink")[操作系统的](../Page/操作系统.md "wikilink")[超级用户权限](../Page/超级用户.md "wikilink")。Root能夠帮助用户越过手机制造商的限制，得以卸载本身预装的程式，或執行需要系統權限的動作。Android系统的Root與[苹果](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")[iOS系统的](https://zh.wikipedia.org/wiki/iOS "wikilink")[越狱类似](https://zh.wikipedia.org/wiki/iOS越狱 "wikilink")。

## 原理

多數的手機制造商不支持獲取Root權限\[1\]。因此，大多数获取Root的方法都是使用特定工具借助系统[漏洞或官方](https://zh.wikipedia.org/wiki/漏洞 "wikilink")[后门实现的](https://zh.wikipedia.org/wiki/后门 "wikilink")。不同手机厂商、系统和版本可能存在的漏洞不同，因此不同手机的Root原理、方法、难度都可能不同。Root需将[su](https://zh.wikipedia.org/wiki/su_\(Unix\) "wikilink")[可执行文件复制到Android系统的](https://zh.wikipedia.org/wiki/可执行文件 "wikilink")/system分区下（例如：`/system/xbin/su`）并用[chmod命令为其设置可执行权限和](https://zh.wikipedia.org/wiki/chmod "wikilink")[setuid权限](https://zh.wikipedia.org/wiki/setuid "wikilink")。为了讓用户可以控制Root权限的使用，防止手机上的任意应用程序直接获得Root权限，用户通常还會將Root管理程式复制（安装）到/system/app，用以管理su程序的使用。

被广泛利用的系统漏洞之一是[zergRush](https://zh.wikipedia.org/wiki/zergRush "wikilink")，该漏洞适用于Android
2.2-2.3.6系统\[2\]，因而适用于很多Android系统手机。其他漏洞还有[Gingerbreak](https://zh.wikipedia.org/wiki/Gingerbreak "wikilink")\[3\]、[psneuter](https://zh.wikipedia.org/wiki/psneuter "wikilink")\[4\]等等。

## 工具

目前最广泛利用的zergRush漏洞必须在[adb](https://zh.wikipedia.org/wiki/Android_adb "wikilink")
shell下运行\[5\]，而adb
shell只能将手机用USB数据线与PC连接之后才能開啟，因此常用的Root工具都是PC程式，透過Android系统的adb
shell运行漏洞利用程序。亦有部分工具能直接在Android设备上运行。

部分用戶已開發Android设备上直接运行的Root工具。通常只对部分系统或机型适用，部分用户會無法成功Root或效果不佳。程式通常簡易操作，不需親自執行，但同時也帶來強制安裝授權管理軟體，並間接剝奪授權自由等問題。

大部分Android平台设备可以使用SuperSU，但SuperSU并不作为[Root](https://zh.wikipedia.org/wiki/Root "wikilink")\[6\]工具使用而是一个Root后设备的权限管理程序，用于管理Root后设备应用程序的权限问题。由于Android应用程序在获得Root权限后可以完全控制手机，一般推荐用户对于应用程序的权限请求仔细甄别。

## 争议

由于Root并非官方支持的行为，手机厂商对进行过Root的手机的保修政策目前存在争议。亦有部分厂商明确称为Root后的手机提供免费维护，但通常仅限于重装手机的系统，不包括数据保全、硬件保修等服务。

大多数手机厂商为避免用户Root或使用第三方系统，加入了分区保护机制，未解锁（BootLoader）的情况下无法进行Root或刷机操作。

為避免資安風險，以[Google Pay与三星的](../Page/Google_Pay.md "wikilink")[Samsung
Pay为首的内核级支付系统](https://zh.wikipedia.org/wiki/三星智付 "wikilink")，不允許Root過的手機執行，

2017年9月，[魅族宣布旗下各机型的](https://zh.wikipedia.org/wiki/魅族 "wikilink")[Flyme系统将停用开放Root功能](../Page/Flyme.md "wikilink")，且以后不再开放\[7\]。但在2018年7月，[魅族时任CEO](https://zh.wikipedia.org/wiki/魅族 "wikilink")[黄章下令Flyme彻底开放Root授权](../Page/黄章.md "wikilink")\[8\]

## 参见

  - [超级用户](../Page/超级用户.md "wikilink")
  - [Android](../Page/Android.md "wikilink")
  - [CyanogenMod](../Page/CyanogenMod.md "wikilink")

## 参考资料

[Category:Android](https://zh.wikipedia.org/wiki/Category:Android "wikilink")

1.

2.

3.

4.

5.

6.
7.

8.