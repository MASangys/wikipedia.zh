在编程领域，**JNI** （**Java Native
Interface,Java本地接口**）是一种[编程框架](https://zh.wikipedia.org/wiki/编程框架 "wikilink")，使得[Java虚拟机中的](../Page/Java虚拟机.md "wikilink")[Java程序可以调用本地应用](../Page/Java.md "wikilink")/或库，也可以被其他程序调用。
本地程序一般是用其它语言（[C](https://zh.wikipedia.org/wiki/C语言 "wikilink")、[C++或](../Page/C++.md "wikilink")[汇编语言等](../Page/汇编语言.md "wikilink")）编写的，并且被编译为基于本机硬件和操作系统的程序。\[1\]

## 设计目的和功能

JNI允许程序员用其他编程语言来解决用纯粹的Java代码不好处理的情况，例如，Java标准库不支持的平台相关功能或者程序库。也用于改造已存在的用其它语言写的程序，供Java程序调用。许多基于JNI的标准库提供了很多功能给程序员使用，例如文件I/O、音频相关的功能。当然，也有各种高性能的程序，以及平台相关的API实现，允许所有Java应用程序安全并且平台独立地使用这些功能。

JNI框架允许Native方法调用Java对象，就像Java程序访问Native对象一样方便。Native方法可以创建Java对象，读取这些对象，并调用Java对象执行某些方法。当然Native方法也可以读取由Java程序自身创建的对象，并调用这些对象的方法。

## 诱惑与陷阱

  - 在使用JNI的过程中，可能因为某些微小的BUG，对整个JVM造成很难重现和调试的错误。
  - 仅有应用程序与签名的applet可以调用JNI。
  - 依赖于JNI的应用失去了Java的平台移植性（一种解决办法是为每个平台编写专门的JNI代码，然后在Java代码中，根据操作系统载入正确的JNI代码）。
  - JNI框架并没有对 non-JVM
    内存提供自动垃圾回收机制，Native代码（如汇编语言）分配的内存和资源，需要其自身负责进行显式的释放。
  - [Linux与](../Page/Linux.md "wikilink")[Solaris平台](../Page/Solaris.md "wikilink")，如果Native代码将自身注册为信号处理器（signal
    handler），就会拦-{截}-发给JVM的[信号](https://zh.wikipedia.org/wiki/信号_\(计算机科学\) "wikilink")。可以使用
    [责任链模式](../Page/责任链模式.md "wikilink") 让 Native代码更好地与JVM进行交互。\[2\]
  - Windows平台上，在SEH
    try/catch块中可以将[结构化异常处理](../Page/结构化异常处理.md "wikilink")（SEH）用来包装Native代码，以捕获机器（CPU/[FPU](https://zh.wikipedia.org/wiki/FPU "wikilink")）生成的软中断（例如：[空指针异常](https://zh.wikipedia.org/wiki/NullPointerException "wikilink")、被除数为0等），将这些中断在传播到JVM（中的Java代码）之前进行处理，以免造成未捕获的异常。
  - NewStringUTF、GetStringUTFLength、GetStringUTFChars、ReleaseStringUTFChars與
    GetStringUTFRegion等编码函数处理的是一种修改的UTF-8，\[3\]，实际上是一种不同的编码，某些字符并不是标准的[UTF-8](../Page/UTF-8.md "wikilink")。
    null字符（U+0000）以及不在[Unicode字符平面映射中的字符](https://zh.wikipedia.org/wiki/Unicode字符平面映射 "wikilink")（codepoints
    大于等于 U+10000 的字符，例如UTF-16中的代理对 surrogate pairs），在修改的UTF-8中的编码都有所不同。
    许多程序错误地使用了这些函数，将标准UTF-8字符串传入或传出这些函数，实际上应该使用修改后的编码。程序应当先使用NewString、GetStringLength、GetStringChars、ReleaseStringChars、GetStringRegion、GetStringCritical与ReleaseStringCritical等函数，这些函数在[小尾序机器上使用](../Page/字节序.md "wikilink")[UTF-16LE编码](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")，在[大尾序机器上使用](../Page/字节序.md "wikilink")[UTF-16BE编码](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")，然后再通过程序将
    [UTF-16转换为](https://zh.wikipedia.org/wiki/UTF-16 "wikilink") UTF-8。
  - JNI在某些情况下可能带来很大的开销和性能损失：\[4\]
      - 调用 JNI 方法是很笨重的操作，特别是在多次重复调用的情况下。
      - Native 方法不会被 JVM 内联，也不会被 [即時編譯](../Page/即時編譯.md "wikilink") 优化
        ，因为方法已经被编译过了。
      - Java 数组可能会被拷贝一份，以传递给 native 方法，执行完之后再拷贝回去. 其开销与数组的长度是线性相关的。
      - 如果传递一个对象给方法，或者需要一个回调，那么 Native 方法可能会自己调用JVM。
        访问Java对象的属性、方法和类型时，Native代码需要类似[反射的东西](../Page/反射_\(计算机科学\).md "wikilink")。签名由字符串指定，通常从JVM中查询。这非常缓慢并且容易出错。
      - Java 中的字符串（String） 也是对象，有 length 属性，并且是编码过的.
        读取或者创建字符串都需要一次时间复杂度为
        O(n) 的复制操作.

## JNI如何工作

在JNI框架，本地函数一般在单独的.c或.cpp文件中实现。当JVM调用这些函数，就传递一个`JNIEnv`指针，一个`jobject`的指针，任何在Java方法中声明的Java参数。一个JNI函数看起来类似这样：

``` c
JNIEXPORT void JNICALL Java_ClassName_MethodName
  (JNIEnv *env, jobject obj)
{
    /*Implement Native Method Here*/
}
```

*`env`*指向一个[结构包含了到JVM的界面](https://zh.wikipedia.org/wiki/结构 "wikilink")，包含了所有必须的函数与JVM交互、访问Java对象。例如，把本地数组转换为Java数组的JNI函数，把本地字符串转换为Java字符串的JNI函数，实例化对象，抛出异常等。基本上，Java程序可以做的任何事情都可以用`JNIEnv`做到，虽然相当不容易。

例如，下面代码把Java字符串转化为本地字符串：

``` cpp
//C++ code
extern "C"
JNIEXPORT void JNICALL Java_ClassName_MethodName
  (JNIEnv *env, jobject obj, jstring javaString)
{
    //Get the native string from javaString
    const char *nativeString = env->GetStringUTFChars(javaString, 0);

    //Do something with the nativeString

    //DON'T FORGET THIS LINE!!!
    env->ReleaseStringUTFChars(javaString, nativeString);
}
```

``` c
/*C code*/
JNIEXPORT void JNICALL Java_ClassName_MethodName
  (JNIEnv *env, jobject obj, jstring javaString)
{
    /*Get the native string from javaString*/
    const char *nativeString = (*env)->GetStringUTFChars(env, javaString, 0);

    /*Do something with the nativeString*/

    /*DON'T FORGET THIS LINE!!!*/
    (*env)->ReleaseStringUTFChars(env, javaString, nativeString);
}
```

``` objc
/*Objective-C code*/
JNIEXPORT void JNICALL Java_ClassName_MethodName
  (JNIEnv *env, jobject obj, jstring javaString)
{
    /*DON'T FORGET THIS LINE!!!*/
    JNF_COCOA_ENTER(env);

    /*Get the native string from javaString*/
    NSString* nativeString = JNFJavaToNSString(env, javaString);

    /*Do something with the nativeString*/

    /*DON'T FORGET THIS LINE!!!*/
    JNF_COCOA_EXIT(env);
}
```

本地[数据类型与Java数据类型可以互相映射](https://zh.wikipedia.org/wiki/数据类型 "wikilink")。对于复合数据类型，如对象，数组，字符串，就必须用`JNIEnv`中的方法来显示地转换。

第2个参数*obj*引用到一个Java对象，在其中声明了本地方法。

### 类型映射

下表是Java (JNI)与本地代码之间的数据类型映射：

<table>
<thead>
<tr class="header">
<th><p>本地类型</p></th>
<th><p>Java语言的类型</p></th>
<th><p>描述</p></th>
<th><p>类型签名（signature）</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>unsigned char</p></td>
<td><p>jboolean</p></td>
<td><p>unsigned 8 bits</p></td>
<td><p>Z</p></td>
</tr>
<tr class="even">
<td><p>signed char</p></td>
<td><p>jbyte</p></td>
<td><p>signed 8 bits</p></td>
<td><p>B</p></td>
</tr>
<tr class="odd">
<td><p>unsigned short</p></td>
<td><p>jchar</p></td>
<td><p>unsigned 16 bits</p></td>
<td><p>C</p></td>
</tr>
<tr class="even">
<td><p>short</p></td>
<td><p>jshort</p></td>
<td><p>signed 16 bits</p></td>
<td><p>S</p></td>
</tr>
<tr class="odd">
<td><p>long</p></td>
<td><p>jint</p></td>
<td><p>signed 32 bits</p></td>
<td><p>I</p></td>
</tr>
<tr class="even">
<td><p>long long<br />
__int64</p></td>
<td><p>jlong</p></td>
<td><p>signed 64 bits</p></td>
<td><p>J</p></td>
</tr>
<tr class="odd">
<td><p>float</p></td>
<td><p>jfloat</p></td>
<td><p>32 bits</p></td>
<td><p>F</p></td>
</tr>
<tr class="even">
<td><p>double</p></td>
<td><p>jdouble</p></td>
<td><p>64 bits</p></td>
<td><p>D</p></td>
</tr>
<tr class="odd">
<td><p>void</p></td>
<td></td>
<td></td>
<td><p>V</p></td>
</tr>
</tbody>
</table>

签名` "L  ``qualified-class
;"`是由该名字指明的类。例如，签名`"Ljava/lang/String;"`是类`java.lang.String`。带前缀`[`的签名表示该类型的数组，如`[I`表示整型数组。`void`签名使用`V`代码。

这些类型是可以互换的，如`jint`也可使用 `int`，不需任何[类型转换](../Page/类型转换.md "wikilink")。

但是，Java字符串、数组与本地字符串、数组是不同的。如果在使用`char *`代替了`jstring`，程序可能会导致JVM崩溃。

``` cpp
JNIEXPORT void JNICALL Java_ClassName_MethodName
        (JNIEnv *env, jobject obj, jstring javaString) {
    // printf("%s", javaString);        // INCORRECT: Could crash VM!

    // Correct way: Create and release native string from Java string
    const char *nativeString = (*env)->GetStringUTFChars(env, javaString, 0);
    printf("%s", nativeString);
    (*env)->ReleaseStringUTFChars(env, javaString, nativeString);
}
```

这种情况也适用于Java数组。下例对数组元素求和。

``` cpp
JNIEXPORT jint JNICALL Java_IntArray_sumArray
        (JNIEnv *env, jobject obj, jintArray arr) {
    jint buf[10];
    jint i, sum = 0;
    // This line is necessary, since Java arrays are not guaranteed
    // to have a continuous memory layout like C arrays.
    env->GetIntArrayRegion(arr, 0, 10, buf);
    for (i = 0; i < 10; i++) {
        sum += buf[i];
    }
    return sum;
}
```

### JNIEnv\*

JNI环境指针(`JNIEnv*`)作为每个映射为Java方法的本地函数的第一个参数，使得本地函数可以与JNI环境交互。这个JNI界面指针可以存储，但仅在当前线程中有效。其它线程必须首先调用`AttachCurrentThread()`把自身附加到虚拟机以获得JNI界面指针。一旦附加，本地线程运行就类似执行本地函数的正常Java线程。本地线程直到执行`DetachCurrentThread()`把自身脱离虚拟机。\[5\]

把当前线程附加到虚拟机并获取JNI界面指针：

`JNIEnv *env;`
`(*g_vm)->AttachCurrentThread (g_vm, (void **) &env, NULL);`

当前线程脱离虚拟机：

`(*g_vm)->DetachCurrentThread (g_vm);`

## 高级使用

### 本地AWT绘制

本地代码不仅可以与Java交互，也可以在Java 绘图，使用。

### 访问汇编代码

JNI允许直接访问汇编代码。\[6\] 也可以从汇编代码访问Java。\[7\]

## Microsoft的RNI

Microsoft实现的Java虚拟机——[Visual
J++的类似的访问本地Windows代码的机制](https://zh.wikipedia.org/wiki/Visual_J++ "wikilink")**Raw
Native Interface**（**RNI**）。

## 例子

### HelloWorld

make.sh

``` bash
#!/bin/sh

# openbsd 4.9
# gcc 4.2.1
# openjdk 1.7.0

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.
javac HelloWorld.java
javah HelloWorld
gcc -shared libHelloWorld.c -o libHelloWorld.so
java HelloWorld
```

build.bat

``` dos
:: Microsoft Visual Studio 2012 Visual C++ compiler
SET VC="C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC"
:: Microsoft Windows SDK for Windows 7 and .NET Framework 4
SET MSDK="C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A"
:: Java 1.7.0 update 21
SET JAVA_HOME="C:\Program Files (x86)\Java\jdk1.7.0_21"

call %VC%\vcvarsall.bat

javac HelloWorld.java
javah HelloWorld
%VC%\bin\cl /I%JAVA_HOME%\include /I%JAVA_HOME%\include\win32 /I%VC%\include /I%VC%\lib /I%MSDK%\Lib libHelloWorld.c /FelibHelloWorld.dll /LD
java HelloWorld
```

HelloWorld.java

``` java
class HelloWorld
{
    private native void print();
    public static void main(String[] args)
    {
        new HelloWorld().print();
    }
    static{
        System.loadLibrary("HelloWorld");
    }
}
```

HelloWorld.h

``` c
/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class HelloWorld */

#ifndef _Included_HelloWorld
#define _Included_HelloWorld
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     HelloWorld
 * Method:    print
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_HelloWorld_print
  (JNIEnv *, jobject);

#ifdef __cplusplus
}
#endif
#endif
```

libHelloWorld.c

``` c
 #include <stdio.h>
 #include "HelloWorld.h"

 JNIEXPORT void JNICALL
 Java_HelloWorld_print(JNIEnv *env, jobject obj)
 {
     printf("Hello World!\n");
     return;
 }
```

Invocation:

``` bash
$ chmod +x make.sh
$ ./make.sh
```

## 参见

  -
  - , a Java tool which automatically generates the Java and JNI code
    necessary to call C libraries from Java code

  - [P/Invoke](https://zh.wikipedia.org/wiki/P/Invoke "wikilink"), the
    .NET Framework method of calling native applications

  - , a multilanguage interface-generator for C and C++ libraries that
    can generate JNI code

  - provides Java programs easy access to native shared libraries
    without writing boilerplate code

## 参考文献

## 相关书籍

  -
  -
## 外部链接

  - [Oracle's JNI page for Java 6, including the JNI
    Specification](http://java.sun.com/javase/7/docs/technotes/guides/jni/index.html)
  - [Java Native Interface: Programmer's Guide and
    Specification](http://java.sun.com/docs/books/jni/) - Book,
    copyright 2002.
  - [Best practices for using the Java Native
    Interface](http://www.ibm.com/developerworks/java/library/j-jni/index.html)
  - [JNI Complete tutorial with
    examples](http://electrofriends.com/articles/jni/jni-part1-java-native-interface/)
  - [GNU CNI
    Tutorial](https://web.archive.org/web/20120829093638/http://gcc.gnu.org/onlinedocs/gcj/About-CNI.html)
  - [Multi-platform JNI Tutorial at
    Think-Techie.com](https://web.archive.org/web/20140531090926/http://www.think-techie.com/2009/08/java-native-interface-jni.html)

<!-- end list -->

  - [A JNI Tutorial at CodeProject.com (Microsoft
    specific)](http://www.codeproject.com/java/jnibasics1.asp)
  - [JNI Tutorial at
    CodeToad.com](http://www.codetoad.com/java_simpleJNI.asp)
  - [Larger JNI example from
    Sun](http://java.sun.com/developer/onlineTraining/Programming/JDCBook/jniexamp.html)
  - [JNI video tutorial with Eclipse and Visual
    Studio](http://codebazaar.blogspot.com/2010/08/package-codebazaar.html)
  - [JNI in XCode from
    Apple](http://developer.apple.com/java/jniuniversal.html)
  - [Exception handling in
    JNI](http://www.codeproject.com/KB/debug/jni_ex.aspx)
  - [HawtJNI](https://web.archive.org/web/20140531105001/http://hawtjni.fusesource.org/documentation/index.html)
    Simplifies creating JNI libraries by code generating the JNI
    implementations using declarative annotations placed on your Java
    code.
  - [J/Link](http://reference.wolfram.com/mathematica/JLink/tutorial/Overview.html)
    lets you call Java from Mathematica in a completely transparent way,
    and it also lets you use and control the Mathematica kernel from a
    Java program (Commercial)
  - [Jace](http://code.google.com/p/jace/) is a toolkit designed to make
    it easy to write JNI-based programs
  - [JNIWrapper](http://www.teamdev.com/jniwrapper/) provides simplified
    access to native code from Java applications without using Java
    Native Interface.
  - [Java to Native Interface](http://jnative.sf.net) LGPL library to
    call native functions from Java
  - \[<http://jna.dev.java.net> Java Native Access\] Access to native
    libraries from Java without JNI
  - [NLink](https://web.archive.org/web/20070728043327/https://nlink.dev.java.net/)
    Another library for access to native libraries without JNI
  - [NativeCall – call native methods from Java without
    JNI](http://johannburkard.de/software/nativecall/) Library to access
    native code without JNI
  - [JNIEasy](http://www.innowhere.com) Transparent Native Programming
    for C/C++, pure Java alternative to JNI using POJOS and JDO/JPA
    development style
  - [jni4net](http://jni4net.sf.net/) bridge between Java and .NET
    (intraprocess, fast, object oriented, open-source)
  - [Object-Oriented JNI Advanced Add-in for
    VC6](https://web.archive.org/web/20120901042818/http://www.simtel.net/product/view/id/93174)
    Object-Oriented JNI with a number of helpers that includes the
    standard JNI SDK for regular C++ (Commercial)
  - [Object-Oriented JNI for .NET1.1
    (low-level)](https://web.archive.org/web/20121217203258/http://www.simtel.net/product/view/id/95126)
    Object-Oriented JNI with a number of helpers that includes the
    standard JNI SDK for C\#, Managed C++, VB\#, J\# (Commercial)
  - [Object-Oriented JNI for .NET2.0
    (low-level)](https://web.archive.org/web/20120301053642/http://www.simtel.net/product/view/id/353400)
    Object-Oriented JNI with a number of helpers that includes the
    standard JNI SDK for C\#, Managed C++, VB\#, J\# (Commercial)
  - [OOJNI Add-in (C\#,VB\#) for
    VS2005/2008](https://web.archive.org/web/20120331033141/http://www.simtel.net/product/view/id/348550)
    Generates object-oriented JNI code in C\# or VB\# for Java classes
    selected, implements Java interfaces and Java native methods in VB\#
    and C\#. Java Class methods and fields (which are represented as
    .NET Class properties) to be wrapped can be filtered. (Commercial)
  - [*e*X*treme*DB JNI](http://www.mcobject.com/extremedb-jni) uses Java
     and
    [reflection](https://zh.wikipedia.org/wiki/reflection "wikilink") to
    enable Java applications to call the  database (written in C)
    without reliance on an external database definition language
  - [JavaToDPR](http://home.pacifier.com/~mmead/jni/delphi/JavaToDPR/),
    a Delphi Project (.dpr) Stub File Generator that allows one to write
    an [Embarcadero
    Delphi](https://zh.wikipedia.org/wiki/Embarcadero_Delphi "wikilink")
    DLL to handle the native methods declared in a Java .class file

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.
2.  [If JNI based application is crashing, check signal
    handling\!](http://javajiggle.com/2008/01/06/if-jni-based-application-is-crashing-check-signal-handling/)

3.  [Modified UTF-8
    Strings](http://docs.oracle.com/javase/1.5.0/docs/guide/jni/spec/types.html#wp16542)
4.
5.  The Invocation API. Sun Microsystems.
    <http://java.sun.com/j2se/1.5.0/docs/guide/jni/spec/invocation.html>
6.
7.