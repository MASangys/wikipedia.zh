**asm.js**是一个[中間語言](../Page/中間語言.md "wikilink")，设计目的是使采用[C等](https://zh.wikipedia.org/wiki/C语言 "wikilink")[编程语言编写的](../Page/编程语言.md "wikilink")[计算机软件可运行为](https://zh.wikipedia.org/wiki/计算机软件 "wikilink")[网络应用程序](../Page/网络应用程序.md "wikilink")，同时性能特征明显优于标准[JavaScript](../Page/JavaScript.md "wikilink")。

asm.js包括一个[JavaScript的严格子集](../Page/JavaScript.md "wikilink")，其中的代码采用具有手动内存管理的静态类型语言（就像C语言）编写，代码使用一个[源代码至源代码编译器](https://zh.wikipedia.org/wiki/源代码至源代码编译器 "wikilink")（例如基于[LLVM的](../Page/LLVM.md "wikilink")）翻译。通过将语言特性限制在适合和其他性能改进的范围内，性能得到了提高。

[Mozilla
Firefox是第一个实现针对asm](../Page/Firefox.md "wikilink").js优化的浏览器，从Firefox
22开始使用。\[1\]

## 设计

asm.js由[JavaScript语言的一个严格子集组成](../Page/JavaScript.md "wikilink")。它可以显著提高采用具有手动内存管理（例如C）的静态类型语言编写的[网络应用程序在使用源代码至源代码编译器转换为JavaScript后的性能](../Page/网络应用程序.md "wikilink")。Asm.js的目标并不是提高手写JavaScript代码的性能，也不实现增强性能以外的其他目的。

通过将语言特性限制在适合提前优化和其他性能改进的范围内，其旨在具有比标准JavaScript更接近于本地（原生）代码的性能特征。\[2\]通过使用JavaScript的一个子集，asm.js很大程度上支持所有主要的[网页浏览器](../Page/网页浏览器.md "wikilink")\[3\]，这不同于[WebAssembly或](../Page/WebAssembly.md "wikilink")[Google
Native Client等途径](../Page/Native_Client.md "wikilink")。

## 代码生成

asm.js通常不直接编写，而是作为一种通过[编译器生成的中间语言](https://zh.wikipedia.org/wiki/编译器 "wikilink")，该编译器获取[C++或其他语言的源代码](../Page/C++.md "wikilink")，然后输出asm.js。

例如，提供下列C语言代码：

``` c
int f(int i) {
  return i + 1;
}
```

Emscripten将输出下列JavaScript代码：

``` ecmascript
function f(i) {
  i = i|0;
  return (i + 1)|0;
}
```

注意新增的`|0`和去除的类型说明符。在JavaScript中，按位运算符会将操作数转换为32位有符号整数并给出整数结果。这意味着使用0的[按位OR为一个无作用的操作](../Page/位操作.md "wikilink")，只是将值转换为整数。通过对每个参数这样做，确保了从外部代码调用该函数时，该值被转换为正确的类型。这也用于返回值，在该情况下确保添加1到i的结果将是一个整数（否则可能变得太大），并标记函数的返回类型。这些转换为asm.js所必需，这样优化编译器才可以提前生成高效的本地代码。在此类优化编译器中，当asm.js代码调用其他asm.js代码时，转换不执行，因为必需的类型说明符意味着已保证值具有正确的类型。此外，不同于执行浮点加法和转换为整数，它可以简单地执行本机整数运算。这样一来，它可以得到显著的性能增益。

下面是另一个计算字符串长度的例子：

``` c
size_t strlen(char *ptr) {
  char *curr = ptr;
  while (*curr != 0) {
    curr++;
  }
  return (curr - ptr);
}
```

它对应以下asm.js代码：

``` ecmascript
function strlen(ptr) {
  ptr = ptr|0;
  var curr = 0;
  curr = ptr;
  while (MEM8[curr]|0 != 0) {
    curr = (curr + 1)|0;
  }
  return (curr - ptr)|0;
}
```

在生成的代码中，变量MEM8实际上是一个类型缓冲区的逐字节“视图”，它充当asm.js代码的堆（heap）。

## 性能

因为asm.js在浏览器中运行，所以性能很大程度上取决于浏览器和硬件。编译为asm.js的C程序的初步基准通常比使用[Clang的本地编译慢一倍以上](../Page/Clang.md "wikilink")。\[4\]

这种超过普通JavaScript的性能增益主要是由于100％的[类型一致性以及几乎没有](../Page/資料類型.md "wikilink")[垃圾回收](../Page/垃圾回收_\(計算機科學\).md "wikilink")（内存是手动管理的大型类型数组）。这个更简单的模型没有动态行为，没有内存分配或释放，只有一组简单、定义明确的整数和浮点操作，从而可实现更好的性能和优化潜力。

Mozilla在2013年12月的基准测试显示：“使用[float32优化的Firefox可以运行所有基准](https://zh.wikipedia.org/wiki/單精度浮點數 "wikilink")，只比原生速度慢不到1.5倍。\[5\]
Mozilla指出本地编译代码的性能不是单个度量，而是一个范围，使用不同的本地编译器（此例中为[Clang与](../Page/Clang.md "wikilink")[GCC](../Page/GCC.md "wikilink")）将提供不同性能的代码。“事实上，在一些基准测试比如[Box2D](https://zh.wikipedia.org/wiki/Box2D "wikilink")、FASTA和copy中，asm.js与Clang比较接近，或者比Clang到GCC还接近Clang。在一种情况下，asm.js甚至在Box2D上略微击败Clang。”

## 实现

[Emscripten项目提供了可以编译C和C](https://zh.wikipedia.org/wiki/Emscripten "wikilink")++（或其他任何可转换为[LLVM](../Page/LLVM.md "wikilink")
[IR的语言](../Page/中間語言.md "wikilink")）代码为asm.js的工具。\[6\]

所有支持[JavaScript较新版本的浏览器都应该能支持运行asm](../Page/ECMAScript.md "wikilink").js代码，因为它是该规范的子集。

部分浏览器的实现针对asm.js进行了特别优化：

  - [Mozilla
    Firefox是第一个实现针对asm](../Page/Firefox.md "wikilink").js优化的网页浏览器，自Firefox
    22开始使用。
    OdinMonkey是Mozilla在Firefox中使用的asm.js提前编译器，它是[IonMonkey](../Page/SpiderMonkey.md "wikilink")（[SpiderMonkey的JIT编译器](../Page/SpiderMonkey.md "wikilink")）的一个组件。
  - 微软在[Microsoft
    Edge使用的JavaScript引擎](../Page/Microsoft_Edge.md "wikilink")[Chakra中实现了asm](https://zh.wikipedia.org/wiki/Chakra "wikilink").js支持，执行验证以产生高度优化的JIT代码。\[7\]
  - [Google Chrome的](../Page/Google_Chrome.md "wikilink")[V8
    JavaScript引擎在Chrome](../Page/V8_\(JavaScript引擎\).md "wikilink")
    28中对asm.js基准测试的性能是以前Chrome版本的两倍以上，\[8\]尽管Chrome的V8没有使用提前编译。

## 采用

目前几乎所有基于asm.js的应用程序都是使用[Emscripten或Mandreel编译为asm](https://zh.wikipedia.org/wiki/Emscripten "wikilink").js的C/C++应用程序。

到目前为止，已有不少[编程语言](../Page/编程语言.md "wikilink")、、[程序](../Page/计算机程序.md "wikilink")、[函式庫](../Page/函式庫.md "wikilink")、[游戏](../Page/电脑游戏.md "wikilink")、[游戏引擎及其他软件已被](../Page/游戏引擎.md "wikilink")[移植](https://zh.wikipedia.org/wiki/移植_\(軟體\) "wikilink")。\[9\]部分名单见下：

### 编程语言

  - C/C++：[Clang和](../Page/Clang.md "wikilink")[LLVM](../Page/LLVM.md "wikilink")
  - [Lua](../Page/Lua.md "wikilink") VM：Lua
    [虛擬機器](../Page/虛擬機器.md "wikilink")\[10\]
  - [Perl](../Page/Perl.md "wikilink")：(micro)perl-5.16.3的移植\[11\]
  - [Python](../Page/Python.md "wikilink") –
    [CPython移植](../Page/CPython.md "wikilink")\[12\]
  - [Ruby](../Page/Ruby.md "wikilink") – Ruby移植\[13\]

### 应用程序框架

  - pepper.js：许多[PNaCl应用的移植](../Page/Native_Client.md "wikilink")\[14\]
  - [Qt](../Page/Qt.md "wikilink")：various Qt
    demos及KDE应用（如[Kate](../Page/Kate.md "wikilink")）的移植\[15\]

### 程序和库

  - [OpenGL](../Page/OpenGL.md "wikilink")、[SDL和](https://zh.wikipedia.org/wiki/SDL "wikilink")[SDL2](https://zh.wikipedia.org/wiki/SDL "wikilink")\[16\]
  - [Vim](../Page/Vim.md "wikilink")（Vi IMproved）\[17\]
  - [FreeType](../Page/FreeType.md "wikilink")：在JavaScript中使用FreeType的[TrueType](../Page/TrueType.md "wikilink")[字体光栅化](../Page/字体光栅化.md "wikilink")\[18\]
  - [SQLite](../Page/SQLite.md "wikilink")\[19\]
  - [GNU Privacy Guard](../Page/GnuPG.md "wikilink")\[20\]
  - [ctags](https://zh.wikipedia.org/wiki/ctags "wikilink")\[21\]
  - [gnuplot](https://zh.wikipedia.org/wiki/gnuplot "wikilink")\[22\]
  - [Graphviz](../Page/Graphviz.md "wikilink")\[23\]
  - [zlib](https://zh.wikipedia.org/wiki/zlib "wikilink")\[24\]

### 游戏引擎

  - [虚幻引擎3](../Page/虚幻引擎.md "wikilink"): 在4天内移植\[25\]\[26\]
  - [Unreal Engine
    4](https://zh.wikipedia.org/wiki/Unreal_Engine_4 "wikilink")
  - [Unity](../Page/Unity_\(游戏引擎\).md "wikilink")\[27\]
  - [ScummVM](https://zh.wikipedia.org/wiki/ScummVM "wikilink")，它支持许多经典的冒险游戏\[28\]
  - [Godot](https://zh.wikipedia.org/wiki/Godot "wikilink")\[29\]

### 游戏

  - *[Doom](../Page/毀滅戰士_\(1993年遊戲\).md "wikilink")*：运行在[PrBoom上的开源](https://zh.wikipedia.org/wiki/PrBoom "wikilink")[Freedoom游戏assets](https://zh.wikipedia.org/wiki/Freedoom "wikilink")，基于开源的Doom代码\[30\]
  - *[SuperTux](../Page/超級企鵝.md "wikilink")*\[31\]
  - *[Dune II](../Page/沙丘II_新王朝.md "wikilink")* via OpenDune\[32\]
  - *[BananaBread](https://zh.wikipedia.org/wiki/BananaBread "wikilink")*
    based on [Cube 2](../Page/Sauerbraten.md "wikilink")\[33\]
  - [Humble Mozilla
    Bundle中的每个游戏](../Page/Humble_Bundle.md "wikilink")\[34\]（[Super
    Hexagon](https://zh.wikipedia.org/wiki/Super_Hexagon "wikilink")、[轻率漠视重力](../Page/轻率漠视重力.md "wikilink")、[Osmos](https://zh.wikipedia.org/wiki/Osmos "wikilink")、[Zen
    Bound
    2](https://zh.wikipedia.org/wiki/Zen_Bound_2 "wikilink")、[Dustforce
    DX](https://zh.wikipedia.org/wiki/Dustforce_DX "wikilink")、[Voxatron](../Page/Humble_Bundle.md "wikilink")、[FTL:
    Advanced
    Edition和](https://zh.wikipedia.org/wiki/FTL:_Advanced_Edition "wikilink")[Democracy
    3](../Page/民主選舉_\(遊戲\).md "wikilink")）

### 仿真器

  - EM-DOSBox：一个[DOSBox模拟器的移植](../Page/DOSBox.md "wikilink")\[35\]
  - [Start9.io](https://zh.wikipedia.org/wiki/Start9.io "wikilink")：面向多个游戏架构的网络仿真平台
  - JSMESS：一个[MESS模拟器的移植](https://zh.wikipedia.org/wiki/Multi_Emulator_Super_System "wikilink")，面向许多游戏机和计算机系统\[36\]

### 数学计算

  - HTML5 Fractal Playground\[37\] – 绘制迭代函数生成的分形，例如[Mandelbrot
    fractal](../Page/曼德博集合.md "wikilink")。

## 参见

  - [WebAssembly](../Page/WebAssembly.md "wikilink") –
    一个开发中的用于浏览器的字节码，旨在比asm.js更快地解析
    [RPython](../Page/PyPy.md "wikilink")
  - [CrossBridge](https://zh.wikipedia.org/wiki/CrossBridge "wikilink")
  - [Google Native Client](../Page/Native_Client.md "wikilink")（NaCl）

## 参考资料

## 外部链接

  -
  -
  - [Asm.js: The JavaScript Compile
    Target](http://ejohn.org/blog/asmjs-javascript-compile-target)

  - [RPerl](https://github.com/wbraswell/rperl#rperl)

  - [Asm.js usage per Google Chrome
    statistics](https://www.chromestatus.com/metrics/feature/popularity#UseAsm)

[Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")
[Category:Mozilla](https://zh.wikipedia.org/wiki/Category:Mozilla "wikilink")
[Category:Web编程](https://zh.wikipedia.org/wiki/Category:Web编程 "wikilink")

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
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.
36.
37.