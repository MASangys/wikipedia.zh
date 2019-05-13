[Java_virtual_machine_architecture.svg](https://zh.wikipedia.org/wiki/File:Java_virtual_machine_architecture.svg "fig:Java_virtual_machine_architecture.svg")

**Java虛擬機**（，縮寫為JVM），一種能夠執行[Java
bytecode的](../Page/Java_bytecode.md "wikilink")[虛擬機器](../Page/虛擬機器.md "wikilink")，以[堆疊結構機器來進行實做](../Page/堆疊結構機器.md "wikilink")。最早由[昇陽電腦所研發并实现第一个实现版本](../Page/昇陽電腦.md "wikilink")，是[Java平臺的一部份](../Page/Java平臺.md "wikilink")，能夠執行以[Java語言寫作的](../Page/Java.md "wikilink")[軟體](../Page/軟體.md "wikilink")[程式](../Page/程式.md "wikilink")。

Java虚拟机有自己完善的[硬体架构](../Page/硬体.md "wikilink")，如[处理器](../Page/处理器.md "wikilink")、[堆栈](../Page/堆栈.md "wikilink")、[寄存器等](../Page/寄存器.md "wikilink")，还具有相应的[指令系统](../Page/指令.md "wikilink")。JVM屏蔽了与具体[操作系统平台相关的信息](../Page/操作系统.md "wikilink")，使得Java[程序只需生成在Java虚拟机上运行的目标代码](../Page/程序.md "wikilink")（[字节码](../Page/字节码.md "wikilink")），就可以在多种平台上不加修改地运行。通过对中央处理器（[CPU](../Page/CPU.md "wikilink")）所执行的软件實作，实现能执行[编译过的Java程序码](../Page/编译.md "wikilink")（[Applet与应用程式](../Page/Applet.md "wikilink")）。

作为一种编程语言的虚拟机，实际上不只是专用于Java语言，只要生成的编译文件符合JVM对载入编译文件格式要求，任何语言都可以由JVM编译运行。此外，除了[甲骨文](../Page/甲骨文公司.md "wikilink")，也有其他开源或闭源的实现。

## 语言实现

由于JVM并不是专为Java所实现的运行时，实际上只要有其他编程语言的编译器能生成正确Java
bytecode文件，则这个语言也能实现在JVM上运行。

以下为原生就在JVM上实现运行的语言：

  - [BBj](../Page/BBj.md "wikilink")
  - [BeanShell](../Page/BeanShell.md "wikilink")
  - [Ceylon](../Page/Ceylon.md "wikilink")
  - [Clojure](../Page/Clojure.md "wikilink")
  - [Fantom](../Page/Fantom.md "wikilink")
  - [Groovy](../Page/Groovy.md "wikilink")
  - [Java](../Page/Java.md "wikilink")
  - [Kotlin](../Page/Kotlin.md "wikilink")
  - [MIDletPascal](../Page/MIDletPascal.md "wikilink")
  - [Scala](../Page/Scala.md "wikilink")
  - [Xtend](../Page/Xtend.md "wikilink")

以下为实现了相应的JVM编译器的语言及其编译（解释）器，意味着下列语言可以使用基于Java开发的编译器进行编译或解释：

  - [Erlang](../Page/Erlang.md "wikilink")：[Erjang](../Page/Erjang.md "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")：[Rhino](../Page/Rhino_\(JavaScript引擎\).md "wikilink")
  - [Pascal](../Page/Pascal.md "wikilink")：[Free
    Pascal](../Page/Free_Pascal.md "wikilink")
  - [PHP](../Page/PHP.md "wikilink")：
  - [Python](../Page/Python.md "wikilink")：[Jython](../Page/Jython.md "wikilink")
  - [REXX](../Page/REXX.md "wikilink")：[NetRexx](../Page/NetRexx.md "wikilink")
  - [Ruby](../Page/Ruby.md "wikilink")：[JRuby](../Page/JRuby.md "wikilink")
  - [Scheme](../Page/Scheme.md "wikilink")：
  - [Tcl](../Page/Tcl.md "wikilink")：[Jacl](../Page/Tcl/Java.md "wikilink")

## 注释

## 参考文献

## 外部链接

  - [Java虚拟机下载](http://java-virtual-machine.net/download.html)

## 参见

  - [虚拟机](../Page/虚拟机.md "wikilink")

{{-}}

[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")
[Category:Java虚拟机](https://zh.wikipedia.org/wiki/Category:Java虚拟机 "wikilink")
[Category:Java平台軟體](https://zh.wikipedia.org/wiki/Category:Java平台軟體 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")