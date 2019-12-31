> 本文内容由[TOML](https://zh.wikipedia.org/wiki/TOML)转换而来。


**TOML** 是一种旨在成为一个小规模、易于使用的语义化的[配置文件格式](https://zh.wikipedia.org/wiki/配置文件格式 "wikilink")，\[1\]它被设计为可以无二义性的转换为一个[哈希表](../Page/哈希表.md "wikilink")。

“TOML”这个名字是“Tom's Obvious, Minimal Language（汤姆的浅显的、极简的语言）”的首字母略写词\[2\]。“Tom”指它的作者。

TOML已在一些软件工程中使用，\[3\]并且可在很多程序语言中执行。\[4\]\[5\]

## 语法

TOML的语法广泛地由key = "value"、\[节名\]与\#注释构成。

它支持以下数据类型：字符串、整形、浮点型、布尔型、日期时间、数组和图表。

### 样例

``` ini
# This is a TOML document.

title = "TOML Example"

[owner]
name = "Tom Preston-Werner"
dob = 1979-05-27T07:32:00-08:00 # First class dates

[database]
server = "192.168.1.1"
ports = [ 8001, 8001, 8002 ]
connection_max = 5000
enabled = true

[servers]

  # Indentation (tabs and/or spaces) is allowed but not required
  [servers.alpha]
  ip = "10.0.0.1"
  dc = "eqdc10"

  [servers.beta]
  ip = "10.0.0.2"
  dc = "eqdc10"

[clients]
data = [ ["gamma", "delta"], [1, 2] ]

# Line breaks are OK when inside arrays
hosts = [
  "alpha",
  "omega"
]
```

## 参考文献

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink") [Category:配置文件](https://zh.wikipedia.org/wiki/Category:配置文件 "wikilink") [Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")

1.
2.
3.
4.
5.