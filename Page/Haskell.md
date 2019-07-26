**Haskell**（）\[1\]是一种标准化的，通用的纯[函數程式語言](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")，有[非限定性语义和](https://zh.wikipedia.org/wiki/非限定性语义 "wikilink")[强](https://zh.wikipedia.org/wiki/强类型 "wikilink")[静态类型](https://zh.wikipedia.org/wiki/类型系统 "wikilink")\[2\]。它的命名源自美国[逻辑学家](../Page/逻辑学家.md "wikilink")[哈斯凱爾·加里](https://zh.wikipedia.org/wiki/哈斯凱爾·加里 "wikilink")，他在数理逻辑方面上的工作使得函数式编程语言有了广泛的基础。在Haskell中，“函数是[第一類物件](../Page/第一類物件.md "wikilink")”\[3\]。作为一门[函數程式語言](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")，主要控制结构是[函数](../Page/函数.md "wikilink")。Haskell语言是1990年在编程语言Miranda的基础上标准化的，并且以[λ演算为基础发展而来](https://zh.wikipedia.org/wiki/λ演算 "wikilink")。这也是为什么Haskell语言以[希腊字母](../Page/希腊字母.md "wikilink")「λ」（Lambda）作为自己的标志。Haskell具有“[证明即程序、命题为类型](../Page/柯里-霍华德同构.md "wikilink")”的特征\[4\]\[5\]\[6\]\[7\]。

## 历史

1985年，[Miranda发行后](https://zh.wikipedia.org/wiki/米兰达 "wikilink")，[惰性函数式语言的关注度增长](../Page/惰性求值.md "wikilink")。到1987年前，出现了十多种[非限定性](https://zh.wikipedia.org/wiki/非限定性 "wikilink")、纯函数式语言。其中，Miranda使用的最为广泛，但还没有出现在公共领域。在[俄勒冈](https://zh.wikipedia.org/wiki/俄勒冈 "wikilink")[波特兰的函数式编程语言与计算机结构大会](https://zh.wikipedia.org/wiki/波特兰 "wikilink")（FPCA
'87）上，参加者一致同意形成一个委员会来为这样的语言定义一种[开放性标准](https://zh.wikipedia.org/wiki/开放性标准 "wikilink")。该委员会旨在整合已有[函数式语言](https://zh.wikipedia.org/wiki/函数式语言 "wikilink")，作为将来的函数式语言设计研究工作的基础。\[8\]

### Haskell 1.0至1.4

1990年定义了Haskell的第一个版本（“Haskell
1.0”）。\[9\]委员会形成了一系列的语言定义（1.0，1.1，1.2，1.3，1.4）。

### Haskell 98

1997年底，该系列形成了**Haskell
98**，旨在定义一个稳定、最小化、可移植的语言版本以及相应的标准库，以用于教学和作为将来扩展的基础。委员会明确欢迎创建各种增加或集成实验性特性的Haskell
98的扩展和变种。\[10\]

1999年2月，Haskell 98语言标准公布，名为《The Haskell 98
Report》。\[11\]2003年1月，《Haskell 98 Language and Libraries:
The Revised Report》公布。\[12\]接着，实现了当时的事实标准，Haskell快速发展。

### Haskell Prime

2006年早期，开始了定义Haskell 98标准后续的进程，非正式命名为**Haskell
Prime**。\[13\]这是个修订语言定义的不断增补的过程，每年产生一个新的修订版。第一个修订版于2009年11月完成、2010年7月发布，称作**Haskell
2010**。

### Haskell 2010

Haskell
2010加入了外部函数接口（，FFI）允许绑定到其它编程语言，修正了一些[语法问题](../Page/语法.md "wikilink")（在正式语法中的改动）并废除了称为“n加k模式”（换言之，不再允许形如`fact
(n+1) = (n+1) * fact
n`的定义）。引入了语言级编译选项语法扩展（Language-Pragma-Syntax-Extension），使得在Haskell源代码中可以明确要求一些扩展功能。Haskell
2010引入的这些扩展的名字是DoAndIfThenElse、HierarchicalModules、EmptyDataDeclarations、FixityResolution、ForeignFunctionInterface、LineCommentSyntax、PatternGuards、RelaxedDependencyAnalysis、LanguagePragma、NoNPlusKPatterns。

## 特性

Haskell是现有的一门开放的、已发布标准的，且有多种实现的语言。\[14\]支持[惰性求值](../Page/惰性求值.md "wikilink")、[模式匹配](https://zh.wikipedia.org/wiki/模式匹配 "wikilink")、[列表解析](https://zh.wikipedia.org/wiki/列表解析 "wikilink")、[类型类和](https://zh.wikipedia.org/wiki/类型类 "wikilink")[类型多态](https://zh.wikipedia.org/wiki/类型多态 "wikilink")。它是一门纯[函数编程语言](https://zh.wikipedia.org/wiki/函数编程语言 "wikilink")，这意味着大体上，Haskell中的函数没有[副作用](../Page/函数副作用.md "wikilink")。Haskell用特定的类型来表达副作用，该类型与函数类型相互独立。纯函数可以操作并返回可执行的副作用的类型，但不能够执行它们，只有用于表达副作用的类型才能执行这些副作用，Haskell以此表达其它语言中的非纯函数。

Haskell拥有一个基于Hindley-Milner[类型推论的](../Page/类型推论.md "wikilink")[静态](https://zh.wikipedia.org/wiki/类型系统 "wikilink")、[强类型系统](https://zh.wikipedia.org/wiki/强类型 "wikilink")。Haskell在此领域的主要创新就是加入了类型类（type
class），原本设想作为重载的主要方式，\[15\]在之后发现了更多用途。\[16\]

Haskell的主要实现是个[解释器](https://zh.wikipedia.org/wiki/解释器 "wikilink")，也是个原生代码[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。它可以在大多数平台运行，GHC在并发和并行上具有高性能的实现能力，\[17\]也有丰富的类型系统，如[广义代数数据类型和类型族](https://zh.wikipedia.org/wiki/广义代数数据类型 "wikilink")（Type
Families）。

[单子是一个](https://zh.wikipedia.org/wiki/单子 "wikilink")[抽象類型](../Page/抽象資料型別.md "wikilink")，可以表达不同种类的计算，包括[异常处理](../Page/异常处理.md "wikilink")、[非确定性](https://zh.wikipedia.org/wiki/非确定性 "wikilink")、[语法分析以及](https://zh.wikipedia.org/wiki/语法分析 "wikilink")[软件事务内存](../Page/软件事务内存.md "wikilink")，其中一个应用是用于表达副作用的类型。单子定义为普通的数据类型，同时Haskell也为其提供了几种[语法糖](../Page/语法糖.md "wikilink")。

Haskell有一个活跃的社区，在线上包仓库Hackage上有豐富的第三方开源库或工具。\[18\]

## 语法

### 数据类型

Haskell是强类型语言。 Char的字面值用单引号围起； 字符串即\[Char\]类型，其字面值用双引号括起来。 Int通常为32位整型
Integer是无界整型 Float 表示单精度的浮点数 Double 表示双精度的浮点数 Bool 只有两种值：True 和 False。

#### List

使用\[
\]与逗号分隔符，定义一个list的实例。其元素必须具有相同类型。字符串是list的特例。用:把元素与list、其他元素连接（cons）起来。:是右结合的运算符。\[1,2,3\]
实际上是 1:2:3:\[\] 的语法糖。两个 List 合并通过 ++ 运算子实现。按照索引取得 List 中的元素，可以使用 \!\!
运算子，索引的下标为 0。List 中的 List
可以是不同长度，但必须得是相同的型别。\['K'..'Z'\]这样的Range方法快捷定义一个List。\[2,4..20\]用法给出了Range的第一、第二、最后一个元素。使用
\> 和 \>= 可以比较 List 的大小。它会先比较第一个元素，若它们的值相等，则比较下一个，以此类推。List常用的函数:

  - head 返回一个 List 的头部，也就是 List 的首个元素。
  - tail 返回一个 List 的尾部，也就是 List 除去头部之后的部分。
  - last 返回一个 List 的最后一个元素。
  - init 返回一个 List 除去最后一个元素的部分。
  - length 返回一个 List 的长度。
  - null 检查一个 List 是否为空。如果是，则返回 True，否则返回 False。
  - reverse 将一个 List 反转
  - take 返回一个 List 的前几个元素。例如take 24 \[13,26..\]取前24个13的倍数
  - drop 删除一个 List 中的前几个元素
  - maximum 返回一个 List 中最大的元素。
  - minimun 返回最小的元素。
  - sum 返回一个 List 中所有元素的和。
  - product 返回一个 List 中所有元素的积。
  - elem 判断一个元素是否在包含于一个 List，通常以中缀函数的形式调用
  - replicate 得到包含相同元素的 List 。例如：replicate 3 10，得 \[10,10,10\]。
  - repeat 产生一个元素的无限重复的List
  - cycle 接受一个 List 做参数并返回一个无限 List

list comprehension是指基于一个List，按照规则产生一个新List，例如：\[x\*2 | x \<- \[1..10\],
x\*2 \>= 12\]

#### Tuple

使用( )与逗号分隔符，定义一个tuple的实例。其元素可以使不同类型，但个数是固定的。

Tuple的类型取决于其中项的数目与其各自元素的类型。单元素的 Tuple 被禁止。

  - fst 返回一个序对的首项。
  - snd 返回序对的尾项
  - zip 取两个 List作为参数，然后将它们依次配对，形成一组序对的 List。

### 运算符

基本类似于C语言。但使用not表示逻辑非。

` +  -  *  /  ^    -- 加、減、乘、除、指數`
` mod              -- 取餘數`
` $                -- 也是表示函數作用的, 但它的優先級最低, 而且作用次序是從右向左的`
` ++               -- 兩個List的連接`
` .                 -- 函數的複合`
` && ||  ==  /=     -- 與、或、等於、不等於`
` <=  >=  <  >      -- 小於等於、大於等於、小於、大於`
` : //  =  @        -- 一個元素連接List、`
` ->               -- 函數類型描述，運算符左邊為參數類型，右邊為結果類型。為右结合。例如：addThree :: Int -> Int -> Int -> Int `
` =>               -- 運算符的左邊表示一個類型變量（通常為單個小寫字母）屬於一個類型類（Typeclass），相當於C++語言的模板參數類型`
` ..               -- List的Range限定`
` ::               -- 函數/表達式的類型特徵，左側為函數/表達式，右側為類型`
` <-             -- List comprehension 的條件限定`
` !!             -- 取List的第某個元素，based 0`

基本的 Typeclass：

  - Eq 可判断相等性的type
  - Ord 可比较大小的type
  - Show 可表示为字符串的type
  - Read 可从字符串转换出值的type
  - Enum 连续的，也就是可枚举的type。每个值都有后继 (successer) 和前置 (predecesor)，分别可以通过
    succ 函数和 pred 函数得到。
  - Bounded 有上限和下限。例如：maxBound :: Char 或者 maxBound :: Bool
  - Num 数字
  - Integral
  - Floating

### 表达式

  - let表达式：格式为 let \[bindings\] in \[expressions\] 。let 也可以定义局部函数
    。在一行中设定多个名字的值，可用分号隔开。List Comprehension 中
    let绑定的名字在输出函数及限制条件中都可见；忽略了 let 绑定的 in
    部分，因为名字的可见性已经预先定义好了。
  - if then else是表达式
  - Case表达式：

` case expression of pattern -> result  `
`      pattern -> result  `
`      pattern -> result  `
`      ...  `

### 控制结构

if then else是分段函数定义时的语法糖。与C语言不同，要求必须有else部分。类似于C语言分支语句的情形，叫做pattern
matching，例子如下：

``` Haskell numberLines
pts :: Int -> Int
pts 1 = 10
pts 2 = 6
pts x
    | x <= 6    = 7 - x
    | otherwise = 0

(||) :: Bool -> Bool -> Bool  -- 或操作的类型与定义
True  || _ = True             -- 第二个参数是任何值都匹配。
False || y = y
```

### 函数

  - 函数调用有最高运算顺序，例如`succ 9*10`表示`(succ 9)*10`。
  - 函数的调用使用空格符而不是括号。
  - 函数的复合调用是左结合
  - 首字母大写的函数是不允许的
  - 两个参数的函数的调用可以写成中缀形式： param1 \`funcName\` param2
  - 运算符可以用括号围起来，作为前缀形式：(+) 2 3 的结果为5
  - 在 ghci 下，我们可以使用 \`\`let\`\` 关键字来定义一个常量。在 ghci 下执行 \`\`let a=1\`\`
    与在脚本中编写 \`\`a=1\`\` 是等价的。

<!-- end list -->

``` Haskell numberLines
--funcName arguments = expression  --定义函数的一般形式
area r = pi * r ^ 2 -- 定义了一个函数
area 101 -- 调用了函数
f1 f2 3.14 -- 函数调用是左结合，等效于(f1 f2) 3.14

--模式匹配方式定义
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

as模式，是将一个名字和 @ 置于模式前，可以在按模式分割参数值时仍保留对其整体的引用。如nameGlobal@(x:y:ys)，nameGlobal会匹配出与 x:y:ys 对应的东西。as模式在较大的模式中保留对整体的引用，从而减少重复性的工作。

heron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
    where                     -- where在表达式中局部绑定了名字s与一个值。也可以在表达式之前用let ... in语法
    s = (a + b + c) / 2

absolute x                 -- 绝对值函数，使用了分段函数语法糖（称作Guards）
    | x < 0     = 0 - x
    | otherwise = x        -- 兜底条件

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= 18.5 = "You're underweight."
    | bmi <= 25.0 = "You're normal. "
    | bmi <= 30.0 = "You're fat."
    | otherwise   = "You're overweight."
    where bmi = weight / height ^ 2  -- 使用where定义多个名字来避免重复

--where也可以用模式匹配
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

--where可以定义函数。在定义一个函数的时候也写几个辅助函数摆在 where 绑定中。 而每个辅助函数也可以透过 where 拥有各自的辅助函数。
calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

funcName :: type1 -> type2 -> type3 -- 其中，::表示类型特征(type signature)，->是右结合，这里等效于type1 -> (type2->type3)，给定一个type1的输入参数，返回一个函数(type2->type3)

f1 = (absolute .  area)   -- 函数复合运算符是 . (function composition operator)
```

多态类型(Polymorphic types)类似于C++的模板。例如，算术加法：

``` Haskell numberLines
 (+) :: (Num a) => a -> a -> a -- Num是typeclass。 =>表示signature restricts
```

### lambda函数

lambda 就是匿名函数。写法是：一个 \\
(因为它看起来像是[希腊字母](../Page/希腊字母.md "wikilink")[λ](https://zh.wikipedia.org/wiki/Λ "wikilink"))，后面是用空格分隔的参数，-\>
后面是函数体。通常用括号将括起lambda函数，否则它会占据整个右边部分。

例如：(\\a b -\> (a \* 30 + 3) / b)

可以在 lambda 中使用模式匹配，但无法为一个参数设置多个模式，如 \[\] 和 (x:xs)并用。

使用 lambda 可以更明确地表现出值是个函数，可以用来传递给其他函数作参数。

### 高阶函数

Haskell的所有函数实际上是单参数函数。多参数函数的写法实际上是[Curry化的语法糖](https://zh.wikipedia.org/wiki/Curry化 "wikilink")。即
func a b等价于(func a) b

point free style (也称作 pointless style) 的函数，即通过柯里化 (Currying)省略掉单参数。例如：

`sum' :: (Num a) => [a] -> a     `
`sum' xs = foldl (+) 0 xs   --等号的两端都有个 xs。 `
`sum'   = foldl (+) 0     --柯里化 (Currying)，可以省掉两端的 xs。`

中缀运算符可以加括号变为单参数函数。如 (\*3) 5 的值为15。 但(-5)表示负值，所以单参数函数需要写为(subtract 5)。

中缀运算符 $，可用于改变函数的调用次序，使其右边的表达式先计算出来。这可以减少一对括号使用。例如 f (g (z x)) 与 f $ g $
z x 等价。其定义是：

`($) :: (a -> b) -> a -> b  `
`f $ x = f x  `

$ 还可以将数据作为函数使用。例如：

`map ($ 3) [(4+),(10*),(^2),sqrt]`

中缀运算符 . 用于函数的复合，其定义是：

`(.) :: (b -> c) -> (a -> b) -> a -> c  `
`f . g = \x -> f (g x)`

### 异常处理

提供了处理异常的函数///.

``` haskell numberLines
import Prelude hiding(catch)
import Control.Exception
instance Exception Int
instance Exception Double
main = do
  catch
    (catch
      (throw (42::Int))
      (\e-> print (0,e::Double)))
    (\e-> print (1,e::Int))
```

输出结果

`(1,42)`

类似于 C++

``` cpp numberLines
#include <iostream>
using namespace std;
int main() {
    try {
        throw (int)42;
    } catch (double e) {
        cout << "(0," << e << ")" << endl;
    } catch (int e) {
        cout << "(1," << e << ")" << endl;
    }
}
```

另外一个例子：

``` haskell numberLines
do {
  -- Statements in which errors might be thrown
} `catch` \ex -> do {
  -- Statements that execute in the event of an exception, with 'ex' bound to the exception
}
```

如果仅有一个错误条件， 类足够用了，确省是Haskell的  . 更复杂的出错处理用 或 monads, 类似功能可用。

## 示例

### Haskell的函数结构

如下是Haskell语言的["Hello
world"](../Page/Hello_World.md "wikilink")，注意其中除最后一行外皆可省略。

``` Haskell numberLines
module Main where

main :: IO ()
main = putStrLn "Hello, World!"
```

如下是[阶乘函数的Haskell实现](https://zh.wikipedia.org/wiki/阶乘 "wikilink")：

``` Haskell numberLines
fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n - 1)
```

它将阶乘描述成有一个基本终止情形的递归函数。这跟数学定义中对阶乘的描述很相似。事实上，Haskell中很多的代码的语法与功能都和数学一致。

上面的递归函数的第一行是可选的，它描述了这个函数的**型態**（**types**）。它可以读作**函数fac的型態為整數至整數（function
fac has a int-to-int type）**。这就是说，它以一个整型为参数，并且返回另一个整型。

第二行依赖的[模式匹配](https://zh.wikipedia.org/wiki/模式匹配 "wikilink")，是Haskell程序中一个重要的部分。注意函数的参数是用空格分隔而不是在括号中。当函数的参数是0时，它会返回整型1。对于其他的情况则尝试第三行。这是一个[递归](../Page/递归.md "wikilink")，它会一直执行只到满足基本的情形。负参数会导致无限递归，一个保证第三行不会执行负参数。

"Prelude"是一个类似C中标准库的小函数集合。使用Prelude，并用无指定参数的写法，它可以改成：

``` Haskell numberLines
fac = product . enumFromTo 1
```

上面的定义接近于数学中的定义：*f = g <small>o</small>
h*（参见[复合函数](../Page/复合函数.md "wikilink")），这并不是一个对变量赋值的语句。

### Haskell的高阶函数

Haskell中可以定义高阶函数（Higher-order Function），既将函数作为一个参数来使用，也可以将函数作为结果输出，例如：

``` Haskell numberLines
f :: (Int -> Int) ->(Int -> Int)
f g = \x -> g x + 5
```

这里f就是一个高阶函数，它取一个从Int到Int的函数g作为参数，输出一个从Int到Int的函数。高阶函数的使用在一些情况下将极大的简化代码。

## Haskell的编译器

  - [Hugs](http://www.haskell.org/hugs/)
  - [ghc (Glasgow Haskell Compiler)](http://www.haskell.org/ghc/)
  - [yhc (York Haskell
    Compiler)](http://www-users.cs.york.ac.uk/~ndm/yhc/)
  - [nhc98](http://www.haskell.org/nhc98/)

## 参考文献

## 外部連結

  - [**Haskell**的官方主页](http://www.Haskell.org)

  - [HaskellWiki：**Haskell**社群主網站](http://Haskell.org/)

  - [UNSW的Haskell教程](http://www.cse.unsw.edu.au/~cs1011/05s2/)

  - [Haskell笑話](http://Haskell.org/haskellwiki/Humor)

  - [Haskell舊的討論主題](https://web.archive.org/web/20070708210042/http://haskell.org/hawiki/)

  - [Haskell vs. Ada vs. C++ vs. Awk vs.
    ......一個實驗性的前衛語言](https://web.archive.org/web/20100619145645/http://haskell.org/papers/NSWC/jfp.ps)（PostScript檔案）

  - [Haskell編程的變革](http://www.willamette.edu/~fruehr/haskell/evolution.html)
    -- 一個輕快的Haskell編程風格總纜

  - [一個Haskell研究者的線上介紹](https://web.archive.org/web/20080915054919/http://haskell.readscheme.org/)

  - [ePolyglot --
    將Haskell、Python與Eiffel結合的語言](http://epolyglot.sourceforge.net/)

  - [Haskell函式庫](http://web.mit.edu/ghc/www/hslibs/)

### 教學手冊

  - [用Haskell寫程式](http://www.cs.nott.ac.uk/~gmh/book.html)，Graham
    Hutton撰寫

  - [另一個Haskell教學手冊](http://darcs.haskell.org/yaht/yaht.pdf) -- 由Hal
    Daume III所寫的好手冊，需要比官方教學手冊少的先備知識

  - [A Gentle Introduction to
    Haskell 98](http://haskell.org/tutorial/)（較高階的教學手冊，有[PDF](http://www.haskell.org/tutorial/haskell-98-tutorial.pdf)檔案）

  - [Haskell Tutorial for C
    Programmers](https://web.archive.org/web/20061011005150/http://www.haskell.org/~pairwise/intro/intro.html)，Eric
    Etheridge撰寫

  - [在Haskell.org的教學手冊列表](http://www.haskell.org/haskellwiki/Category:Tutorials)

  - [Haskell編程典範](http://www.haskell.org/haskellwiki/Category:Idioms)

  - [Haskell趣學指南](http://learnyouahaskell-zh-tw.csie.org/)

  - [Haskell趣學指南](http://wiki.jikexueyuan.com/project/haskell-guide/)

[Category:静态类型编程语言](https://zh.wikipedia.org/wiki/Category:静态类型编程语言 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")

1.

2.  Haskell Report

3.

4.

5.  , with 2 sections by William Craig, see paragraph 9E

6.   Reprinted in revised form, with two pages commentary, in:

7.  .

8.

9.

10.
11.
12.

13.

14.
15.

16.

17. [Computer Language Benchmarks
    Game](http://shootout.alioth.debian.org/)

18.