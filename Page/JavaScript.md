，通常缩写为**JS**，是一种[高级的](../Page/高级语言.md "wikilink")，[直譯語言的](../Page/直譯語言.md "wikilink")[编程语言](../Page/编程语言.md "wikilink")\[1\]。JavaScript是一门基于原型、函数先行的语言\[2\]，是一门多范式的语言，它支持[面向对象编程](../Page/面向对象程序设计.md "wikilink")，[命令式编程](../Page/命令式编程语言.md "wikilink")，以及[函数式编程](../Page/函数式编程语言.md "wikilink")。它提供语法来操控文本、[数组](../Page/数组.md "wikilink")、日期以及[正则表达式等](../Page/正则表达式.md "wikilink")，不支持[I/O](../Page/I/O.md "wikilink")，比如网络、存储和图形等，但这些都可以由它的宿主环境提供支持。它已经由ECMA（欧洲电脑制造商协会）通过[ECMAScript实现语言的标准化](../Page/ECMAScript.md "wikilink")\[3\]。它被世界上的绝大多数网站所使用，也被世界主流[浏览器](../Page/浏览器.md "wikilink")（[Chrome](../Page/Google_Chrome.md "wikilink")、[IE](../Page/Internet_Explorer.md "wikilink")、[Firefox](../Page/Firefox.md "wikilink")、[Safari](../Page/Safari.md "wikilink")、[Opera](../Page/Opera電腦瀏覽器.md "wikilink")）支持。

虽然JavaScript与[Java这门语言不管是在名字上](../Page/Java.md "wikilink")，或是在语法上都有很多相似性，但这两门编程语言从设计之初就有很大的不同，JavaScript的语言设计主要受到了[Self](../Page/Self.md "wikilink")（一种基于原型的编程语言）和[Scheme](../Page/Scheme.md "wikilink")（一门函数式编程语言）的影响\[4\]。在语法结构上它又与[C语言有很多相似](../Page/C语言.md "wikilink")（例如if条件语句、while循环、switch语句、do-while循环等）\[5\]。

在客户端，JavaScript在传统意义上被实现为一种解释语言，但在最近，它已经可以被[即时编译](../Page/即時編譯.md "wikilink")（JIT）执行。随着最新的[HTML5和](../Page/HTML5.md "wikilink")[CSS3语言标准的推行它还可用于游戏](../Page/CSS3.md "wikilink")、桌面和移动应用程序的开发和在服务器端网络环境运行，如[Node.js](../Page/Node.js.md "wikilink")。

## 历史

### 肇始於網景

1993年，[伊利諾大學厄巴納-香檳分校的](../Page/伊利諾大學厄巴納-香檳分校.md "wikilink")[國家超級電腦應用中心](../Page/國家超級電腦應用中心.md "wikilink")（NCSA）發表了[NCSA
Mosaic](../Page/NCSA_Mosaic.md "wikilink")，這是最早流行的圖形介面網頁瀏覽器，它在[全球資訊網的普及上發揮了重要作用](../Page/全球資訊網.md "wikilink")。1994年，一家名為[Mosaic
Communications的公司在](../Page/Mosaic_Communications.md "wikilink")[加州山景城成立了](../Page/山景城_\(加利福尼亚州\).md "wikilink")，並雇用了許多原來的NCSA
Mosaic開發者用來開發[Mosaic
Netscape](../Page/Mosaic_Netscape.md "wikilink")，該公司的目標是取代NCSA
Mosaic成為世界第一的網頁瀏覽器。第一個版本的網頁瀏覽器Mosaic Netscape
0.9於1994年底發布。在四個月內，已經佔據了四分之三的瀏覽器市場，並成為1990年代網際網路的主要瀏覽器。為避免NCSA的商標所有權問題，該瀏覽器於同年更名為Netscape
Navigator，該公司命名為Netscape
Communications。網景預見到網路需要變得更動態。公司的創始人[馬克·安德森認為](../Page/馬克·安德森.md "wikilink")[HTML需要一種](../Page/HTML.md "wikilink")[膠水語言](../Page/膠水語言.md "wikilink")，讓網頁設計師和兼職程式設計師可以很容易地使用它來組裝圖片和外掛程式之類的元件，且程式碼可以直接編寫在網頁標記中。

1995年，網景招募了[布兰登·艾克](../Page/布兰登·艾克.md "wikilink")，目標是把[Scheme語言嵌入到Netscape](../Page/Scheme.md "wikilink")
Navigator瀏覽器當中\[6\]。但更早之前，網景已經跟[昇阳合作在Netscape](../Page/昇陽電腦.md "wikilink")
Navigator中支援[Java](../Page/Java.md "wikilink")，這時網景內部產生激烈的爭論\[7\]。後來網景決定發明一種與Java搭配使用的輔助腳本語言並且語法上有些類似\[8\]，這個決策導致排除了採用現有的語言，例如[Perl](../Page/Perl.md "wikilink")、[Python](../Page/Python.md "wikilink")、[Tcl或Scheme](../Page/Tcl.md "wikilink")。為了在其他競爭提案中捍衛JavaScript這個想法，公司需要有一個可以運作的原型。艾克在1995年5月僅花了十天時間就把原型設計出來了。

最初命名為**Mocha**，1995年9月在Netscape Navigator
2.0的Beta版中改名為**LiveScript**，同年12月，Netscape Navigator
2.0 Beta
3中部署時被重新命名為**JavaScript**\[9\]\[10\]，當時网景公司与昇阳电脑公司组成的开发联盟为了让这门语言搭上Java这个编程语言“热词”，因此将其临时改名为JavaScript，日后这成为大众对这门语言有诸多误解的原因之一\[11\]。

### 微軟採用

JavaScript推出后在浏览器上大获成功，[微软公司在不久后就为](../Page/微软.md "wikilink")[Internet
Explorer
3浏览器推出了](../Page/Internet_Explorer_3.md "wikilink")[JScript](../Page/JScript.md "wikilink")，以与处于市场领导地位的网景产品同台竞争。JScript也是一种JavaScript实现，这两个JavaScript语言版本在浏览器端共存意味着语言标准化的缺失，发展初期，JavaScript的标准并未确定，同期有网景的JavaScript，微软的JScript雙峰並峙。除此之外，微軟也在網頁技術上加入了不少專屬物件，使不少網頁使用非微軟平台及瀏覽器無法正常顯示\[12\]\[13\]，導致在[瀏覽器大戰期間網頁設計者通常會把](../Page/瀏覽器大戰.md "wikilink")「用Netscape可達到最佳效果」或「用IE可達到最佳效果」的標誌放在首頁\[14\]。隨著[Internet
Explorer
4的發布](../Page/Internet_Explorer_4.md "wikilink")，微軟引入了[動態HTML的概念](../Page/動態HTML.md "wikilink")，但語言實現和不同專有化的[文件物件模型的差異仍然存在](../Page/文件物件模型.md "wikilink")，成為網路上普及使用JavaScript的阻礙\[15\]。

### 标准化

1996年11月，網景正式向[ECMA](../Page/Ecma国际.md "wikilink")（欧洲计算机制造商协会）提交語言標準。1997年6月，ECMA以JavaScript语言为基础制定了[ECMAScript标准规范ECMA](../Page/ECMAScript.md "wikilink")-262。JavaScript成為了ECMAScript最著名的實現之一\[16\]。除此之外，[ActionScript和](../Page/ActionScript.md "wikilink")[JScript也都是](../Page/JScript.md "wikilink")[ECMAScript规范的实现语言](../Page/ECMAScript.md "wikilink")。儘管JavaScript作為給非程式人員的腳本語言，而非作為給程式人員的程式語言來推廣和宣傳，但是JavaScript具有非常豐富的特性。

## 概論

一般来说，完整的JavaScript包括以下几个部分：

  - ECMAScript，描述了该语言的语法和基本对象
  - 文档对象模型（[DOM](../Page/DOM.md "wikilink")），描述处理**网页内容**的方法和接口
  - 浏览器对象模型（[BOM](../Page/浏览器对象模型.md "wikilink")），描述与**浏览器**进行交互的方法和接口

JavaScript的基本特点如下：

  - 是一种解释性脚本语言（代码不进行预编译）。
  - 主要用来向HTML页面添加**交互行为**。
  - 可以直接嵌入HTML页面，但写成单独的js文件有利于结构和行为的分离。

JavaScript常用来完成以下任务：

  - 嵌入动态文本于HTML页面
  - 对浏览器事件作出响应
  - 读写HTML元素
  - 在数据被提交到服务器之前验证数据
  - 检测访客的浏览器信息
  - 控制[cookies](../Page/Cookie.md "wikilink")，包括创建和修改等

## 特性

不同於[伺服器端腳本語言](../Page/伺服器.md "wikilink")，例如[PHP与](../Page/PHP.md "wikilink")[ASP](../Page/Active_Server_Pages.md "wikilink")，JavaScript主要被作为[客户端腳本語言在用戶的瀏覽器上運行](../Page/客户端.md "wikilink")，不需要伺服器的支持。所以在早期程式設計師比較青睞於JavaScript以減少對伺服器的負擔，而與此同時也帶來另一個問題：安全性。而隨著伺服器變得強大，現在的程序員更喜歡運行於伺服器端的腳本以保證安全，但JavaScript仍然以其跨平台、容易上手等優勢大行其道。同时，有些特殊功能（如AJAX）必须依赖JavaScript在客户端进行支持。隨著引擎如V8和框架如[Node.js的發展](../Page/Node.js.md "wikilink")，及其[事件驅動及](../Page/事件驅動.md "wikilink")[異步IO等特性](../Page/異步IO.md "wikilink")，JavaScript逐漸被用來編寫[伺服器端程式](../Page/伺服器.md "wikilink")。且在近几年中，[Node.js的出世](../Page/Node.js.md "wikilink")，让JavaScript也具有了一定的服务器功能，且。

### 指令式与结构化

JavaScript从支持许多C语言的结构化编程语法（例如if条件语句、while循环、switch语句、do-while循环等）。但作用域是一个例外：JavaScript只支持使用var关键字来定义变量的函数作用域。ECMAScript加入了let关键字来支持块级作用域，意味着JavaScript现在既支持函数作用域又支持块级作用域。正如C语言一样，JavaScript中的表达式和语句是不同的。与C不同，JavaScript支持自动在语句末添加分号。

### 动态化

正如大部分脚本语言，类型与值而不是与变量关联。例如x变量可以为数值，随后又可被赋值为字符串。JavaScript提供了包括[鸭子类型在内的方法来检测变量类型](../Page/鸭子类型.md "wikilink")。

#### Eval()

[Eval](../Page/Eval.md "wikilink")() 函數可以直接執行一個JavaScript函式。例如：

``` javascript
eval("alert(\"Message\")");
```

## 编程

JavaScript是一種[腳本語言](../Page/腳本語言.md "wikilink")，其[原始碼在發往客户端執行之前不需經過編譯](../Page/原始碼.md "wikilink")，而是將文本格式的字符代碼發送給瀏覽器由瀏覽器解釋執行。[直譯語言的弱點是安全性較差](../Page/直譯語言.md "wikilink")，而且在JavaScript中，如果一條執行不了，那麼下面的語言也無法執行。而其解決辦法就是於使用[异常处理](../Page/异常处理.md "wikilink")`try{}catch(){}`︰

``` javascript
console.log("a");    //這是正確的
console.log("b");    //這是正確的
console.logg("c");   //这是错误的，并且到这里会停下来
console.log("d");    //這是正確的
console.log("e");    //這是正確的

/*解決辦法*/
try{console.log("a");}catch(e){}    //這是正確的
try{console.log("b");}catch(e){}    //這是正確的
try{console.logg("c");}catch(e){}   //这是错误的，但是到这里不会停下来，而是跳过
try{console.log("d");}catch(e){}    //這是正確的
try{console.log("e");}catch(e){}    //這是正確的
```

JavaScript被歸類為直譯語言，因為目前主流的引擎都是每次執行時載入程式碼並解譯。V8是將所有程式碼解譯後再開始執行，其他引擎則是逐行解譯（SpiderMonkey會將解譯過的指令暫存，以提高效能，稱為[即時編譯](../Page/即時編譯.md "wikilink")），但由於V8的核心部份多數用JavaScript撰寫（而SpiderMonkey是用C++），因此在不同的測試上，兩者效能互有優劣。

與其相對應的是[編譯語言](../Page/編譯語言.md "wikilink")，例如[C语言](../Page/C语言.md "wikilink")，以編譯語言編寫的程式在執行之前，必須經過編譯，將程式碼編譯為機器碼，再加以執行。

## 範例

以下是一個簡單的JavaScript [Hello World](../Page/Hello_World.md "wikilink")︰
-{zh-hans:

``` javascript
<!DOCTYPE HTML>
<html>
    <head>
    <title>简单的JavaScript Hello World</title>
        <script type="text/javascript">
            document.write("Hello, world!");   // 在浏览器视窗内直接显示
            alert("Hello, world!");            // 弹窗显示
            console.log("Hello, world!");      // 在控制台（console）里显示，需要先开启开发工具控制台
        </script>
    </head>
    <body>
　　　　HTML内容……
    </body>
</html>
```

;zh-hant:

``` javascript
<!DOCTYPE HTML>
<html>
    <head>
    <title>簡單的JavaScript Hello World</title>
        <script type="text/javascript">
            document.write("Hello, world!");   // 於瀏覽器視窗內直接顯示
            alert("Hello, world!");            // 開啟對話視窗顯示
            console.log("Hello, world!");      // 於console裡顯示，需要先開啟開發工具控制台
        </script>
    </head>
    <body>
　　　　HTML內容……
    </body>
</html>
```

}-

或是在[瀏覽器的](../Page/瀏覽器.md "wikilink")[地址栏中使用](../Page/地址栏.md "wikilink")`javascript:`，以互動方式表示：

``` javascript
javascript:alert("Hello world!");
```

## 版本

JavaScript最初開發於1996年，被使用於[Netscape
Navigator網頁瀏覽器](../Page/Netscape_Navigator.md "wikilink")。同年微軟在Internet
Explorer發布了一個實作。由於商標問題，這項實作被命名為[JScript](../Page/JScript.md "wikilink")。1997年，JavaScript已經被[網景公司提交給](../Page/網景.md "wikilink")[ECMA制定為標準](../Page/Ecma国际.md "wikilink")，稱之為[ECMAScript](../Page/ECMAScript.md "wikilink")，標準編號[ECMA-262](../Page/ECMA-262.md "wikilink")。使用顯式版本號聲明對語言的引用，作爲一項Mozilla的特性，已在較新版本中被移除（至少為
[Firefox](../Page/Firefox.md "wikilink")
59）。[Firefox](../Page/Firefox.md "wikilink") 4
是最後一個需要顯式地在引用時聲明明確版本號的版本（1.8.5）。

下列表格的資訊基於多個參考來源\[17\]\[18\]\[19\]\[20\]：

<table>
<thead>
<tr class="header">
<th><p>版本</p></th>
<th><p>發布日期</p></th>
<th><p>基於</p></th>
<th><p>Netscape<br />
Navigator</p></th>
<th><p>Mozilla<br />
Firefox</p></th>
<th><p>Internet<br />
Explorer</p></th>
<th><p>Opera</p></th>
<th><p>Safari</p></th>
<th><p>Google<br />
Chrome</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><p>1996年3月</p></td>
<td></td>
<td><p>2.0</p></td>
<td></td>
<td><p>3.0</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>1996年8月</p></td>
<td></td>
<td><p>3.0</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>1997年6月</p></td>
<td></td>
<td><p>4.0 - 4.05</p></td>
<td></td>
<td></td>
<td><p>3</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>1998年10月</p></td>
<td><p>ECMA-262 1st + 2nd edition</p></td>
<td><p>4.06 - 4.7x</p></td>
<td></td>
<td><p>4.0</p></td>
<td><p>5[21]</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td><p>Netscape<br />
Server</p></td>
<td></td>
<td></td>
<td><p>6</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2000年11月</p></td>
<td><p>ECMA-262 3rd edition</p></td>
<td><p>6.0</p></td>
<td><p>1.0</p></td>
<td><p>5.5（JScript 5.5）<br />
6（JScript 5.6）<br />
7（JScript 5.7）<br />
8（JScript 5.8）</p></td>
<td><p>7.0</p></td>
<td><p>3.0-5</p></td>
<td><p>1.0 - 10.0.666</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2005年11月</p></td>
<td><p>1.5 + Array extras + Array and string generics + <a href="../Page/E4X.md" title="wikilink">E4X</a></p></td>
<td></td>
<td><p>1.5</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2006年10月</p></td>
<td><p>1.6 + <a href="https://developer.mozilla.org/en-US/docs/JavaScript/New_in_JavaScript/1.7?redirectlocale=en-US&amp;redirectslug=New_in_JavaScript_1.7#Generators">Pythonic generators</a> + Iterators + Let</p></td>
<td></td>
<td><p>2.0</p></td>
<td></td>
<td></td>
<td></td>
<td><p>28.0.1500.95</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2008年6月</p></td>
<td><p>1.7 + Generator expressions + <a href="../Page/闭包_(计算机科学).md" title="wikilink">Expression closures</a></p></td>
<td></td>
<td><p>3.0</p></td>
<td></td>
<td><p>11.50</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><p>1.8 + <a href="../Page/JSON#Native_encoding_and_decoding_in_browsers.md" title="wikilink">native JSON</a> support + Minor updates</p></td>
<td></td>
<td><p>3.5</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>2009年6月22日</p></td>
<td><p>1.8.1 + Minor updates</p></td>
<td></td>
<td><p>3.6</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>2010年7月27日</p></td>
<td><p>1.8.2 + New features for ECMA-262 5th edition compliance</p></td>
<td></td>
<td><p>4.0</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 參見

  - [腳本語言](../Page/腳本語言.md "wikilink")
  - [DMDScript](../Page/DMDScript.md "wikilink")
  - [ECMAScript](../Page/ECMAScript.md "wikilink")
  - [JavaScript引擎](../Page/JavaScript引擎.md "wikilink")
  - [JScript](../Page/JScript.md "wikilink")
  - [AJAX](../Page/AJAX.md "wikilink")
  - [JavaScript函式庫](../Page/JavaScript函式庫.md "wikilink")

## 參考文獻

## 外部連結

  - [關於JavaScript介紹](https://developer.mozilla.org/docs/Web/JavaScript)
    [Mozilla Developer
    Network上的資源](../Page/Mozilla_Developer_Network.md "wikilink")
  - [Javascript格式化在线工具](https://jsonformatter.pro/cn/javascript-beautifier)

{{-}}

[Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")
[Category:美国发明](https://zh.wikipedia.org/wiki/Category:美国发明 "wikilink")
[Category:跨平台軟體](https://zh.wikipedia.org/wiki/Category:跨平台軟體 "wikilink")
[Category:函数式编程语言](https://zh.wikipedia.org/wiki/Category:函数式编程语言 "wikilink")
[Category:ISO标准化编程语言](https://zh.wikipedia.org/wiki/Category:ISO标准化编程语言 "wikilink")
[Category:脚本语言](https://zh.wikipedia.org/wiki/Category:脚本语言 "wikilink")

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