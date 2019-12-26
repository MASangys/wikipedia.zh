**MAC欺骗**是一种用于使用指定MAC地址的技术。需要注意的是，网卡中已写死的MAC地址不可更改。另外，你可以使用一些工具来欺骗你的操作系统，使其认为网卡真的具有你指定的MAC地址。本质上来讲，MAC欺骗就是更改计算机的身份。这在技术上是一件很容易的事情。

## 作用

MAC欺骗可用于穿过服务器或路由器的访问控制列表，也可用于在网络中隐藏计算机或是模拟其它设备。MAC欺骗技术出于你的特殊目的而可能导致违法。

### 辅助未注册的硬件接入ISP

许多ISP记录客户硬件的MAC地址以用于识别并提供网络和账单服务。由于MAC地址的唯一性和其写死在网卡上的特性，当客户更换新设备时，ISP会检测到不同的MAC地址，而这可能导致其拒绝提供网络等服务。在这种情况下，MAC欺骗便可大施拳脚，客户只需要将新设备的MAC地址指定为在ISP注册过的MAC地址即可。在特殊情况下，客户可用以上方法使得多个设备获得网络访问权。需要注意的是，即便在这个案例中一切看起来似乎合情合理，但若在ISP的用户协议中具有禁止用户使用多个设备联网的协定，MAC欺骗就会被视为非法。再者，合法客户不是唯一可以使用MAC欺骗以获取网络访问权的人。黑客也可通过同样的技术取得未经允许的访问权限。这样的黑客很难追踪因为他们使用了与客户相同的身份。这也是非法使用MAC欺骗技术的例子。总之，追踪使用MAC欺骗技术的黑客真的很难。

这也适用于诸如[电缆和](https://zh.wikipedia.org/wiki/纜線數據機 "wikilink")[DSL调制解调器等的](https://zh.wikipedia.org/wiki/ATU-R "wikilink")[客户端设备](https://zh.wikipedia.org/wiki/用户驻地设备 "wikilink")。如果ISP向客户租赁客户端设备，这些设备的MAC地址就会出现在其提供服务的列表中，只要客户没有欠费就可以自动取得网络访问权限。如果ISP允许客户使用他们自己的设备，ISP通常会要求客户向他们报备其设备的MAC地址以提供网络服务。

### 满足软件要求

如[最终用户许可协议所述](https://zh.wikipedia.org/wiki/最终用户许可协议 "wikilink")，某些[软件](../Page/软件.md "wikilink")只能安装和运行在具有预先指定的MAC地址的系统上，用户必须满足此要求才能使用该软件。如果用户由于旧网卡出现问题而必须更换新的硬件，那么软件将无法识别新硬件。但是，使用MAC欺骗可以解决这个问题。用户只需要指定新的MAC地址，以模仿注册软件时的MAC地址。\[1\] 如上行为很难定义为MAC欺骗技术的合法或非法利用。如果用户同时在多个设备上取得软件的访问权限，则可能会出现法律问题。同时，用户可以访问其尚未获得许可证的软件。如果出现上述硬件问题，联系软件供应商可能是最安全的选择。软件还可以执行MAC过滤，因为软件不希望未经授权的用户访问软件授予访问权限的某些网络。在这种情况下，MAC欺骗可被视为严重的非法活动，可以受到法律惩罚。 <ref name="auto4">

<div>

[起诉Aaron Swartz](https://www.wired.com/images_blogs/threatlevel/2012/09/swartzsuperseding.pdf)

</div>

</ref>

### 掩盖身份

用户指定MAC地址以保护隐私，这被称为身份掩盖。人们这么做的理由可能是，比如在Wi-Fi技术中，即便是安全的 [IEEE 802.11i-2004](../Page/WPA.md "wikilink")(WPA)加密方法也不会阻止Wi-Fi网络公开发送MAC地址。因此，用户可以指定设备的MAC地址以避免被跟踪。但是，黑客也可以使用相同的技术掩盖自己的身份以执行网络操作。某些网络使用MAC过滤以防止不必要的访问。黑客可以使用MAC欺骗来访问特定网络并造成危害。黑客的MAC欺骗将任何非法活动的责任推向真实用户。结果，真正的罪犯逍遥法外。

### WiFi中的MAC地址随机化

为防止第三方使用MAC地址跟踪设备，Android，Linux，iOS和Windows <ref name="papers.mathyvanhoef.com">

<div>

<http://papers.mathyvanhoef.com/asiaccs2016.pdf>

</div>

</ref>已实施MAC地址随机化。 2014年6月，Apple宣布其iOS平台的未来版本将随机化所有WiFi连接的MAC地址。 自2015年3月以来， [Linux内核](../Page/Linux内核.md "wikilink")在网络扫描期间支持MAC地址随机化<ref name="WPA supplicant changelog">

<div>

<https://w1.fi/cgit/hostap/plain/wpa_supplicant/ChangeLog>

</div>

</ref>但驱动程序需要更新才能使用此功能。 <ref>

<div>

<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ad2b26abc157460ca6fac1a53a2bfeade283adfa>

</div>

</ref> 自2015年7月发布[Windows 10](../Page/Windows_10.md "wikilink") \[2\]以来，Windows一直支持它。

## 争议

虽然MAC地址欺骗并非违法，但在某些情况下，它的做法引起了争议。在2012年针对[Aaron Swartz互联网黑客行为主义者的起诉书中](../Page/亚伦·斯沃茨.md "wikilink")，检察官声称，由于他欺骗了他的MAC地址，因此他被指控非法访问[JSTOR](../Page/JSTOR.md "wikilink")数字图书馆的文件，因此有目的地犯下了犯罪行为。 <ref name="auto4">

<div>

[起诉Aaron Swartz](https://www.wired.com/images_blogs/threatlevel/2012/09/swartzsuperseding.pdf)

</div>

</ref> 2014年6月，Apple宣布其iOS平台的未来版本将为所有WiFi连接随机化MAC地址，这使得互联网服务提供商更难以跟踪用户活动和身份，在再次在几个博客和报纸引起了对MAC欺骗行为的道德和法律讨论。<ref>

<div>

[更改MAC地址：使用无任何限制的公共WiFi信号，而不是提及严重的隐私权益](http://www.collegetimes.tv/change-mac-address/)

</div>

</ref>

## 局限

MAC地址欺骗技术的影响仅限于本地[广播域](https://zh.wikipedia.org/wiki/广播域 "wikilink") 。 与[IP地址欺骗](../Page/IP地址欺骗.md "wikilink")不同，发送者假冒其IP地址，以使接收者将响应发送到其他地方，而在MAC地址欺骗中，如果未配置交换机以防止MAC欺骗，则通常由欺骗方接收响应。

## 补充

  - [MAC地址](../Page/MAC地址.md "wikilink")
  - [混杂模式](https://zh.wikipedia.org/wiki/混杂模式 "wikilink")
  - [IP欺骗](../Page/IP地址欺骗.md "wikilink")
  - [ifconfig](https://zh.wikipedia.org/wiki/ifconfig "wikilink") ，可用于指定MAC地址的Linux程序。

## 参考

<references group="" responsive="">

</references>

[Category:入侵_(计算机安全)](https://zh.wikipedia.org/wiki/Category:入侵_\(计算机安全\) "wikilink") [Category:有未审阅翻译的页面](https://zh.wikipedia.org/wiki/Category:有未审阅翻译的页面 "wikilink")

1.
2.