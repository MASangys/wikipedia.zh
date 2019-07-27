**Java类加载器**（）是[Java运行时环境](https://zh.wikipedia.org/wiki/Java运行时环境 "wikilink")（Java
Runtime
Environment）的一部分，负责[动态加载](https://zh.wikipedia.org/wiki/动态加载 "wikilink")[Java类到](https://zh.wikipedia.org/wiki/Java类 "wikilink")[Java虚拟机](../Page/Java虚拟机.md "wikilink")的内存空间中。\[1\]类通常是[按需加载](../Page/惰性初始模式.md "wikilink")，即第一次使用该类时才加载。由于有了类加载器，Java运行时系统不需要知道文件与文件系统。学习类加载器时，掌握Java的委派概念很重要。

每个Java类必须由某个类加载器装入到内存。\[2\]Java程序可以利用外部库（即由其他作者编写的软件库）。

JVM中有3个默认的类加载器：\[3\]\[4\]

1.  引导（Bootstrap）类加载器。由原生代码（如C语言）编写，不继承自`java.lang.ClassLoader`。负责加载核心Java库\[5\]，存储在<JAVA_HOME>`/jre/lib`目录中。
2.  扩展（Extensions）类加载器。用来在<JAVA_HOME>`/jre/lib/ext`,\[6\]或`java.ext.dirs`中指明的目录中加载
    Java的扩展库。Java 虚拟机的实现会提供一个扩展库目录。该类加载器在此目录里面查找并加载 Java
    类。该类由`sun.misc.Launcher$ExtClassLoader`实现。
3.  Apps类加载器（也称系统类加载器）。根据
    Java应用程序的类路径（`java.class.path`或CLASSPATH环境变量）来加载
    Java 类。一般来说，Java 应用的类都是由它来完成加载的。可以通过
    ClassLoader.getSystemClassLoader()来获取它。该类由`sun.misc.Launcher$AppClassLoader`实现。

每个类装载器有一个父装载器（parent class loader）。

## User-defined class loaders

可以通过继承`java.lang.ClassLoader`类的方式实现自己的类加载器，以满足一些特殊的需求而不需要完全了解Java虚拟机的类加载的细节。

可用于：

  - 运行时装载或卸载类。这常用于：
      - 实现脚本语言
      - 用于[bean生成器](https://zh.wikipedia.org/wiki/JavaBean "wikilink")
      - 允许用户定义的
      - 允许[命名空间](../Page/命名空间.md "wikilink")之间的通信。这是[CORBA](../Page/CORBA.md "wikilink")
        / [RMI协议的基础](https://zh.wikipedia.org/wiki/Java_RMI "wikilink")。
  - 改变Java[字节码的装入](https://zh.wikipedia.org/wiki/字节码 "wikilink")，例如，可用于Java类字节码的加密装入。\[7\]).
  - 修改已装入的字节码[weaving](https://zh.wikipedia.org/wiki/Aspect_weaver "wikilink")
    of aspects when using [aspect-oriented
    programming](https://zh.wikipedia.org/wiki/aspect-oriented_programming "wikilink")).

## JEE的类装载

[Java EE](https://zh.wikipedia.org/wiki/Java_EE "wikilink")
（JEE）应用程序服务器典型地用树状的一组类装载器从已部署的WAR或EAR文档中装入类。这使得应用程序之间彼此隔离，但共享已部署模块。[servlet
container一般被实现为多个类装载器](../Page/Java_Servlet.md "wikilink")。\[8\]\[9\]

##  JAR地狱

## 参考文献

## 外部链接

  - Chuck McManis, "[The basics of Java class
    loaders](http://www.javaworld.com/jw-10-1996/jw-10-indepth.html)",
    1996
  - Brandon E. Taylor, "[Java Class Loading: The
    Basics](http://www.developer.com/java/other/article.php/2248831)",
    2003
  - Jeff Hanson, "[Take Control of Class Loading in
    Java](http://www.devx.com/Java/Article/31614)", 2006-06-01
  - Andreas Schaefer, "[Inside Class
    Loaders](http://www.onjava.com/pub/a/onjava/2003/11/12/classloader.html)",
    2003-11-12
  - Sheng Liang and Gilad Bracha, "[Dynamic class loading in the Java
    virtual machine](http://citeseer.ist.psu.edu/liang98dynamic.html)",
    In Proceedings of the 13th ACM Conference on Object-Oriented
    Programming, Systems, Languages, and Applications (OOPSLA'98), ACM
    SIGPLAN Notices, vol. 33, no. 10, ACM Press, 1998, pp. 36–44

<!-- end list -->

  - Dr. Christoph G. Jung, "[Classloaders Revisited
    Hotdeploy](http://www.roseindia.net/javatutorials/hotdeploy.shtml)",
    *Java Specialist Newsletter*, 2001-06-07
  - Don Schwarz, "[Managing Component Dependencies Using
    ClassLoaders](http://www.onjava.com/pub/a/onjava/2005/04/13/dependencies.html?page=1)",
    2005-04-13

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.

2.

3.

4.

5.  存储在[Jar文件中](https://zh.wikipedia.org/wiki/Jar文件 "wikilink")，如*rt.jar*,
    *core.jar*, *server.jar*等。

6.  <http://docs.oracle.com/javase/tutorial/ext/basics/load.html>

7.

8.
9.