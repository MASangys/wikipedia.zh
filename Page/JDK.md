> 本文内容由[JDK](https://zh.wikipedia.org/wiki/JDK)转换而来。


**Java Development Kit**（**JDK**）是[昇陽電腦](../Page/昇陽電腦.md "wikilink")针对[Java](../Page/Java.md "wikilink")开发人员发布的免费[软件开发工具包](../Page/软件开发工具包.md "wikilink")（SDK，Software development kit）。自从Java推出以来，JDK已经成为使用最广泛的Java SDK。由于JDK的一部分特性采用商业许可证，而非开源\[1\]。因此，2006年昇陽電腦宣布将发布基于[GPL的开源JDK](https://zh.wikipedia.org/wiki/GPL "wikilink")，使JDK成为[自由软件](../Page/自由软件.md "wikilink")。在去掉了少量闭源特性之后，昇陽電腦最终促成了[GPL的](https://zh.wikipedia.org/wiki/GPL "wikilink")[OpenJDK](../Page/OpenJDK.md "wikilink")的发布。

## 用途

作为Java语言的SDK，普通用户并不需要安装JDK来运行Java程序，而只需要安装[JRE](../Page/JRE.md "wikilink")（Java Runtime Environment）。而程序开发者必须安装JDK来编译、调试程序。

## 包含组件

JDK包含了一批用于Java开发的组件，其中包括：

  - [javac](https://zh.wikipedia.org/wiki/javac "wikilink")：[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")，将[后缀名为](https://zh.wikipedia.org/wiki/后缀名 "wikilink").java的[源代码](../Page/源代码.md "wikilink")编译成后缀名为「.class」的[字节码](https://zh.wikipedia.org/wiki/字节码 "wikilink")
  - java：运行工具，运行.class的字节码
  - [jar](https://zh.wikipedia.org/wiki/jar "wikilink")：打包工具，将相关的类文件打包成一个文件
  - [javadoc](https://zh.wikipedia.org/wiki/javadoc "wikilink")：[文档生成器](https://zh.wikipedia.org/wiki/文档 "wikilink")，从源码[注释中提取文档](https://zh.wikipedia.org/wiki/注释 "wikilink")，注释需符合规范
  - jdb debugger：[调试工具](../Page/调试工具.md "wikilink")
  - jps：显示当前java程序运行的[进程状态](https://zh.wikipedia.org/wiki/进程 "wikilink")
  - javap：[反编译程序](https://zh.wikipedia.org/wiki/反編譯器 "wikilink")
  - appletviewer：运行和调试[applet程序的工具](https://zh.wikipedia.org/wiki/applet "wikilink")，不需要使用[浏览器](https://zh.wikipedia.org/wiki/浏览器 "wikilink")
  - javah：从Java类生成C[头文件](../Page/头文件.md "wikilink")和C源文件。这些文件提供了连接胶合，使Java和C代码可进行交互。\[2\]
  - javaws：运行[JNLP程序](https://zh.wikipedia.org/wiki/JNLP "wikilink")
  - extcheck：一个检测jar包冲突的工具
  - apt：注释处理工具\[3\]
  - jhat：java[堆分析工具](https://zh.wikipedia.org/wiki/堆 "wikilink")
  - jstack：[栈跟踪程序](https://zh.wikipedia.org/wiki/栈 "wikilink")
  - jstat：[JVM检测统计工具](https://zh.wikipedia.org/wiki/JVM "wikilink")
  - jstatd：jstat[守护进程](../Page/守护进程.md "wikilink")
  - jinfo：获取正在运行或崩溃的java程序配置信息
  - jmap：获取java进程内存映射信息
  - idlj：[IDL](https://zh.wikipedia.org/wiki/IDL "wikilink")-to-Java编译器。将[IDL语言转化为java文件](https://zh.wikipedia.org/wiki/IDL "wikilink")\[4\]
  - policytool：一个[GUI的](https://zh.wikipedia.org/wiki/GUI "wikilink")[策略文件创建和管理工具](https://zh.wikipedia.org/wiki/策略文件 "wikilink")
  - jrunscript：[命令行](https://zh.wikipedia.org/wiki/命令行 "wikilink")[脚本运行](https://zh.wikipedia.org/wiki/脚本 "wikilink")

JDK中还包括完整的JRE（Java Runtime Environment），Java运行环境，也被称为*private* runtime。包括了用于产品环境的各种库类，如基础类库rt.jar，以及给开发人员使用的补充库，如[国际化与本地化](../Page/国际化与本地化.md "wikilink")的[类库](https://zh.wikipedia.org/wiki/类库 "wikilink")、[IDL库等等](https://zh.wikipedia.org/wiki/IDL "wikilink")。

JDK中还包括各种[样例程序](https://zh.wikipedia.org/wiki/样例程序 "wikilink")，用以展示[Java API中的各部分](https://zh.wikipedia.org/wiki/Java_API "wikilink")。

## 系统需求

无论[Linux](../Page/Linux.md "wikilink")、[Windows或者](https://zh.wikipedia.org/wiki/Windows "wikilink")[Mac OS系统](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")，JDK均有[X86](../Page/X86.md "wikilink")与[X64甚至](https://zh.wikipedia.org/wiki/X64 "wikilink")[安腾](../Page/安腾.md "wikilink")架构的发行版本。且均为多语言发行，即根据系统语言的不同自动显示不同语言的信息。

## 版本

自JDK 5.0起，Java以两种方式发布更新\[5\]：

  - Limited Update包含新功能和非安全修正，版本号是20的倍数
  - Critical Patch Updates（CPUs）只包含安全修正，版本号将是上一个Limited Update版本号加上五的倍数后的奇数。

Java SE 7 Update 71之後則以雙版本發布：

  - 重要補丁更新（Critical Patch Update）
  - 補丁集更新（Patch Set Update）

Oracle建議只有在當次PSU版有修正使用者遇到的特定問題時才安裝該PSU版\[6\]。

## 参见

  - [软件开发工具包](../Page/软件开发工具包.md "wikilink") (SDK)

## 参考文献

<references/>

## 外部連結

  - [New to Java Programming Center](http://Java.Sun.com/new2java/index.jsp)
  - [OpenJDK](http://OpenJDK.Java.net/)
  - [Java SE Downloads](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

{{-}}

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:程序设计工具](https://zh.wikipedia.org/wiki/Category:程序设计工具 "wikilink")

1.
2.
3.
4.
5.
6.