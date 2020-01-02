> 本文内容由[Apache Harmony](https://zh.wikipedia.org/wiki/Apache_Harmony)转换而来。


{{ Infobox_Software | name = Apache Harmony | logo = | developer = [Apache Software Foundation](https://zh.wikipedia.org/wiki/Apache_Software_Foundation "wikilink") | status = 停止开发\[1\] | latest_release_version = 5.0M15
6.0M3 | latest_release_date =  | operating_system = [Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") and [Linux](../Page/Linux.md "wikilink") | programming_language = [C++](../Page/C++.md "wikilink") and [Java](../Page/Java.md "wikilink") | genre = [Java Virtual Machine](https://zh.wikipedia.org/wiki/Java_Virtual_Machine "wikilink") and Java [类库](https://zh.wikipedia.org/wiki/类库_\(computer_science\) "wikilink") | license = [Apache许可证](../Page/Apache许可证.md "wikilink")2.0 | website = <http://harmony.apache.org> }}

**Apache Harmony**是[Apache軟件基金會主導的](https://zh.wikipedia.org/wiki/Apache軟件基金會 "wikilink")[開放原始碼專案](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，是自由Java實作計劃（Free Java implementations）的一部份。基於[Java SE](https://zh.wikipedia.org/wiki/Java_SE "wikilink") 5與6，目標是以開放原始碼方式，實作出Java SDK。该项目已于2011年10月宣布停止开发。

这个项目的目标是营造一个大型的、健康的社区，这个社区由那些对运行是平台感兴趣的人组成。他们的任务是完成：

1.  一个兼容的、独立的Java SE 5 JDK的实现，并根据Apache License v2发布；
2.  一个由社区开发的模块化的运行时（包括[Java虚拟机](../Page/Java虚拟机.md "wikilink")和[类库](https://zh.wikipedia.org/wiki/类库 "wikilink")）体系结构。

该项目期望支持尽可能多的不同平台。一个特定的平台是否被支持，主要取决于参与者能在这个平台上定期运行测试、报告编译安装的情况，以及为该平台除虫，等等。

## 历史

Apache Harmony项目建立于2005年5月。到2006年10月25日，Apache董事会投票决定Apache Harmony成为顶级项目。10月29日，Apache孵化器管理委员会（Incubator PMC）投票决定Harmony完成孵化，认为它符合孵化器对社区管理和IP监管的要求。

## 开发者

Apache Harmony拥有32名贡献者，其中28位处于活跃期。此外，还拥有大量的其他兴趣爱好者和开发人员。

## 最近发展

Apache Harmony一直在稳步前进：

1.  Apache Harmony已经发布了5个milestone build
2.  JRE可以运行一些流行的应用如Apache Tomcat, Eclipse, Maven, Derby, Ant
3.  完成了99%的Java 5 API
4.  超过125万行的代码
5.  Harmony[类库于](https://zh.wikipedia.org/wiki/类库 "wikilink")2007年底被Google Android采用为其[类库](https://zh.wikipedia.org/wiki/类库 "wikilink")
6.  2007年，IBM宣布在其JDK6.0中使用了部分Harmony代码

### Android

[Dalvik虛擬機](https://zh.wikipedia.org/wiki/Dalvik虛擬機 "wikilink"), [Google](../Page/Google.md "wikilink") [Android](../Page/Android.md "wikilink")平台所使用的虛擬機，使用了Harmony部份的子集，作為它核心的類別函式庫。

## TCK的纷争

如果需要成为一个带有Java logo标志的，可以声称自己兼容Sun公司实现的JDK，需要通过[JCP](../Page/JCP.md "wikilink")（Java Community Process）对其拥有的[TCK](https://zh.wikipedia.org/wiki/TCK "wikilink")（Technology Compatibility Kit）的测试。Apache Harmony项目一直在努力争取获得[JCP](../Page/JCP.md "wikilink")的授权。

但是，由于Sun公司的态度，JCP并没有给Harmony授予TCK许可，而且SUN发布OpenJDK之后，还规定只有衍生自OpenJDK的采用GPL协议的开源实现才能运行OpenJDK的TCK\[2\]，

但Apache的Harmony是Apache协议的，与OpenJDK的GPLv2协议不兼容，Apache董事会和Harmony项目工作人员坚决反对这种带有条件的授权，认为这种是在开源社区里不可接受的。因此，两者谈判破裂。直到现在，Harmony一直没有获得TCK的授权。有批评称，Sun无视它签署的JCP法律协定，这摧毁了全部的信任。\[3\]

但该项目参与者依然认为，即使没有TCK，即无法“声称”自己兼容Sun的实现，他们依然可以做出一个好的产品并为业界所接受。

## 未来展望

Apache Harmony计划每2个月做一个milestone的build，并计划于今年正式发布一个5.0（即期望与Sun jdk 5.0兼容的）的发布版。

## 参考文献

## 外部链接

  -
{{-}}

[Category:Java虚拟机](https://zh.wikipedia.org/wiki/Category:Java虚拟机 "wikilink") [Category:Apache软件基金会](https://zh.wikipedia.org/wiki/Category:Apache软件基金会 "wikilink")

1.
2.
3.