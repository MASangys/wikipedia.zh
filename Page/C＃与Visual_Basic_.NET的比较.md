[C\#和](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")[VB.NET是](../Page/Visual_Basic_.NET.md "wikilink")[微軟公司開發的](https://zh.wikipedia.org/wiki/微軟 "wikilink")[.NET框架](../Page/.NET框架.md "wikilink")中，两种[面向对象的](https://zh.wikipedia.org/wiki/面向对象 "wikilink")[编程语言](../Page/编程语言.md "wikilink")，分別衍生自[C++語言及](https://zh.wikipedia.org/wiki/C++語言 "wikilink")[Visual Basic](../Page/Visual_Basic.md "wikilink")，因此在語法，[註解方式都有許多的差異](https://zh.wikipedia.org/wiki/註解 "wikilink")。

## 語言歷史

C\#和VB.NET各自有其不同的歷史，在語法上也有很大的差異。C\#語法的基礎是衍生自1970年代[丹尼斯·里奇](../Page/丹尼斯·里奇.md "wikilink")在[貝爾實驗室](https://zh.wikipedia.org/wiki/貝爾實驗室 "wikilink")（AT\&T）發展的[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")\[1\]，其中也包括了完全物件導向的[C++](../Page/C++.md "wikilink")，許多[Java](../Page/Java.md "wikilink")語言語法的基礎也是來自C++語言\[2\]，這也是C\#和Java有許多相近之處的原因。

VB.NET是來自1960年代的[BASIC](../Page/BASIC.md "wikilink")語言，是「Beginner's All-purpose Symbolic Instruction Code」的縮寫，一開始BASIC在學校中教授，而且如它的名字所述的，被視為是一個基礎的程式語言。1970年代微電腦的製造商將BASIC用來做電腦系統的程式語言，以及有簡單輸入輸出控制的半作業系統。1980年代微軟也開始使用將一此語言，1990年代發展為[Visual basic](https://zh.wikipedia.org/wiki/Visual_basic "wikilink")，用在window系統的快速應用程式開發\[3\]，Visual basic打敗了當時像PowerBuilder等快速應用程式開發工具\[4\]。雖然Visual Basic如此的成功，但在2000年代初期微軟提出.NET框架及對應的Visual Studio開發平台，而Visual Basic也在第六版（VB6）畫下句點。

## 語言比較

雖然C\#和VB.NET在語法上有相當的不同，但因為都是微軟開發的.NET框架下的程式語言，而且是由同一個開發團隊進行開發、管理及維護，因此會有不少的共通點\[5\]。C\#和VB.NET會[編譯為同一種中介語言](https://zh.wikipedia.org/wiki/編譯 "wikilink")，在同一種.NET框架下的執行期函式庫下執行\[6\]。C\#和VB.NET在語言結構上有一些差異，差異主要都是語法上的差異，但不要使用微軟提供，方便和VB6轉換的相容性函式庫，幾乎每一個VB.NET中的指令都有對應的C\#的指令，反之亦然。為了延伸其機能，兩種語言也參考同一個.NET框架下的基礎類別。因此大多數用其中一個語言寫的程式可以用語法轉換程式轉換為另一種語言，只有少數例外，而已有許多開源軟體及商業軟體有這類的功能。

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