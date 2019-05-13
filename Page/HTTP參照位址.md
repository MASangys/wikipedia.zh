**HTTP參照位址**（**referer**，或**HTTP
referer**）是[HTTP表頭的一個欄位](../Page/HTTP.md "wikilink")，用來表示從哪兒連結到目前的[網頁](../Page/網頁.md "wikilink")，採用的格式是[URL](../Page/URL.md "wikilink")。換句話說，藉著HTTP參照位址，目前的網頁可以檢查訪客從哪裡而來，這也常被用來對付偽造的跨網站請求。

而 *dereferer* 則是將HTTP參照位址資訊剝離，所以網站將無法識別訪客從何而來。

## 拼写问题

*Referer*的正确英语拼法是**referrer**。由于早期HTTP规范的拼写错误，为保持[向下兼容就将错就错了](../Page/向下兼容.md "wikilink")。例如DOM
Level 2\[1\]、Referrer Policy\[2\]等其他网络技术的规范曾试图修正此问题，使用正确拼法，导致目前拼法并不统一。

## 概念与功能

當訪客訪問[網頁時](../Page/網頁.md "wikilink")，HTTP參照位址 (**referer** 或 **referring
page**)
是前一個[網頁的](../Page/網頁.md "wikilink")[URL](../Page/URL.md "wikilink")。如果是圖片的話，通常指的就是圖片所在的[網頁](../Page/網頁.md "wikilink")。在[网页浏览器送往](../Page/网页浏览器.md "wikilink")[網頁伺服器的時候](../Page/網頁伺服器.md "wikilink")，HTTP參照位址就被包含在[HTTP請求方法中](../Page/HTTP.md "wikilink")。

許多網站會将參照位址记录以便追蹤使用者的動態或进行统计，大部分分析軟體也都會處理這個資訊。但因參照位址資訊可能會带来[隐私权問題](../Page/隐私权.md "wikilink")，不少[网页浏览器允許使用者设置不要送出這個資訊](../Page/网页浏览器.md "wikilink")，有些[代理服务器和](../Page/代理服务器.md "wikilink")[防火牆也會将參照位址資訊过滤掉](../Page/防火墙_\(网络\).md "wikilink")，以避免外部获知非公開的网络地址。缺少參照位址資訊有可能會造成某些使用問題：某些伺服器會因為缺少正確的參照位址資訊而進行阻擋，以避免未經授權的圖片引用（图像防盗链）或是其他對伺服器有影響的行為。針對這樣的阻擋，有些軟體还提供了針對特定網站送出假来源位址的功能（反防盗链）。

## 如何取得HTTP參照位址

  - ASP.NET（[C\#](../Page/C_Sharp.md "wikilink")）

<!-- end list -->

``` csharp
string strReferrer = Request.UrlReferrer.AbsolutePath.ToString();
string strReferrer = Request.ServerVariables("http_referrer");
string strReferrer = Request.UrlReferrer.ToString();
```

  - [ASP](../Page/ASP.md "wikilink")

<!-- end list -->

``` asp
strReferrer = Request.ServerVariables("HTTP_REFERER").Item;
```

  - [PHP](../Page/PHP.md "wikilink")

<!-- end list -->

``` php
$strReferrer = $_SERVER["HTTP_REFERER"];
```

  - [JAVA](../Page/JAVA.md "wikilink")

<!-- end list -->

``` java
strReferrer = request.getHeader("referer");
```

  - [GOLANG](../Page/GOLANG.md "wikilink")

<!-- end list -->

``` go
strReferrer = http.Request.Referer()
```

  - [Python](../Page/Python.md "wikilink")

<!-- end list -->

``` python
from flask import Flask,request
app = Flask(__name__)
@app.route("/")
def Get_Referer():
    Referer = request.headers.get("Referer")
    return Referer
```

## 參考與外部連結

  - RFC 2616: Hypertext Transfer Protocol – HTTP/1.1
  - [IRI](https://web.archive.org/web/20080703104141/http://www.ietf.org/rfc/rfc3987.txt)
    – Internationalized Resource Identifiers

## 參考資料

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

1.
2.