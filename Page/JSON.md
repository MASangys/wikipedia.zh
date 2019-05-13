**JSON**（**J**ava**S**cript **O**bject
**N**otation，JavaScript物件表示法）是一種由[道格拉斯·克羅克福特構想和設計](../Page/道格拉斯·克羅克福特.md "wikilink")、輕量級的[資料交換語言](../Page/資料交換語言.md "wikilink")，该语言以易於讓人閱讀的文字為基礎，用来传输由属性值或者序列性的值组成的数据对象。儘管JSON是[JavaScript的一個子集](../Page/JavaScript.md "wikilink")，但JSON是獨立於語言的[文本格式](../Page/文本文件.md "wikilink")，並且採用了類似於[C語言家族的一些習慣](../Page/C語言.md "wikilink")。

JSON
数据格式与语言无关，脱胎自[JavaScript](../Page/JavaScript.md "wikilink")，但目前很多[编程语言都支持](../Page/编程语言.md "wikilink")
JSON 格式数据的生成和[解析](../Page/语法分析器.md "wikilink")。JSON 的官方 [MIME
类型是](../Page/互联网媒体类型.md "wikilink") `application/json`，文件扩展名是
`.json`。

## 簡介

JSON格式是1999年《*JavaScript Programming Language, Standard ECMA-262 3rd
Edition*》的子集合，所以可以在[JavaScript以](../Page/JavaScript.md "wikilink")`eval()`函式（javascript通过eval()调用解析器）读入。不过这并不代表JSON无法使用于其他语言，事实上几乎所有与网页开发相关的语言都有JSON函式库。

JSON用于描述资料结构，有两种结构存在：

  - 对象（object）：一个对象包含一系列非排序的名称／值对(pair)，一个对象以<b>`{`</b>开始，并以<b>`}`</b>结束。每个名称／值对之间使用<b>`:`</b>分割。
  - 数组
    (array)：一个数组是一个值(value)的集合，一个数组以<b>`[`</b>開始，并以<b>`]`</b>结束。数组成員之间使用<b>`,`</b>分割。

具体的格式如下：

  - 名称／值（pair）：名称和值之间使用<b>`：`</b>隔开，一般的形式是：

<!-- end list -->

``` javascript
{name:value}
```

一個名稱是一個字符串；
一个值(value)可以是一个字符串(string)，一个数值(number)，一个对象(object)，一个布尔值(bool)，一个有序列表(array)，或者一个null值。

  - 字符串：以<b>`""`</b>括起来的一串字符。
  - 数值：一系列0-9的数字组合，可以为负数或者小数。还可以用<b>`e`</b>或者<b>`E`</b>表示为指数形式。
  - 布尔值：表示为true或者false。
  - 值的有序列表（array）：一个或者多个值用<b>`,`</b>分割后，使用<b>`[`</b>，<b>`]`</b>括起来就形成了这样的列表，形如：

<!-- end list -->

``` javascript
[value, value]
```

JSON的格式描述可以參考RFC 4627。

## 应用领域

### WEB开发

JSON最开始被广泛的应用于WEB应用的开发。不過目前JSON使用在[JavaScript](../Page/JavaScript.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Node.js應用的情況比較多](../Page/Node.js.md "wikilink")，[PHP](../Page/PHP.md "wikilink")、[C\#等開發的WEB應用主要還是使用](../Page/C♯.md "wikilink")[XML](../Page/XML.md "wikilink")。

### NoSQL数据库

相对于传统的[关系型数据库](../Page/关系型数据库.md "wikilink")，一些基于文档存储的[NoSQL非关系型数据库选择JSON作为其数据存储格式](../Page/NoSQL.md "wikilink")，比较出名的产品有：[MongoDB](../Page/MongoDB.md "wikilink")、[CouchDB](../Page/CouchDB.md "wikilink")、[RavenDB等](../Page/RavenDB.md "wikilink")。

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

这种JSON格式也被[Minecraft游戏用来当作的部分数据存储的格式](../Page/Minecraft.md "wikilink")：

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

由於JSON是[JavaScript的子集](../Page/JavaScript.md "wikilink")，所以一般都會使用`eval()`作為讀取資料的方式，如果是针对可靠的数据来源，在不-{zh-cn:支持;
zh-tw:支援;}-原生JSON解析的浏览器上面这是最快速的方法。然而由于eval方法同样可以执行任意的JavaScript-{zh-cn:代码;
zh-tw:程式碼;}-，因此当数据来源不可靠时则可能产生安全问题。如下面的例子，直接用eval执行时会跳转：

``` javascript
var json= eval("{message:(function (){ window.location='http://zh.wikipedia.org/wiki/JSON#.E5.AE.89.E5.85.A8.E6.80.A7.E5.95.8F.E9.A1.8C'; })()}");
```

其中一種防止不安全-{zh-cn:代码; zh-tw:程式碼;}-出現的解決辦法，是通过浏览器原生-{zh-cn:支持;
zh-tw:支援;}-的JSON.parse（str）方法讀取JSON資料，目前已经得到大部分主流浏览器的-{zh-cn:支持;
zh-tw:支援;}-（IE8+，Firefox 3.5+，Chrome4+/Safari4+，Opera10+），在不-{zh-cn:支持;
zh-tw:支援;}-原生JSON-{zh-cn:对象;
zh-tw:物件;}-的浏览器上面可以使用`parseJSON`方法进行读取\[1\]，`parseJSON`採用解析器驗證讀入的-{zh-cn:代码;
zh-tw:程式碼;}-是否真的是JSON-{zh-cn:代码;
zh-tw:程式碼;}-，這樣就更安全。但由於這是用模擬的方式讀取，速度上會比`eval()`慢。

### 跨站存取問題

另外一個安全上的問題則是[跨站請求偽造](../Page/跨站请求伪造.md "wikilink")（Cross-site request
forgery，簡稱CSRF或XSRF）。這個問題在Javascript中的狀況是，由於Javascript採用了稱為「[沙盒](../Page/沙盒_\(計算機安全\).md "wikilink")」的機制，這種機制限制Javascript引擎僅能引入同一個站點的程式碼，因而某種程度上提高了安全性。

## 與其他格式的比較

### XML

JSON與XML最大的不同在於XML是一個完整的[標記語言](../Page/標記語言.md "wikilink")，而JSON不是。這使得XML在程式判讀上需要比較多的功夫。主要的原因在於XML的設計理念與JSON不同。XML利用標記語言的特性提供了絕佳的延展性（如[XPath](../Page/XPath.md "wikilink")），在数据存储，扩展及高级检索方面具备对JSON的优势，而JSON则由于比XML更加小巧，以及浏览器的内建快速解析支持，使得其更适用于网络数据传输领域。

### MessagePack

宣称比JSON更短小，快速。

### 格式化工具

JSON格式取代了XML给网络传输带来了很大的便利，但是却没有了XML的一目了然，尤其是JSON-{zh-cn:数据;
zh-tw:資料;}-很长的时候，会让人陷入繁琐复杂的数据节点查找中。开发者可以-{zh-cn:通过在线;
zh-tw:使用線上;}-JSON格式化工具，来更方便的对JSON数据进行节点查找和解析。

## 參考文獻

## 參見

  - [JSONP](../Page/JSONP.md "wikilink")
  - [AJAX](../Page/AJAX.md "wikilink")
  - [JavaScript](../Page/JavaScript.md "wikilink")
  - [YAML](../Page/YAML.md "wikilink")
  - [HOCON](../Page/HOCON.md "wikilink")

## 外部連結

  - [JSON](http://www.json.org/)，關於JSON的規格、文件，以及在其他語言實做的資訊

  - [JSON中文说明](http://www.json.org/json-zh.html)

  - RFC 4627，JSON在[RFC裡的規格](../Page/RFC.md "wikilink")

  - [JSON格式化工具 (中文)](https://www.quackertools.com/zh/json)

  - [JSON编辑器](https://jsonformatter.org/json-editor)

  - [JSON分析器](https://codebeautify.org/jsonviewer)

  - [JSON到CSV转换器](https://codebeautify.org/json-to-csv)

  - [Minecraft指令─JSON文字格式](https://minecraft-zh.gamepedia.com/%E5%91%BD%E4%BB%A4#JSON.E6.96.87.E6.9C.AC)

  - [JSON在线格式化工具](https://jsonformatter.pro/cn)

{{-}}

[Category:置標語言](https://zh.wikipedia.org/wiki/Category:置標語言 "wikilink")
[Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink")
[Category:数据序列化格式](https://zh.wikipedia.org/wiki/Category:数据序列化格式 "wikilink")
[Category:JSON](https://zh.wikipedia.org/wiki/Category:JSON "wikilink")

1.