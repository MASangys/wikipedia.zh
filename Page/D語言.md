**D語言**是一种[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，具备[多範型](https://zh.wikipedia.org/wiki/多範型程式語言 "wikilink")，例如[物件導向](https://zh.wikipedia.org/wiki/物件導向程式設計 "wikilink")、[指令式](https://zh.wikipedia.org/wiki/指令式程式設計 "wikilink")。由[沃尔特·布莱特和](../Page/沃尔特·布莱特.md "wikilink")[安德烈·亞歷山德雷斯庫所開發](../Page/安德烈·亞歷山德雷斯庫.md "wikilink")，起源自[C++](../Page/C++.md "wikilink")，深受C++的影響，然而其不是C++的变种，而是重新设计来自C++的部分特性，并受到其它程式語言觀念的影響，如[Java](../Page/Java.md "wikilink")、[C\#以及](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")[Eiffel](../Page/Eiffel.md "wikilink")。2007年1月2日釋出1.0穩定版本。版本2.0釋出於2007年1月17日。

Walter Bright本身是[Symantec
C++](https://zh.wikipedia.org/wiki/Symantec_C++ "wikilink")
編譯器的作者，另一名作者[Andrei
Alexandrescu是](https://zh.wikipedia.org/wiki/Andrei_Alexandrescu "wikilink")[Facebook的研究科学家](../Page/Facebook.md "wikilink")，他与一个团队用D语言重写一些Facebook的重要操作。\[1\]

## 特性

D的設計來自實際的C++用法的經驗教訓，而不是從理論的角度。D沿用了很多C/C++觀念，同時摒弃了一些概念，因此D並不完全相容C/C++代码。D实现了C++的功能，实现了[契約式設計](https://zh.wikipedia.org/wiki/契約式設計 "wikilink")（design
by
contract）、[單元測試](https://zh.wikipedia.org/wiki/單元測試 "wikilink")、真正的[模組性](https://zh.wikipedia.org/wiki/模組性 "wikilink")、[自動化記憶體管理](https://zh.wikipedia.org/wiki/垃圾回收器 "wikilink")（垃圾回收）、[第一類](../Page/第一類物件.md "wikilink")[数组](../Page/数组.md "wikilink")（first
class
array）、[关联数组](../Page/关联数组.md "wikilink")、[动态数组](https://zh.wikipedia.org/wiki/动态数组 "wikilink")、[数组切片](https://zh.wikipedia.org/wiki/数组切片 "wikilink")、[嵌套函数](https://zh.wikipedia.org/wiki/嵌套函数 "wikilink")（巢狀函式）、[內部類別](https://zh.wikipedia.org/wiki/內部類別 "wikilink")、[閉包的限制形式](../Page/闭包_\(计算机科学\).md "wikilink")、匿名函式、[編譯時期函式執行](https://zh.wikipedia.org/wiki/編譯時期函式執行 "wikilink")、[惰性計算以及革新的](https://zh.wikipedia.org/wiki/惰性計算 "wikilink")[模板語法](https://zh.wikipedia.org/wiki/模板 "wikilink")。D保有C++的性能以進行[低階程式設計](https://zh.wikipedia.org/wiki/低階程式設計語言 "wikilink")，並加入完整的[內聯](https://zh.wikipedia.org/wiki/內聯組譯器 "wikilink")[組譯器支援](https://zh.wikipedia.org/wiki/組合語言 "wikilink")。C++的[多重繼承改以Java](https://zh.wikipedia.org/wiki/多重繼承 "wikilink")
[單繼承與](https://zh.wikipedia.org/wiki/多重繼承 "wikilink")[介面混合的風格取代](../Page/接口_\(Java\).md "wikilink")。D的宣告、語句和表達式[語法幾乎和C](https://zh.wikipedia.org/wiki/語法學 "wikilink")++一樣。

內聯組譯器（inline
assembler）象徵了D和[Java](../Page/Java.md "wikilink")、[C\#等應用程式語言的不同](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")。內聯組譯器讓程式員輸入機器特定的[組合語言碼](https://zh.wikipedia.org/wiki/組合語言 "wikilink")，如同標準D代碼—通常由系統程式員使用的技術，以存取[處理器的低階功能](https://zh.wikipedia.org/wiki/CPU "wikilink")，直接以[硬體下的界面執行程式](https://zh.wikipedia.org/wiki/硬體 "wikilink")，如[作業系統以及](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[驅動程式](https://zh.wikipedia.org/wiki/驅動程式 "wikilink")。

D內建支援文件註解，不過目前為止，只有Digital
Mars實作版本有提供[文件產生器](https://zh.wikipedia.org/wiki/文件產生器 "wikilink")。

### 程式設計範型

D支援三種主要的程式設計泛型—指令式、物件導向以及元程式設計。

#### 指令式

指令式程式設計幾乎和C一樣。函式、資料、語句、宣告以及表達式的運作就如同C一般，且可直接存取C執行時期程式庫。

#### 物件導向

在D裡面的物件導向程式設計，是以單繼承分層結構，配合所有類別衍伸自類別物件為基礎。多重繼承可使用界面（界面很像C++的抽象類別）。

#### 元程式設計

以模板組合、編譯時期函式執行、[多元組以及字串混合來支援元程式設計](https://zh.wikipedia.org/wiki/多元組 "wikilink")。

### 記憶體管理

記憶體通常以[垃圾回收管理](https://zh.wikipedia.org/wiki/垃圾回收器 "wikilink")，不過當這些物件超出作用域時，可立即結束指定的物件。還是可以使用[重載運算子new和delete](https://zh.wikipedia.org/wiki/運算子重載 "wikilink")，以及簡單的直接呼叫[C的malloc函数和free函数以進行顯示的記憶體管理](https://zh.wikipedia.org/wiki/C語言 "wikilink")。垃圾回收可禁用個別的物件或事件，以健全整個程式，如果在記憶體管理上有更多的控制，則更為理想。當垃圾回收在程式中有所不足時，手冊還提供許多如何實作不同的高度最佳化記憶體管理方案的範例。

### 與其它系統的相互作用

支援[C的](https://zh.wikipedia.org/wiki/C語言 "wikilink")[應用程式二進制介面（ABI）](https://zh.wikipedia.org/wiki/ABI "wikilink")，以及C的基本和衍伸型態，就能直接存取現有的C代碼以及程式庫。C的標準[函式庫也是D標準的一部分](../Page/函式庫.md "wikilink")。除非你使用非常清楚的命名空間，它可以稍微散亂的存取，因為它散佈遍及於D模組—不過純粹的D標準函式庫也通常夠用，除非要與C代碼接合。

並未完整支援C++的ABI，儘管D可以存取寫給C
ABI的C++代碼，且可存取C++[COM（元件物件模型）代碼](https://zh.wikipedia.org/wiki/元件物件模型 "wikilink")。D語法分析器了解外部（C++）呼叫約定，以連結C++物件，不過它只實作在[D
2.0](https://zh.wikipedia.org/wiki/#D_2.0 "wikilink")。

## D 2.0

D 2.0，D
新一代版本，D2.0与D1.0是不兼容的，类似Python2和Python3的区别。目前D2已经稳定下来。其中一部分特性包括支援強制[常數正確性](https://zh.wikipedia.org/wiki/常數正確性 "wikilink")（const-correctness），以及有限的支援連結以
[C++](../Page/C++.md "wikilink") 編寫的代碼。

## 实现

目前D直接[編譯成](../Page/編譯器.md "wikilink")[原生碼以高效執行](https://zh.wikipedia.org/wiki/原生碼 "wikilink")。

D语言1.x版本已稳定，不再功能变更或扩展，2.0版本是其正式版本，不完全相容舊版本的語言和編譯器。官方編譯器由[Walter
Bright定義語言本身](https://zh.wikipedia.org/wiki/Walter_Bright "wikilink")。

  - [DMD編譯器](http://www.digitalmars.com/d/dcompiler.html)：Digital Mars
    D編譯器，由Walter Bright編寫的官方D編譯器。編譯器前端的授權許可为[Artistic
    License和](https://zh.wikipedia.org/wiki/Artistic_License "wikilink")[GNU](../Page/GNU.md "wikilink")
    [GPL兩者](https://zh.wikipedia.org/wiki/GPL "wikilink")；前端的原始碼連同編譯器執行碼一起發佈。編譯器的後端則是私有的。
  - [GDC](http://dgcc.sourceforge.net/)：D
    1.0編譯器，以DMD編譯器前端，以及[GCC後端所組成](../Page/GCC.md "wikilink")。
  - [LDC](http://wiki.dlang.org/LDC/)：D
    2.0編譯器，以DMD編譯器前端，以及[LLVM後端所組成](../Page/LLVM.md "wikilink")。LDC的官方版本已不支持D1.0，但其分支版本依然支持D1.0\[2\]。

## 問題和爭議

### 運算子重載

D運算子重載在一定程度上不如C++強大。簡單的例子是`opIndex`，它不允許返回引用。這使像是`obj[i]
= 5;`的賦值不可能存在。D的解決方法是`opIndexAssign`運算子，它只用於這種特殊情況。此外，C++返回參考的方法允許返回型態的重載賦值運算子的用法。這在目前的D還不可能做到。D
2.0將會引入`opIndexLvalue`修正 - 類似運算子重載和`opIndexAssign`。

### 低功的結構

結構在D之中是一種樸素舊式資料的型態，不過也可像變數一樣包含方法。這對有意輕量化的建構而言相當實用，如矩陣或向量，這些不需要完整的D類別功能（以及體積）。然而，D結構沒有建構子和解構子。建構子可用靜態`opCall`運算子部分取代，不過它沒有適合的解構子等價物。此外，結構不允許繼承，這會是有益的設計，如[詭異循環模板模式（curiously
recurring template
pattern）的使用](https://zh.wikipedia.org/wiki/CRTP "wikilink")。

### 標準函式庫中缺乏功能

D的標準函式庫稱作[Phobos](http://digitalmars.com/d/phobos/phobos.html)，且時常被認為過分簡單。[tango](http://dsource.org/projects/tango)專案編寫另一個標準函式庫試圖修正這一部分，不過phobos和tango目前由於不同的物件類別實作（導致垃圾回收困難）而互不相容。存在兩種事實上的標準函式庫可能導致更大的問題，部分軟體使用phobos，而其它軟體使用tango。

### 缺乏明確的目標

D經常限於「修正並改進的C++」。這會導致過分強調功能，這起因於加入新功能只是因為他們認為有用。舉個例子，

### 未完成對共享／動態函式庫的-{zh:支援; zh-hans:支持; zh-tw:支援;}-

Unix的ELF共享函式庫使用GDC編譯器-{zh:支援; zh-hans:支持;
zh-tw:支援;}-到某個程度。在Windows系統中，目前還不支援DLL。因此現階段不可能編寫插件。不像C++，經由C函式傳送的D物件將不能運作，因為這將會與垃圾回收器產生衝突。

## 範例

### 範例1

這個範例程式會輸出它自己的命令列參數。`main`函式是D程式的進入點，`args`是表示為字串陣列的命令列參數。在D語言裡的字串是一個字元陣列，以`char[]`表示。新版本中定義`string`為`char[]`的別名，不過別名定義必須與舊版本相容。

``` D
import std.stdio;       // 以使用writefln()
alias char[] string;    // 以相容舊的編譯器；新的編譯器中已隱含定義
int main(string[] args)
{
    foreach(i, a; args)
        writefln("args[%d] = '%s'", i, a);
    return 0;
}
```

`foreach`語法可迭代所有的集合，在本例中，它從`args`陣列生成索引（`i`）和值（`a`）的序列。索引`i`和值`a`的型態會從`args`陣列的型態推斷。

### 範例2

本例使用關聯陣列建立更複雜的資料結構。

``` D
import std.stdio;       // 以使用writefln()
alias char[] string;    // 以相容舊的編譯器；新的編譯器中已隱含定義

int main(string[] args)
{
    // 宣告以字串鍵和字串陣列作為資料的關聯陣列
    string[] [string] container;

    // 將人們加入到容器中，並讓他們攜帶一些項目
    container["Anya"] ~= "scarf";
    container["Dimitri"] ~= "tickets";
    container["Anya"] ~= "puppy";

    // 迭代容器中所有的人
    //Iterate over all the persons in the container
    foreach (string person, string[] items; container)
        display_item_count(person, items);
    return 0;//完成
}

void display_item_count(string person, string[] items)
{
    writefln(person, " is carrying ", items.length, " items.");
}
```

### 範例3

本例繁多的註解顯示出D語言與C++ 的不同之處，以及仍然保留的方面。

``` D
#!/usr/bin/dmd -run
/* 支援sh風格的script語法！*/
/* D語言的Hello World
 * 進行編譯：
 *   dmd hello.d
 * 或進行最佳化：
 *   dmd -O -inline -release hello.d
 * 或產生文件：
 *   dmd hello.d -D
 */

import std.stdio;       // 參照常用的I/O例行工作。
alias char[] string;    // 以相容舊的編譯器；新的編譯器中已隱含定義

int main(string[] args)
{
    // 'writefln' (寫入-格式化-行，Write-Formatted-Line)即型態安全的「printf」
    writefln("Hello World, "             // 自動連結的字串文字
             "Reloaded");

    // 字串即字元的動態陣列「char[]」，別名為「string」
    // 自動的型態推斷，以及內建的foreach
    foreach(argc, argv; args)
    {
        auto cl = new CmdLin(argc, argv);                       // 支援OOP
    writefln(cl.argnum, cl.suffix, " arg: %s", cl.argv);    // 使用者定義的類別屬性。

    delete cl;                // 垃圾回收或顯示的記憶體管理——由你自己選擇
    }

    // 巢狀結構、類別和函式
    struct specs
    {
        // 所有的變數會在執行時期自動初始化為0
        int count, allocated;
    // 不過你可選擇避開陣列的初始化
        int[10000] bigarray = void;
    }

    specs argspecs(string[] args)
    // 可選用的（內建）函式契約。
    in
    {
        assert(args.length > 0);                   // 內建assert
    }
    out(result)
    {
        assert(result.count == CmdLin.total);
        assert(result.allocated > 0);
    }
    body
    {
        specs* s = new specs;
        // 不需要「->」
        s.count = args.length;  // 「length」屬性是元素的數量。
        s.allocated = typeof(args).sizeof; // 原生型態內建的屬性
    foreach(arg; args)
        s.allocated += arg.length * typeof(arg[0]).sizeof;
    return *s;
    }

    // 內建字串和普通的字串操作，例如「~」是連結。
    string argcmsg = "argc = %d";
    string allocmsg = "allocated = %d";
    writefln(argcmsg ~ ", " ~ allocmsg,
        argspecs(args).count,argspecs(args).allocated);
    return 0;
}

/**
 * 儲存單獨命令列參數
 */
class CmdLin
{
    private
    {
        int _argc;
        string _argv;
        static uint _totalc;
    }

    public:
        /**
         * 物件的建構子。
         * 參數：
         *   argc = 參數的序列計數。
         *   argv = 參數內文。
         */
        this(int argc, string argv)
        {
            _argc = argc + 1;
            _argv = argv;
            _totalc++;
        }

        ~this() // 物件的解構子
        {
            // 本例中不做任何事。
        }

        int argnum() // 屬性，可返回參數數目
        {
            return _argc;
        }

        string argv() // 屬性，可返回參數內文
        {
            return _argv;
        }

        wstring suffix() // 屬性，可返回序數後綴
        {
            wstring suffix; // 內建Unicode字串（UTF-8，UTF-16，UTF-32）
            switch(_argc)
            {
                case 1:
                    suffix = "st";
                    break;
                case 2:
                    suffix = "nd";
                    break;
                case 3:
                    suffix = "rd";
                    break;
                default:  // 'default' is mandatory with "-w" compile switch.
                    suffix = "th";
            }
            return suffix;
        }

        /**
          * 靜態屬性，如同在C++ 或Java中，
          * 適用於類別物件，而不是實體。
          * 返回：己加入的命令列參數總數。
          */
        static typeof(_totalc) total()
        {
            return _totalc;
        }

        // 類別不變量，任何方法在執行之後，這些必須為真。
        invariant ()
        {
            assert(_argc > 0);
            assert(_totalc >= _argc);
        }
}
```

### 範例4

本例顯示出一部分D語言強大的編譯時期特性。

``` D
/*
 * D語言裡的模板比C++ 的要更加強大。
 * 在此可以看到使用static if（D的編譯時期條件建構）簡單的建構出階乘模板。
 */
template Factorial(ulong n)
{
    static if( n <= 1 )
        const Factorial = 1;
    else
        const Factorial = n * Factorial!(n-1);
}

/*
 * 這裡有一個正規的函式，可完成同樣的計算。
 * 注意它們有多麼的相似。
 */
ulong factorial(ulong n)
{
    if( n <= 1 )
        return 1;
    else
        return n * factorial(n-1);
}

/*
 * 終於，我們可以計算我們的階乘。注意，我們不需要去
 * 明確的指定我們的常數的型態：編譯器有足夠的智能為
 * 我們填充空白，因為它早已知道賦值中右手邊的型態。
 */
const fact_7 = Factorial!(7);

/*
 * 這是編譯時期函式評估的範例：普通函式可用於常數、
 * 編譯時期表達式，假若它們滿足一定的條件。
 */
const fact_9 = factorial(9);

/*在此我們可以看到多麼強大的D我們使用
 * std.metastrings.Format模板完成型態安全的printf
 * 資料格式化，並使用message pragma顯示計算結果。
 */
import std.metastrings;
pragma(msg, Format!("7! = %s", fact_7));
pragma(msg, Format!("9! = %s", fact_9));

/*
 * 完成任務後，我們可以強制停止編譯。這樣的程式需是
 * 從未實際編譯成可執行檔！
 */
static assert(false, "My work here is done.");
```

## 參考資料

## 外部連結

  - [Digital Mars: D程式語言](http://www.digitalmars.com/d/)（官方網站）

  -
  - [DSource，D語言的開放原始碼社群。](http://www.dsource.org)

  - [Dprogramming.com，視窗化程式庫DFL的首頁。](http://www.dprogramming.com)

  - [Wiki4D，「D語言的維基頁」](http://www.prowiki.org/wiki4d/wiki.cgi?FrontPage)

  - [gdc](http://dgcc.sourceforge.net/)，[GCC的D語言前端](../Page/GCC.md "wikilink")

  - [電腦語言評測遊戲](https://www.webcitation.org/5msbXYFX1?url=http://shootout.alioth.debian.org/debian/benchmark.php?test=all)

  - [D文件的維基頁](http://www.docwiki.net/)

  - [D語言特性列表](http://www.digitalmars.com/d/comparison.html)

  - [Walter
    Bright介紹D語言的影片](http://video.google.com/videoplay?docid=-7073020265668105471)

  - [Ddbg - Win32
    D除錯器](https://web.archive.org/web/20070224161328/http://ddbg.mainia.de/)

  - [DWin - D語言庫](http://dwin.d-programming-language-china.org/)

  - [DLogo - D語言按鈕，廣告欄](http://dlogo.chinese-blog.org/)

  - [SciTE4D - D語言編輯器](http://scite4d.d-programming-language-china.org/)

  - [D語言中國社區，　D語言入門，D語言GUI介紹等](http://www.d-programming-language-china.org/)

  - [D語言中文討論區](https://archive.is/20130503010712/http://bbs.d-programming-language-china.org/)

  - [D Programming
    Language簡介](https://web.archive.org/web/20090218044556/http://www.dev.idv.tw/mediawiki/index.php/D_Programming_Language%E7%B0%A1%E4%BB%8B)

[Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink")
[Category:静态类型编程语言](https://zh.wikipedia.org/wiki/Category:静态类型编程语言 "wikilink")
[Category:花括號程式語言](https://zh.wikipedia.org/wiki/Category:花括號程式語言 "wikilink")
[Category:多範型程式語言](https://zh.wikipedia.org/wiki/Category:多範型程式語言 "wikilink")
[Category:系統程式語言](https://zh.wikipedia.org/wiki/Category:系統程式語言 "wikilink")

1.
2.