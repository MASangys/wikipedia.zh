**Magisk**是一套[开放源代码的](../Page/开放源代码.md "wikilink")[Android](../Page/Android.md "wikilink")（4.2及以上版本）自定义工具套组，内置了Magisk
Manager（图形化管理界面）、[Root](../Page/Root_\(Android\).md "wikilink")、[启动脚本](../Page/Initrd.md "wikilink")、[SElinux补丁和](https://zh.wikipedia.org/wiki/SELinux "wikilink")[启动时认证](../Page/Android软件开发.md "wikilink")/dm-verity/强制加密移除功能。Magisk同时提供了在无需修改系统文件的情况下更改/system或/vendor分区内容的接口，利用与[Xposed类似的模块系统](../Page/Xposed框架.md "wikilink")，开发者可以对系统进行美化（如更改字体）或修改软件功能（如去广告）等。

除此之外，Magisk可以对其他验证系统完整性的应用程序进行隐藏（称为Magisk
Hide），使得用户可在获取Root权限的情况下使用如[精靈寶可夢GO](../Page/精靈寶可夢GO.md "wikilink")\[1\]、[Fate/Grand
Order](https://zh.wikipedia.org/wiki/Fate/Grand_Order "wikilink")\[2\]一类的应用程序或开启[支付宝](../Page/支付宝.md "wikilink")、[微信的指纹支付功能](../Page/微信.md "wikilink")\[3\]。

## 历史

2015年10月8日，原SuperSU的开发者Chainfire于[XDA论坛上发布了在无需修改系统文件获取Root权限的实验性方法](../Page/XDA_Developers.md "wikilink")\[4\]。11月6日，受Chainfire的启发，吳​泓霖将此方法移植到了[HTC
One设备上](../Page/HTC_One_\(M8\).md "wikilink")\[5\]。

2016年5月29日，吳​泓霖发布了无需修改系统文件的非官方版Xposed框架\[6\]。发布后，XDA上的部分开发者请求移植自己的模块，由于技术限制，吳​泓霖拒绝了这些请求，这也是Magisk开发的灵感\[7\]。8月，Magisk的最早期版本发布。不久，由于精靈寶可夢GO的更新，导致Root后的玩家无法正常游玩游戏，部分用户发现Magisk可绕过这一限制\[8\]。10月4日，v7版本发布，正式开放源代码、重新设计了Magisk
Manager并添加了模块源系统\[9\]。19日，v8版本发布，此版本整合了SuperSU及完整版Magisk
Hide。11月14日，v9版本发布，添加了resetprop工具并改进了Magisk Hide功能\[10\]。

2017年1月20日，v10版本发布，同时发布了官方图标、修复了Magisk
Hide并将SuperSU替换为phh的开源版[SU](../Page/Su_\(Unix\).md "wikilink")。2月6日，v11版本发布，Magisk释出了自己的root解决方案（MagiskSU）、重构了SELinux注入工具并添加了启动脚本。3月21日，v11.5/v11.6发布，此更新重命名了部分文件、添加了引导镜像工具（MagiskBoot）并更新了模块模板。3月31日，Magisk
V12.0发布，其更新了“核心模式”并更改了Sepolicy修补模式。6月8日，v13.0发布，其对MagiskSU做出了重大改进并暂时放弃了对SuperSU的兼容。7月11日，v13.1发布，其更新了模块模板并添加了提交模块的功能。7月14日，v13.2发布，其更新了MagiskPolicy并重链接了/sbin下的部分文件。7月18日，v13.3发布，主要修复了SafetyNet绕过逻辑并重构了Magisk
Manager。9月6日，v14.0添加了[BusyBox](../Page/BusyBox.md "wikilink")，同时增加了对Magisk
Manager的隐藏功能和Magisk的全新安装方法。9月28日，v14.1/14.2发布，更新了许多与[Pixel设备相关的功能并修复了大部分模块失效问题](../Page/Pixel_\(智能手机\).md "wikilink")。10月5日，v14.3发布，重写了Logcat日志处理逻辑。11月23日，v14.5发布，更新了Magisk
Hide功能并添加了Initramfs动态运行时配置功能。12月22日，v14.6发布，其重组了项目、更新了MagiskSU并提升了稳定性。26日，v15.0发布，此版本更新了模块模板并添加了模块提交服务器。29日，v15.1发布，修复了部分问题。

2018年1月1日，v15.2发布，修复了部分问题。12日，v15.3发布，修复了部分漏洞。2月13日，v15.4发布，对MagiskBoot和Magisk
Manager做出了重大改进，同时添加了套接字混淆功能。22日，v16.0发布，修复了[F2FS崩溃和NDK编译器问题](../Page/F2FS.md "wikilink")、新增对[华为Treble设备的支持并发布了libsu库](../Page/华为.md "wikilink")。3月11日，v16.1发布，修复了MagiskBoot并添加对[Android
P的支持](https://zh.wikipedia.org/wiki/Android_P "wikilink")。一个星期后，v16.2发布，修复了Android
P上模块安装的问题。28日，v16.3发布，移除了用于向后兼容的符号链接与SafetyNet黑名单。4月29日，v16.4发布，此更新对项目做出了重大重构并优化了MagiskHide。7月8日，v16.6发布，此版本添加了对Treble特性的完全支持并修复了Root权限丢失的漏洞和部分小问题。19日，v16.7发布，此版本主要修复漏洞并添加对老版本Android的支持。9月1日，v17.1发布，其再次添加了SafetyNet检查和安装到不活跃系统的功能，同时更新了模块模板、修复了部分问题并启用了全新的[軟件版本週期](../Page/軟件版本週期.md "wikilink")。21日，v17.2发布，此版本主要添加了混淆功能并更新了Resetprop。10月20日，v17.3发布，此版本重写了MagiskSU、修补了[三星Defex并更新了软件文档](../Page/三星電子.md "wikilink")。11月23日，吳​泓霖在开发过程中发现了一个系统[漏洞](https://zh.wikipedia.org/wiki/漏洞 "wikilink")，此漏洞可让其他软件监视用户正运行的应用程序\[11\]。12月28日，v18.0发布，此版本将代码库全部迁移至C++。

2019年2月4日，v18.1发布，其新增对使用[EMUI 9.0](../Page/EMUI.md "wikilink")、[Android
4.2及](../Page/Android_Jelly_Bean.md "wikilink")[麒麟960设备的支持](../Page/海思半導體.md "wikilink")。3月28日，v19.0发布，优化了代码逻辑并改进对[Android
Q的支持](../Page/Android_Q.md "wikilink")。5月1日，v19.1发布，此版本添加了对Android Q
Beta
2及基于Magisk的恢复程序的支持。20日，v19.2发布，修复了卸载程序和部分设备无限重启的问题并添加了对麒麟hi6250处理器的支持。

## 脚注

## 参考文献

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.