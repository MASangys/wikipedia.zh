[C\#和](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")[VB.NET是](../Page/Visual_Basic_.NET.md "wikilink")[微軟公司開發的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[.NET框架](../Page/.NET框架.md "wikilink")中，两种[面向对象的](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[编程语言](../Page/编程语言.md "wikilink")，分別衍生自[C++語言及](https://zh.wikipedia.org/wiki/C++語言 "wikilink")[Visual Basic](../Page/Visual_Basic.md "wikilink")，因此在語法，[註解方式都有許多的差異](https://zh.wikipedia.org/wiki/註解 "wikilink")。

## 語言歷史

C\#和VB.NET各自有其不同的歷史，在語法上也有很大的差異。C\#語法的基礎是衍生自1970年代[丹尼斯·里奇](../Page/丹尼斯·里奇.md "wikilink")在[貝爾實驗室](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink")（AT\&T）發展的[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")\[1\]，其中也包括了完全物件導向的[C++](../Page/C++.md "wikilink")，許多[Java](../Page/Java.md "wikilink")語言語法的基礎也是來自C++語言\[2\]，這也是C\#和Java有許多相近之處的原因。

VB.NET是來自1960年代的[BASIC](../Page/BASIC.md "wikilink")語言，是「Beginner's All-purpose Symbolic Instruction Code」的縮寫，一開始BASIC在學校中教授，而且如它的名字所述的，被視為是一個基礎的程式語言。1970年代微電腦的製造商將BASIC用來做電腦系統的程式語言，以及有簡單輸入輸出控制的半作業系統。1980年代微軟也開始使用將一此語言，1990年代發展為[Visual basic](https://zh.wikipedia.org/wiki/Visual_basic "wikilink")，用在window系統的快速應用程式開發\[3\]，Visual basic打敗了當時像PowerBuilder等快速應用程式開發工具\[4\]。雖然Visual Basic如此的成功，但在2000年代初期微軟提出.NET框架及對應的Visual Studio開發平台，而Visual Basic也在第六版（VB6）畫下句點。

## 語言比較

雖然C\#和VB.NET在語法上有相當的不同，但因為都是微軟開發的.NET框架下的程式語言，而且是由同一個開發團隊進行開發、管理及維護，因此會有不少的共通點\[5\]。C\#和VB.NET會[編譯為同一種中介語言](https://zh.wikipedia.org/wiki/編譯 "wikilink")，在同一種.NET框架下的執行期函式庫下執行\[6\]。C\#和VB.NET在語言結構上有一些差異，差異主要都是語法上的差異，但不要使用微軟提供，方便和VB6轉換的相容性函式庫，幾乎每一個VB.NET中的指令都有對應的C\#的指令，反之亦然。為了延伸其機能，兩種語言也參考同一個.NET框架下的基礎類別。因此大多數用其中一個語言寫的程式可以用語法轉換程式轉換為另一種語言，只有少數例外，而已有許多開源軟體及商業軟體有這類的功能。

### 语言特性

从技术角度来看，C＃和VB.NET之间的大部分差异都是[语法糖](../Page/语法糖.md "wikilink")。也就是说，大多数特性都存在于两种语言，但有些任务在一种语言中比另一种语言更容易完成。

#### 存在于Visual Basic .NET但不存在于C\#的特性

  - 可以使用`WithEvents`结构声明变量。此结构令程序员可以从“类名”下拉列表中选择一个对象，然后从“声明”下拉列表中选择一个方法以自动插入[方法签名](https://zh.wikipedia.org/wiki/方法签名 "wikilink")。
  - 自动连接事件。VB.NET支持事件的`Handles`语法，它将事件处理程序连接到对象变量而不是对象。
  - 使用`RaiseEvent`关键字引发事件，IDE在此关键字后会显示可用的事件列表。`RaiseEvent`隐式检查事件处理程序是否为Nothing。（在C＃中引发事件在语法上与调用过程完全相同，并且需要额外的代码行来检查有线事件处理程序）
  - 事件代理被隐式声明。
  - 在`With ... End With`结构内，点操作符前可不写出对象名。
  - XML文本\[7\]\[8\]
  - date文本常量，如`#12/31/2000#`
  - `Module`语句（虽然C\#的静态类更容易理解，但静态类里每个成员都必须显示声明为`static`。）
  - 当前文件导入模块后，该模块的成员可以无需限定符进行访问。\[9\]
  - `My`命名空间\[10\]
  - [COM组件和互操作性更强](../Page/组件对象模型.md "wikilink")，因为对象类型是运行时绑定的。\[11\] C\# 4.0的`dynamic`关键字提供了相同的便利。
  - 可以在项目级别导入命名空间，这样一来该项目的每个文件都可访问该命名空间。
  - 使用`#Const`指令定义条件编译器常量。`#Const`常量一般在`#If`语句中使用。
  - 属性可以携带参数。
  - 属性可以直接按引用（`ByRef`）传入方法。在C\#里属性必须先赋值给局部变量，再传入。
  - 接口里可定义枚举。
  - `Case`语句可接不等式，如`Select x: Case Is >= 3`。 (在C\#里必须用`if ... else`实现。)
  - 子类若有与父类同名的方法，则子类方法必须被`Overloads`关键字修饰。(C＃中缺少此关键字可能会导致意外重载)
  - `Like`运算符支持模式比较。（C\#只能访问`Microsoft.VisualBasic.CompilerServices.LikeOperator.LikeString`方法)
  - `Return`语句可省略。也可向当前方法赋值来设置返回值。
  - Visual basic有不少内置常量，如`vbCrLf`、`vbTab`。
  - 没有用于修饰参数的`out`关键字。
  - `MyClass`关键字的行为类似于引用最初实现的类的当前实例。`MyClass`类似于`Me`，但是对它的所有方法调用都被视为方法被NotOverridable修饰。
  - `MyBase.New`用来调用父类的构造函数。
  - 局部变量自动初始化。
  - 方法内的静态局部变量在方法调用多次时可保持原来的值。
  - `End`语句直接终止程序。
  - 可对Lambda表达式推断类型，如`Dim x = Function(n As Integer) n + 1`
  - 成员名可以与其所在的类型名相同。

#### 存在于C\#但不存在于Visual Basic .NET的特性

  - 多行注释。
  - 静态类。
  - C\#和VB都可以在项目属性里开启或禁用溢出检查，但C\#提供`checked`、`unchecked`关键字进行精细控制。
  - for语句可以有多个条件，如`for(int i = 0; i < 10 && somethingTrue; i++)`。
  - 属性的getter和setter可以实现不同的接口。VB里必须定义两个属性。
  - 隐式接口实现。
  - null条件运算符`??`返回第一个非null值（如`null ?? null ?? 1`返回`1`）。
  - 可在`unsafe`环境使用指针
  - 条件运算符`?`: `someThingTrueOrFalse ? whenTrue() : whenFalse();`

#### 存在于Visual Basic .NET但无法应用到C\#的特性

  - 转换布尔值True到Integer可能会产生-1或1，具体取决于所使用的转换。
  - 变量赋值和比较使用相同的符号：`=`。C\#用不同的符号：`==`和`=`，这允许在条件语句中先赋值，再比较。
  - VB.NET标识符不区分大小写。
  - 当为具有不同[数据类型的变量赋值](https://zh.wikipedia.org/wiki/數據類型 "wikilink")（并且`Option Strict`未打开时），VB.NET将尽可能强制转换该值。这种自动强制转换有时会导致意想不到的结果，比如

<!-- end list -->

``` vb
Dim i As Integer = "1" '编译器插入一个从String到Integer的转换方法
Dim j As String = 1 '编译器插入一个从Integer到String的转换方法
If i = j Then '编译器插入一个从String到double的转换方法
    MsgBox("Avoid using, but this message will appear!")
End If
```

为了向后兼容，`Option Strict`的默认值是关闭，但微软建议将其开启\[12\]\[13\]

  - 内置函数`Val()`的参数可以是null。
  - 有大量内置的类型转换函数：CInt, CStr, CByte, CDbl, CBool, CDate, CLng, CCur, CObj。

#### 存在于C\#但无法应用到Visual Basic .NET的特性

  - C＃标识符区分大小写。
  - 可将同一值赋给多个变量：`a=b=c`。

## 兩種語言的HelloWorld

以下是兩種語言的[HelloWorld](https://zh.wikipedia.org/wiki/HelloWorld "wikilink")：

**VB.NET**

``` vbnet
Imports System

Module HelloWorldApp
    ' VB.NET Console 主程序
    Sub Main()
        ' 輸出 Hello World! 至 Console
        Console.WriteLine("Hello World!")
        ' ReadKey 用來暫停避免直接關閉 Console 視窗
        Console.ReadKey()
    End Sub
End Module
```

**C\#**

``` csharp
using System;

namespace HelloWorldApp
{
    class Program
    {
        // C# Console 主程序
        static void Main(string[] args)
        {
            // 輸出 Hello World! 至 Console
            Console.WriteLine("Hello World");
            // ReadKey 用來暫停避免直接關閉 Console 視窗
            Console.ReadKey();
        }
    }
}
```

## 相關條目

[Category:.NET](https://zh.wikipedia.org/wiki/Category:.NET "wikilink") [Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13. GetDotNetCode.com: