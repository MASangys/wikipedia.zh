**JavaScriptMVC** 是一套[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[多樣化網際網路應用程式](https://zh.wikipedia.org/wiki/多樣化網際網路應用程式 "wikilink")[框架](https://zh.wikipedia.org/wiki/軟體框架 "wikilink")，以 [jQuery](https://zh.wikipedia.org/wiki/jQuery "wikilink") 與 [OpenAJAX](https://zh.wikipedia.org/wiki/OpenAJAX "wikilink") 為基礎。JavaScriptMVC 利用 [MVC](../Page/MVC.md "wikilink") 架構與工具擴展這些[函式庫](../Page/函式庫.md "wikilink")，以便開發與測試。由於 JavaScriptMVC 不需要任何伺服器端的配合，因此它可以和任何的網站服務介面與程式語言整合，如 [ASP.NET](../Page/ASP.NET.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[PHP](../Page/PHP.md "wikilink")、[Python](../Page/Python.md "wikilink") 或 [Ruby](../Page/Ruby.md "wikilink")。

## 歷史

JavaScriptMVC 的第一個版本是在2008年5月釋出。穩定版的 JavaScriptMVC 2.0 在2009年6月釋出，並以 jQuery 為基礎。主要開發目標為維持程式碼的簡短和專注在它獨特的功能上。3.0版本在2010年12月釋出。而從 JavaScriptMVC 中所獨立出來的 MVC 架構「[CanJS](https://zh.wikipedia.org/wiki/CanJS "wikilink")」則在2012年4月釋出。

## 控制器

控制器（Controller）是由許多函式所組成，這些函式會在適當的事件發生時被呼叫。函式名稱提供這些函式被呼叫時的描述。只要正確地命名函式，控制器就能夠辨認這些函式並在正確的時機呼叫它們。舉例來說：

``` javascript
 $.Controller('TodosController',{
   ".todo mouseover": function(el, ev){
     el.css("backgroundColor","red")
   },
   ".todo mouseout": function(el, ev){
     el.css("backgroundColor","")
   },
   "#create_todo click" : function(){
     this.find("ol").append("New Todo");
   }
 });
```

在控制器中也可以處理 OpenAjax 事件，例如：

``` javascript
 $.Controller('TodosController',{
   "main.test subscribe": function(ev, publisherData){
     // TODO: do something
   },
   "other.event subscribe": function(ev, publisherData){
     // TODO: do something
   }
 });
```

## 視圖

JavaScriptMVC 使用 EJS 樣板來處理控制器裡的 HTML 資料並且將它們插入 [DOM](https://zh.wikipedia.org/wiki/文件物件模型 "wikilink") 中。這些語法是借鏡自 [ERuby](https://zh.wikipedia.org/wiki/ERuby "wikilink")，且與 [PHP](../Page/PHP.md "wikilink") 或其他伺服器端語言的樣板引擎相似。

以「test.ejs」（data = \[ "Hello", "World" \]）為例：

``` html4strict
<ul>
<% for( var i=0, len = data.length; i < len; i++ ) { %>
 <li><%= data[i] %></li>
<% } %>
<ul>
```

這會輸出如下的結果：

``` html4strict
<ul>
 <li>Hello</li>
 <li>World</li>
</ul>
```

## 模型

模型（Model）類別提供了組織應用程式資料層級的基本功能。

``` javascript
 $.Model('Todo',{
  findAll: '/todos',
  findOne: '/todos/{id}',
  create: '/todos',
  update: '/todos/{id}'
  destroy : '/todos/{id}'
 },{});
```

## 測試

JavaScriptMVC 還提供了一套完整的測試外掛，支援模型的單元測試，以及需要處理事件驅動結構的功能性測試。測試工具可以在 [Rhino](https://zh.wikipedia.org/wiki/Rhino "wikilink") 引擎的命令列模式執行。

## 參考資料

## 外部連結

  - [官方網站](http://www.javascriptmvc.com/)
  - [GitHub 專案](https://github.com/jupiterjs/javascriptmvc)
  - [Google Code 上的舊專案頁面](http://code.google.com/p/javascriptmvc/)

[Category:網站開發](https://zh.wikipedia.org/wiki/Category:網站開發 "wikilink") [Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink") [Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink") [Category:MVC](https://zh.wikipedia.org/wiki/Category:MVC "wikilink")