**Dart**（\[KK\] , \[DJ\]
）是一种适用于[全球資訊網的](https://zh.wikipedia.org/wiki/全球資訊網 "wikilink")[開放原始碼](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，由[Google主導開發](../Page/Google.md "wikilink")，於[2011年10月公開](../Page/2011年10月.md "wikilink")。它的開發團隊由[Google
Chrome瀏覽器](../Page/Google_Chrome.md "wikilink")[V8引擎團隊的領導者](../Page/V8_\(JavaScript引擎\).md "wikilink")主持，目標在於成為下一代結構化Web開發語言。

類似[JavaScript](../Page/JavaScript.md "wikilink")，Dart也是一種[物件導向語言](https://zh.wikipedia.org/wiki/物件導向 "wikilink")，但是它採用[類別基礎編程](https://zh.wikipedia.org/wiki/類別基礎編程 "wikilink")。它只允許[單一繼承](https://zh.wikipedia.org/wiki/單一繼承 "wikilink")，語法風格接近[C語言](https://zh.wikipedia.org/wiki/C語言 "wikilink")。

## 發展歷史

2011年Google在[丹麥奧胡斯](https://zh.wikipedia.org/wiki/丹麥 "wikilink")（Aarhus）舉行的“GOTO國際軟體開發大會”預告將釋出新網頁程式語言Dart，是一種[類別基礎編程語言](https://zh.wikipedia.org/wiki/類別基礎編程 "wikilink")（class-based
programming
language），在所有[瀏覽器都能夠有高效能的執行效率](https://zh.wikipedia.org/wiki/瀏覽器 "wikilink")。2011年10月10日Google宣布推出Dart的預覽版。\[1\]

Google在dartlang.org公布Dart開發工具及原始碼範例等內容，同時也提供相關[虛擬機器平台](../Page/虛擬機器.md "wikilink")。目前Dart有兩種方式執行：一是在原生的虛擬機器上，二是將Dart程式碼轉成Javascript，直接在Javascript引擎上執行。\[2\]

### 标准化

[ECMA已经成立技术委员会TC](../Page/Ecma国际.md "wikilink")52\[3\]展开标准化Dart的工作，同时由于Dart能够被编译成标准的JavaScript，它能够有效地在所有现代浏览器上运行。2014年7月，ECMA的第107次全体大会通过了第一版Dart语言规范。\[4\]

## 範例

[Hello World范例](../Page/Hello_World.md "wikilink")：

``` dart
main() {
  print('Hello World!');
}
```

計算[費氏數列次目函數](https://zh.wikipedia.org/wiki/費氏數列 "wikilink")：

``` dart
// If int n > 2, return fib(n - 1) + fib(n - 2);
// otherwise, return int 1 as result
int fib(int n) => (n > 2) ? (fib(n - 1) + fib(n - 2)) : 1;

void main() {
  print('fib(20) = ${fib(20)}');
}
```

## 参见

  - [CoffeeScript](../Page/CoffeeScript.md "wikilink")

  - ，一种编译到JavaScript的静态类型的函数式语言

  -
  - [Go](../Page/Go.md "wikilink")，另一个Google开发的语言

  - [Google Web
    Toolkit](https://zh.wikipedia.org/wiki/Google_Web_Toolkit "wikilink")

  - [Haxe](../Page/Haxe.md "wikilink")，一种可以编译到JavaScript和其它几种语言的语言

  -
  - [TypeScript](../Page/TypeScript.md "wikilink")

## 参考资料

## 外部链接

  -
[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")
[Category:Google軟體](https://zh.wikipedia.org/wiki/Category:Google軟體 "wikilink")
[Category:網頁技術](https://zh.wikipedia.org/wiki/Category:網頁技術 "wikilink")
[Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink")
[Category:动态类型编程语言](https://zh.wikipedia.org/wiki/Category:动态类型编程语言 "wikilink")
[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink")
[Category:Web编程](https://zh.wikipedia.org/wiki/Category:Web编程 "wikilink")

1.  [Presentation: "Opening Keynote: Dart, a new programming language
    for structured web
    programming"](http://gotocon.com/aarhus-2011/presentation/Opening%20Keynote:%20Dart,%20a%20new%20programming%20language%20for%20structured%20web%20programming)
    - GOTO Aarhus 2011 conference. Planned official presentation of the
    Dart language, on October 10.
2.  [Google推Dart語言，欲取代JavaScript？](http://www.ithome.com.tw/itadm/article.php?c=70168)

3.
4.  <http://news.dartlang.org/2014/07/ecma-approves-1st-edition-of-dart.html>