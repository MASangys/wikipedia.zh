**JSON**（**J**ava**S**cript **O**bject **N**otation，JavaScript物件表示法，读作/ˈdʒeɪsən/）是一種由[道格拉斯·克羅克福特](../Page/道格拉斯·克羅克福特.md "wikilink")構想和設計、輕量級的[資料交換語言](../Page/数据交换.md "wikilink")，该语言以易於讓人閱讀的文字為基礎，用来传输由属性值或者序列性的值组成的数据对象。儘管JSON是[JavaScript](../Page/JavaScript.md "wikilink")的一個子集，但JSON是獨立於語言的[文本格式](../Page/文本文件.md "wikilink")，並且採用了類似於[C語言家族的一些習慣](https://zh.wikipedia.org/wiki/C語言 "wikilink")。

JSON 数据格式与语言无关，脱胎自[JavaScript](../Page/JavaScript.md "wikilink")，但目前很多[编程语言](../Page/编程语言.md "wikilink")都支持 JSON 格式数据的生成和[解析](https://zh.wikipedia.org/wiki/语法分析器 "wikilink")。JSON 的官方 [MIME 类型是](../Page/互联网媒体类型.md "wikilink") `application/json`，文件扩展名是 `.json`。

## 簡介

JSON格式是1999年《*JavaScript Programming Language, Standard ECMA-262 3rd Edition*》的子集合，所以可以在[JavaScript](../Page/JavaScript.md "wikilink")以`eval()`函式（javascript通过eval()调用解析器）读入。不过这并不代表JSON无法使用于其他语言，事实上几乎所有与网页开发相关的语言都有JSON函式库。

JSON的基本数据类型：

  - 数值：十进制数，不能有前导0，可以为负数，可以有小数部分。还可以用<b>`e`</b>或者<b>`E`</b>表示指数部分。不能包含非数，如NaN。不区分整数与浮点数。JavaScript用双精度浮点数表示所有数值。
  - 字符串：以双引号<b>`""`</b>括起来的零个或多个[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")[码位](https://zh.wikipedia.org/wiki/码位 "wikilink")。支持[反斜杠开始的](https://zh.wikipedia.org/wiki/反斜杠 "wikilink")[转义字符序列](https://zh.wikipedia.org/wiki/转义字符序列 "wikilink")。
  - 布尔值：表示为`true`或者`false`。
  - 值的有序列表（array）：有序的零个或者多个值。每个值可以为任意类型。序列表使用方括号<b>`[`</b>，<b>`]`</b>括起来。元素之间用逗号<b>`,`</b>分割。形如：`[value, value]`
  - 对象（object）：一个无序的“键-值对”(pair)，其中键是字符串。建议但不强制要求对象中的键是独一无二的。对象以花括号<b>`{`</b>开始，并以<b>`}`</b>结束。键-值对之间使用逗号分隔。键与值之间用冒号<b>`:`</b>分割。
  - null类型：值写为`null`

token（6种标点符号、字符串、数值、3种字面量）之间可以存在有限的空白符并被忽略。四个特定字符被认为是空白符：[空格符](https://zh.wikipedia.org/wiki/空格符 "wikilink")、[水平制表符](https://zh.wikipedia.org/wiki/水平制表符 "wikilink")、[回车符](../Page/回车符.md "wikilink")、[换行符](https://zh.wikipedia.org/wiki/换行符 "wikilink")。空白符不能出现在token内部（但空格符可以出现在字符串内部）。JSON标准不允许有[字节序掩码](https://zh.wikipedia.org/wiki/字节序掩码 "wikilink")，不提供注释的句法。 一个有效的JSON文档的根节点必须是一个对象或一个数组。

JSON交换时必须编码为[UTF-8](../Page/UTF-8.md "wikilink")。\[1\]转义序列可以为：“\\\\”、“\\"”、“\\/”、“\\b”、“\\f”、“\\n”、“\\r”、“\\t”，或[Unicode](https://zh.wikipedia.org/wiki/Unicode "wikilink")16进制转义字符序列（\\u后面跟随4位[16进制数字](../Page/十六进制.md "wikilink")）。对于不在[基本多文種平面上的](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")[码位](https://zh.wikipedia.org/wiki/码位 "wikilink")，必须用[UTF-16代理对](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")（surrogate pair）表示，例如对于[Emoji字符](https://zh.wikipedia.org/wiki/Emoji "wikilink")在JSON中应表示为：

``` javascript
{ "face": "😂" }
// or
{ "face": "\uD83D\uDE02" }
```

JSON的格式描述可以參考RFC 4627。

## 应用领域

### WEB开发

JSON最开始被广泛的应用于WEB应用的开发。不過目前JSON使用在[JavaScript](../Page/JavaScript.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Node.js](../Page/Node.js.md "wikilink")應用的情況比較多，[PHP](../Page/PHP.md "wikilink")、[C\#等開發的WEB應用主要還是使用](../Page/C♯.md "wikilink")[XML](../Page/XML.md "wikilink")。

### NoSQL数据库

相对于传统的[关系型数据库](https://zh.wikipedia.org/wiki/关系型数据库 "wikilink")，一些基于文档存储的[NoSQL](../Page/NoSQL.md "wikilink")非关系型数据库选择JSON作为其数据存储格式，比较出名的产品有：[MongoDB](../Page/MongoDB.md "wikilink")、[CouchDB](https://zh.wikipedia.org/wiki/CouchDB "wikilink")、[RavenDB等](https://zh.wikipedia.org/wiki/RavenDB "wikilink")。

## 举例

``` javascript numberLines
{
     "firstName": "John",
     "lastName": "Smith",
     "sex": "male",
     "age": 25,
     "address":
     {
         "streetAddress": "21 2nd Street",
         "city": "New York",
         "state": "NY",
         "postalCode": "10021"
     },
     "phoneNumber":
     [
         {
           "type": "home",
           "number": "212 555-1234"
         },
         {
           "type": "fax",
           "number": "646 555-4567"
         }
     ]
 }
```

这种JSON格式也被[Minecraft游戏用来当作的部分数据存储的格式](https://zh.wikipedia.org/wiki/Minecraft "wikilink")：

``` javascript numberLines
[
     {
          "text": "This is the text",
          "color": "dark_red",
          "bold": "true",
          "strikethough": "true",
          "clickEvent":
               {
                    "action": "open_url",
                    "value": "zh.wikipedia.org"
               },
          "hoverEvent":
               {
                    "action": "show_text",
                    "value":
                    {
                         "extra": "something"
                    }
               }
     },
     {
          "translate": "item.dirt.name",
          "color": "blue",
          "italic": "true"
     }
]
```

## 安全問題

### 读取JSON

由於JSON是[JavaScript](../Page/JavaScript.md "wikilink")的子集，所以一般都會使用`eval()`作為讀取資料的方式，如果是针对可靠的数据来源，在不支持原生JSON解析的浏览器上面这是最快速的方法。然而由于eval方法同样可以执行任意的JavaScript代码，因此当数据来源不可靠时则可能产生安全问题。如下面的例子，直接用eval执行时会跳转：

``` javascript
var json= eval("{message:(function (){ window.location='http://zh.wikipedia.org/wiki/JSON#.E5.AE.89.E5.85.A8.E6.80.A7.E5.95.8F.E9.A1.8C'; })()}");
```

其中一種防止不安全程式碼出現的解決辦法，是通过浏览器原生支持的JSON.parse（str）方法讀取JSON資料，目前已经得到大部分主流浏览器的支持（IE8+，Firefox 3.5+，Chrome4+/Safari4+，Opera10+），在不支持原生JSON对象的浏览器上面可以使用`parseJSON`方法进行读取\[2\]，`parseJSON`採用解析器驗證讀入的程式碼是否真的是JSON程式碼，這樣就更安全。但由於這是用模擬的方式讀取，速度上會比`eval()`慢。

### 跨站存取問題

另外一個安全上的問題則是[跨站請求偽造](../Page/跨站请求伪造.md "wikilink")（Cross-site request forgery，簡稱CSRF或XSRF）。這個問題在Javascript中的狀況是，由於Javascript採用了稱為「[沙盒](https://zh.wikipedia.org/wiki/沙盒_\(計算機安全\) "wikilink")」的機制，這種機制限制Javascript引擎僅能引入同一個站點的程式碼，因而某種程度上提高了安全性。

## 與其他格式的比較

### XML

JSON與XML最大的不同在於XML是一個完整的[標記語言](https://zh.wikipedia.org/wiki/標記語言 "wikilink")，而JSON不是。這使得XML在程式判讀上需要比較多的功夫。主要的原因在於XML的設計理念與JSON不同。XML利用標記語言的特性提供了絕佳的延展性（如[XPath](../Page/XPath.md "wikilink")），在数据存储，扩展及高级检索方面具备对JSON的优势，而JSON则由于比XML更加小巧，以及浏览器的内建快速解析支持，使得其更适用于网络数据传输领域。

### MessagePack

宣称比JSON更短小，快速。

### 格式化工具

JSON格式取代了XML给网络传输带来了很大的便利，但是却没有了XML的一目了然，尤其是JSON数据很长的时候，会让人陷入繁琐复杂的数据节点查找中。开发者可以-{zh-cn:通过; zh-tw:使用;}-在线JSON格式化工具，来更方便的对JSON数据进行节点查找和解析。

## 參考文獻

## 參見

  - [JSONP](../Page/JSONP.md "wikilink")
  - [AJAX](../Page/AJAX.md "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")
  - [YAML](../Page/YAML.md "wikilink")
  - [HOCON](https://zh.wikipedia.org/wiki/HOCON "wikilink")

## 外部連結

  - [JSON](http://www.json.org/)，關於JSON的規格、文件，以及在其他語言實做的資訊

  - [JSON中文说明](http://www.json.org/json-zh.html)

  - RFC 4627，JSON在[RFC](../Page/RFC.md "wikilink")裡的規格

  - [JSON格式化工具 (中文)](https://www.quackertools.com/zh/json)

  - [JSON编辑器](https://jsonformatter.org/json-editor)

  - [JSON分析器](https://codebeautify.org/jsonviewer)

  - [JSON到CSV转换器](https://codebeautify.org/json-to-csv)

  - [Minecraft指令─JSON文字格式](https://minecraft-zh.gamepedia.com/%E5%91%BD%E4%BB%A4#JSON.E6.96.87.E6.9C.AC)

  - [JSON在线格式化工具](https://web.archive.org/web/20181216200705/https://jsonformatter.pro/cn)

{{-}}

[Category:置標語言](https://zh.wikipedia.org/wiki/Category:置標語言 "wikilink") [Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink") [Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink") [Category:JSON](https://zh.wikipedia.org/wiki/Category:JSON "wikilink")

1.
2.