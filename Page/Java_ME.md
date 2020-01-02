> 本文内容由[Java ME](https://zh.wikipedia.org/wiki/Java_ME)转换而来。


**Java ME以往稱作J2ME**（Java Platform, Micro Edition）是为[机顶盒](https://zh.wikipedia.org/wiki/机顶盒 "wikilink")、[移动电话](../Page/移动电话.md "wikilink")和[PDA之类嵌入式消费电子设备提供的](https://zh.wikipedia.org/wiki/PDA "wikilink")[Java语言平台](https://zh.wikipedia.org/wiki/Java语言 "wikilink")，包括[虚拟机和一系列标准化的Java](https://zh.wikipedia.org/wiki/虚拟机 "wikilink") [API](https://zh.wikipedia.org/wiki/API "wikilink")。它和[Java SE](https://zh.wikipedia.org/wiki/Java_SE "wikilink")、[Java EE一起构成Java技术的三大版本](https://zh.wikipedia.org/wiki/Java_EE "wikilink")，并且同样是通过[JCP](../Page/JCP.md "wikilink")（Java Community Process）制订的。

目前阶段，Java ME最流行的应用是游戏软件。因为与需要昂贵的专用设备和开发工具的竞争对手（如索尼和任天堂）相比，Java ME程序可以在PC机上开发和仿真运行，然后很容易地部署到目标机上，从而使其开发、测试和发布的变得容易和廉价。实际上Java ME的用途和前景要广泛得多。

## 架构

与J2SE和J2EE相比，J2ME总体的的运行环境和目标更加多样化，但其中每一种产品的用途却更为单一，而且资源限制也更加严格。为了在达到标准化和兼容性的同时尽量满足不同方面的需求，J2ME的架构分为Configuration、Profile和Optional Packages（可选包）。它们的组合取舍形成了具体的运行环境。

Configuration主要是对设备纵向的分类，分类依据包括存储和处理能力，其中定义了虚拟机特性和基本的类库。已经标准化的Configuration有- Connected Limited Device Configuration（[CLDC](../Page/CLDC.md "wikilink")）和Connected Device Configuration（[CDC](https://zh.wikipedia.org/wiki/CDC "wikilink")）。

Profile建立在Configuration基础之上，一起构成了完整的运行环境。它对设备横向分类，针对特定领域细分市场，内容主要包括特定用途的类库和[应用程序接口](../Page/应用程序接口.md "wikilink")。CLDC上已经标准化的Profile有Mobile Information Device Profile（[MIDP](https://zh.wikipedia.org/wiki/MIDP "wikilink")）和Information Module Profile（[IMP](https://zh.wikipedia.org/wiki/IMP "wikilink")），而CDC上标准化的Profile有Foundation Profile（FP）、Personal Basis Profile（PBP）和Personal Profile（PP）。

可选包独立于前面两者提供附加的、模块化的和更为多样化的功能。目前标准化的可选包包括数据库访问、多媒体、蓝牙等等。

## 開發工具

開發Java ME程序一般不需要特別的開發工具，開發者只需要裝上Java SDK及下載免費的Sun Java Wireless Toolkit就可以開始編寫Java ME程式，編譯及測試，此外目前主要的IDE（[Eclipse](../Page/Eclipse.md "wikilink")及[NetBeans](../Page/NetBeans.md "wikilink")）都支持Java ME的開發，個別的手機開發商如[Nokia及](https://zh.wikipedia.org/wiki/Nokia "wikilink")[Sony Ericsson都有自己的SDK](https://zh.wikipedia.org/wiki/Sony_Ericsson "wikilink")，供開發者在開發出兼容於他們的平台的程序。

## 开发

  - [J2ME Wireless Toolkit，无线设备的J2ME开发工具](http://java.sun.com/products/j2mewtoolkit/index.html)
  - [NetBeans](http://www.netbeans.org/)
  - [Eclipse](http://www.eclipse.org/) + [EclipseME J2ME Plugin](http://www.eclipseme.org)
  - [JBuilder](https://web.archive.org/web/20121105211827/http://www.borland.com/)
  - [Sun ONE Studio](https://web.archive.org/web/20040725064623/http://wwws.sun.com/software/sundev/jde/studio_me/index.html)

## 应用

## 参见

  - [Android](../Page/Android.md "wikilink")
  - [Danger Hiptop](https://zh.wikipedia.org/wiki/Danger_Hiptop "wikilink")
  - [Embedded Java](https://zh.wikipedia.org/wiki/Embedded_Java "wikilink")
  - [JavaFX](../Page/JavaFX.md "wikilink")
  - [Mobile development](https://zh.wikipedia.org/wiki/Mobile_development "wikilink")
  - [手机游戏](../Page/手机游戏.md "wikilink")
  - [行動學習](../Page/行動學習.md "wikilink")
  - [BREW](https://zh.wikipedia.org/wiki/BREW "wikilink")
  - [智能手机](../Page/智能手机.md "wikilink")

## 参考资料

<references/>

## 外部链接

  - [J2ME游戏开发站 - 提供详细的J2ME游戏开发资料](http://www.j2megame.org)
  - [J2ME正式网站](http://java.sun.com/j2me/)
  - [TCP/IP Socket Connections with MIDP 2.0 by Sun](http://developers.sun.com/techtopics/mobility/midp/articles/midp2network/)
  - [Bluetooth 蓝牙支持](https://web.archive.org/web/20040803212312/http://www.benhui.net/bluetooth/index.html)
  - [siemens](https://web.archive.org/web/20040729200516/http://www.j2mepolish.org/)
  - [J2ME.org](http://www.j2me.org)
  - [J2MEDeveloper.com](https://web.archive.org/web/20161021134747/http://www.j2medeveloper.com/)
  - [openwap.org](http://openwap.org)
  - [J2MEWorld.com](http://www.j2meworld.com)

[Category:计算平台](https://zh.wikipedia.org/wiki/Category:计算平台 "wikilink") [Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink") [Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink") [Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")