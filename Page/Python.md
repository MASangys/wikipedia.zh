**Python**（
），是一种广泛使用的[解释型](../Page/直譯语言.md "wikilink")，[高级编程](../Page/高级编程語言.md "wikilink")，[通用型编程语言](../Page/通用编程语言.md "wikilink")，由[吉多·范罗苏姆创造](../Page/吉多·范罗苏姆.md "wikilink")，第一版发布于1991年。可以視之為一種改良（加入一些其他程式語言的優點，如物件導向）的[LISP](../Page/LISP.md "wikilink")。Python的设计哲学强调代码的[可读性和简洁的语法](../Page/可读性.md "wikilink")（尤其是使用[空格缩进划分代码块](../Page/越位规则.md "wikilink")，而非使用大括号或者关键词）。相比於C++或Java，Python让开发者能够用更少的代码表达想法。不管是小型还是大型程序，该语言都试图让程序的结构清晰明了。

与[Scheme](../Page/Scheme.md "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[Tcl等动态类型编程语言一样](../Page/Tcl.md "wikilink")，Python拥有[动态类型系统和](../Page/類型系統.md "wikilink")[垃圾回收功能](../Page/垃圾回收_\(計算機科學\).md "wikilink")，能够自动管理内存使用，并且支持多种编程范式，包括面向对象、命令式、函数式和过程式编程。其本身拥有一个巨大而广泛的标准库。

Python
[解释器本身几乎可以在所有的](../Page/解释器.md "wikilink")[操作系统中运行](../Page/操作系统.md "wikilink")。Python的其中一個[直譯器](../Page/直譯器.md "wikilink")[CPython是用](../Page/CPython.md "wikilink")[C语言编写的](../Page/C语言.md "wikilink")、是一個由社群驱动的自由[软件](../Page/軟體.md "wikilink")，目前由[Python软件基金会管理](../Page/Python軟體基金會.md "wikilink")。

## 歷史

[Guido_van_Rossum_OSCON_2006.jpg](https://zh.wikipedia.org/wiki/File:Guido_van_Rossum_OSCON_2006.jpg "fig:Guido_van_Rossum_OSCON_2006.jpg")（Guido
van Rossum）。\]\]

Python的創始人為[吉多·范羅蘇姆](../Page/吉多·范羅蘇姆.md "wikilink")。1989年的聖誕節期間，[吉多·范羅蘇姆為了在](../Page/吉多·范羅蘇姆.md "wikilink")[阿姆斯特丹打發时间](../Page/阿姆斯特丹.md "wikilink")，決心開發一個新的腳本解釋程式，作為[ABC語言的一種繼承](../Page/ABC語言.md "wikilink")。之所以選中Python作為程式的名字，是因為他是BBC電視劇——[蒙提·派森的飛行馬戲團的愛好者](../Page/蒙提·派森的飛行馬戲團.md "wikilink")。ABC是由吉多参加設计的一種教學語言。就吉多本人看来，ABC這種語言非常優美和强大，是專門為非專業程式設計師設計的。但是ABC語言并没有成功，究其原因，吉多認為是非開放造成的。吉多決心在Python中避免這一錯誤，并取得了非常好的效果，完美结合了[C和其他一些語言](../Page/C语言.md "wikilink")。\[1\]

就這樣，Python在吉多手中誕生了。實際上，第一個實現是在[Mac電腦上](../Page/Mac.md "wikilink")。可以说，Python是從ABC發展起来，主要受到了[Modula-3](../Page/Modula-3.md "wikilink")（另一種相當優美且强大的語言，為小型團體所设计的）的影響。并且結合了[Unix
shell和C的習慣](../Page/Unix_shell.md "wikilink")。

目前吉多仍然是Python的主要開發者，決定整個Python語言的發展方向。Python社群經常稱呼他是**[終身仁慈獨裁者](../Page/終身仁慈獨裁者.md "wikilink")**（BDFL）。

Python
2.0於2000年10月16日發布，增加了實現完整的[垃圾回收](../Page/垃圾回收_\(計算機科學\).md "wikilink")，并且支持[Unicode](../Page/Unicode.md "wikilink")。同时，整個開發過程更加透明，社群對開發進度的影響逐渐擴大。

Python 3.0於2008年12月3日發布，此版不完全兼容之前的Python原始碼。不過，很多新特性後來也被移植到舊的Python
2.6/2.7版本。

## 特性與設計哲學

Python是完全物件導向的語言。函數、模組、數字、字串都是物件。並且完全支持繼承、重載、派生、多重繼承，有益於增强原始碼的複用性。Python支持重載運算符，因此Python也支持泛型設計。相對於Lisp這種傳統的函數式程式語言，Python對[函数式编程只提供了有限的支持](../Page/函数式编程.md "wikilink")。有兩個標準庫（functools,
itertools）提供了与[Haskell和](../Page/Haskell.md "wikilink")[Standard
ML中类似的函數式程式設計工具](../Page/Standard_ML.md "wikilink")。

雖然Python可能被粗略地分類為「[腳本語言](../Page/腳本語言.md "wikilink")」，但實際上一些大規模軟體開發計划例如[Zope](../Page/Zope.md "wikilink")、Mnet及[BitTorrent](../Page/BitTorrent_\(软件\).md "wikilink")，[Google也广泛地使用它](../Page/Google.md "wikilink")。Python的支持者較喜歡稱它為一種高階動態程式語言，原因是「腳本語言」泛指僅作簡單程式設計任務的語言，如shell
script、[VBScript等](../Page/VBScript.md "wikilink")-{只}-能處理簡單任務的程式語言，並不能與Python相提並論。

Python本身被設計為可擴充的。並非所有的特性和功能都集成到語言核心。Python提供了豐富的[API和工具](../Page/API.md "wikilink")，以便程式設計師能够輕鬆地使用[C](../Page/C语言.md "wikilink")、[C++](../Page/C++.md "wikilink")、[Cython來編寫擴充模組](../Page/Cython.md "wikilink")。Python編譯器本身也可以被集成到其它需要腳本語言的程式内。因此，有很多人把Python作为一種「[膠水語言](../Page/膠水語言.md "wikilink")」使用。使用Python將其他語言編寫的程式進行集成和封裝。在[Google内部的很多项目](../Page/Google.md "wikilink")，例如[Google應用服務引擎使用](../Page/Google應用服務引擎.md "wikilink")[C++編寫性能要求極高的部分](../Page/C++.md "wikilink")，然后用Python或[Java](../Page/Java.md "wikilink")/[Go調用相應的模組](../Page/Go.md "wikilink")。\[2\]《Python技术手册》的作者马特利（Alex
Martelli）說：“這很難講，不過，2004年，Python已在Google內部使用，Google召募許多Python高手，但在這之前就已決定使用Python。他們的目的是尽量使用Python，在不得已时改用C++；在操控硬體的場合使用C++，在快速開發時候使用Python。”\[3\]

Python的設計哲學是“優雅”、“明確”、“簡單”。Python開發者的哲學是“用一種方法，最好是只有一種方法來做一件事”，也因此它和擁有明顯個人風格的其他語言很不一樣。在設計Python語言時，如果面臨多種選擇，Python開發者一般會拒绝花俏的語法，而選擇明確没有或者很少有歧義的語法。這些準則被稱為「**Python格言**」。在Python解釋器内運行`import
this`可以獲得完整的列表。

\>\>\> import this --From:
[Python.org](https://www.python.org/dev/peps/pep-0020/)

Python開發人員盡量避開不成熟或者不重要的優化。一些針對非重要部位的加快運行速度的補丁通常不會被合併到Python内。再加上因为Python属于动态类型语言，动态类型语言是在运行期间检查数据的类型，不得不保持描述变量值的实际类型标记，程序在每次操作变量时，需要执行数据依赖分支，而静态类型语言相对于动态类型语言，在声明变量时已经指定了数据类型和表示方法，根据这一原理导致Python相对于C、Visual
Basic等静态类型语言来说运行速度较慢。不過，根據[二八定律](../Page/帕雷托法則.md "wikilink")，大多數程式對速度要求不高。在某些對運行速度要求很高的情況，目前可用的JIT技術是[PyPy](../Page/PyPy.md "wikilink")。

## 應用范围

### [網絡應用程式](../Page/網絡應用程式.md "wikilink")

Python經常被用於Web開發。比如，通過模組，[Apache可以運行用Python編寫的Web程式](../Page/Apache.md "wikilink")。使用Python语言编写的[Gunicorn作为Web服务器](../Page/Gunicorn.md "wikilink")，也能够运行Python语言编写的Web程序。Python定義了[WSGI標準應用接口来協調Http伺服器與基於Python的Web程式之間的溝通](../Page/WSGI.md "wikilink")。一些Web框架，如[Django](../Page/Django.md "wikilink")、[Pyramid](../Page/Pyramid.md "wikilink")、[TurboGears](../Page/TurboGears.md "wikilink")、[Tornado](../Page/Tornado.md "wikilink")、[web2py](../Page/web2py.md "wikilink")、[Zope](../Page/Zope.md "wikilink")、[Flask等](../Page/Flask.md "wikilink")，可以讓程式設計師輕鬆地開發和管理複雜的Web程式。

Python對於各种網路協定的支援很完善，因此經常被用於編寫伺服器軟體、網路爬蟲。第三方函式庫[Twisted支援非同步線上編寫程式和多數標準的網路協定](../Page/Twisted.md "wikilink")（包含客户端和伺服器），並且提供了多種工具，被廣泛用於編寫高性能的伺服器軟體。另有[gevent这个流行的第三方库](../Page/gevent.md "wikilink")，同样能够支持高性能高并发的网络开发。

### [GUI开发](../Page/GUI.md "wikilink")

Python本身包含的Tkinter库能够支持简单的[GUI开发](../Page/GUI.md "wikilink")。但是越来越多的Python程序员选择[wxPython或者](../Page/wxPython.md "wikilink")[PyQt等GUI套件来开发跨平台的桌面软件](../Page/PyQt.md "wikilink")。使用它们开发的桌面软件运行速度快，与用户的桌面环境相契合。通过[PyInstaller还能将程序发布为独立的安装程序包](../Page/PyInstaller.md "wikilink")。

### 作業系統

在很多作業系統裡，Python是標準的系统元件。大多數Linux發行版和Mac OS
X都集成了Python，可以在終端機下直接執行Python。有一些Linux發行版的安裝器使用Python語言編寫，比如Ubuntu的Ubiquity安裝器、[Red
Hat
Linux和Fedora的Anaconda安裝器](../Page/Red_Hat_Linux.md "wikilink")。在RPM系列Linux发行版中，有一些系统组件就是用Python编写的。Gentoo
Linux使用Python來編寫它的Portage[軟件包管理系统](../Page/軟件包管理系统.md "wikilink")。Python標準庫包含了多個調用作業系统功能的函式庫。通過pywin32這個第三方軟體包，Python能夠訪問Windows的COM服務及其它Windows
API。使用IronPython，Python程式能夠直接調用.Net Framework。

### 科學計算

[NumPy](../Page/NumPy.md "wikilink")、[SciPy](../Page/SciPy.md "wikilink")、[Matplotlib可以讓Python程式設計師編寫科学計算程式](../Page/Matplotlib.md "wikilink")。有些公司会使用[Scons代替make构建C](../Page/SCons.md "wikilink")++程序。

很多遊戲使用C++編寫圖形顯示等高性能模組，而使用Python或者[Lua編寫遊戲的邏輯](../Page/Lua.md "wikilink")、伺服器。相較於Python，[Lua的功能更簡單](../Page/Lua.md "wikilink")、體積更小；而Python則支援更多的特性和數據類型。很多遊戲，如[EVE
Online使用Python來處理遊戲中繁多的邏輯](../Page/EVE_Online.md "wikilink")。

YouTube、Google、Yahoo\!、NASA都在内部大量地使用Python。[OLPC的作業系统Sugar項目的大多數軟體都是使用Python編寫](../Page/OLPC.md "wikilink")。

## Hello World

一個在標準輸出設備上輸出[Hello
World的簡單程式](../Page/Hello_World.md "wikilink")，這種程式通常作為開始學習程式語言時的第一個程式：

\*;適用於Python 3.0以上版本以及Python 2.6、Python 2.7

``` Python
print("Hello, world!")
```

\*;適用於Python 2.6以下版本

``` Python
print "Hello, world!"
```

### 單步執行

Python也可以單步直譯執行。執行Python直譯器進入互動式命令列的環境，你可以在提示符號\>\>\>旁輸入print（"Hello,
world\!"），按Enter鍵輸出結果：

\*;適用於Python 3.0以上版本以及Python 2.6、Python 2.7

``` Python
>>> print('Hello, world!')
Hello, world!
```

\*;適用於Python 2.6以下版本

``` Python
>>> print "Hello, world!"
Hello, world!
```

注意，在3.0及以上版本中，需要在"Hello,world"周围加上圆括号。其原因是在3.0及以上版本中，print命令不再是一个关键字，而是一个函数。

## 語法

Python的設計目標之一是讓程式碼具備高度的可閱讀性。它設計時盡量使用其它語言經常使用的標點符號和英文單字，讓程式碼看起来整潔美觀。因为Python是动态语言，它不像其他的靜態語言如[C](../Page/C.md "wikilink")、[Pascal那樣需要書寫](../Page/Pascal.md "wikilink")**聲明**語句。

### 縮排

Python開發者有意讓違反了**縮排規則**的程序不能通過解釋，以此來強迫程序員養成良好的編程習慣，也方便所有人查找和閱讀。並且Python語言利用縮排表示語句塊的開始和結束（[Off-side規則](../Page/Off-side規則.md "wikilink")），而非使用花括號或者某種[關鍵字](../Page/關鍵字.md "wikilink")。增加縮排表示語句塊的開始，而減少縮排則表示語句塊的結束。縮排成為了語法的一部分。例如`if`語句：

``` Python3
if age < 21:
    print("你不能買酒")  #美國法律規定21歲以下的人不能購買酒
    print("不過你能買口香糖")
print("這句話處於if語句塊的外面")
```

  - ***注：**上述例子為Python 3.0以上版本的程式碼。*

根據[PEP 8](https://www.python.org/dev/peps/pep-0008/#id17)的規定，必須使用**4個空格**來表示每級縮排。使用Tab字符和其它數目的空格雖然都可以被解釋器識別，但不符合編碼規範。支持Tab字符和其它数目的空格僅僅是為兼容很舊的Python程式和某些有問題的編輯程式。偏向使用Tab字符的程序員可以設置文本編輯器將Tab鍵轉換為4個空格實現縮進而不致導致縮進錯誤。

### 标识符

  - _单下划线开头：弱“内部使用”标识。对于“from M import \*”，将不导入所有以下划线开头的对象，包括包、模块、成员。
  - 单下划线结尾_：为了避免与python关键字的命名冲突
  - __双下划线开头：模块内的成员，表示私有成员，外部无法直接调用
  - __双下划线开头双下划线结尾__：指那些包含在用户无法控制的命名空间中的“魔术”对象或属性，如类成员的name
    、doc、init、import、file、等。推荐永远不要将这样的命名方式应用于自己的变量或函数。

### 語句和控制流

  - `if`語句，當條件成立時執行語句塊。經常與`else`, `elif`（相當於`else if`）配合使用。
  - `for`語句，遍历列表、字符串、字典、集合等[迭代器](../Page/迭代器.md "wikilink")，依次處理迭代器中的每個元素。
  - `while`語句，當條件為真時，循環執行語句塊。
  - `try`語句。與`except, finally, else`配合使用處理在程式執行中出现的異常情況。
  - `class`語句。用於定義類型。
  - `def`語句。用於定義函數和類型的方法。
  - `pass`語句。表示此行為空，不執行任何操作。
  - `assert`語句。用於程式調適階段時測試執行條件是否滿足。
  - `with`語句。Python2.6以後定義的語法，在一個場景中執行語句塊。比如，執行語句塊前加锁，然后在語句塊執行結束後释放锁。
  - `yield`语句。在迭代器函数内使用，用于返回一个元素。自从Python 2.5版本以后。这个语句变成一个运算符。
  - `raise`语句。抛出一个异常。
  - `import`语句。导入一个模块或包。常用写法：`from module import name, import module as
    name, from module import name as anothername`

### 表达式

Python的表达式写法与C/C++类似。只是在某些写法有所差别。

  - 主要的算术运算符与C/C++类似。`+, -, *, /, //, **, ~,
    %`分别表示加法或者取正、减法或者取负、乘法、除法、整除、乘方、取反、取餘數。`>>,
    <<`表示右移和左移。`&, |, ^`表示二进制的`AND, OR, XOR`运算。`>, <, ==, !=, <=,
    >=`用于比较两个表达式的值，分别表示大于、小于、等于、不等于、小于等于、大于等于。在这些运算符里面，`~, |, ^,
    &, <<, >>`必须应用于整数。

<!-- end list -->

  - Python使用`and`, `or`, `not`表示逻辑运算。

<!-- end list -->

  - `is, is not`用于比较两个变量是否是同一个对象。`in, not in`用于判断一个对象是否属于另外一个对象。

<!-- end list -->

  - Python支持字典、集合、列表的推导式（`dict comprehension, set comprehension, list
    comprehension`）。比如：

<!-- end list -->

``` Python
>>> [x + 3 for x in range(4)]
[3, 4, 5, 6]
>>> {x + 3 for x in range(4)}
{3, 4, 5, 6}
>>> {x: x + 3 for x in range(4)}
{0: 3, 1: 4, 2: 5, 3: 6}
```

  - Python支持“迭代表达式”（generator comprehension），比如计算0-9的平方和：

<!-- end list -->

``` Python
>>> sum(x * x for x in range(10))
285
```

  - Python使用`lambda`表示[匿名函数](../Page/匿名函数.md "wikilink")。匿名函数体只能是表达式。比如：

<!-- end list -->

``` Python
>>> add = lambda x, y : x + y
>>> add(3, 2)
5
```

  - Python使用`y if cond else
    x`表示条件表达式。意思是当`cond`为真时，表达式的值为`y`，否则表达式的值为`x`。相当于C++和Java里的`cond?y:x`。

<!-- end list -->

  - Python区分列表（list）和元组（tuple）两种类型。list的写法是`[1,2,3]`，而tuple的写法是`(1,2,3)`。可以改变list中的元素，而不能改变tuple。在某些情况下，tuple的括号可以省略。tuple对于赋值语句有特殊的处理。因此，可以同时赋值给多个变量，比如：

<!-- end list -->

``` Python
>>> x, y=1, 2 #同时给x,y赋值，最终结果：x=1, y=2
```

特别地，可以使用以下这种形式来交换两个变量的值：

``` Python
>>> x, y = y, x #最终结果：y=1, x=2
```

  - Python使用'（单引号）和"（双引号）来表示字符串。与Perl、Unix
    Shell语言或者Ruby、Groovy等语言不一样，两种符号作用相同。一般地，如果字符串中出现了双引号，就使用单引号来表示字符串;反之则使用双引号。如果都没有出现，就依个人喜好选择。出现在字符串中的\\（反斜杠）被解释为特殊字符，比如`\n`表示换行符。表达式前加`r`指示Python不解释字符串中出现的\\。这种写法通常用于编写正则表达式或者Windows文件路径。

<!-- end list -->

  - Python支持列表切割（list slices），可以取得完整列表的一部分。支持切割操作的类型有`str, bytes, list,
    tuple`等。它的语法是`...[left:right]`或者`...[left:right:stride]`。假定`nums`变量的值是`[1, 3, 5, 7, 8, 13, 20]`，那么下面几个语句为真：
      - `nums[2:5] == [5, 7, 8]`从下标为2的元素切割到下标为5的元素，但不包含下标为5的元素。
      - `nums[1:] == [3, 5, 7, 8, 13, 20]`切割到最后一个元素。
      - `nums[:-3] == [1, 3, 5, 7]`从最开始的元素一直切割到倒数第3个元素。
      - `nums[:] == [1, 3, 5, 7, 8, 13, 20]`返回所有元素。改变新的列表不会影响到nums。
      - `nums[1:5:2] == [3, 7]`从下标为1的元素切割到下标为5的元素但不包含下标为5的元素，且步长为2

### 函数

Python的函数支持[递归](../Page/递归.md "wikilink")、默认参数值、可变参数、闭包，但不支持函数[重载](../Page/重载.md "wikilink")。为了增强代码的可读性，可以在函数后书写“文档字符串”（Documentation
Strings，或者简称docstrings），用于解释函数的作用、参数的类型与意义、返回值类型与取值范围等。可以使用内置函数`help()`打印出函数的使用帮助。比如：

``` Python
>>> def randint(a, b):
...     "Return random integer in range [a, b], including both end points."
...
>>> help(randint)
Help on function randint in module __main__:

randint(a, b)
    Return random integer in range [a, b], including both end points.
```

函数调用时，实参可以如同C语言那样按照位置与形参匹配；也可以按照形式调用，即 param_name=value
形式的实参。在一个函数调用的实参表中，關鍵字引數必须出现在位置参数之后。

可变参数用\*args或\*\*dictargs表示，即在形式参数名字前加一个\*号，表示这是由多个实参组成的可变参数，该形参视作tuple数据类型；在形式参数名字前加\*\*号，表示这是由多个实参组成的可变参数，该形参视作dict数据类型。实际上，在一个"集合(collection)类型"（包括set、list、tuple甚至bytes、str等）的变量前加一个\*号，获得了其中所有元素作为多个对象。

Python的函数作为[第一類物件](../Page/第一類物件.md "wikilink")，具有和普通变量平等的地位。函数一旦定义，即可视作为普通对象，其形参会保留上次调用时的值，但在函数新的一次调用时会被实参值覆盖。因此函数的**缺省参数值**在连续多次调用该函数时，如果不被实参值覆盖，就会一直保留。例如：

``` python
def f(a, L=[]):
    L.append(a)
    return L

print(f(1))
print(f(2))
print(f(3))
```

结果为：

`[1]`
`[1, 2]`
`[1, 2, 3]`

函数的**缺省参数值**在函数被定义时被一次性计算其初值。

Python的函数实参与形参之间的结合是传递*对象的引用*\[4\]。这是因为Python的赋值操作是把（变量）名字绑定到对象上。形实结合也是这种方式。如果形参绑定到一个可变的对象，则通过形参对此对象内容的修改，在函数外也是可见的。如果形参绑定到一个不可变的对象，则通过形参是不能修改此对象内容，但可以把形参重新绑定到其它对象上，这并不影响函数外的对象的值。例如：

``` python
def foo(a):
    a.append('haha')

def bar(b):
    b=101 #实际上是重新绑定了另一个整型对象101

a=[]
b=100
foo(a)
bar(b)
print(a) #结果为['haha']
print(b) #结果为100
```

### 面向对象开发方法

面向对象开发方法是指绑定到对象的函数。调用对象方法的语法是`instance.method(arguments)`。它等价于调用`Class.method(instance,
arguments)`。当定义对象方法时，必须显式地定义第一个参数，一般该参数名都使用`self`，用于访问对象的内部数据。这里的`self`相当于C++,
Java里面的`this`变量，但是我们还可以使用任何其它合法的参数名，比如`this`和`mine`等，`self`与C++,Java里面的`this`不完全一样，它可以被看作是一个习惯性的用法，我们传入任何其它的合法名称都行，比如：

``` Python
class Fish(object):
    def eat(self, food):
        if food is not None:
            self.hungry=False
class User(object):
    def __init__(myself, name):
        myself.name = name

#构造Fish的实例：
f=Fish()
#以下两种调用形式是等价的：
Fish.eat(f, "earthworm")
f.eat("earthworm")

u = User('username')

u.name
```

Python支持一些以“__”开始并以“__”结束的特殊方法名，它们用于实现运算符重载和实现多种特殊功能。

### 数据类型与动态类型

[Python_3._The_standard_type_hierarchy.png](https://zh.wikipedia.org/wiki/File:Python_3._The_standard_type_hierarchy.png "fig:Python_3._The_standard_type_hierarchy.png")
Python采用动态类型系统。Python不会在[编译期检查对象是否拥有被调用的方法或者属性](../Page/编译期.md "wikilink")，而是直至运行时，才做出检查。所以操作对象时可能会抛出异常。不过，虽然Python采用[动态类型系统](../Page/類型系統#靜態和動態檢查.md "wikilink")，它同时也是[强类型的](../Page/強弱型別.md "wikilink")。Python禁止没有明确定义的操作，比如数字加字符串。

与其它面向对象语言一样，Python允许程序员定义类型。构造一个对象只需要像函数一样调用类型即可，比如，对于前面定义的`Fish`类型，使用`Fish()`。类型本身也是特殊类型`type`的对象（`type`类型本身也是`type`对象），这种特殊的设计允许对类型进行[反射编程](../Page/反射_\(计算机科学\).md "wikilink")。

Python内置多种数据类型。下面这个列表简要地描述了Python内置数据类型（适用于Python 3.x）：

<table>
<thead>
<tr class="header">
<th><p>类型</p></th>
<th><p>描述</p></th>
<th><p>例子</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/字符串.md" title="wikilink"><code>str</code></a></p></td>
<td><p>一个由字符组成的不可更改的有序列。在Python 3.x里，字符串由Unicode字符组成。</p></td>
<td><p><code>'Wikipedia'</code><br />
<code>"Wikipedia"</code><br />
<code>"""Spanning</code><br />
<code>multiple</code><br />
<code>lines"""</code></p></td>
</tr>
<tr class="even">
<td><p><code>bytes</code></p></td>
<td><p>一个由字节组成的不可更改的有序列。</p></td>
<td><p><code>b'Some ASCII'</code><br />
<code>b"Some ASCII"</code></p></td>
</tr>
<tr class="odd">
<td><p><code>list</code></p></td>
<td><p>可以包含多种类型的可改变的有序列</p></td>
<td><p><code>[4.0, 'string', True]</code></p></td>
</tr>
<tr class="even">
<td><p><code>tuple</code></p></td>
<td><p>可以包含多种类型的不可改变的有序列</p></td>
<td><p><code>(4.0, 'string', True)</code></p></td>
</tr>
<tr class="odd">
<td><p><code>set</code>, <code>frozenset</code></p></td>
<td><p>与数学中集合的概念类似。无序的、每个元素唯一。</p></td>
<td><p><code>{4.0, 'string', True}</code><br />
<code>frozenset([4.0, 'string', True])</code></p></td>
</tr>
<tr class="even">
<td><p><code>dict</code></p></td>
<td><p>一个可改变的由键值对组成的无序列。</p></td>
<td><p><code>{'key1': 1.0, 3: False}</code></p></td>
</tr>
<tr class="odd">
<td><p><code>int</code></p></td>
<td><p>精度不限的整数</p></td>
<td><p><code>42</code></p></td>
</tr>
<tr class="even">
<td><p><code>float</code></p></td>
<td><p>浮点数。精度与系统相关。</p></td>
<td><p><code>3.1415927</code></p></td>
</tr>
<tr class="odd">
<td><p><code>complex</code></p></td>
<td><p>复数</p></td>
<td><p><code>3+2.7j</code></p></td>
</tr>
<tr class="even">
<td><p><code>bool</code></p></td>
<td><p><a href="../Page/布林_(資料類型).md" title="wikilink">布林值</a>；只有两个值：真、假</p></td>
<td><p><code>True</code><br />
<code>False</code></p></td>
</tr>
</tbody>
</table>

除了各种数据类型，Python语言还用类型来表示函数、模块、类型本身、对象的方法、编译后的Python代码、运行时信息等等。因此，Python具备很强的动态性。

### 数学运算

Python使用与C、Java类似的运算符，支持整数与浮点数的数学运算。同时还支持复数运算与无穷位数（实际受限于计算机的能力）的整数运算。除了求绝对值函数`abs()`外，大多数数学函数处于`math`和`cmath`模块内。前者用于实数运算，而后者用于复数运算。使用时需要先导入它们，比如：

``` Python
>>> import math
>>> print(math.sin(math.pi/2))
1.0
```

`fractions`模块用于支持分数运算；`decimal`模块用于支持高精度的浮点数运算；第三方库`Sympy`用于支持数学符号运算。

Python定义求余运行`a % b`的值处于开区间`[0,
b)`内，如果`b`是负数，开区间变为`(b, 0]`。这是一个很常见的定义方式。不过其实它依赖于整除的定义。为了让方程式：`b
* (a // b) + a % b = a`恒真，整除运行需要向负无穷小方向取值。比如`7 // 3`的结果是`2`，而`(-7)
// 3`的结果却是`-3`。这个算法与其它很多编程语言不一样，需要注意，它们的整除运算会向0的方向取值。

Python允许像数学的常用写法那样连着写两个比较运行符。比如`a < b < c`与`a < b and b <
c`等价。C++的结果与Python不一样，首先它会先计算`a <
b`，根据两者的大小获得0或者1两个值之一，然后再与c进行比较。

## 标准库

Python拥有一个强大的标准库\[5\]。Python语言的核心只包含数字、字符串、列表、字典、文件等常见类型和函数，而由Python标准库提供了系统管理、网络通信、文本处理、数据库接口、图形系统、XML处理等额外的功能。

Python标准库的主要功能有：

  - 文本处理，包含文本格式化、正则表达式匹配、文本差异计算与合并、Unicode支持，二进制数据处理等功能
  - 文件处理，包含文件操作、创建临时文件、文件压缩与归档、操作配置文件等功能
  - 操作系统功能，包含线程与进程支持、IO复用、日期与时间处理、调用系统函数、日志（logging）等功能
  - 网络通信，包含网络套接字，SSL加密通信、异步网络通信等功能
  - 网络协议，支持HTTP，FTP，SMTP，POP，IMAP，NNTP，XMLRPC等多种网络协议，并提供了编写网络服务器的框架
  - W3C格式支持，包含HTML，SGML，XML的处理。
  - 其它功能，包括国际化支持、数学运算、HASH、Tkinter等

Python社区提供了大量的第三方模块，使用方式与标准库类似。它们的功能覆盖科学计算、Web开发、数据库接口、图形系统多个领域。第三方模块可以使用Python或者[C语言编写](../Page/C.md "wikilink")。[SWIG](../Page/SWIG.md "wikilink")，[SIP常用于将C语言编写的程序库转化为Python模块](../Page/系統級封裝.md "wikilink")。[Boost
C++
Libraries包含了一組函式庫](../Page/Boost_C++_Libraries.md "wikilink")，Boost.Python，使得以Python或C++編寫的程式能互相调用。Python常被用做其他语言与工具之间的“胶水”语言。

## 著名第三方库

### Web框架

  - [Django](../Page/Django.md "wikilink")
    开源Web开发框架，它鼓励快速开发,并遵循MVC设计，开发周期短。
  - [Flask](../Page/Flask.md "wikilink")
    轻量级的Web框架。
  - Pyramid
    轻量，同時有可以規模化的Web框架，Pylon projects 的一部分。
  - ActiveGrid
    企业级的Web2.0解决方案。
  - Karrigell
    简单的Web框架，自身包含了Web服务，py脚本引擎和纯python的数据库PyDBLite。
  - [Tornado](../Page/Tornado.md "wikilink")
    一个轻量级的Web框架，内置非阻塞式服务器，而且速度相当快
  - webpy
    一个小巧灵活的Web框架，虽然简单但是功能强大。
  - CherryPy
    基于Python的Web应用程序开发框架。
  - Pylons
    基于Python的一个极其高效和可靠的Web开发框架。
  - Zope
    开源的Web应用服务器。
  - [TurboGears](../Page/TurboGears.md "wikilink")
    基于Python的MVC风格的Web应用程序框架。
  - Twisted
    流行的网络编程库，大型Web框架。
  - Quixote
    Web开发框架。
  - aiohttp
    轻量级的Web框架，采用的是Python3的asyncio异步特性。

### 科学计算

  - [Matplotlib](../Page/Matplotlib.md "wikilink")
    用Python实现的类matlab的第三方库，用以绘制一些高质量的数学二维图形。
  - [Pandas](../Page/Pandas.md "wikilink")
    用于数据分析、数据建模、数据可视化的第三方库。
  - [SciPy](../Page/SciPy.md "wikilink")
    基于Python的matlab实现，旨在实现matlab的所有功能。
  - [NumPy](../Page/NumPy.md "wikilink")
    基于Python的科学计算第三方库，提供了矩阵，线性代数，傅立叶变换等等的解决方案。

### GUI

  - [PyGtk](../Page/PyGTK.md "wikilink")
    基于Python的GUI程序开发GTK+库。
  - [PyQt](../Page/PyQt.md "wikilink")
    用于Python的QT开发库。
  - [WxPython](../Page/WxPython.md "wikilink")
    Python下的GUI编程框架，与MFC的架构相似。

### 其它

  - [BeautifulSoup](../Page/BeautifulSoup.md "wikilink")
    基于Python的HTML/XML解析器，简单易用。
  - gevent
    python的一个高性能并发框架,使用了[epoll事件监听](../Page/epoll.md "wikilink")、协程等机制将异步调用封装为同步调用。
  - PIL
    基于Python的图像处理库，功能强大，对图形文件的格式支持广泛。目前已无维护，另一个第三方库Pillow实现了对PIL库的支持和维护。
  - PyGame
    基于Python的多媒体开发和游戏软件开发模块。
  - Py2exe
    将python脚本转换为windows上可以独立运行的可执行程序。
  - [Requests](../Page/Requests.md "wikilink")
    适合于人类使用的HTTP库，封装了许多繁琐的HTTP功能，极大地简化了HTTP请求所需要的代码量。
  - scikit-learn
    [機器學習第三方库](../Page/機器學習.md "wikilink")，實現許多知名的機器學習演算法。
  - [TensorFlow](../Page/TensorFlow.md "wikilink")
    [Google开发维护的](../Page/Google.md "wikilink")[开源机器学习库](../Page/开源.md "wikilink")。
  - [Keras](../Page/Keras.md "wikilink")
    基於[TensorFlow](../Page/TensorFlow.md "wikilink")，[Theano與](../Page/Theano.md "wikilink")[CNTK的高階](../Page/CNTK.md "wikilink")[神經網路](../Page/神經網路.md "wikilink")[API](../Page/API.md "wikilink")。
  - [SQLAlchemy](../Page/SQLAlchemy.md "wikilink")
    [关系型数据库的](../Page/关系型数据库.md "wikilink")[对象关系映射](../Page/对象关系映射.md "wikilink")(ORM)工具

## Python 3.0

Python的3.0版本，常被称为**Python
3000**，或简称**Py3k**\[6\]。相对于Python的早期版本，这是一个较大的[升级](../Page/升级.md "wikilink")。为了不带入过多的累赘，Python
3.0在设计的时候没有考虑[向下兼容](../Page/向下兼容.md "wikilink")。许多针对早期Python版本设计的程序都无法在Python
3.0上正常运行。为了照顾现有程序，Python 2.6作为一个过渡版本，基本使用了Python
2.x的语法和[库](../Page/库_\(计算机\).md "wikilink")，同时考虑了向Python
3.0的迁移，允许使用部分Python 3.0的语法与函数。基于早期Python版本而能正常运行于Python
2.6并无警告的程序可以通过一个2 to 3的转换工具无缝迁移到Python
3.0\[7\]。

新的Python程序建议使用Python 3.0版本的语法\[8\]。除非运行环境无法安装Python
3.0或者程序本身使用了不支持Python 3.0的第三方库。目前不支持Python
3.0的第三方库有Twisted, PIL等。大多数第三方库都正在努力地兼容Python 3.0版本。即使无法立即使用Python
3.0，也建议编写兼容Python 3.0版本的程序，然后使用Python 2.6, Python 2.7来运行。

**Python 2.7**被确定为**最后一个Python 2.x版本**，它除了支持Python 2.x语法外，还支持部分Python
3.1语法。

### 主要变化

Python 3.0的变化主要在以下几个方面\[9\]：

  - `print`语句没有了，取而代之的是`print()`函数。可以使用`2to3`工具来自动转换。Python 2.6与Python
    2.7部分地支持这种形式的`print`语法。在Python 2.6与Python 2.7里面，以下三种形式是等价的：

<!-- end list -->

``` Python
print "fish"
print ("fish") #注意print后面有个空格
print("fish") #print()不能带有任何其它参数
```

然而，Python 2.6实际已经支持新的`print()`语法：

``` Python
from __future__ import print_function
print("fish", "panda", sep=', ')
```

  - 新的`str`类型表示一个[Unicode字符串](../Page/Unicode.md "wikilink")，相当于Python
    2.x版本的`unicode`类型。而字节序列则用类似`b"abc"`的语法表示，用`bytes`类表示，相当于Python
    2.x的`str`类型。现在两种类型不能再隐式地自动转换，因此在Python 3.x里`"fish" +
    b"panda"`是错误的。正确的写法是`"fish" +
    b"panda".decode("utf-8")`。Python 2.6可以自动地将字节序列识别为Unicode字符串，方法是：

<!-- end list -->

``` Python
from __future__ import unicode_literals
print(repr("fish"))
```

  - 除法运算符`/`在Python 3.x内总是返回浮点数。而在Python
    2.6内会判断被除数与除数是否是整数。如果是整数会返回整数值，相当于整除;浮点数则返回浮点数值。为了让Python
    2.6统一返回浮点数值，可以：

<!-- end list -->

``` Python
from __future__ import division
print(3/2)
```

  - 捕获异常的语法由`except exc, var`改为`except exc as var`。使用语法`except (exc1,
    exc2) as var`可以同时捕获多种类型的异常。Python 2.6已经支持这两种语法。

<!-- end list -->

  - 集合（set）的新写法：`{1,2,3,4}`。注意`{}`仍然表示空的字典（dict）。

<!-- end list -->

  - （Dictionary comprehensions）`{expr1: expr2 for k, v in d}`，这个语法等价于：

<!-- end list -->

``` Python
result={}
for k, v in d.items():
    result[expr1]=expr2
return result
```

  - （Set Comprehensions）`{expr1 for x in stuff}`。这个语法等价于：

<!-- end list -->

``` python
result = set()
for x in stuff:
    result.add(expr1)
return result
```

  - 八进制数必须写成`0o777`，原来的形式`0777`不能用了；二进制必须写成`0b111`。新增了一个`bin()`函数用于将一个整数转换成二进制字符串。Python
    2.6已经支持这两种语法。

<!-- end list -->

  - `dict.keys(), dict.values(), dict.items(), map(), filter(), range(),
    zip()`不再返回列表，而是迭代器。

<!-- end list -->

  - 如果两个对象之间没有定义明确的有意义的顺序。使用`<, >, <=, >=`比较它们会抛出异常。比如`1 < ""`在Python
    2.6里面会返回`True`，而在Python 3.0里面会抛出异常。现在`cmp(),
    instance.__cmp__()`函数已经被删除。

<!-- end list -->

  - Python 3.5支持型態提示（Type
    Hints），可以注释函数的参数与返回值。此特性可方便IDE对源代码进行更深入的分析。例如给参数增加类型信息：

<!-- end list -->

``` Python
def send_mail(from_: str, to: str, title: str, body: str) -> bool:
    pass
```

  - 合并`int`与`long`类型。

<!-- end list -->

  - 多个模块被改名（根据PEP8）：

| 旧的名字         | 新的名字         |
| ------------ | ------------ |
| _winreg     | winreg       |
| ConfigParser | configparser |
| copy_reg    | copyreg      |
| Queue        | queue        |
| SocketServer | socketserver |
| repr         | reprlib      |

1.  `StringIO`模块现在被合并到新的`io`模块内。`new, md5, gopherlib`等模块被删除。Python
    2.6已经支持新的`io`模块。
2.  `httplib, BaseHTTPServer, CGIHTTPServer, SimpleHTTPServer, Cookie,
    cookielib`被合并到`http`包内。
3.  取消了`exec`语句，只剩下`exec()`函数。Python 2.6已经支持`exec()`函数。

<!-- end list -->

  - 其他变化详见參考文獻\[10\]。基本上，可以编写出使用Python 3.0语法并运行于Python 2.6, Python
    2.7的程序。

## 实现

Python是一门跨平台的脚本语言，Python规定了一个Python语法规则，根据该规则可编写Python[直譯器](../Page/直譯器.md "wikilink")。

  - [CPython](../Page/CPython.md "wikilink")\[11\]，官方的直譯器。需要区别于其他直譯器的时候才以CPython称呼。这是最常用的Python版本。
  - [Jython](../Page/Jython.md "wikilink")（原名**JPython**；**J**ava语言实现的P**ython**，现已正式发布）。Jython可以直接调用Java的各种函数库。
  - [PyPy](../Page/PyPy.md "wikilink")（使用**Py**thon语言寫的**Py**thon）
  - [IronPython](../Page/IronPython.md "wikilink")（面向[.NET和](../Page/.NET.md "wikilink")[ECMA
    CLI的Python实现](../Page/ECMA_CLI.md "wikilink")）。IronPython能够直接调用.net平台的各种函数库。可以将Python程序编译成.net程序。
  - [ZhPy](../Page/ZhPy.md "wikilink")（周蟒，支持使用繁/簡中文语句编写程序的**Py**thon语言）

## 开发环境

### 通用IDE / 文本编辑器

很多并非集成开发环境软件的[文本编辑器](../Page/文本编辑器.md "wikilink")，也对Python有不同程度的支持，并且加上专门为Python设计的编辑器插件也会有很高的可用性。

  - [Eclipse](../Page/Eclipse.md "wikilink") + pydev插件，目前对Python
    3.X只支持到3.0
  - [emacs](../Page/emacs.md "wikilink") +插件
  - [NetBeans](../Page/NetBeans.md "wikilink") +插件
  - [SlickEdit](../Page/SlickEdit.md "wikilink")
  - [TextMate](../Page/TextMate.md "wikilink")
  - [Python Tools for Visual Studio](https://microsoft.github.io/PTVS/)
  - [Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink") +插件
  - [Vim](../Page/Vim.md "wikilink") +插件
  - [Sublime Text](../Page/Sublime_Text.md "wikilink") +插件
  - [EditPlus](../Page/EditPlus.md "wikilink")
  - [UltraEdit](../Page/UltraEdit.md "wikilink")
  - [PSPad](../Page/PSPad.md "wikilink")
  - [Editra](http://editra.org/)，由Python開發的程式編輯器。
  - [Notepad++](../Page/Notepad++.md "wikilink")

### 专门为Python设计的IDE软件

适用于Python的[集成开发环境](../Page/集成开发环境.md "wikilink")（IDE）软件，除了标准二进制发布包所附的IDLE之外，还有许多其他选择。其中有些软件设计有语法着色、语法检查、运行[调试](../Page/调试.md "wikilink")、自动补全、智能感知等便利功能。由于Python的[跨平台出身](../Page/跨平台.md "wikilink")，这些软件往往也具备各种操作系统的版本或一定的移植性。

  - [Anaconda](../Page/Anaconda_\(Python发行版\).md "wikilink")：适用于windows和Linux等多个平台，采用conda对其包管理，随软件打包了许多科学计算的第三方Python库。
  - [Eric](../Page/Eric_Python_IDE.md "wikilink")：基于[PyQt的自由软件](../Page/PyQt.md "wikilink")。支持自动补全、智能感知、自动语法检查、工程管理、svn/mercurial集成、自动单元测试等功能，具有可扩展的插件系统，通过可选插件支持[Git集成](../Page/Git.md "wikilink")。调试功能与Visual
    Studio和Eclipse类似。目前版本为Eric6，可同时支持Python2.x和Python3.x，以及PyQt4和PyQt5。使用前需要先安装相应的Python和PyQt版本。
  - IDLE：Python“标准”IDE。一般随Python而安装，支持较少的编辑功能。调试功能也比较弱。
  - [Komodo和](../Page/Komodo.md "wikilink")[Komodo
    Edit](../Page/Komodo_Edit.md "wikilink")：后者是前者的免费精简版。也可以用于PHP，Ruby，Javascript，Perl，Web和云开发。
  - [PyCharm](../Page/PyCharm.md "wikilink")：由[JetBrains打造](../Page/JetBrains.md "wikilink")，该公司的Java
    IDE软件IntelliJ（此软件也有Python开发插件）拥有海量的使用者；PyCharm具备一般IDE的功能，比如，调试、语法高亮、Project管理、代码跳转、智能提示、自动完成、单元测试、版本控制等等，同时另外，PyCharm还提供了一些很好的功能用于Django开发，同时支持[Google
    App
    Engine](../Page/Google_App_Engine.md "wikilink")，PyCharm也支持IronPython。PyCharm是商业软件，但也具有社区版和教育版。
  - [PyScripter](../Page/PyScripter.md "wikilink")：功能较全的开源IDE，使用Delphi开发。
  - [PythonWin](../Page/PythonWin.md "wikilink")：包含在pywin32内的编辑器，仅适用于Windows。
  - [SPE](../Page/SPE.md "wikilink")（Stani's Python
    Editor）：功能较多的免费软件，依赖[wxPython](../Page/wxPython.md "wikilink")。
  - [Spyder](../Page/Spyder.md "wikilink")：开源的跨平台科学计算IDE。
  - [Ulipad](../Page/Ulipad.md "wikilink")：功能较全的免费软件，依赖[wxPython](../Page/wxPython.md "wikilink")。
  - [WingIDE](../Page/WingIDE.md "wikilink")：商业软件，有免費的Wing IDE
    101，功能有限，適用於入門者教學。

## 使用Python编写的著名应用

  - [Youtube](../Page/Youtube.md "wikilink") - 視頻社交网站
  - [Reddit](../Page/Reddit.md "wikilink") - 社交分享网站
  - [Dropbox](../Page/Dropbox.md "wikilink") - 文件分享服务
  - [豆瓣网](../Page/豆瓣网.md "wikilink") - 图书、唱片、电影等文化产品的资料数据库网站
  - [Django](../Page/Django.md "wikilink") - 鼓励快速开发的Web应用框架
  - [Pylons](../Page/Pylons.md "wikilink") -
    [Web应用框架](../Page/Web应用框架.md "wikilink")
  - [Zope](../Page/Zope.md "wikilink") - 应用服务器
  - [Plone](../Page/Plone.md "wikilink") - 内容管理系统
  - [Instagram](../Page/Instagram.md "wikilink") -
    是一款免费提供在线图片及视频分享的社交应用软件,使用Django作为后台
  - [TurboGears](../Page/TurboGears.md "wikilink") - 另一个Web应用快速开发框架
  - [Twisted](http://twistedmatrix.com) - Python的网络应用程序框架
  - [Fabric](http://fabfile.org/) - 用于管理成百上千台Linux主机的程序库
  - [Python Wikipedia Robot
    Framework](../Page/:sourceforge:projects/pywikipediabot.md "wikilink")
    - MediaWiki的機器人程式
  - [MoinMoinWiki](http://moinmo.in/) -
    Python寫成的[Wiki程序](../Page/Wiki.md "wikilink")
  - [Trac](http://trac.edgewall.org/) - 使用Python编写的BUG管理系统
  - [Mailman](http://www.gnu.org/s/mailman) - 使用Python编写的邮件列表软件
  - [Mezzanine](http://mezzanine.jupo.org/) -
    基于Django编写的[内容管理系统](../Page/内容管理系统.md "wikilink")
  - [Flask](../Page/Flask.md "wikilink") - Python微Web框架
  - [Webpy](http://webpy.org/) - Python微Web框架
  - [Bottle](http://bottlepy.org/) - Python微Web框架
  - [EVE](../Page/EVE.md "wikilink") - 网络游戏EVE大量使用Python进行开发
  - [Blender](../Page/Blender.md "wikilink") -
    使用Python作為建模工具與GUI語言的開源3D繪圖軟體
  - [Inkscape](../Page/Inkscape.md "wikilink") - 一个开源的SVG矢量图形编辑器。
  - [知乎](../Page/知乎.md "wikilink") - 一个问答网站
  - [果壳](../Page/果壳网.md "wikilink") - 一个泛科技主题网站
  - [Odoo](../Page/Odoo.md "wikilink")-仍在持续发展壮大且最受欢迎的ERP软件

## 社群

  - [PyCon](../Page/PyCon.md "wikilink") 是各地社群舉辦的會議，通常每年舉辦。各社群在會議中討論
    Python 相關的議題。
  - 台灣 Python 社群由 2012 年起舉辦 [PyCon
    TW](../Page/台灣_Python_年會.md "wikilink")。
  - 由女性社群發起的  社群，主要注重於發展 Python 的女性程式設計社群。
  - Django Girls 使用 [Django](../Page/Django.md "wikilink") 網頁設計框架，推廣使用
    Python 進行網頁設計的技術。

## 影響

  - [ECMAScript從Python參考了iterators](../Page/ECMAScript.md "wikilink")，generators，以及list
    comprehensions。
  - [OCaml有個optional](../Page/OCaml.md "wikilink") syntax，稱為twt（The
    Whitespace
    Thing），取材自Python與[Haskell](../Page/Haskell.md "wikilink")。

## 参考文献

## 延伸閱讀

  -
  -
  -
  -
  -
  -
## 外部链接

  -
  - [Python的歷史（Guido van
    Rossum的博客）](http://python-history.blogspot.co.uk/)

  -
## 参见

  - [整合開發環境列表](../Page/整合開發環境列表.md "wikilink")
  - [编程语言列表](../Page/编程语言列表.md "wikilink")
  - [越位规则](../Page/越位规则.md "wikilink")

{{-}}

[Category:Python](https://zh.wikipedia.org/wiki/Category:Python "wikilink")
[Category:腳本語言](https://zh.wikipedia.org/wiki/Category:腳本語言 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:LAMP](https://zh.wikipedia.org/wiki/Category:LAMP "wikilink")
[Category:荷兰发明](https://zh.wikipedia.org/wiki/Category:荷兰发明 "wikilink")

1.

2.

3.  [Heavy usage of Python at
    Google](http://stackoverflow.com/questions/2560310/heavy-usage-of-python-at-google)

4.  call by value (where the value is always an object reference, not
    the value of the object)或者称作call by object reference

5.  Przemyslaw Piotrowski, [Build a Rapid Web Development Environment
    for Python Server Pages and
    Oracle](http://www.oracle.com/technology/pub/articles/piotrowski-pythoncore.html),
    Oracle Technology Network, July 2006. Accessed October 21, 2008.

6.

7.

8.

9.

10.
11. <http://www.Python.org> CPython