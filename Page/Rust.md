**Rust**是由[Mozilla](../Page/Mozilla.md "wikilink")\[1\]主导开发的[通用](https://zh.wikipedia.org/wiki/通用程式語言 "wikilink")、编译型编程语言。设计准则为“安全、并发、实用”，\[2\]\[3\]支持[函数式](https://zh.wikipedia.org/wiki/函數程式語言 "wikilink")、[並行式](https://zh.wikipedia.org/wiki/參與者模式 "wikilink")、[程序式以及](https://zh.wikipedia.org/wiki/程序編程 "wikilink")[面向对象的编程风格](../Page/面向对象程序设计.md "wikilink")。

Rust 語言原本是 Mozilla 員工 Graydon Hoare 的私人計畫，而 Mozilla 於 2009
年開始贊助這個計畫\[4\]，並且在 2010
年首次揭露了它的存在\[5\]。也在同一年，其[編譯器](../Page/編譯器.md "wikilink")原始碼開始由原本的
OCaml 語言轉移到用 Rust 語言，進行 bootstrapping 工作，稱做 *rustc*\[6\]，並於 2011
年實際完成\[7\]。這個可自我編譯的編譯器在架構上採用了
[LLVM](../Page/LLVM.md "wikilink") 做為它的後端。

第一個有版本號的 Rust 編譯器於 2012 年 1 月釋出。\[8\] Rust 1.0 是第一個穩定版本，於 2015 年 5 月 15
日釋出。\[9\]

Rust 是在完全開放的情況下進行開發，並且相當歡迎社區的回饋。在 1.0 穩定版之前，語言設計也因為透過撰寫
[Servo](../Page/Servo.md "wikilink")
[網頁瀏覽器](https://zh.wikipedia.org/wiki/網頁瀏覽器 "wikilink")[排版引擎](../Page/排版引擎.md "wikilink")和
rustc 編譯器本身，而有進一步的改善。雖然它由 Mozilla
資助，但它其實是一個共有專案，有很大部分的代碼是來自於社區的貢獻者。\[10\]

## 設計

Rust
的設計目標之一，是要使設計大型的網際網路[客户端和](https://zh.wikipedia.org/wiki/客户端 "wikilink")[伺服器的任務變得更容易](https://zh.wikipedia.org/wiki/伺服器 "wikilink")\[11\]。因此更加強調安全性、記憶體配置、以及[並行處理等方面的特性](https://zh.wikipedia.org/wiki/並行計算 "wikilink")。

### Rust的性能

在效能上，具有額外安全保證的代碼會比  慢一些，但是如果以  也手工提供保證的情況下，則兩者效能上是相似的\[12\]。

### 语法

Rust的語法設計，與 [C語言和](https://zh.wikipedia.org/wiki/C語言 "wikilink")
[C++](../Page/C++.md "wikilink") 相當相似，區塊 (block) 使用大括號隔開，流程控制的關鍵字如 `if`,
`else`, `while` 等等。在保持相似性的同時，Rust 也加進了新的關鍵字，如用於模式符合 (pattern matching) 的
`match` (與 `switch` 相似) 則是使用 C/C++ 系統程式語言的人會相對陌生的概念。儘管在語法上相似，Rust 的語義
(semantic) 和 C/C++ 非常不同。

### 内存安全

為了提供記憶體安全，它的設計不允許[空指標](../Page/空指標.md "wikilink")和[懸空指標](https://zh.wikipedia.org/wiki/迷途指針 "wikilink")\[13\]
\[14\] 。 資料只能透過固定的初始化形態來建構，而所有這些形態都要求它們的輸入已經分析過了\[15\]。 Rust
有一個檢查指標生命期間和指標凍結的系統，可以用來預防在 C++
中許多的型別錯誤，甚至是用了[智慧指標功能之後會發生的型別錯誤](../Page/智能指针.md "wikilink")。

### 内存管理

Rust 雖然有[垃圾回收系統](../Page/垃圾回收_\(計算機科學\).md "wikilink")，但非如 Java 或 .NET
平台的全自動垃圾回收。Rust 1.0已不再使用垃圾回收器，而是全面改用基于引用计数的智能指针来管理内存。

### 类型与多态

它的型別系統直接地模仿了 [Haskell](../Page/Haskell.md "wikilink") 語言的 type class
概念，並把它稱作「traits」，可以把它看成是一種 ad hoc 多型。Rust 的作法是透過在宣告型別變數 (type
variable) 的時候，在上面加上限制條件。至於 Haskell 的高階型別變數 (Higher-kinded polymorphism)
則還未支援。

[型別推導也是](https://zh.wikipedia.org/wiki/型別推導 "wikilink") Rust 提供的特性之一，使用
`let` 語法宣告的變數可以不用宣告型別，亦不需要初始值來推斷型別。但如果在稍後的程式中從未指派任何值到該變數，編譯器會發出編譯時
(compile time) 錯誤\[16\]。 函數可以使用[泛型](../Page/泛型.md "wikilink")化參數
(generics)，但是必須綁定 Trait。沒有任何方法可以使用方法或運算子，又不宣告它們的型別，每一項都必確明確定義。

Rust 的物件系統是基於三樣東西之上的，即實作 (implementation)、Trait 以及結構化資料 (如
struct)。實作的角色類似提供 Class 關鍵字的程式語言所代表的意義，並使用 `impl`
關鍵字。繼承和多型則透過 Trait 實現，它們使得方法 (method)
可以在實作中被定義。結構化資料用來定義欄位。實作和 trait
都無法定義欄位，並且只有 trait 可以提供繼承，藉以躲避 C++ 的「鑽石繼承問題」(菱型缺陷)。

## 历史

2006年，Rust作为Graydon Hoare的个人项目首次出现。

2009年，Graydon Hoare成为[Mozilla](../Page/Mozilla.md "wikilink")雇员\[17\]。

2010年，Rust首次作为Mozilla官方项目出现\[18\]。同年，Rust开始从初始编译（由[OCaml](../Page/OCaml.md "wikilink")写成）转变为自编译\[19\]。

2011年，Rust成功的完成了移植\[20\]。Rust的自编译器采用[LLVM](../Page/LLVM.md "wikilink")作为其编译后端。

2012年1月20日，第一个有版本号的[预览版Rust编译器发布](https://zh.wikipedia.org/wiki/軟件版本週期#Alpha "wikilink")\[21\]。

2013年4月4日，[Mozilla基金會](../Page/Mozilla基金會.md "wikilink")宣布將與[三星集團合作開發瀏覽器排版引擎](https://zh.wikipedia.org/wiki/三星集團 "wikilink")[Servo](../Page/Servo.md "wikilink")，此引擎将由Rust來實作\[22\]。

2015年5月16日，Rust 1.0.0发布\[23\]。

## 代码示例

下面的代码在Rust 1.3中测试通过。

### Hello World

``` rust
fn main() {
    println!("Hello, World!");
}
```

### 阶乘

下面是三个不同版本的阶乘函数，分别以[递归](../Page/递归.md "wikilink")、[循环和](../Page/迭代.md "wikilink")[迭代器](../Page/迭代器.md "wikilink")的方法写成：

``` rust
// 这个函数的if-else语句中展示了Rust中可选的隐式返回值，可用于写出更像函数式编程风格的代码
// 与C++和其他类似的语言不同，Rust中的if-else结构不是语句而是表达式，有返回值
fn recursive_factorial(n: u32) -> u32 {
    if n <= 1 {
        1
    } else {
        n * recursive_factorial(n - 1)
    }
}

fn iterative_factorial(n: u32) -> u32 {
    // 变量用`let`定义，`mut`关键字使得变量可以变化
    let mut i = 1u32;
    let mut result = 1u32;
    while i <= n {
        result *= i;
        i += 1;
    }
    result // 显式返回值，与上一个函数不同
}

fn iterator_factorial(n: u32) -> u32 {
    // 迭代器有多种用于变换的函数
    // |accum, x| 定义了一个匿名函数
    // 内联展开等优化方法会消去区间和fold，使本函数的运行效率和上一个函数相近
    (1..n + 1).fold(1, |accum, x| accum * x)
}

fn main() {
    println!("Recursive result: {}", recursive_factorial(10));
    println!("Iterative result: {}", iterative_factorial(10));
    println!("Iterator result: {}", iterator_factorial(10));
}
```

### 并发

一个简单的Rust并发示例：

``` rust
use std::thread;

// 这个函数将创建十个同时并发运行的线程
// 若要验证这一点，可多次运行这个程序，观察各线程输出顺序的随机性
fn main() {
    // 这个字符串是不可变的，因此可以安全地同时被多个线程访问
    let greeting = "Hello";

    let mut threads = Vec::new();
    // `for`循环可用于任何实现了`iterator`特性的类型
    for num in 0..10 {
        threads.push(thread::spawn(move || {
            // `println!` 是一个可以静态检查格式字符串类型的宏
            // Rust的宏是基于结构的（如同Scheme）而不是基于文本的（如同C）
            println!("{} from thread number {}", greeting, num);
        }));
    }

    // 收集所有线程，保证它们在程序退出前全部结束
    for thread in threads {
        thread.join().unwrap();
    }
}
```

## 參考資料

## 外部链接

  - [官方网站](http://www.rust-lang.org/)
  - [The Rust-dev
    Archives](https://mail.mozilla.org/pipermail/rust-dev/)（邮件列表）
  - [Rust主源代码库及缺陷跟踪系统](https://github.com/mozilla/rust)于[Github](https://zh.wikipedia.org/wiki/Github "wikilink")
  - [Rust语言Wiki](https://github.com/mozilla/rust/wiki)于[Github](https://zh.wikipedia.org/wiki/Github "wikilink")

## 参见

  - [Servo](../Page/Servo.md "wikilink")

[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")
[Category:系統程式語言](https://zh.wikipedia.org/wiki/Category:系統程式語言 "wikilink")
[Category:靜態類型程式語言](https://zh.wikipedia.org/wiki/Category:靜態類型程式語言 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")
[Category:过程式编程语言](https://zh.wikipedia.org/wiki/Category:过程式编程语言 "wikilink")

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

13.

14.

15.

16.

17.
18.
19.
20.
21.
22.

23.