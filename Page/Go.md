****（又稱****\[1\]）是[Google](../Page/Google.md "wikilink")開發的一种[静态](https://zh.wikipedia.org/wiki/静态类型 "wikilink")[强类型](https://zh.wikipedia.org/wiki/强类型 "wikilink")、[編譯型](https://zh.wikipedia.org/wiki/編譯語言 "wikilink")、[-{zh-hant:並發型;zh-hans:并发型}-](https://zh.wikipedia.org/wiki/並行計算 "wikilink")，并具有[垃圾回收功能的](../Page/垃圾回收_\(計算機科學\).md "wikilink")[编程语言](../Page/编程语言.md "wikilink")。

，[羅勃·派克](../Page/羅勃·派克.md "wikilink")（Rob Pike）及[肯·汤普逊](../Page/肯·汤普逊.md "wikilink")於2007年9月开始设计Go，\[2\]，稍後Ian Lance Taylor、Russ Cox加入專案。Go是基於[Inferno](../Page/Inferno.md "wikilink")作業系統所開發的。\[3\]Go於2009年11月正式宣布推出，成為[開放原始碼專案](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")，支援[Linux](../Page/Linux.md "wikilink")、[Mac OS X](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")、[Windows等作業系統](https://zh.wikipedia.org/wiki/Windows "wikilink")。\[4\] 在2016年，Go被軟體評價公司TIOBE 選為「TIOBE 2016 年最佳語言」。\[5\] ​ 目前，Go每半年发布一个二级版本（即从a.x升级到a.y）。

## 描述

Go的语法接近[C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")，但对于有所不同。Go支持[垃圾回收功能](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")。Go的[并行计算](../Page/并行计算.md "wikilink")模型是以[東尼·霍爾](../Page/東尼·霍爾.md "wikilink")的[交談循序程式](https://zh.wikipedia.org/wiki/交談循序程式 "wikilink")（CSP）为基础，采取类似模型的其他语言包括[Occam和](https://zh.wikipedia.org/wiki/Occam "wikilink")[Limbo](https://zh.wikipedia.org/wiki/Limbo "wikilink")，\[6\]，但它也具有pipeline模型的特征，比如通道传输。在1.8版本中開放插件（Plugin）的支持，這意味著現在能從Go中動態載入部分函式。

与C++相比，Go並不包括如[枚举](../Page/枚举.md "wikilink")、[异常处理](../Page/异常处理.md "wikilink")、[继承](https://zh.wikipedia.org/wiki/繼承_\(計算機科學\) "wikilink")、[泛型](../Page/泛型.md "wikilink")、[断言](../Page/斷言_\(程式\).md "wikilink")、[虚函数](../Page/虚函数.md "wikilink")等功能，但增加了 切片(Slice) 型、并发、管道、[垃圾回收功能](https://zh.wikipedia.org/wiki/垃圾回收_\(计算机科学\) "wikilink")、[介面 (資訊科技)等特性的语言级支持](../Page/介面_\(資訊科技\).md "wikilink")\[7\]。Go 2.0版本將支持泛型\[8\]，對於[斷言 (程式)的存在](../Page/斷言_\(程式\).md "wikilink")，則持負面態度，同時也為自己不提供型別[继承來辯護](https://zh.wikipedia.org/wiki/繼承_\(計算機科學\) "wikilink")。

不同于[Java](../Page/Java.md "wikilink")，Go内嵌了[关联数组](../Page/关联数组.md "wikilink")（也称为[哈希表](../Page/哈希表.md "wikilink")（Hashes）或字典（Dictionaries）），就像字符串类型一样。

## 撰寫風格

在Go中有幾項規定，而且這些是強制的，當不符合以下規定時編譯將會產生錯誤。

1.  每行程式結束後不需要撰寫分號（;）。
2.  大括號（{）不能夠換行放置。
3.  if判斷式和for迴圈不需要以小括號包覆起來。

Go亦有內建gofmt工具，能夠自動整理程式碼多餘的空白、變數名稱對齊、並將對齊空格轉換成Tab。

### 專案架構

Go的的目录結構如下\[9\]：

    src
    pkg
    bin

三個目录的用途分別為

| 目录  | 用途                                                     |
| --- | ------------------------------------------------------ |
| src | 引用的外部[庫](../Page/函式庫.md "wikilink")                    |
| pkg | [編譯時](https://zh.wikipedia.org/wiki/編譯 "wikilink")，生成的 |
| bin | 編譯後的程式                                                 |

舉例來說，整個專案目录可能會如下：

    bin/
        hello                          # 生成的執行檔
        outyet                         # 生成的執行檔
    pkg/
        linux_amd64/
            github.com/golang/example/
                stringutil.a           # 編譯時，生成的對象檔案
    src/
        github.com/golang/example/
            .git/                      # 外部 Git 庫的詮釋資料
        hello/
            hello.go               # Git 庫的程式碼
        outyet/
            main.go                # Git 庫的程式碼
            main_test.go           # Git 庫的程式碼（測試用的程式）
        stringutil/
            reverse.go             # Git 庫的程式碼
            reverse_test.go        # Git 庫的程式碼（測試用的程式）
        golang.org/x/image/
            .git/                      # 外部 Git 庫的詮釋資料
        bmp/
            reader.go              # Git 庫的程式碼
            writer.go              # Git 庫的程式碼

## 特色

Go的主要的功能在於令人簡易使用的併行設計，這個方法叫做Goroutine，透過Goroutine能夠讓程式以異步的方式執行，而不需要擔心一個函式導致程式中斷，因此Go也非常地適合網路服務。假設有個程式，裡面有兩個函式：

``` go
func main() {
    // 假設 loop 是一個會重複執行十次的迴圈函式。
    // 迴圈執行完畢才會往下執行。
    loop()
    // 執行另一個迴圈。
    loop()
}
```

這個時候透過Go讓其中一個函式同步執行，如此就不需要等待該函式執行完後才能執行下一個函式。

``` go
func main() {
    // 透過 `go`，我們可以把這個函式同步執行，
    // 如此一來這個函式就不會阻塞主程式的執行。
    go loop()
    // 執行另一個迴圈。
    loop()
}
```

Goroutine是類似線程的概念（但Goroutine並不是線程）。線程屬於系統層面，通常來說建立一個新的線程會消耗較多的資源且管理不易。而 Goroutine就像輕量級的線程，但我們稱其為併發，一個Go程式可以執行超過數萬個 Goroutine\[10\]，並且這些效能都是原生級的，隨時都能夠關閉、結束。一個核心裡面可以有多個Goroutine，透過GOMAXPROCS參數你能夠限制Gorotuine可以佔用幾個系統線程來避免失控。

在內建的官方套件中也不時能夠看見Goroutine的應用，像是net/http中用來監聽網路服務的函式實際上是建立一個不斷執行迴圈的Goroutine。

## 编译器

当前有两个Go[编译器分支](https://zh.wikipedia.org/wiki/编译器 "wikilink")，分别为官方编译器gc和[gccgo](https://zh.wikipedia.org/wiki/gccgo "wikilink")。官方编译器在初期使用C写成，后用Go重写从而实现\[11\]。Gccgo是一个使用标准GCC作为后端的Go编译器\[12\]。

官方编译器支持跨平台编译（但不支持CGO），允许将原始码编译为可在目标系统、架构上执行的二进制文件。

## 範例

下面是用Go写成的[Hello World程序](../Page/Hello_World.md "wikilink")。

``` go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World")
}
```

透過Go僅需幾行程式碼就完成HTTP網頁伺服器的實現：

``` go
package main

import (
    "io"
    "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
    io.WriteString(w, "Hello world!")
}

func main() {
    http.HandleFunc("/", hello)
    http.ListenAndServe(":8000", nil)
}
```

下面的例子说明了怎样用Go去实现一个像[Unix中的](../Page/UNIX.md "wikilink")[Echo命令程序](../Page/Echo_\(命令\).md "wikilink")\[13\]：

``` go
package main

import (
    "os"
    "flag"
)

var omitNewline = flag.Bool("n", false, "don't print final newline")

const (
    Space   = " "
    Newline = "\n"
)

func main() {
    flag.Parse() // Scans the arg list and sets up flags
    var s string = ""
    for i := 0; i < flag.NArg(); i++ {
        if i > 0 {
            s += Space
        }
        s += flag.Arg(i)
    }
    if !*omitNewline {
        s += Newline
    }
    os.Stdout.WriteString(s)
}
```

## 同名爭議

Go的名稱與2003年發表的程式語言雷同。

## 參考文獻

## 外部連結

  -
  - [Golang FAQ](https://golang.org/doc/faq)

  -
  - IRC：（irc.freenode.net）

  - [邮件列表](https://groups.google.com/forum/m/#!forum/golang-nuts)

[Category:Go语言](https://zh.wikipedia.org/wiki/Category:Go语言 "wikilink") [Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink") [Category:过程式编程语言](https://zh.wikipedia.org/wiki/Category:过程式编程语言 "wikilink") [Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink") [Category:美国发明](https://zh.wikipedia.org/wiki/Category:美国发明 "wikilink") [Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink") [Category:自由编译器和解释器](https://zh.wikipedia.org/wiki/Category:自由编译器和解释器 "wikilink")

1.  [Google-go-language](https://www.techcrunch.com/2009/11/10/google-go-language/)

2.  [Language Design FAQ](http://golang.org/doc/go_faq.html)

3.  [goyacc.go: **Derived from Inferno's utils/iyacc/yacc.c**](http://golang.org/src/cmd/goyacc/goyacc.go)

4.  [Installing Go](http://golang.org/doc/install.html#tmp_29)

5.  <https://www.bnext.com.tw/article/42761/tiobe-2016-program-language>

6.
7.
8.  <https://github.com/golang/go/issues/15292>

9.

10.

11. [Google公布实现Go 1.5自举的计划](http://www.infoq.com/cn/news/2015/01/golang-15-bootstrapped)

12. [Go FAQ: Implementation](http://golang.org/doc/go_faq.html#Implementation)

13. <http://golang.org/doc/go_tutorial.html>