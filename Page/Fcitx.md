> 本文内容由[Fcitx](https://zh.wikipedia.org/wiki/Fcitx)转换而来。


**Fcitx**（\[1\]，源自“**Free Chinese Input Tool for X**”，又作“**Flexible Context-aware Input Tool with eXtension**\[2\]”或“**Flexible Input Method Framework**”\[3\]，暂无正式英文全称\[4\]，中文名称为“**小企鹅输入法**”）是在[X Window中使用的输入法框架](https://zh.wikipedia.org/wiki/X_Window "wikilink")，在源码包内包含了[拼音](https://zh.wikipedia.org/wiki/拼音 "wikilink")、[五笔字型以及](https://zh.wikipedia.org/wiki/五笔字型 "wikilink")[区位](https://zh.wikipedia.org/wiki/区位 "wikilink")、[二笔的支持](https://zh.wikipedia.org/wiki/二笔 "wikilink")。可以输入[UTF-8](../Page/UTF-8.md "wikilink")编码中的文字。可以在[Linux](../Page/Linux.md "wikilink")、[FreeBSD](../Page/FreeBSD.md "wikilink")中运行。采用[GPL授权](https://zh.wikipedia.org/wiki/GPL "wikilink")。支持[XIM](https://zh.wikipedia.org/wiki/XIM "wikilink")、[GTK](../Page/GTK.md "wikilink")（版本2和3）和[Qt](../Page/Qt.md "wikilink")的输入法模块。

因云帆论坛有人批评Fcitx[代码](../Page/代码.md "wikilink")写的很差，原作者于2007年7月10日决定终止本项目。\[5\] 不过，2008年9月开始，作者离开后又加入爱好者建立的Google Code项目并频繁更新，他发文谈到无法忘记fcitx。\[6\]

除了原作者之外，还有一些爱好者共同维护Fcitx。现在Fcitx代码托管在[GitLab](../Page/GitLab.md "wikilink")平台上进行开发。

## 功能

  - 主题支持
  - 系统托盘支持
  - Kimpanel 支持
  - [KDE](../Page/KDE.md "wikilink") 配置模块支持
  - 全局简繁转换

## 支持的输入法引擎

  - fcitx-anthy: 使用[Anthy引擎的日文输入法](https://zh.wikipedia.org/wiki/Anthy "wikilink")\[7\]
  - fcitx-chewing: [libchewing的支持](../Page/新酷音輸入法.md "wikilink")
  - fcitx-cloudpinyin: 为所有拼音引擎提供云拼音支持
  - fcitx-googlepinyin: 移植自Android的Google拼音支持
  - fcitx-handwriting: Zinnia作为后端的手写支持
  - fcitx-keyboard: 采用系统键盘布局作为输入法，以及提供拼写检查
  - fcitx-libpinyin: [libpinyin](http://github.com/libpinyin/libpinyin) 为后端的汉语拼音支持，fcitx算法最先进的输入法
  - fcitx-m17n: 使用m17n-db的多语言输入法
  - fcitx-mozc: 使用[mozc引擎的日文输入法](https://zh.wikipedia.org/wiki/mozc "wikilink")\[8\]
  - fcitx-pinyin: [汉语拼音](../Page/汉语拼音.md "wikilink")支持，fcitx上速度最快的输入法
  - fcitx-sunpinyin: [Sunpinyin](http://code.google.com/p/sunpinyin) 为后端的[汉语拼音](../Page/汉语拼音.md "wikilink")支持，fcitx综合表现最佳
  - fcitx-table: 码表类输入法支持，如[五笔](https://zh.wikipedia.org/wiki/五笔 "wikilink")、[郑码](../Page/郑码.md "wikilink")等
  - fcitx-rime：RIME引擎的封装，支持简体、繁体输入
  - fcitx-sogoupinyin:[1](http://pinyin.sogou.com/linux/)[搜狗拼音输入法](../Page/搜狗拼音输入法.md "wikilink")Linux版

## 优点

Fcitx默认的拼音由于采用的算法简单(前向最大匹配)，以及采用自定义的二进制格式并且运行时将所有数据加载入内存，因此响应迅速。配置以及使用较为简单，可以自行替换词库为开源词库以提高输入法效率，提供有码-{表}-的转换器，定义快捷键也较为简单。4.0版新加入配置程序、皮肤、SunPinyin集成、以词定字等新特性\[9\]。

## 缺点

使用XIM时，若XIM崩溃，会导致X和基于X的应用程序的崩溃。 使用XIM时，在当前版本（3.0）的GTK 3程序中无法正常使用（使用 GTK im module 时不受影响）。 如果在Emacs中使用，Emacs必须在Fcitx启动之后才启动，否则Emacs会无法使用输入法，甚至卡死。

## 参考文献

## 外部链接

  - [Fcitx主页](http://fcitx-im.org/)
  - [Fcitx用户邮件列表](http://groups.google.com/group/fcitx)
  - [Fcitx开发者邮件列表](http://groups.google.com/group/fcitx-dev)
  - [Fcitx在Google Code上的项目主页](http://code.google.com/p/fcitx/)
  - [Fcitx在GitHub上的项目主页](https://github.com/fcitx)
  - [Fcitx在deepin的中文Wiki](https://wiki.deepin.org/?title=Fcitx)
  - [Fcitx在archlinux的中文Wiki](https://wiki.archlinux.org/index.php/Fcitx_\(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87\))
  - [Fcitx在Ubuntu的中文Wiki](http://wiki.ubuntu.org.cn/Fcitx)
  - [Fcitx在gentoo的英文Wiki](https://wiki.gentoo.org/wiki/Fcitx)

[Category:输入法](https://zh.wikipedia.org/wiki/Category:输入法 "wikilink") [Category:中文輸入法平台](https://zh.wikipedia.org/wiki/Category:中文輸入法平台 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.  [得好好确定一下最近的开发计划](http://csslayer.info/wordpress/fcitx%E5%BC%80%E5%8F%91/%E5%BE%97%E5%A5%BD%E5%A5%BD%E7%A1%AE%E5%AE%9A%E4%B8%80%E4%B8%8B%E6%9C%80%E8%BF%91%E7%9A%84%E5%BC%80%E5%8F%91%E8%AE%A1%E5%88%92/)(CS Slayer为Fcitx较活跃的开发者之一)