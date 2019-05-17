**Kotlin**是一種在[Java虛擬機上執行的](https://zh.wikipedia.org/wiki/Java虛擬機 "wikilink")[靜態型別](../Page/類型系統.md "wikilink")[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，它也可以被編譯成為[JavaScript原始碼](../Page/JavaScript.md "wikilink")。它主要是由俄羅斯[聖彼得堡的](https://zh.wikipedia.org/wiki/聖彼得堡 "wikilink")[JetBrains開發團隊所發展出來的程式語言](../Page/JetBrains.md "wikilink")，其名稱來自於聖彼得堡附近的[科特林島](https://zh.wikipedia.org/wiki/科特林島 "wikilink")。\[1\]2012年1月，著名期刊《》中Kotlin被认定为該月的最佳語言。\[2\]雖然与Java語法並不相容，但Kotlin被設計成可以和Java程式碼相互運作，並可以重複使用如[Java集合框架等的現有](../Page/Java集合框架.md "wikilink")[Java類別庫](https://zh.wikipedia.org/wiki/Java類別庫 "wikilink")。Hathibelagal写道，“如果你正在为Android开发寻找一种替代编程语言，那么应该试下Kotlin。它很容易在Android项目中替代Java或者同Java一起使用。”

## 历史

2011年7月，JetBrains推出Kotlin项目，这是一个面向JVM的新语言，它已被开发一年之久。\[3\]JetBrains负责人Dmitry
Jemerov说，大多数语言没有他们正在寻找的特性，但是[Scala除外](../Page/Scala.md "wikilink")。但是，他指出Scala的编译时间過慢这一明显缺陷。\[4\]Kotlin的既定目标之一是像Java一样快速编译。2012年2月，JetBrains以[Apache
2许可证开源此项目](../Page/Apache许可证.md "wikilink")。\[5\]

Jetbrains希望这个新语言能够推动[IntelliJ
IDEA的销售](../Page/IntelliJ_IDEA.md "wikilink")。\[6\]

Kotlin
v1.0于2016年2月15日发布。\[7\]这被认为是第一个官方稳定版本，并且JetBrains已准备从该版本开始的长期向后兼容性。

在[Google I/O](https://zh.wikipedia.org/wiki/Google_I/O "wikilink")
2017中，[Google宣布在](../Page/Google.md "wikilink")[Android上为Kotlin提供最佳支持](../Page/Android.md "wikilink")。\[8\]

## 语法

Kotlin很明顯受到Java、C\#、JavaScript、Scala、Groovy等语言的影响。例如Kotlin可以直接通过`println("Hello,
{name}")`或`println("Hello, $name")`来使用字串模板，和古老的shell
script类似。又如Kotlin中的分号是可选的，这类似JavaScript，而且Groovy、Scala也有同样的能力。Kotlin常量定义关键字是`val`（不同於变量定义关键字`var`），表示固定值，这功能来自Scala，Swift也有类似功能。

需要注意，Kotlin没有关键字`new`。

### 常量與變量

使用`val`（全稱為value，即（固定的）值）關鍵字定義常量，定義後其值無法修改\[9\]

``` Kotlin
val a: Int = 1 // 定義a為`Int`類型的變量，其值為1
val b = 2 // 自動檢測b為`Int`類型
```

使用`var`（全稱為variable，即變量）關鍵字定義變量。

``` Kotlin
var x = 5 // App 定義一個`Int`，值為5
x = 1 // 修改值為1
```

### 函数

使用`fun`关键字定义一个函数。

``` Kotlin
fun sum(a: Int, b: Int): Int {
    return a + b
}
```

上例定义了一个传入两个Int变量，并返回两数之和的求和函数。

### Main 進入點

Kotlin的main函数是不依赖类別的，所以main函数是一个top-level函数。支持[Perl和Unix](../Page/Perl.md "wikilink")/Linux
[shell
script的字符串插值](https://zh.wikipedia.org/wiki/shell_script "wikilink")（String
interpolation），同樣也支持类型推定（[en:Type
inference](https://zh.wikipedia.org/wiki/en:Type_inference "wikilink"))。

``` kotlin numberLines

// Hello, world! 範例
fun main(args: Array<String>) {
  val scope = "world"
  println("Hello, $scope!")
}
```

### 函数扩展

Kotlin與C\#、JavaScript类似，能够扩展類別的新功能，而无需继承该類別，或使用像装饰器（decorator）这样的任何类型的设计模式（design
pattern）。扩展函数可以称为Kotlin的核心，在标准库里到处充斥着扩展函数。

扩展函数是静态分发的，也就是說，它们不是以接收者类型为准的虚擬函數。这意味着调用的扩展函数是由函数调用所在的表达式的类型来决定的，而不是由表达式运行时求值结果决定的。

在下述例子中，String類別被扩展出一個成员lastChar。

``` kotlin numberLines
    package MyStringExtensions

    fun String.lastChar(): Char = get(length - 1)

    >>> println("Kotlin".lastChar())
```

利用函数扩展，Kotlin也支持[运算符重载](../Page/运算符重载.md "wikilink")：

``` kotlin numberLines
    // overloading '+' operator using an extension method
    operator fun Point.plus(other: Point): Point {
        return Point(x + other.x, y + other.y)
    }

    >>> val p1 = Point(10, 20)
    >>> val p2 = Point(30, 40)
    >>> println(p1 + p2)
    Point(x=40, y=60)
```

### getter和setter

Kotlin像C\#一样支持属性（property）。

### 解包引數

類似Python, 解包（unpack）指的是对实际参数的解包，只需在前面加一个星號\* 即可，如test（\*a）:

``` kotlin numberLines
    fun main(args: Array<String>) {
        val list = listOf("args: ", *args)
        println(list)
    }
```

### 函数嵌套

Kotlin支持函数嵌套（nested functions），允許函數内再定义函數，類似JavaScript、C\#与Python语言。

``` kotlin numberLines
    class User(
        val id:      Int,
        val name:    String,
        val address: String)
    {

        fun saveUser(user: User) {
           fun validate(user: User, value: String, fieldName: String) {
               if (value.isEmpty()) {
                   throw IllegalArgumentException(
                      "Can't save user ${user.id}: empty $fieldName")
               }
           }

           validate(user, user.name, "Name")
           validate(user, user.address, "Address")
           // Save user to the database
        }
    }
```

### 解构声明

Kotlin支持解构声明，这与Python的迭代解包相似。

例如, collection object 包含解構式可分離其元素:

``` kotlin numberLines
    for ((index, element) in collection.withIndex()) {
         println("$index: $element")
    }
```

### 抽象類別

抽象類別（Abstract classes）定義抽象或純虚擬（Pure Virtual）占位函数，需要被继承。抽象類別預設是open的。

``` kotlin numberLines
    // No need for the open keyword here, its already open by default
    abstract class Animated {

        // This virtual function is already open by default as well
        abstract fun animate()

        open fun stopAnimating() { }

        fun animateTwice() { }
    }

```

### 類別屬性

Kotlin 提供下列的關鍵字來限制顶层（top-level）聲明，用于控制類別与成员在继承时的可见性（作用域）。它们可用於類別及其成員:

``` kotlin
public
internal
protected
private
```

用于類別的成员声明时，含义如下：

  - public：全局可见。此为默认的类型。
  - internal：在当前模块中可见。
  - protected：在当前類別的一级子類別中可见，如果子類別再被继承，则在下一级子類別中不可见。
  - private：在当前類別中可见。

用于顶层声明时，含义如下：

  - public：全局可见。此为默认的类型。
  - internal：在当前模块中可见。
  - private：在当前文件中可见。

例如:

``` kotlin numberLines
    // Class is visible only to current module
    internal open class TalkativeButton : Focusable {
        // method is only visible to current class
        private   fun yell() = println("Hey!")

        // method is visible to current class and derived classes
        protected fun whisper() = println("Let's talk!")
    }

```

### 主构造函数 vs. 二級构造函数

在Kotlin
中類別可以有一个主构造函数以及多个二级构造函数。如果主构造函数没有注解或可见性说明，则`constructor`关键字可以省略。如果构造函数中没有其它操作，大括号也可以省略。

``` kotlin numberLines
     // Example of class using primary constructor syntax
     // (Only one constructor required for this class)
     class User(
         val nickname: String,
         val isSubscribed: Boolean = true)
     {
         ...
     }

```

Kotlin 的二級构造函数更类似於 C++, C\#, 和 Java。

``` kotlin numberLines
    // Example of class using secondary constructor syntax
    // (more than one constructor required for this class)
    class MyButton : View {

        // Constructor #1
        constructor(ctx: Context) : super(ctx) {
            // ...
        }

        // Constructor #2
        constructor(ctx: Context, attr: AttributeSet) : super(ctx, attr) {
            // ...
        }
    }

```

### Anko library

Anko 是一組為Kotlin 打造的函数库，其功能是用來開發[Android](../Page/Android.md "wikilink")
UI 應用程式。\[10\]

``` kotlin numberLines
        fun Activity.showAreYouSureAlert(process: () -> Unit) {
            alert(
              title   = "Are you sure?",
              message = "Are you really sure?")
            {
              positiveButton("Yes") { process() }
              negativeButton("No") { cancel() }
            }
        }

```

### Kotlin 交互模式

Kotlin除了编译成Java字节码运行，也可以作为脚本语言解释运行，此特性使得Kotlin可以以交互模式运行。交互模式是脚本语言具有的特性，解释器可以立即运行用户输入的代码，并反馈运行结果。典型的语言有Python、JavaScript（在V8引擎支持下）、Ruby。

``` bash
$ kotlinc-jvm
type :help for help; :quit for quit
>>> 2+2
4
>>> println("Welcome to the Kotlin Shell")
Welcome to the Kotlin Shell
>>>
```

### Kotlin 也是腳本語言

Kotlin 亦可視為腳本語言（scripting language）。其腳本存成 Kotlin source file
(.kts)，即成為可執行檔。

``` kotlin numberLines
// list_folders.kts
import java.io.File
val folders = File(args[0]).listFiles { file -> file.isDirectory() }
folders?.forEach { folder -> println(folder) }
```

為了執行Kotlin 脚本，我們在运行编譯器時再加上選項。

``` bash numberLines
$ kotlinc -script list_folders.kts "path_to_folder_to_inspect"
```

### Kotlin 的 hello world 例子

``` kotlin numberLines

fun main(args: Array<String>) {

    greet {
        to.place
    }.print()
}

//inline higher-order functions
inline fun greet(s: () -> String) : String = greeting andAnother s()

//infix functions, extensions, type inference, nullable types, lambda expressions, labeled this, elvis operator
infix fun String.andAnother(other : Any?) = buildString() { append(this@andAnother); append(" "); append(other ?: "") }

//immutable types, delegated properties, lazy initialization, string templates
val greeting by lazy { val doubleEl: String = "ll"; "he${doubleEl}o" }

//sealed classes, companion objects
sealed class to { companion object { val place = "world"} }

//extensions, Unit
fun String.print() = println(this)
```

### 空变量及其运算

Kotlin对可以为空（nullable）的变量和不可以为空（non-nullable）的变量作了区分。所有的可空对象（nullable
objects）必須在定义時加上 "?" 後置於类型之後。開發人员遇到nullable objects時要先確認: null-check
須被執行過，才能赋值。可空性是Kotlin类型系统中帮助开发者避免以往Java的[NullPointerException错误的特性](https://zh.wikipedia.org/wiki/NullPointerException "wikilink")。

Kotlin 提供空安全（null-safe）运算符給開發人員:

  - ([safe navigation
    operator](https://zh.wikipedia.org/wiki/safe_navigation_operator "wikilink"))
    可用於安全存取（safely access） 可能是空对象的函數或屬性。如果 object 為空（null）, the method
    將不被调用，而且表达式必运算（evaluate）為空（null）。

  - ([null coalescing
    operator](https://zh.wikipedia.org/wiki/null_coalescing_operator "wikilink"))
    經常參照到艾维斯运算符（Elvis operator）:

<!-- end list -->

``` kotlin
fun sayHello(maybe: String?, neverNull: Int) {
   // use of elvis operator
   val name: String = maybe ?: "stranger"
   println("Hello $name")
}
```

使用安全導引（safe navigation）运算符:

``` kotlin
  // returns null if...
  // - foo() returns null,
  // - or if foo() is non-null, but bar() returns null,
  // - or if foo() and bar() are non-null, but baz() returns null.
  // vice versa, return value is non-null if and only if foo(), bar() and baz() are non-null
  foo()?.bar()?.baz()
```

### 高阶函数与lambda

Kotlin
亦支持高阶函数和lambdas功能。lambda是一种匿名函数，允许开发者直接将表达式定义为函数，这类似于Python。\[11\]

``` kotlin
  // the following function takes a lambda, f, and executes f passing it the string, "lambda"
  // note that (s: String) -> Unit indicates a lambda with a String parameter and Unit return type
  fun executeLambda(f: (s: String) -> Unit) {
    f("lambda")
  }
```

Lambdas 可用大括弧來定义。如果lambda 夾帶參數，他們可定义在大括弧内，並以运算符區隔。

``` kotlin
  // the following statement defines a lambda that takes a single parameter and passes it to the println function
  val l = { c : Any? -> println(c) }
  // lambdas with no parameters may simply be defined using { }
  val l2 = { print("no parameters") }
```

## 参考资料

## 外部連結

  -
  - [官方範例](http://try.kotlinlang.org)

  - [官方網站 - 中文翻譯](https://www.kotlincn.net)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:Java平台](https://zh.wikipedia.org/wiki/Category:Java平台 "wikilink")
[Category:JVM程式語言](https://zh.wikipedia.org/wiki/Category:JVM程式語言 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:静态类型编程语言](https://zh.wikipedia.org/wiki/Category:静态类型编程语言 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")
[Category:自由軟體計劃](https://zh.wikipedia.org/wiki/Category:自由軟體計劃 "wikilink")
[Category:2011年软件](https://zh.wikipedia.org/wiki/Category:2011年软件 "wikilink")

1.

2.

3.

4.
5.

6.

7.

8.

9.

10. [Anko Github](https://github.com/Kotlin/anko)

11.