[JvmSpec7.png](https://zh.wikipedia.org/wiki/File:JvmSpec7.png "fig:JvmSpec7.png") **Java虚拟机**（**Java Virtual Machine**，简称**JVM**）是可让计算机运行[Java程序及使用](../Page/Java平臺.md "wikilink")编译为[Java字节码](../Page/Java字节码.md "wikilink")程序的[虚拟机](../Page/虛擬機器.md "wikilink")。其最早由[昇陽電腦](../Page/昇陽電腦.md "wikilink")所研發并实现第一个实现版本，是[Java平臺](../Page/Java平臺.md "wikilink")的一部份。Java虚拟机的具体实现细节通过指定，这确保了不同实现上运行相同Java程序的互用性，同时让使用[Java开发工具包](../Page/JDK.md "wikilink")（JDK）的开发者不必担心硬件平台的问题。

[OpenJDK](../Page/OpenJDK.md "wikilink")开发了一款[开放源代码的Java虚拟机](../Page/开源软件.md "wikilink")，同时内附一款名为[HotSpot](../Page/HotSpot.md "wikilink")的[即时编译器](../Page/即時編譯.md "wikilink")。用户亦可从[甲骨文公司](../Page/甲骨文公司.md "wikilink")下载其基于OpenJDK运行时的Java版本，并获取技术支持。Eclipse 是另一款适用于OpenJDK的开源Java虚拟机。

## 技术规范

据技术规范所述，Java虚拟机是一部抽象（虚拟）的计算机。但技术规范未定义使用的垃圾回收算法及优化Java虚拟机指令的内部算法，这主要是为了不给实现者带来过多困扰与限制。所有的Java程序仅可在对Java虚拟机的抽象技术规范的具体实现环境中才可运行。\[1\]

自[Java平台标准版](https://zh.wikipedia.org/wiki/Java_SE "wikilink")（J2SE）5.0起，Java虚拟机的技术规范改为由[Java社区流程开发制定](../Page/JCP.md "wikilink")（JSR 924）。\[2\]2006年，JSR 924对技术规范进行了变更，支持更改的提议（JSR 202）\[3\]。Java虚拟机的技术细节以蓝皮书\[4\]的形式发布，其前言称：

甲骨文公司的一款Java虚拟机名为[HotSpot](../Page/HotSpot.md "wikilink")；另一款自[BEA Systems继承而来的名为](https://zh.wikipedia.org/wiki/BEA_Systems "wikilink")[JRockit](../Page/JRockit.md "wikilink")。[净室设计](../Page/净室设计.md "wikilink")版Java实现有、及[Skelmir's CEE-J](https://skelmir.com)。甲骨文公司拥有Java商标权，且可能将其用于认证其他实现是否能完全匹配甲骨文的技术规范。

### 类加载器

Java字节码的组织单位之一是类。类加载器实现必须识别并加载任何为Java类格式的文件。任何实现也可识别其他二进制文件，但必须识别类文件。

类加载器以下列严格顺序执行三个基础任务：

1.  加载：寻找并导入特定类型的二进制数据；
2.  链接：执行验证、准备及（可选）解析操作；
      - 验证：确保导入类型的正确性。
      - 准备：为类变量分配内存并初始化内存为默认值。
      - 解析：将类型的符号引用转化为直接引用。
3.  初始化：调用初始化类变量至正确起始值的Java代码。

通常而言，共有两种类加载器类型：引导类加载器（Bootstrap Class Loader）及用户定义类加载器（User Defined Class Loader）。

每款Java虚拟机实现均必须有加载受信类的引导类加载器。Java虚拟机技术规范不对类加载器寻找类的方式作出指定。

### 虚拟机架构

Java虚拟机以原始值（整数及浮点数）及[引用的方式运行](../Page/參照.md "wikilink")，其本质上是一个32位的机器。64位的`long`和`double`类型数据被原生支持，但需要在帧的局部变量或操作数栈中占用两个存储单元（单个单元为32位）。`boolean`、`byte`、`short`及`char`均为[符号扩充](../Page/符号扩充.md "wikilink")类型（`char`使用[零扩展](https://zh.wikipedia.org/wiki/符号扩充#零扩展 "wikilink")），且以32位整数的形式（与`int`类型相同）运作。较小的数据类型仅有少量用于载入、存储于类型转换的特定指令。`boolean`类型被视为8位`byte`值，0代表`false`，1代表`true`。（虽然《Java虚拟机规范第二版》阐明`boolean`被认为是一种数据类型，但除[类型特征的](https://zh.wikipedia.org/wiki/类型特征 "wikilink")[名字修饰](../Page/名字修饰.md "wikilink")及boolean数组类型外`boolean`和`byte`无太大区别。`boolean`类型的方法签名为`Z` 而`byte`的类型签名为`B`。布尔型数组搭载数据类型`boolean[]`，但每个元素使用8个字节，同时Java虚拟机不内置将布尔数据包装成的功能，除此之外其与`byte`数组大同小异。在其他用途中，Java虚拟机实际上不知道`boolean`类型，因为用于操作布尔型数据的指令与操作`byte`的指令完全相同。）

Java虚拟机拥有用于存储对象及数组的[垃圾回收堆](../Page/垃圾回收_\(計算機科學\).md "wikilink")。代码、常量及其他类数据均存储于“方法区”中。方法区逻辑上是堆的一部分，但虚拟机的实现可能会区分两者，从而可能不对方法区进行垃圾回收。每个Java虚拟机线程均有其自己的[调用栈](https://zh.wikipedia.org/wiki/调用栈 "wikilink")（Java虚拟机栈），用于存储[帧](../Page/呼叫堆疊.md "wikilink")。当调用方法时，Java虚拟机将新建一个帧；方法退出时，帧将自动消除。

每帧均提供一个“操作数栈”及一个“局部变量”数组。操作数栈用于计算操作数和接收被调用方法的返回值，而局部变量与寄存器的用途相同，也用于传递方法参数。故Java虚拟机既是[堆栈机器](https://zh.wikipedia.org/wiki/堆疊結構機器 "wikilink")，也是[寄存器机](../Page/寄存器机.md "wikilink")。

### 字节码指令

Java虚拟机拥有进行下列任务的[指令集](../Page/指令集架構.md "wikilink")：

指令集存在的目的是为了保证二进制文件的兼容性。每个独立宿主[操作系统](../Page/操作系统.md "wikilink")需要对Java虚拟机及运行时环境的不同实现。这些Java虚拟机以相同方式语义解析字节码，但具体实现可能有所不同。比模拟字节码更复杂的是在兼容且高效的情况下实现必须映射至不同的宿主操作系统的。

上述指令集通过操作共同的执行命令，而非以使用特定[指令集架构的](../Page/指令集架構.md "wikilink")[原生数据类型的方式运行](../Page/資料類型.md "wikilink")。

### Java虚拟机语言

Java虚拟机语言是指使用Java虚拟机托管的有效类文件来表示功能的任意编程语言。类文件中含有Java虚拟机指令集（[Java字节码](../Page/Java字节码.md "wikilink")）、符号表及其他辅助信息。类文件是用于表达编译后的类及接口的二进制格式，与硬件及操作系统无关。\[5\]

市面上有多种Java虚拟机语言，既有移植至Java虚拟机的旧语言，也有全新的语言。[JRuby](../Page/JRuby.md "wikilink")及[Jython](../Page/Jython.md "wikilink")可能为最知名的移植语言之二；除此之外，也有从零编写的全新语言，如热门的[Clojure](../Page/Clojure.md "wikilink")、[Apache Groovy](../Page/Groovy.md "wikilink")、[Scala](../Page/Scala.md "wikilink")及[Kotlin](../Page/Kotlin.md "wikilink")。Java虚拟机语言的一大显著特征是都，举例来说，Scala库可与Java程序互用，反之亦然。\[6\]

Java 7虚拟机在Java平台上实现了《JSR 292：动态类型语言支持》\[7\]。此特性由项目开发完成，其目的旨在延伸Java虚拟机的功能，进而支持除Java外的其他语言。\[8\]\[9\]

### 字节符验证器

Java语言的基本哲学是让用户程序无法使得宿主机崩溃或干扰宿主机上的其他操作，且就算在相同的Java虚拟机内运行不受信的代码，也无法访问或更改其他程序中的特定方法或数据结构。除此之外，导致数据出错或不可预测行为的常见程序错误（如数组越界或使用未初始化的指针）均不允许发生。Java语言的多个特性组合起来为用户及开发者提供安全保证，包括类模型、垃圾回收[堆及验证器](https://zh.wikipedia.org/wiki/#分代堆 "wikilink")。

Java虚拟机在执行所有的字节码前都将进行下列主要三种类型的验证操作：

  - 确保分支始终指向有效位置
  - 确保数据总是被初始化且引用均类型安全
  - 确保对私有类型或包内私有数据及方法的访问被严格控制

上述的前两个检查将在加载类以供用户使用时发生。第三个流程将在数据项或方法首次被其他类访问时动态检查。

验证器仅允许有效程序中的部分字节码序列执行（如[跳跃（分支）指令仅允许对相同](https://zh.wikipedia.org/wiki/分支_\(計算機科學\) "wikilink")[方法内的指令使用](../Page/方法_\(電腦科學\).md "wikilink")）。另外，验证器确保每个指令均处于固定的堆位置，\[10\]即时编译编译器则能转化堆访问至固定的寄存器访问。由于这点，Java虚拟机自身的堆架构并不意味着使用即时编译编译器模拟[寄存器机](../Page/寄存器机.md "wikilink")就会影响程序速度。在经代码验证的Java虚拟机架构上，无论是虚拟寄存器还是必须被分配至目标架构寄存器的虚拟堆位置，对即时编译器而言都一概而论。就实际而言，代码验证是将Java虚拟机与经典堆架构区分开来的一大特性，其本身使用的即时编译器的高效仿真更加复杂，解释器效率也更低。

The original specification for the bytecode verifier used natural language that was incomplete or incorrect in some respects. A number of attempts have been made to specify the JVM as a formal system. By doing this, the security of current JVM implementations can more thoroughly be analyzed, and potential security exploits prevented. It will also be possible to optimize the JVM by skipping unnecessary safety checks, if the application being run is proven to be safe.\[11\]

#### Secure execution of remote code

A virtual machine architecture allows very fine-grained control over the actions that code within the machine is permitted to take. It assumes the code is "semantically" correct, that is, it successfully passed the (formal) bytecode verifier process, materialized by a tool, possibly off-board the virtual machine. This is designed to allow safe execution of untrusted code from remote sources, a model used by [Java applets](../Page/Java_applet.md "wikilink"), and other secure code downloads. Once bytecode-verified, the downloaded code runs in a restricted "[sandbox](../Page/沙盒_\(電腦安全\).md "wikilink")", which is designed to protect the user from misbehaving or malicious code. As an addition to the bytecode verification process, publishers can purchase a certificate with which to [digitally sign](../Page/數位簽章.md "wikilink") applets as safe, giving them permission to ask the user to break out of the sandbox and access the local file system, [clipboard](../Page/剪贴板.md "wikilink"), execute external pieces of software, or network.

Formal proof of bytecode verifiers have been done by the Javacard industry (Formal Development of an Embedded Verifier for Java Card Byte Code\[12\])

### Bytecode interpreter and just-in-time compiler

For each  a different Java bytecode [interpreter](../Page/直譯器.md "wikilink") is needed. When a computer has a Java bytecode interpreter, it can run any Java bytecode program, and the same program can be run on any computer that has such an interpreter.

When Java bytecode is executed by an interpreter, the execution will always be slower than the execution of the same program compiled into native machine language. This problem is mitigated by [just-in-time (JIT) compilers](../Page/即時編譯.md "wikilink") for executing Java bytecode. A JIT compiler may translate Java bytecode into native machine language while executing the program. The translated parts of the program can then be executed much more quickly than they could be interpreted. This technique gets applied to those parts of a program frequently executed. This way a JIT compiler can significantly speed up the overall execution time.

There is no necessary connection between the Java programming language and Java bytecode. A program written in Java can be compiled directly into the machine language of a real computer and programs written in other languages than Java can be compiled into Java bytecode.

Java bytecode is intended to be platform-independent and secure.\[13\] Some JVM implementations do not include an interpreter, but consist only of a just-in-time compiler.\[14\]

## JVM in the web browser

At the start of the Java platform's lifetime, the JVM was marketed as a web technology for creating [Rich Internet Applications](../Page/丰富互联网应用程序.md "wikilink"). , most web browsers and [operating systems](../Page/操作系统.md "wikilink") bundling web browsers do not ship with a Java [plug-in](../Page/插件.md "wikilink"), nor do they permit side-loading any non-[Flash](../Page/Adobe_Flash.md "wikilink") plug-in. The Java browser plugin was deprecated in [JDK](../Page/JDK.md "wikilink") 9.\[15\]

The [NPAPI](../Page/NPAPI.md "wikilink") Java browser plug-in was designed to allow the JVM to execute so-called [Java applets](../Page/Java_applet.md "wikilink") embedded into HTML pages. For browsers with the plug-in installed, the applet is allowed to draw into a rectangular region on the page assigned to it. Because the plug-in includes a JVM, Java applets are not restricted to the Java programming language; any language targeting the JVM may run in the plug-in. A restricted set of APIs allow applets access to the user's microphone or 3D acceleration, although applets are not able to modify the page outside its rectangular region. [Adobe Flash Player](../Page/Adobe_Flash_Player.md "wikilink"), the main competing technology, works in the same way in this respect.

according to W3Techs, Java applet and [Silverlight](https://zh.wikipedia.org/wiki/Microsoft_Silverlight "wikilink") use had fallen to 0.1% each for all web sites, while Flash had fallen to 10.8%.\[16\]

### JavaScript JVMs and interpreters

As of May 2016,  allows users to import unmodified Java libraries, and invoke them directly from JavaScript. JavaPoly allows websites to use unmodified Java libraries, even if the user does not have Java installed on their computer.\[17\]

### Compilation to JavaScript

With the continuing improvements in JavaScript execution speed, combined with the increased use of mobile devices whose web browsers do not implement support for plugins, there are efforts to target those users through compilation to JavaScript. It is possible to either compile the source code or JVM bytecode to JavaScript.

Compiling the JVM bytecode, which is universal across JVM languages, allows building upon the language's existing compiler to bytecode. The main JVM bytecode to JavaScript compilers are TeaVM,\[18\] the compiler contained in Dragome Web SDK,\[19\] Bck2Brwsr,\[20\] and j2js-compiler.\[21\]

Leading compilers from JVM languages to JavaScript include the Java-to-JavaScript compiler contained in [Google Web Toolkit](../Page/Google網頁工具包.md "wikilink"), Clojurescript ([Clojure](../Page/Clojure.md "wikilink")), GrooScript ([Apache Groovy](../Page/Groovy.md "wikilink")), [Scala](../Page/Scala.md "wikilink").js (Scala) and others.\[22\]

## Java Runtime Environment

The Java Runtime Environment (JRE) released by Oracle is a freely available software distribution containing a stand-alone JVM ([HotSpot](../Page/HotSpot.md "wikilink")), the Java [standard library](../Page/标准库.md "wikilink") (), a configuration tool, and—until its discontinuation in JDK 9—a browser plug-in. It is the most common Java environment installed on [personal computers](../Page/个人电脑.md "wikilink") in the laptop and desktop . [Mobile phones](../Page/移动电话.md "wikilink") including [feature phones](../Page/功能型手機.md "wikilink") and early [smartphones](../Page/智能手机.md "wikilink") that ship with a JVM are most likely to include a JVM meant to run applications targeting [Micro Edition](../Page/Java_ME.md "wikilink") of the Java platform. Meanwhile, most modern smartphones, [tablet computers](../Page/平板電腦.md "wikilink"), and other s that run Java apps are most likely to do so through support of the [Android operating system](../Page/Android.md "wikilink"), which includes an [open source](../Page/开源软件.md "wikilink") virtual machine incompatible with the JVM specification. (Instead, [Google](../Page/Google.md "wikilink")'s Android development tools take Java programs as input and output [Dalvik](../Page/Dalvik虚拟机.md "wikilink") bytecode, which is the native input format for the virtual machine on Android devices.)

### Performance

The JVM specification gives a lot of leeway to implementors regarding the implementation details. Since Java 1.3, JRE from Oracle contains a JVM called HotSpot. It has been designed to be a high-performance JVM.

To speed-up code execution, HotSpot relies on just-in-time compilation. To speed-up object allocation and garbage collection, HotSpot uses generational heap.

### Generational heap

The *Java virtual machine heap* is the area of memory used by the JVM for [dynamic memory allocation](../Page/記憶體管理.md "wikilink").\[23\]

In HotSpot the heap is divided into *generations*:

  - The *young generation* stores short-lived [objects](https://zh.wikipedia.org/wiki/对象_\(计算机科学\) "wikilink") that are created and immediately [garbage collected](../Page/垃圾回收_\(計算機科學\).md "wikilink").
  - Objects that persist longer are moved to the *old generation* (also called the *tenured generation*). This memory is subdivided into (two) Survivors spaces where the objects that survived the first and next garbage collections are stored.

The *permanent generation* (or *permgen*) was used for  definitions and associated metadata prior to Java 8. Permanent generation was not part of the heap.\[24\]\[25\] The *permanent generation* was removed from Java 8.\[26\]

Originally there was no permanent generation, and objects and classes were stored together in the same area. But as class unloading occurs much more rarely than objects are collected, moving class structures to a specific area allowed significant performance improvements.\[27\]

### Security

Oracle's JRE is installed on a large number of computers. End users with an out-of-date version of JRE therefore are vulnerable to many known attacks. This led to the widely shared belief that Java is inherently insecure.\[28\] Since Java 1.7, Oracle's JRE for Windows includes automatic update functionality.

Before the discontinuation of the Java browser plug-in, any web page might have potentially run a Java applet, which provided an easily accessible [attack surface](../Page/攻击表面.md "wikilink") to malicious web sites. In 2013 Kaspersky Labs reported that the Java plug-in was the method of choice for computer criminals. Java exploits are included in many exploit packs that hackers deploy onto hacked web sites.\[29\] Java applet is removed from Java 11 launched on September 25th 2018.

## See also

  -
  -
  -
  -
  -
  -
  -
  - [Common Language Runtime](../Page/通用語言運行庫.md "wikilink")

## 脚注

## References

  - *[Clarifications and Amendments to the Java Virtual Machine Specification, Second Edition](http://java.sun.com/docs/books/vmspec/2nd-edition/jvms-clarify.html)* includes list of changes to be made to support J2SE 5.0 and JSR 45
  - [JSR 45](http://www.jcp.org/en/jsr/detail?id=45), specifies changes to the class file format to support source-level debugging of languages such as [JavaServer Pages](../Page/JSP.md "wikilink") (JSP) and  that are translated to Java

## External links

  - [The Java Virtual Machine Specification](http://docs.oracle.com/javase/specs/jvms/se7/html/index.html)
  - [How to download and install prebuilt OpenJDK packages](http://openjdk.java.net/install/)
  - [How to Install Java? (JRE from Oracle)](https://java.com/en/download/help/download_options.xml)

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink") [Category:Java平台軟體](https://zh.wikipedia.org/wiki/Category:Java平台軟體 "wikilink") [Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink") [Category:Java虚拟机](https://zh.wikipedia.org/wiki/Category:Java虚拟机 "wikilink") [Category:基于堆栈的虚拟机](https://zh.wikipedia.org/wiki/Category:基于堆栈的虚拟机 "wikilink")

1.  Bill Venners, *[Inside the Java Virtual Machine](http://www.artima.com/insidejvm/ed2/index.html)* Chapter 5
2.
3.
4.  *[The Java Virtual Machine Specification](http://java.sun.com/docs/books/vmspec/)* (the [first](http://java.sun.com/docs/books/vmspec/html/VMSpecTOC.doc.html) and [second](http://java.sun.com/docs/books/vmspec/2nd-edition/html/VMSpecTOC.doc.html) editions are also available online).
5.
6.
7.
8.
9.
10.
11.
12. <http://www-sop.inria.fr/everest/Lilian.Burdy/CBR02dsn.pdf>
13. David J. Eck, *[Introduction to Programming Using Java](http://math.hws.edu/javanotes/c1/s3.html)*, Seventh Edition, Version 7.0, August 2014 at Section 1.3 "The Java Virtual Machine"
14. *[Oracle JRockit Introduction](http://docs.oracle.com/cd/E15289_01/doc.40/e15058/underst_jit.htm)* Release R28 at 2. "Understanding Just-In-Time Compilation and Optimization"
15.
16.
17.
18.
19.
20.
21. Wolfgang Kuehn (decatur). [j2js-compiler](https://github.com/decatur/j2js-compiler) GitHub
22.
23.
24.
25.
26.
27.
28.
29.