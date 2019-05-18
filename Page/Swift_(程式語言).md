**Swift**是一種支持[多编程范式和](https://zh.wikipedia.org/wiki/多编程范式 "wikilink")[編譯式的編程語言](https://zh.wikipedia.org/wiki/編譯 "wikilink")，是用來撰寫[macOS/OS
X](https://zh.wikipedia.org/wiki/OS_X "wikilink")、[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")、[watchOS和](https://zh.wikipedia.org/wiki/watchOS "wikilink")[tvOS的语言之一](https://zh.wikipedia.org/wiki/tvOS "wikilink")\[1\]。
2014年，其在[苹果开发者年会](https://zh.wikipedia.org/wiki/WWDC "wikilink")（WWDC）發布。設計Swift時，[蘋果公司有意讓Swift與](https://zh.wikipedia.org/wiki/蘋果公司 "wikilink")[Objective-C共存在蘋果公司的](../Page/Objective-C.md "wikilink")[作業系統上](https://zh.wikipedia.org/wiki/作業系統 "wikilink")\[2\]。

## 歷史

2010年7月，苹果开发者工具部门总监[克里斯·拉特納开始着手](../Page/克里斯·拉特納.md "wikilink") Swift
编程语言的設計工作，以一年時間，完成基本架構後，他領導了一個設計團隊大力參與其中。Swift大約歷經4年的開發期，2014年6月發表。

苹果宣称Swift的特点是：快速、现代、安全、互动，而且明顯優於Objective-C语言。Swift以[LLVM編譯](../Page/LLVM.md "wikilink")，可以使用现有的[Cocoa和](../Page/Cocoa.md "wikilink")[Cocoa
Touch框架](../Page/Cocoa_Touch.md "wikilink")。Xcode
Playgrounds功能是Swift为苹果开发工具带来的最大创新，该功能提供強大的互动效果，能让Swift源代碼在[撰寫过程中能即時显示出其執行結果](../Page/读取﹣求值﹣输出循环.md "wikilink")。拉特纳本人强调，Playgrounds很大程度是受到理念的启发。\[3\]

2015年6月8日，蘋果於[WWDC](https://zh.wikipedia.org/wiki/WWDC "wikilink")2015上宣布，Swift將[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，包括[编译器和](https://zh.wikipedia.org/wiki/编译器 "wikilink")[标准库](../Page/标准库.md "wikilink")。\[4\]

2015年12月3日，蘋果宣布開源swift，並支持[Linux](../Page/Linux.md "wikilink")，蘋果在新網站swift.org和託管網站Github上開源了swift，但蘋果的app
store並不支持開源的swift，只支持蘋果官方的swift版本，官方版本會在新網站swift.org上定期與開源版本同步。\[5\]\[6\]

## 特色

Swift取消了Objective-C的[指標及其他不安全存取的使用](../Page/指標_\(電腦科學\).md "wikilink")，並捨棄Objective
C早期套用[Smalltalk之語法](../Page/Smalltalk.md "wikilink")，全面改為句點表示法（dot-notation）。同许多[脚本语言一样](../Page/脚本语言.md "wikilink")，Swift可以[推斷變數型別](../Page/类型推论.md "wikilink")（type
inference）。同时，它提供了类似C++、C\#的命名空間（namespace）、泛型（generic）、運算元重載（operator
overloading）。Swift被簡單的形容為 “沒有C的Objective-C”（Objective-C without the
C）。\[7\]

### 型別與變數

在Cocoa與Cocoa Touch的環境下，許多共用的類物都放在Foundation Kit庫下，這些類別包含了NSString 字串庫（使用
Unicode），還有集合類別 NSArray 與 NSDictionary。Objective-C
提供了[語法糖的方式讓這些物件可以整合在同一個語言裡](https://zh.wikipedia.org/wiki/語法糖 "wikilink")。例如NSString之間合併的表示法如下：

``` objc
NSString *str = @"hello,"; str = [str stringByAppendingString:@" world"];
```

在Swift裡,
字串的累積可以用加法（`+`）運算元作為[第一類物件](../Page/第一類物件.md "wikilink")（First-class
citizen）的方式直接完成, 上述的例子可以簡化為

``` objc
var str = "hello,"; str += " world"
```

\[8\]

過去Cocoa（以及Cocoa
Touch）的架構總是被分成兩種版本，一種是可變的（mutable），也就是可以在執行時期（runtime）改變；另一種是不可變的（immutable），其初始值不可改變，例如NSArray與NSMutableArray就是陣列的兩種版本。在Swift語言的世界裡仍延續這個傳統，但更簡化為使用
let 關鍵字去設定常數（constant variable）。至於可變的(Mutable)物件則使用 var
關鍵字。Swift语言使用類似[C\#或](../Page/C♯.md "wikilink")[Javascript的var定義變數](https://zh.wikipedia.org/wiki/Javascript "wikilink")，但特性又不盡相同，Swift不會直接指派初始值給變數，亦即變數不會有預設值，所以使用var變數之前必须先初始化，不然會發生編譯時期的錯誤。

為了方便使用，Swift還提供Optional的定義來宣告nil-free
references。宣告Optional只需要在类型后面加上問號（?）即可。一旦var變數宣告为Optional的，其初始值就會被預設為nil。Optional本質上是enum，有定義None和Some兩種类型，nil即是Optional.None。

### 函式庫、執行時期與部署

Swift在 Mac OS 和 iOS 平台可以和 Objective-C 使用相同的執行時期（runtime）。這意味著Swift
程式可以執行於目前已存在的平台之上，包含 iOS 6 和 OS X 10.8 都可以執行Swift的程式.\[9\]
更重要的, Swift 和 Objective-C 的程式碼可並存於單一程式內, 這種延伸就如同 C 和 C++ 的關係一樣。

為了爭取大量的開發人員並重複使用已存在的程式碼，Xcode 6 允許在 app target 導入 Objective-C 檔案供給 Swift
使用，透過 Objective-C 的橋接標頭檔（bridging header）来暴露给 Swift。當開發人員添加 Swift 檔案到現有的
Objective-C 應用程式時，Xcode 會自動建立這些標頭檔。例如，一個 Swift 知名的類別 "MyClass" 可用於
Objective-C 的方式 `#import "MyClass-Swift.h"`.\[10\]

### 記憶體管理

Swift全面使用自动引用计数（ARC）來管理記憶體，取代過去Objective
C的垃圾回收功能。過去在Objective-C中，强引用（strong
reference）即为非ARC中的retain，而弱引用（weak
reference）即为非ARC中的assign。為了解决循环引用的问题，Swift提供unowned，不能设定为optional
types，不能加上問號（?）或驚嘆號（\!）。

### 除錯以及其他元素

Xcode的除錯機制針對Swift語言提供[REPL](../Page/读取﹣求值﹣输出循环.md "wikilink")（Read-Eval-Print
Loop,
這是源自emacs的术语）環境，可以利用Swift語法來評估或與其他程式互動，使Swift编程具有類似[Python與](../Page/Python.md "wikilink")[Ruby交互性介面](../Page/Ruby.md "wikilink")（Interactive
Shell）。

### 類似 Objective-C之處

  - 基本數值型別（numeric types）大致相同 (例如`Int, UInt, Float, Double`)
  - 大量的C 運算元被移出Swift, 但又引入一些新運算元。
  - 大括號被用於群組陳述（group statements）。
  - 變數之賦值使用等於符號,
    但比較則使用“連續兩個等於”（==）運算元。還有一個新的運算元，“連續三個等於”（===）被用來判斷常數或變數之間是否為同一物件之實例（instance）。
  - 中括號（\[\], Square brackets）用於陣列的表示, 宣告陣例之後,
    可以指派索引值（index）來進行元素（element）之存取。
  - 控制陳述（control statement）, `for, while, if, switch` 與Objective-C都十分類似,
    但有延伸功能, 像是 `for in` 用於集合（collection）的輪詢，`switch` 還可以接受非整數的cases條件值,
    諸如此類。

### 不同於 Objective-C之處

  - 陳述句（statement）不須再使用分號（`;`）做為結束，但分號還是可以在一行以內作為兩個以上陳述的分隔。
  - 標頭檔（Header files）不再需要。
  - 注解方式 /\* ... \*/ 可以為巢狀（nested）註解，意思是指註解內可以再有註解，過去有些C或C++編譯器不支援巢狀註解。
  - [強型別](https://zh.wikipedia.org/wiki/強型別 "wikilink")
  - [类型推论或隐含类型](../Page/类型推论.md "wikilink")（Type inference）
  - 支援[泛型編程](https://zh.wikipedia.org/wiki/泛型編程 "wikilink")。
  - 函式為第一等类型（first-class object），这意味着函数可以作为其他函数的参数與返回值。
  - 運算元可在類別內重新定義 (運算元重載)，可以生成新的運算元。
  - 字串全方面支援
    [Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")，某些字元甚至可以成為語言的名稱。
  - 許多C語言家族的易錯行爲也被改變：
      - 不再存在[指標](https://zh.wikipedia.org/wiki/指標 "wikilink")。
      - 指派（Assignments）不再回傳值，正確寫法是 `if (i==0)` ，一般容易誤寫成 `if (i=0)`
        會造成編譯時期錯誤（compile-time error）。
      - 在`switch` 的區塊內不需要再使用 `break`
        敘述句。另外，case后面都需要有可执行的代码（C或C++可連續使用多個case而不需要額外的代碼），否則會發生編譯錯誤。
      - 變數和常數都要被初始化，而且陣列（array）的界限也要確認清楚。
      - 溢位（overflows）的問題。C語言沒有強制整數型別（signed
        integers）的界限，常常在執行時間發生問題。Swift可以透過整數型別的max或min属性取得最大值或最小值。

## 討論

JavaEye的创始人Robbin發表意見：“对程序员来说，熟悉Swift语法也不过一天时间足够了。关键是要提供高级数据类型，简化Cocoa类库，否则用不用Swift都没区别。”\[11\]

長達600多頁的 *The Swift Programming Language*
可以在[iBooks免費下載](https://zh.wikipedia.org/wiki/iBooks "wikilink")。\[12\]

## 範例程式

Swift不需要引入[表頭檔](https://zh.wikipedia.org/wiki/表頭檔 "wikilink")（header
file）或寫在`main()`內，也不需要在每一行敘述（statement）結尾加上分號。例如變數的宣告方式如下：

``` objc
var implicitInteger = 70
var implicitDouble = 70.0
var explicitDouble: Double = 70
```

用 let 宣告常數的方式如下：

``` objc
let numberOfApples = 3
let numberOfOranges = 5
let appleSummary = "I have \(numberOfApples) apples."
let fruitSummary = "I have \(numberOfApples + numberOfOranges) pieces of fruit."
```

Swift不支持隐式类型转换（implicitly casting），因此數與字串之間要以显式类型转换（Explicitly casting）：

``` objc
let table = "The width of this table is "
let width = 100
let tableWidth = table + String(width)
```

以下一行便是[Hello World程式](../Page/Hello_World.md "wikilink")：

``` objc
println("Hello, world")
print("Hello, world") /*Swift 2.0 之後不再使用println，改使用print*/
```

可以使用[Unicode字符](https://zh.wikipedia.org/wiki/Unicode "wikilink")，例如在文本內容有不同語言的文字時就可以放心添加，不必擔心出現無法解讀的亂碼:

``` objc
let 人 = ["新": 67, "青": 8, "玉": 33, "小小": 25]
for (名字, 歲) in 人 {
  println("\(名字)是\(歲) 歲。")
}
```

## 相關條目

  - [Objective-C](../Page/Objective-C.md "wikilink")
  - [D語言](../Page/D語言.md "wikilink")

## 參考資料

[Category:苹果公司](https://zh.wikipedia.org/wiki/Category:苹果公司 "wikilink")
[Category:MacOS開發](https://zh.wikipedia.org/wiki/Category:MacOS開發 "wikilink")
[Category:IOS開發](https://zh.wikipedia.org/wiki/Category:IOS開發 "wikilink")
[Category:计算机语言](https://zh.wikipedia.org/wiki/Category:计算机语言 "wikilink")

1.

2.
3.  [苹果新编程语言Swift仅耗时4年完成开发](http://tech.163.com/14/0605/03/9TUR3RNN000915BD.html)

4.  ["Swift 2.0"](https://developer.apple.com/swift/blog/?id=29)

5.  [1](https://github.com/apple/swift)

6.  [2](https://swift.org/)

7.

8.  ["Strings and
    Characters"](https://developer.apple.com/library/prerelease/ios/documentation/swift/conceptual/swift_programming_language/StringsAndCharacters.html),
    Apple Inc.

9.  ["Do Swift-based apps work on OS X 10.9/iOS 7 and
    lower?"](http://stackoverflow.com/questions/24001778/do-swift-based-apps-work-on-os-x-10-9-ios-7-and-lower/24038997#24038997),
    StackOverflow

10. ["Swift and Objective-C in the Same
    Project"](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html#//apple_ref/doc/uid/TP40014216-CH10-XID_77),
    Apple Inc.

11. [范凯robbin](http://weibo.com/robbinfan)

12. [The Swift Programming
    Language](https://itunes.apple.com/gb/book/swift-programming-language/id881256329?mt=11).