**alt屬性**是一個用於網頁語言[HTML](../Page/HTML.md "wikilink")和[XHTML](../Page/XHTML.md "wikilink")、為輸出純文字的參數屬性。它的作用是當[HTML元素](../Page/HTML元素.md "wikilink")本身的物件無法被[渲染](../Page/渲染.md "wikilink")時，就顯示alt（替代）文字作為一種補救措施。這也常被螢幕閱讀軟體所使用，
使聽著網頁內容的人(例如視障者)可以與之互動。在HTML 4.01中，
**alt屬性被規定在`img`與`area`兩個元素中必須被指定，即使是空的**(否則螢幕閱讀軟體可能會讀出不必要的裝飾性元素名稱)，alt屬性的語法如下：

  -
    `<img alt="...">`
    `<area alt="...">`

## 例子

以下圖像的alt屬性是「一面紅色底、白色十字旗幟在空中飄揚，十字的直條較為靠向左邊的旗桿。」

[Dannebrog.jpg](https://zh.wikipedia.org/wiki/File:Dannebrog.jpg "fig:Dannebrog.jpg")

這圖像的HTML句式可以如下：

    -{}-
    <img alt="一面紅色底、白色十字旗幟在空中飄揚，十字的直條較為靠向左邊的旗桿。"
         src="http://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Dannebrog.jpg/180px-Dannebrog.jpg"
         width="180" height="135" />

視力受損的讀者如果使用[螢幕閱讀器](../Page/螢幕閱讀器.md "wikilink")如或，這些應用程序會將圖像中提供的alt文字讀出，讓他們以聆聽理解圖像內容。純文字網頁瀏覽器如[Lynx](../Page/Lynx.md "wikilink")或允許使用者手動會禁止下載圖像的瀏覽器會顯示alt文字以取代圖像；一般能正常顯示圖像的網頁瀏覽器的讀者则需要開啟圖像屬性或頁面原始檔才能得知alt屬性內容。

## 常見誤解

[Ie7_alt_as_tooltip.png](https://zh.wikipedia.org/wiki/File:Ie7_alt_as_tooltip.png "fig:Ie7_alt_as_tooltip.png")
[Internet Explorer](../Page/Internet_Explorer.md "wikilink")
7及更舊版本會錯誤地將alt屬性渲染成。\[1\]\[2\]這個設定導致許多網絡開發者真的將alt（語法例子：alt="內容"）屬性當成彈出式提示框來使用\[3\]，而忽視了`title`（代碼用法與alt相同。title="內容"）才是用來顯示彈出式提示框的正確屬性。\[4\]
這個失誤在[Internet Explorer
8及以後版本被改正過來](../Page/Internet_Explorer_8.md "wikilink")，alt文字不會再被當成提示框彈出。\[5\]alt屬性有時亦會被誤稱為「alt元素」（alt
tag，變相與`img`元素畫上等號）。\[6\]\[7\]\[8\]

## 參見

  - [`longdesc`屬性](https://zh.wikipedia.org/wiki/Longdesc屬性 "wikilink")

## 資料來源

## 外部連結

  - [How to specify alternate
    text](http://www.w3.org/TR/html401/struct/objects.html#adef-alt)，HTML
    4.01規格說明
  - [Providing text equivalents for
    images](http://diveintoaccessibility.org/day_23_providing_text_equivalents_for_images.html)，Dive
    Into Accessibility
  - [Guidelines on alt texts in `img`
    elements](http://www.cs.tut.fi/~jkorpela/html/alt.html)，Jukka
    Korpela編
  - [Alternative text for images: the alt
    attribute](https://web.archive.org/web/20140812234047/http://www.evotech.net/blog/2007/08/alternitive-text-for-images-the-alt-attribute/)，Estelle
    Weyl編
  - [Mini-FAQ about the alternate text of
    images](http://www.hixie.ch/advocacy/alttext)，Ian Hickson編

[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink")

1.

2.

3.  [Bug 25537 - Alt text is not displayed as a tooltip over
    <img>](https://bugzilla.mozilla.org/show_bug.cgi?id=25537),
    [Mozilla](../Page/Mozilla.md "wikilink")
    [bugzilla](https://zh.wikipedia.org/wiki/bugzilla "wikilink")

4.

5.

6.
7.

8.