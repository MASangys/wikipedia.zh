**Elixir**是一个基于[Erlang](../Page/Erlang.md "wikilink")[虚拟机的](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")[函数式](../Page/函数式编程.md "wikilink")、面向[并行的通用](../Page/并发计算.md "wikilink")[编程语言](../Page/编程语言.md "wikilink")。Elixir以Erlang为基础，支持分布式、高容错、实时应用程序的开发，亦可通过[宏实现](https://zh.wikipedia.org/wiki/宏 "wikilink")[元编程](../Page/元编程.md "wikilink")对其进行扩展，并通过协议支持[多态](https://zh.wikipedia.org/wiki/多态_\(面向对象程序设计\) "wikilink")。\[1\]

## 历史

José
Valim是Elixir语言的设计者。他创造该语言的目标是在维持与现有Erlang工具链及生态环境兼容性的同时，让人们可以在Erlang虚拟机上进行扩展性更好的、高生产率的开发。\[2\]

## 特性

  - 基于[Erlang](../Page/Erlang.md "wikilink")虚拟机（BEAM）。
  - 与Erlang语言的无缝衔接；与Erlang的互调几乎无任何额外开销。
  - 基于[宏的](https://zh.wikipedia.org/wiki/宏 "wikilink")[元编程](../Page/元编程.md "wikilink")能力，语言的[抽象语法树作为头等公民](https://zh.wikipedia.org/wiki/抽象语法树 "wikilink")。
  - 基于协议的[多态实现](https://zh.wikipedia.org/wiki/多态_\(面向对象程序设计\) "wikilink")。（启发自[Clojure](../Page/Clojure.md "wikilink")）
  - 完善的文档支持。
  - 通过[消息传递](https://zh.wikipedia.org/wiki/消息传递 "wikilink")（[参与者模式](https://zh.wikipedia.org/wiki/参与者模式 "wikilink")）支持
    Shared-nothing 并行事务。
  - 强调利用[递归](../Page/递归.md "wikilink")和[高阶函数的函数式编程胜过基于](https://zh.wikipedia.org/wiki/高阶函数 "wikilink")[副作用](../Page/副作用.md "wikilink")和[循环的命令式编程](https://zh.wikipedia.org/wiki/循环 "wikilink")。
  - 一切均为[表达式](https://zh.wikipedia.org/wiki/表达式 "wikilink")。
  - [惰性求值](../Page/惰性求值.md "wikilink")，拥有诸如futures和promises一类的[异步流数据类型](https://zh.wikipedia.org/wiki/异步 "wikilink")。
  - [模式匹配](https://zh.wikipedia.org/wiki/模式匹配 "wikilink")。
  - [Unicode支持](https://zh.wikipedia.org/wiki/Unicode "wikilink")，[UTF-8](../Page/UTF-8.md "wikilink")字符串。

## 示例

以下示例可以在iex shell中运行或保存在文件中，并通过命令行键入命令运行 ` elixir  `*<filename>*.

经典的 [Hello world](https://zh.wikipedia.org/wiki/Hello_world "wikilink")
例子:

``` iex
iex> IO.puts("Hello World!")
Hello World!
```

Enumerable 推导

``` iex
iex> for n <- [1,2,3,4,5], rem(n, 2) == 1, do: n*n
[1, 9, 25]
```

模式匹配（解构）

``` iex
iex> [1, a] = [1, 2]
iex> a
2

iex> {:ok, [hello: a]} = {:ok, [hello: "world"]}
iex> a
"world"
```

模式匹配（多子句）

``` iex
iex> case File.read("path/to/file") do
iex>   {:ok, contents} -> IO.puts("found file: #{contents}")
iex>   {:error, reason} -> IO.puts("missing file: #{reason}")
iex> end
```

管道操作符

``` iex
iex> "1" |> String.to_integer() |> Kernel.*(2)
2
```

模块

``` elixir
defmodule Fun do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n-2) + fib(n-1)
end
```

顺序产生1000个进程

``` elixir
for num <- 1..1000, do: spawn fn -> IO.puts("#{num * 2}") end
```

执行异步任务

``` elixir
task = Task.async fn -> perform_complex_action() end
other_time_consuming_action()
Task.await task
```

## 参考资料

## 外部链接

  - [Elixir language website](https://elixir-lang.org/)
  - [Code on GitHub](https://github.com/elixir-lang/elixir/)
  - [Elixir School](http://elixirschool.com/cn/)
  - [Elixir - A modern approach to programming for the Erlang VM video
    presentation](http://vimeo.com/53221562)
  - [Dave Thomas: "Programming Elixir: Functional |\> Concurrent |\>
    Pragmatic |\> Fun"
    (book)](http://pragprog.com/book/elixir/programming-elixir)
  - [Simon St. Laurent, J. David Eisenberg: "Introducing Elixir"
    (book)](http://shop.oreilly.com/product/0636920030584.do)
  - [Joe Armstrong: "A Week with Elixir" (blog
    entry)](https://web.archive.org/web/20130819053404/http://joearms.github.io/2013/05/31/a-week-with-elixir.html)
  - [Erlang之父学习Elixir语言的一周](https://github.com/oldratlee/translations/blob/master/a-week-with-elixir/README.md)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")

1.
2.  {{ cite web
    |url=[http://vimeo.com/53221562|title=Elixir](http://vimeo.com/53221562%7Ctitle=Elixir)
    - A modern approach to programming for the Erlang VM |
    accessdate=2013-02-17}}