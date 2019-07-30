**Lua**（）是一个简洁、轻量、可扩展的[脚本语言](../Page/脚本语言.md "wikilink")。Lua在葡萄牙语中的意思是月亮。

## 目标

Lua的目标是成为一个很容易嵌入其它语言中使用的语言。

很多应用程序使用Lua作为自己的嵌入式脚本语言，以此来实现可配置性、可扩展性。

## 特性

Lua是一种轻量语言，它的官方版本只包括一个精简的核心和最基本的库。这使得Lua体积小、启动速度快。它用ANSI C语言编写并以源代码形式开放，编译后仅仅一百餘K，可以很方便的嵌入别的程式裡。和许多“大而全”的语言不一样，网路通讯、图形界面等都没有預設提供。但是Lua可以很容易地被扩展：由[宿主语言](https://zh.wikipedia.org/wiki/宿主语言 "wikilink")（通常是C或C++）提供这些功能，Lua可以使用它们，就像是本来就内置的功能一样。事实上，现在已经有很多成熟的扩展模块可供选用。

Lua是一种[多重编程范式的程式设计语言](https://zh.wikipedia.org/wiki/多重编程范式 "wikilink")：它只提供了很小的一个特性集合来满足不同编程范式的需要，而不是为某种特定的编程范式提供繁杂的特性支援。例如，Lua并不提供[继承这个特性](https://zh.wikipedia.org/wiki/继承_\(计算机科学\) "wikilink")，但是你可以用元表来模拟它。诸如[名字空间](https://zh.wikipedia.org/wiki/名字空间 "wikilink")、[类这些概念都没有在语言基本特性中实现](https://zh.wikipedia.org/wiki/类 "wikilink")，但是我们可以用表结构（Lua唯一提供的复杂数据结构）轻易模拟。Lua可以在运行时随时构造出一个函数，并把它看作一个对象（正是所谓的first class function），这个特性可以很好的满足[函数式编程](../Page/函数式编程.md "wikilink")的需要。正是提供了这些基本的元特性，我们可以任意的对语言进行自需的改造。

Lua原生支援的数据类型非常之少，它只提供了数-{}-字（缺省是[双精度浮点数](https://zh.wikipedia.org/wiki/浮點數 "wikilink")，可配置）、布尔量、[字符串](../Page/字符串.md "wikilink")、表、[子程序](../Page/子程序.md "wikilink")、[协程](../Page/协程.md "wikilink")（coroutine）以及用户自定义数据这几种。但是其处理表和字符串的效率非常之高，加上元表的支援，开发者可以高效的模拟出需要的复杂数据类型（比如集合、数组等）。

Lua是一个动态弱类型语言，支援增量式[垃圾收集策略](../Page/垃圾回收_\(計算機科學\).md "wikilink")。有内建的，与操作系统无关的协作式多线程（coroutine）支援。

Lua可以用於嵌入式硬體，不僅可以嵌入其他編程語言，而且可以嵌入微處理器中，例如[NodeMCU](../Page/NodeMCU.md "wikilink")開源硬體項目將Lua嵌入到Wi-Fi SoC中\[1\]。

## 程式範例

``` Lua
print("Hello, world!")
```

執行後，會在螢幕上顯示“Hello, world\!”。

一個比較複雜一點的例子，展示了什麼是[函數](../Page/子程序.md "wikilink")，以及Lua对[闭包的支持](../Page/闭包_\(计算机科学\).md "wikilink")：

``` Lua
function create_a_counter()
    local count = 0
    return function()
        count = count + 1
        return count
    end
end
```

create_a_counter()會返回一個匿名函数（在Lua中，函數和其他資料一樣，是可以指定給變數來儲存的）。這個匿名函數會把count加1後再回傳。在匿名函數中的變數count既不是全域變數也不是區域變數，而是一種稱為external local variable（外部局部變數，又稱upvalue）的變數。這個變數的值會一直被保存在匿名函數中。因此调用create_a_counter()时产生一个记数器函数，每次调用记数器函数，都会得到一个比上次大1的值。

## 变量类型

Lua是一种动态类型语言，因此语言中没有类型的定义，不需要声明变量类型，每个变量自己保存了类型。

有8种基本类型：nil、布尔值（boolean）、数-{}-字型（number）、字符串型（string）、用户自定义类型（userdata）、函数（function）、线程（thread）和表（table）。

``` Lua
    print(type(nil))                    -- 输出 nil
    print(type(99.7+12*9))              -- 输出 number
    print(type(true))                   -- 输出 boolean
    print(type("Hello Wikipedia"))      -- 输出 string
    print(type(print))                  -- 输出 function
    print(type{1, 2, test = "test"})    -- 输出 table
```

## 参考资料

## 外部链接

  - 官方站点

<!-- end list -->

  -
  - [官方英文邮件列表](https://www.lua.org/lua-l.html)、[邮件列表存档](http://lua-users.org/lists/lua-l/)或者[Gmane lua列表存档](https://web.archive.org/web/20101013080747/http://news.gmane.org/gmane.comp.lang.lua.general)

<!-- end list -->

  - 手册

<!-- end list -->

  - [Book : Programming in Lua](http://www.lua.org/pil/)
  - [manual.luaer.cn](https://web.archive.org/web/20141115142004/http://manual.luaer.cn/) lua在线手册
  - [book.luaer.cn](https://web.archive.org/web/20161027111642/http://book.luaer.cn/) lua在线lua学习教程
  - [Lua 5.3参考手册的中文翻译（云风翻译版本）](http://www.runoob.com/manual/lua53doc/)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:使用MIT许可证的软件](https://zh.wikipedia.org/wiki/Category:使用MIT许可证的软件 "wikilink") [Category:C软件](https://zh.wikipedia.org/wiki/Category:C软件 "wikilink") [Category:用C编程的自由软件](https://zh.wikipedia.org/wiki/Category:用C编程的自由软件 "wikilink") [Category:巴西发明](https://zh.wikipedia.org/wiki/Category:巴西发明 "wikilink")

1.