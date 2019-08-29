**Swift編程語言，**支持[多编程范式和](https://zh.wikipedia.org/wiki/多编程范式 "wikilink")[編譯式](https://zh.wikipedia.org/wiki/編譯 "wikilink")，用来撰写基于[macOS/OS X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[iPadOS](https://zh.wikipedia.org/wiki/iPadOS "wikilink")、[watchOS和](https://zh.wikipedia.org/wiki/watchOS "wikilink")[tvOS的软件](https://zh.wikipedia.org/wiki/tvOS "wikilink")\[1\]。 苹果公司于2014年在[苹果开发者年会](https://zh.wikipedia.org/wiki/WWDC "wikilink")（WWDC）發布了Swift编程语言。从设计上[苹果公司让Swift与](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Objective-C](../Page/Objective-C.md "wikilink")共存在苹果公司的[操作系统上](https://zh.wikipedia.org/wiki/作業系統 "wikilink")\[2\]。

## 歷史

2010年7月，苹果开发者工具部门总监[克里斯·拉特納](../Page/克里斯·拉特納.md "wikilink")开始着手 Swift 编程语言的設計工作，以一年時間，完成基本架構後，他領導了一個設計團隊大力參與其中。Swift大約歷經4年的開發期，2014年6月發表。

苹果宣称Swift的特点是：快速、现代、安全、互动，而且明顯優於Objective-C语言。Swift以[LLVM](../Page/LLVM.md "wikilink")編譯，可以使用现有的[Cocoa](../Page/Cocoa.md "wikilink")和[Cocoa Touch框架](../Page/Cocoa_Touch.md "wikilink")。Xcode Playgrounds功能是Swift为苹果开发工具带来的最大创新，该功能提供強大的互动效果，能让Swift源代碼在[撰寫过程中能即時显示出其執行結果](../Page/读取﹣求值﹣输出循环.md "wikilink")。拉特纳本人强调，Playgrounds很大程度是受到理念的启发。\[3\]

2015年6月8日，蘋果於[WWDC](https://zh.wikipedia.org/wiki/WWDC "wikilink")2015上宣布，Swift將[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，包括[编译器和](https://zh.wikipedia.org/wiki/编译器 "wikilink")[标准库](../Page/标准库.md "wikilink")。\[4\]

2015年12月3日，蘋果宣布開源Swift，並支持[Linux](../Page/Linux.md "wikilink")，蘋果在新網站swift.org和託管網站Github上開源了Swift，但蘋果的app store並不支持開源的Swift，只支持蘋果官方的Swift版本，官方版本會在新網站swift.org上定期與開源版本同步。\[5\]\[6\]

## 特色

Swift取消了Objective-C的[指针和其他不安全存取的使用](../Page/指標_\(電腦科學\).md "wikilink")，舍弃了Objective C早期套用[Smalltalk](../Page/Smalltalk.md "wikilink")风格的語法，全面改为句点表示法（dot-notation）。Swift具备[类型推导](../Page/类型推论.md "wikilink")（type inference）。同时，它提供了类似C++、C\#中的命名空間（namespace）、泛型（generic）、运算符重载（operator overloading）。Swift被簡單的形容為 “沒有C的Objective-C”（Objective-C without the C）。\[7\]

### 类型和变量

在Cocoa與Cocoa Touch的環境下，许多共用的类都放在Foundation Kit庫下，這些類別包含了NSString 字串庫（使用 Unicode），還有集合類別 NSArray 與 NSDictionary。Objective-C 提供了[語法糖的方式讓這些物件可以整合在同一個語言裡](https://zh.wikipedia.org/wiki/語法糖 "wikilink")。例如NSString之間合併的表示法如下：

``` objc
NSString *str = @"hello,";
str = [str stringByAppendingString:@" world"];
```

在Swift裡, 字串的累積可以用加法（`+`）運算元作為[第一類物件](../Page/第一類物件.md "wikilink")（First-class citizen）的方式直接完成, 上述的例子可以簡化為

``` swift
var str="hello"
str += "world"
```

\[8\]

過去Cocoa（以及Cocoa Touch）的架構總是被分成兩種版本，一種是可變的（mutable），也就是可以在執行時期（runtime）改變；另一種是不可變的（immutable），其初始值不可改變，例如NSArray與NSMutableArray就是陣列的兩種版本。Swift語言延續這個傳統，但簡化為使用 let 關鍵字去設定常數（constant variable）。可变的(Mutable)对象使用 var 关键字，不可变的对象则适用let关键字。Swift语言使用類似[C\#或](../Page/C♯.md "wikilink")[Javascript的var定义变量](https://zh.wikipedia.org/wiki/Javascript "wikilink")，但特性又不盡相同。Swift不直接指派初始值給变量，变量无預設值，因此使用var变量之前必须先初始化，不然将发生編譯時期的錯誤。

为了方便使用，Swift提供Optional类型来宣告nil-free references。宣告Optional只需要在类型后面加上問號（?）即可。一旦var变量宣告为Optional的，其初始值就會被預設為nil。Optional本質上是enum，定义了None和Some两种类型，nil即是Optional.None。

### 函数库、执行时期与部署

Swift在 Mac OS 和 iOS 平台可以和 Objective-C 使用相同的執行時期（runtime），因此Swift 程序能运行在目前已存在的平台上，包括 iOS 6 和 OS X 10.8或更高的版本。\[9\] 更重要的, Swift 和 Objective-C 的代码可并存于同一程序代码, 这种延伸就如同 C 和 C++ 的关系一样。

为了吸引开发人员和复用已存在的代码，Xcode 6允许在 app target 导入 Objective-C 头文件供給 Swift 使用，通过 Objective-C 的桥接头文件（bridging header）来供给 Swift。当开发人员添加 Swift 文件到现有的 Objective-C应用程序时，Xcode自动建立相应的头文件。例如，一個 Swift 类 "MyClass" 可用于 Objective-C 的方式为

`#import "MyClass-Swift.h"`.\[10\]

### 内存管理

Swift全面使用自动引用计数（ARC）來管理内存，取代Objective C的垃圾回收功能。在Objective-C中，强引用（strong reference）即为非ARC中的retain，而弱引用（weak reference）即为非ARC中的assign。为了解决循环引用的问题，Swift提供unowned，不能设定为optional types，不能加上問號（?）或驚嘆號（\!）。

### 除錯以及其他元素

Xcode的除錯机制针对Swift语言提供[REPL](../Page/读取﹣求值﹣输出循环.md "wikilink")（Read-Eval-Print Loop, 這是源自emacs的术语）環境，可以利用Swift语法来评估或于其他程序互动，使Swift编程具有类似[Python](../Page/Python.md "wikilink")或[Ruby](../Page/Ruby.md "wikilink")带有的交互性界面（Interactive Shell）。

### 类似 Objective-C之处

  - 基本數值型別（numeric types）大致相同 (例如`Int, UInt, Float, Double`)
  - 大量的C 语言运算符被移出Swift, 与此同时引入了新运算符。
  - 大括號被用於群組陳述（group statements）。
  - 變數之賦值使用等於符號, 但比較則使用“連續兩個等於”（==）運算元。還有一個新的運算元，“連續三個等於”（===）被用來判斷常數或變數之間是否為同一物件之實例（instance）。
  - 中括號（\[\], Square brackets）用於陣列的表示, 宣告陣例之後, 可以指派索引值（index）來進行元素（element）之存取。
  - 控制陳述（control statement）, `for, while, if, switch` 與Objective-C都十分類似, 但有延伸功能, 像是 `for in` 用於集合（collection）的輪詢，`switch` 還可以接受非整數的cases條件值, 諸如此類。

### 不同于 Objective-C之处

  - 陳述句（statement）不需要用分号（`;`）結束，但分号可以作为一行上两个以上语句的分割符。
  - 不需要头文件（Header files）。
  - 注解方式 /\* ... \*/ 嵌套，指注释里可以再有注释。
  - [強类型](https://zh.wikipedia.org/wiki/強型別 "wikilink")
  - [类型推论](../Page/类型推论.md "wikilink")或隐含类型（Type inference）
  - 支持[泛型編程](https://zh.wikipedia.org/wiki/泛型編程 "wikilink")。
  - 函数成为第一等类型（first-class object），这意味着函数可以作为其他函数的参数和返回值。
  - 运算符重载。运算符可在类內重新定义。
  - 定义新的运算符。
  - 字符串全方面支持 [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")。
  - 规避了C語言家族的易错行为：
      - 不存在[指针](https://zh.wikipedia.org/wiki/指標 "wikilink")。
      - 赋值语句（Assignments）没有返回值。 避免将 `if (i==0)` ，誤寫成 `if (i=0)` ，造成编译時期錯誤（compile-time error）。
      - 在`switch` 的区块内不需要使用 `break` 语句。另外，case后面都需要有可执行的代码（C或C++可連續使用多個case而不需要額外的代碼），否则将触发编译错误。
      - 变量和常量必须初始化才能使用，而且数组（array）的边界必须明确確認。
      - 溢位（overflows）的問題。C語言沒有強制整數型別（signed integers）的界限，常常在触发执行时期错误。Swift通过整数类型的max或min属性获取最大值或最小值。

## 讨论

長達600多頁的 *The Swift Programming Language* 可以在[iBooks免费下载](https://zh.wikipedia.org/wiki/iBooks "wikilink")。\[11\]

## 范例代码

Swift不需要引入[头文件](../Page/头文件.md "wikilink")（header file）或`main()函数`，不需要在每一行语句（statement）结尾加上分號。

变量声明方式如下：

``` objc
var implicitInteger = 70
var implicitDouble = 70.0
var explicitDouble: Double = 70
```

用 let 宣告常量方式如下：

``` objc
let numberOfApples = 3
let numberOfOranges = 5
let appleSummary = "I have \(numberOfApples) apples."
let fruitSummary = "I have \(numberOfApples + numberOfOranges) pieces of fruit."
```

Swift不支持隐式类型转换（implicitly casting），因此数值和字符串之间必须显式类型转换（Explicitly casting）：

``` objc
let table = "The width of this table is "
let width = 100
let tableWidth = table + String(width)
```

以下是[Hello World程式](../Page/Hello_World.md "wikilink")：

``` objc
println("Hello, world")
print("Hello, world") /*Swift 2.0 之後不再使用println，改使用print*/
```

使用[Unicode字符](https://zh.wikipedia.org/wiki/Unicode "wikilink")，例如在文本中放心添加有不同语言的文字:

``` swift
let 人 =["新": 67, "青": 8, "玉": 33, "小小": 25]
for (名字, 歲) in 人 {
  println("\(名字)是\(歲) 歲。")
}
```

## 相关条目

  - [Objective-C](../Page/Objective-C.md "wikilink")
  - [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")

## 参考资料

## 外部链接

  -
  - [苹果开发者上的](https://zh.wikipedia.org/wiki/苹果开发者 "wikilink")[Swift](https://developer.apple.com/swift/)

  -
[Category:苹果公司](https://zh.wikipedia.org/wiki/Category:苹果公司 "wikilink") [Category:MacOS開發](https://zh.wikipedia.org/wiki/Category:MacOS開發 "wikilink") [Category:IOS開發](https://zh.wikipedia.org/wiki/Category:IOS開發 "wikilink") [Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:静态类型编程语言](https://zh.wikipedia.org/wiki/Category:静态类型编程语言 "wikilink") [Category:系統程式語言](https://zh.wikipedia.org/wiki/Category:系統程式語言 "wikilink")

1.

2.
3.

4.

5.

6.

7.

8.  ["Strings and Characters"](https://developer.apple.com/library/prerelease/ios/documentation/swift/conceptual/swift_programming_language/StringsAndCharacters.html), Apple Inc.

9.  ["Do Swift-based apps work on OS X 10.9/iOS 7 and lower?"](http://stackoverflow.com/questions/24001778/do-swift-based-apps-work-on-os-x-10-9-ios-7-and-lower/24038997#24038997), StackOverflow

10. ["Swift and Objective-C in the Same Project"](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html#//apple_ref/doc/uid/TP40014216-CH10-XID_77), Apple Inc.

11. [The Swift Programming Language](https://itunes.apple.com/gb/book/swift-programming-language/id881256329?mt=11).