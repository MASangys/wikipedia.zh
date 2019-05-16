**非侵入式JavaScript**\[1\]是一種將[Javascript從](https://zh.wikipedia.org/wiki/Javascript "wikilink")[HTML結構抽離的設計概念](../Page/HTML.md "wikilink")，避免在HTML標籤中夾雜一堆onchange、onclick等屬性去掛載Javascript事件，讓HTML與Javascript分離，依[模型-视图-控制器的原則將功能權責清楚區分](../Page/MVC.md "wikilink")，使HTML也變得結構化容易閱讀。這個名称并不是正式定义，它的基本原则包括：

  - 將网页的[行为层和](../Page/置标语言.md "wikilink")[表现层](../Page/样式表.md "wikilink")[分离开](../Page/关注点分离.md "wikilink")\[2\]；
  - 是解决传统JavaScript编程问题（浏览器呈现不一致，缺乏扩展性）的最佳实践；
  - 为可能不支持JavaScript高级特性的[用户代理](../Page/用户代理.md "wikilink")（通常是浏览器）提供[渐进增强的支持](https://zh.wikipedia.org/wiki/渐进增强 "wikilink")\[3\]。

## 新範式

## 行為與文件標籤的分離

傳統上，JavaScript腳本通常與HTML文件的標籤放在一起。例如，以下是在HTML中註冊JavaScript事件處理程序的典型方法：

``` xml
<input type="text" name="date" onchange="validateDate()"/>
```

HTML標籤的目的通常是描述文件的排版結構，而不是網頁操作的程序行為。兩者的結合或許會對網站的可維護性產生負面影響，例如將[呈現和內容相結合](../Page/呈现与内容分离.md "wikilink")。在HTML中建立和引用的JavaScript腳本行為，例如在單一元素上設置多個不同事件的處理程序，或在多個元素上設置相同的事件處理程序，或者在使用事件委派時，結果可能難以使用和維護。

非侵入式方案是以編程方式註冊需要的事件處理程序，而不是和網頁元素內嵌在一起。不同於前述那樣添加一個`onchange`屬性，相關的元素改用簡單的標識，例如以`class`，`id`屬性和它們值當成腳本參考的標識，或標記中一些其它的方式：

``` xml
<input type="text" name="date" id="date" />
```

當頁面首次加載到瀏覽器中時，執行的腳本可以尋找每個相關元素，並相對應地進行設置：

``` xml
    window.addEventListener("DOMContentLoaded"，function（event）{
         document.getElementById('date').addEventListener("change"，validateDate);
    });
```

## 命名空間

非侵入式JavaScript應儘量減少將物件添加到運行環境，或全局的[名前空間中](../Page/命名空间.md "wikilink")。其它腳本有可能覆蓋掉全局名前空間中，所建立的任何變量或函數；而這將導致發生不預期的結果時，卻難以除錯的困擾。JavaScript並沒有內建明確的名前空間機制，但利用語言設計很容易可產生需求的效果。Flanagan建議以Java編程的開發風格，將開發人員自己的域名反轉，作為全球獨一的名前空間發佈。

``` javascript
var org;
if (!org) {
    org = {};
} else if (typeof org != 'object') {
    throw new Error("org already exists and is not an object.");
}
if (!org.example) {
    org.example = {};
} else if (typeof org.example != 'object') {
    throw new Error("org.example already exists and is not an object.");
}
```

雖然如上面的名前空間物件中，可定義各種變量，函數和物件，但是通常建議在名前空間內，使用[閉包進一步隔離](../Page/闭包_\(计算机科学\).md "wikilink")，作為私有的變量和函數來使用，以共用[介面回傳每個函數作用的結果](../Page/介面_\(程式設計\).md "wikilink")。上列代碼可依照以下內容，改寫為非侵入式：

``` javascript
org.example.Highlight = function() {
    // Define private data and functions
    var highlightId = 'x';
    function setHighlight(color) {
        document.getElementById(highlightId).style.color = color;
    }

    // Return public pointers to functions or properties
    // that are to be public.
    return {
        goGreen: function() { setHighlight('green'); },
        goBlue:  function() { setHighlight('blue'); }
    }
}(); // End closure definition and invoke it.
```

從任何其它的模組，可以呼叫這些共用介面的方法，如下列：

``` javascript
org.example.Highlight.goBlue();

var h = org.example.Highlight;
h.goGreen();
```

以這種方式，每個模組－開發人員的代碼都包含在私有或唯一的名前空間中，並不會干擾或侵入任何其它代碼。

## 正常退化

## 最佳實務

非侵入式Javascript的本質是增加了分離的行為層概念，而且這範式的提倡者認同一些相關的原則，如下列：

  - [DOM腳本](../Page/動態HTML.md "wikilink")，即遵循W3C
    DOM和事件模型，並避免使用某一瀏覽器特定的擴充功能。
  - [功能檢測](https://zh.wikipedia.org/wiki/渐进增强 "wikilink")，即在使用特定功能之前先檢查是否支援；對比相反於過去只檢測用戶端使用的瀏覽器(版本)。
  - 更一般來說，JavaScript最佳實務通常與其它編程語言（例如[封裝和](../Page/封裝_\(物件導向程式設計\).md "wikilink")[抽象層](https://zh.wikipedia.org/wiki/抽象層 "wikilink")，避免[全局变量](../Page/全局变量.md "wikilink")，有意義的命名法約定，使用適當的[设计模式式和](https://zh.wikipedia.org/wiki/设计模式 "wikilink")[系統測試](../Page/软件测试.md "wikilink")）平行。這些原則對大規模軟體工程開發非常重要，但過去的JavaScript設計過程中並不受重視。這些原則的採行，使JavaScript被認為是從“玩具”的腳本語言，轉變為正規編程發展工具的重要組成。

## 参考文献

## 外部連結

  - [Unobtrusive Client Validation in ASP.NET
    MVC 3](http://bradwilson.typepad.com/blog/2010/10/mvc3-unobtrusive-validation.html)

## 参见

  - [渐进增强](https://zh.wikipedia.org/wiki/渐进增强 "wikilink")

{{-}}

[Category:JavaScript](https://zh.wikipedia.org/wiki/Category:JavaScript "wikilink")
[Category:响应式网页设计](https://zh.wikipedia.org/wiki/Category:响应式网页设计 "wikilink")

1.
2.
3.