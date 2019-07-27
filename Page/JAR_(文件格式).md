在[软件](../Page/软件.md "wikilink")领域，**JAR文件**（Java归档，）是一种[软件包](../Page/软件包格式.md "wikilink")[文件格式](https://zh.wikipedia.org/wiki/文件格式 "wikilink")，通常用于聚合大量的、相关的[元数据](../Page/元数据.md "wikilink")和资源（文本、图片等）文件到一个文件，以便分发Java平台[应用软件或](https://zh.wikipedia.org/wiki/应用软件 "wikilink")[库](../Page/函式庫.md "wikilink")。\[3\]\[1\]

JAR文件是一种，以[ZIP格式](../Page/ZIP格式.md "wikilink")构建，以`.jar`为[文件扩展名](../Page/文件扩展名.md "wikilink")。用户可以使用[JDK](../Page/JDK.md "wikilink")自带的jar命令创建或提取JAR文件。也可以使用其他`zip`压缩工具，不过压缩时zip文件头里的条目顺序很重要，因为[Manifest文件常需放在首位](https://zh.wikipedia.org/wiki/Manifest文件 "wikilink")。JAR文件内的文件名是Unicode文本。\[2\]

## 设计

一个JAR文件允许Java运行时高效地部署一组类和它们相关的资源。JAR文件中的元素可以被压缩，这样一来，在单个请求中下载整个应用程序，使得下载一个JAR文件比对构成一个Java应用的许多未压缩的文件单独下载更方便。包java.util.zip包含读写JAR文件的类。

JAR文件在路径META-INF/MANIFEST.MF下有一个可选的[Manifest文件](../Page/清单文件.md "wikilink")。Manifest文件中的条目定义这个JAR文件如何被使用。例如，类路径条目由其他JAR文件的绝对或相对路径的列表组成，用于指定在加载本JAR文件时同时加载的其他JAR文件。虽然旨在简化JAR的使用，但在实践中证明Manifest文件是非常脆弱的，因为入口点JAR在创建时依赖于所有相关的JAR的确切位置。一旦需要更改版本或库的位置，必需重建Manifest文件。

为了提取JAR文件的内容，用户可以使用任何标准的unzip解压缩软件，或者每个[Java虚拟机](../Page/Java虚拟机.md "wikilink")都带有的`jar`命令：“`jar
-xf foo.jar`”。

开发者可以对JAR文件进行[数字签名](https://zh.wikipedia.org/wiki/数字签名 "wikilink")。在这种情况下，签名信息成为嵌入的Manifest文件的一部分。JAR本身并没有被签名，而是归档内的每一个文件的校验和连同其名字作为签名，被记录在Manifest文件中。多个实体可能签署一个JAR文件，并在每次签名时改变这个JAR文件，虽然签署文件本身仍然有效。当Java运行时加载签名的JAR文件时，它可以验证签名并拒绝加载签名不匹配的类。Java运行时也支持“密封”的包（Sealed
Packages）。类加载器一旦成功装载密封包中的某个类后，其后加载的类必须是由同一实体签名，才被允许加载到同一个包。这可以防止恶意代码被插入到现有的软件包，以至于接触到包范围内的类和数据。

开发者可以对JAR文件进行[混淆](../Page/代码混淆.md "wikilink")，这样该JAR文件的用户无法得到关于该JAR文件所包含的代码的太多信息，并且能够压缩文件大小。这在空间受限的[嵌入式系统](../Page/嵌入式系统.md "wikilink")开发中很有用。

### 可执行JAR文件

一个可执行Java程序以及其使用的[库文件可以打包在一个JAR文件中](../Page/函式庫.md "wikilink")。

可执行的JAR文件中的Manifest文件用代码`Main-Class:
myPrograms.MyClass`指定了入口点类，注意要指明该类的路径（-cp参数将被忽略）。有些操作系统可以在点击后直接运行可执行JAR文件。而更典型的调用则是通过命令行执行“`java
-jar foo.jar`”。

在多数平台上可以使用封装器封装可执行JAR文件。例如，对于更喜欢使用Windows
[EXE的](https://zh.wikipedia.org/wiki/EXE "wikilink")[Microsoft
Windows用户而言](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，可以使用工具（如、、、[Nullsoft脚本安装系统等](https://zh.wikipedia.org/wiki/Nullsoft脚本安装系统 "wikilink")），将单个JAR文件转换为可执行文件。

## Manifest

在[Java平台中](../Page/Java平臺.md "wikilink"),
[Manifest文件是JAR归档中所包含的特殊文件](https://zh.wikipedia.org/wiki/Manifest文件 "wikilink")。\[3\]\[4\]Manifest文件被用来定义扩展或档案打包相关数据。Manifest文件是一个[元数据](../Page/元数据.md "wikilink")文件，它包含了不同部分中的数据。如果一个JAR文件被当作可执行文件，则其中的Manifest文件需要指出该程序的主类文件。通常Manifest文件的文件名为`MANIFEST.MF`。

通常Manifest文件都与Java档案相关，其他的情况比较少见。

## Apache Ant的Zip/JAR支持

在[Apache
Ant构建工具中有其自己的包](../Page/Apache_Ant.md "wikilink")——org.apache.tools.zip，用来读写Zip和JAR归档文件，并包括对[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")[文件系统](../Page/文件系统.md "wikilink")的支持。org.apache.tools.zip包发布在Apache软件基金会许可下，并被设计成在Ant之外使用。

## 相关格式

几种相关的文件格式建立在JAR格式的基础上：

  - [WAR](../Page/WAR_\(文件格式\).md "wikilink")
    （Web应用程序归档，)，也是一种Java归档，存储[XML](../Page/XML.md "wikilink")文件、Java类、[JSP](../Page/JSP.md "wikilink")和Web应用程序中的其他文件。

  - [RAR](https://zh.wikipedia.org/wiki/Java_EE连接器架构 "wikilink")（资源适配器归档，），这里不是指[RAR](../Page/RAR.md "wikilink")文件格式），也是一种Java归档，存储[XML](../Page/XML.md "wikilink")文件、Java类和[Java
    EE连接器架构](https://zh.wikipedia.org/wiki/Java_EE连接器架构 "wikilink")（JCA）应用中的其他文件。

  - （），是一种复合式Java归档文件，包含了[XML](../Page/XML.md "wikilink")文件、Java类和针对Java
    EE应用的其他Java归档文件，例如JAR、WAR和RAR。

  - [SAR](https://zh.wikipedia.org/wiki/SAR "wikilink")（），与EAR类似。它提供了`service.xml`文件和相应的JAR文件。

  - [APK](../Page/APK.md "wikilink")
    (Android应用程序包文件，）Java归档格式的一个变种，用于[Android](../Page/Android.md "wikilink")应用程序。\[5\]

## 参见

  - [JAR hell](https://zh.wikipedia.org/wiki/Java类加载器#JAR地狱 "wikilink")

  - [Open Packaging
    Conventions](https://zh.wikipedia.org/wiki/Open_Packaging_Conventions "wikilink")

  -
## 参考文献

## 外部链接

  - [JAR文件概览](http://download.oracle.com/javase/6/docs/technotes/guides/jar/jarGuide.html)
  - [JAR文件定义](http://download.oracle.com/javase/6/docs/technotes/guides/jar/jar.html)
  - [JAR文件的初始定义](http://www.cse.yorku.ca/tech/other/jdk1.2.1/docs/guide/jar/manifest.html)
  - [IBM
    developmentWorks：JAR文件揭密](http://www.ibm.com/developerworks/cn/java/j-jar/)

[Category:归档格式](https://zh.wikipedia.org/wiki/Category:归档格式 "wikilink")
[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink")

1.  [Java Archive (JAR)
    Files](http://java.sun.com/javase/6/docs/technotes/guides/jar/index.html)
2.  <http://download.java.net/jdk8/docs/technotes/guides/jar/jar.html#JAR_Index>

3.
4.
5.  [Android Developer's
    Guide](http://developer.android.com/guide/appendix/glossary.html)