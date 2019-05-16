**C++托管扩展**（Managed Extensions for
C++）是对[C++的一个属性和关键字的扩展](../Page/C++.md "wikilink")，以便于在[微软公司的](https://zh.wikipedia.org/wiki/微软公司 "wikilink")[.NET
Framework进行编程](https://zh.wikipedia.org/wiki/.NET_Framework "wikilink")。它也经常被称为托管C++。2002年由微软发布。

*注意：C++托管扩展自[Visual C++
2005起被一个新的语言规范](https://zh.wikipedia.org/wiki/Visual_C++_2005 "wikilink")，正在标准化的[C++/CLI所取代](https://zh.wikipedia.org/wiki/C++/CLI "wikilink")。*

托管C++并非独立存在的[编程语言](../Page/编程语言.md "wikilink")，而仅仅是微软对C++的一个语法扩展，允许C++程序员在.NET框架和[CLR的基础上进行托管编程](https://zh.wikipedia.org/wiki/CLR "wikilink")。与[C\#和](https://zh.wikipedia.org/wiki/Ｃ＃ "wikilink")[Visual
Basic
.NET相比](../Page/Visual_Basic_.NET.md "wikilink")，其主要优点是旧代码可以比较快地移植到新的平台上，而且即使不完全重写代码，也可以通过[互操作在同一个](https://zh.wikipedia.org/wiki/互操作 "wikilink")[模块中无缝整合](https://zh.wikipedia.org/wiki/模块 "wikilink")[托管和](https://zh.wikipedia.org/wiki/托管 "wikilink")[非托管代码](https://zh.wikipedia.org/wiki/非托管 "wikilink")，从新的.Net框架中获益。

.Net框架封装了大量的API，例如网络访问、字符串操作、数据访问、XML服务、图形界面控件库、邮件服务、加密服务、文件输入／输出，甚至是WMI管理，也使得应用程序员可以编写更加简洁的代码。目前只有托管C++及其后继者C++/CLI可以做到无缝整合[托管和](https://zh.wikipedia.org/wiki/托管 "wikilink")[非托管代码](https://zh.wikipedia.org/wiki/非托管 "wikilink")，而在托管代码中调用[COM的速度又相当慢](https://zh.wikipedia.org/wiki/COM "wikilink")，所以经常被用于其他语言和非托管代码之间的桥梁。

托管C++允许程序员编写托管代码，内存管理的工作现在可以让CLR去自动处理，访问时也增加了类型检查，减少了[缓冲区溢出和](../Page/缓冲区溢出.md "wikilink")[内存泄漏的危险](../Page/内存泄漏.md "wikilink")，增加了程序的稳定性，但是在性能敏感的应用中，庞大的.NET框架和缓慢的自动内存管理并不是必要的，传统非托管代码仍然是一些人的首选。

在面向对象编程方面，主要的变化是对[多重继承的限制](../Page/多重继承.md "wikilink")，这是因为CLR的限制和内存管理的需要。一个托管类不能多继承基类。同时，类属性和微软中间语言（MSIL）的引入也使得托管类可以在其他语言中使用和继承。

与此同时，托管C++引入了大量的关键字和语义转换，减少了代码的可读性和明确性。缺少在很多语言中都支持的泛型和for
each语句也增加了其他语言的程序员转向托管C++的困难。在其后继者C++/CLI中泛型和for
each语句才被支持。

## Managed C++ 的重大改變

**以下列出物件導向程式設計與 unmanaged C++ 之間的差異性。**

  - (Global change) Existing C++ to be ported over the CLR must be
    appended with the following:

<!-- end list -->

    //hello.cpp

    //new using directive
    #using <mscorlib.dll>

    //another using namespace directive.
    using namespace System;

    int main()  {
      Console::WriteLine("Hello");
      return 0;
    }

一個新的前置處理引導（preprocessor directive）

`   #using <mscorlib.dll>`

這是必須的。此外 \#using directives 必須用 namespace 的方法來 import
更多的函式庫（libraries），像是 Base Class Library，例如：

`  #using <System.Windows.Forms.dll>`

以及

`  using namespace System::Windows::Forms;`

来使用 Windows Forms。

  - To compile code to target the CLR, a new compiler option must be
    introduced.

`   cl.exe hello.cpp /clr`

/clr enables any code referencing the .NET Framework to be compiled as
[CIL](https://zh.wikipedia.org/wiki/Common_Intermediate_Language "wikilink")。

  - A class can be designated to be garbage collected via the `__gc`
    extension keyword.

<!-- end list -->

    //gc.cpp

    #using <mscorlib.dll>

    __gc class gc  {
      int* i;
      char* g;
      float* j;
    };

    int main()  {
      while(true)  {
        gc* _gc = new gc();
      }
      return 0;
    }

### 比較 Managed C++

以下列出 Managed C++ 與其它程式語言在類似觀念上的差異。

#### ...to Java

**缺點**

  - Java 幾乎可支持所有的平台，而 Managed C++ 僅可以在 Windows 或其它實作出 .NET Framework
    的平台上執行。

<!-- end list -->

  - Java 程式碼複雜度較小，且易於閱讀，並提供有程式碼使用文件可供參考。而 Managed C++ 則無。 *（C++/CLI 於
    Visual C++ .NET 2005 中已有支援）*

<!-- end list -->

  - Java 有許多開發工具與解決方案可提供開發者利用，Managed C++ 僅能使用 [Visual Studio
    .NET](https://zh.wikipedia.org/wiki/Visual_Studio_.NET "wikilink")。不過，''Managed
    C++ applications 可用免費的 Visual C++ Toolkit 2003 編譯。

<!-- end list -->

  - Java 的例外機制是可以檢查的（checked）, Managed C++ 則無法檢查。 (根据程序不同这也可能是个优点)

**優點**

  - Managed C++ 可以直接與系統低階（low level）服務介面溝通，Java 程式員必須使用 JNI (Java Native
    Interface) 與系統低階服務溝通。 *(仅限Windows)*

<!-- end list -->

  - Managed C++ 是無法檢查例外，Java 可以檢查。. (根据程序不同这也可能是个缺点)

#### ...to C\#

**缺點**

  - 一如 Java, C\# 的複雜度較小。而且 C\# 可以直接支援 .NET Framework 。

<!-- end list -->

  - C\# 支援指標（pointers），如同 C++，這個機制預設是關掉的。

## 外部链接

  - [C++托管扩展语言规范（MSDN）](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vcmxspec/html/vcmanagedextensionsspec_start.asp)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:.NET编程语言](https://zh.wikipedia.org/wiki/Category:.NET编程语言 "wikilink")