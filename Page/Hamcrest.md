**Hamcrest**是一个协助编写用[Java](../Page/Java.md "wikilink")语言进行软件测试的框架。它支持创建自定义的[断言匹配器](../Page/斷言_\(程式\).md "wikilink")（assertion matchers）（名称“Hamcrest”即为“matchers”的[异位构词](../Page/易位构词游戏.md "wikilink")），允许[声明式定义匹配规则](../Page/宣告式編程.md "wikilink")。\[1\]这些匹配器在[单元测试](../Page/单元测试.md "wikilink")框架（例如[JUnit](../Page/JUnit.md "wikilink")\[2\]和jMock）中有用。

Hamcrest已经被移植到[Java](../Page/Java.md "wikilink")、[C++](../Page/C++.md "wikilink")、[Objective-C](../Page/Objective-C.md "wikilink")、[Python](../Page/Python.md "wikilink")、[ActionScript](../Page/ActionScript.md "wikilink") 3\[3\]、[PHP](../Page/PHP.md "wikilink")\[4\]、[JavaScript](../Page/JavaScript.md "wikilink")\[5\]和[Erlang](../Page/Erlang.md "wikilink").\[6\]

## 解释

“第一代”的单元测试框架提供了一个[断言表达式](../Page/斷言_\(程式\).md "wikilink")，允许一个一个测试在特定条件下断言必须为真。如果断言为假，则测试失败。例如：

``` c
assert(x == y);
```

但是在这种语法下，如果“x”和“y”的是不相等的，产生错误信息不够好——如果错误消息中显示“x”和“y”的值就更好了。 为了解决这个问题，“第二代”单元测试框架提供了一组断言语句，从而产生更好的错误消息。例如，

``` c
assert_equal(x, y);
assert_not_equal(x, y);
```

但是，由于上述断言语句被扩展以支持不同于简单的相等比较的比较方式，这导致了断言宏的数量爆炸。因此，“第三代”单元测试框架使用[函式庫](../Page/函式庫.md "wikilink")，如Hamcrest，来支持“assert_that”操作符，操作符可与匹配器（matcher）对象进行组合，从而致使语法像这样：

``` c
assert_that(x, equal_to(y))
assert_that(x, is_not(equal_to(y)))
```

好处是，当断言失败时你仍然可以顺畅的得到错误消息，不过现在你有了更大的可扩展性。现在可以自定义一种操作，采取匹配器作为参数并将返回结果，即形成一种可以从少量原始的匹配器生成大量可能的匹配表达式的语法。

这些高级匹配器的操作包括逻辑连接词（“与”、“或”、“非”），以及遍历集合的操作。这形成了功能强大的匹配器语言，它允许对集合进行复杂的断言判断，表达式写在一个声明中，而不是一个程序中。

## 参考文献

## 外部链接

  - <https://github.com/hamcrest>

[Category:Java平台软件](https://zh.wikipedia.org/wiki/Category:Java平台软件 "wikilink") [Category:单元测试框架](https://zh.wikipedia.org/wiki/Category:单元测试框架 "wikilink")

1.
2.
3.
4.
5.
6.