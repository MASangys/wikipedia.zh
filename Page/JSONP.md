**JSONP**（**JSON with Padding**）是資料格式[JSON](../Page/JSON.md "wikilink")的一種“使用模式”，可以讓網頁從別的網域要資料。另一個解決這個問題的新方法是[跨來源資源共享](../Page/跨來源資源共享.md "wikilink")。

由於，一般來說位於server1.example.com的網頁無法與 server2.example.com的伺服器溝通，而[HTML](../Page/HTML.md "wikilink")的 \[\[HTML元素\#script_tag|<code>

<script>

</code>\]\]元素是一個例外。利用 \[\[HTML元素\#script_tag|<code>

<script>

</code>\]\]元素的這個開放策略，網頁可以得到從其他來源動態產生的JSON資料，而這種使用模式就是所謂的 JSONP。用JSONP抓到的資料並不是JSON，而是任意的JavaScript，用 JavaScript直譯器執行而不是用JSON解析器解析。

## 原理

為了理解這種模式的原理，先想像有一個回傳JSON文件的URL，而JavaScript 程式可以用[XMLHttpRequest](../Page/XMLHttpRequest.md "wikilink")跟這個URL要資料。假設我們的URL是 http://server2.example.com/RetrieveUser?UserId=xxx 。假設小明的UserId 是1823，且當瀏覽器透過URL傳小明的UserId，也就是抓取http://server2.example.com/RetrieveUser?UserId=1823，得到：

``` javascript
   {"Name": "小明", "Id" : 1823, "Rank": 7}
```

這個JSON資料可能是依據傳過去URL的查詢參數動態產生的。

這個時候，把 \[\[HTML元素\#script_tag|<code>

<script>

</code>\]\]元素的src屬性設成一個回傳JSON的URL是可以想像的，這也代表從HTML頁面透過script元素抓取 JSON是可能的。

然而，一份JSON文件並不是一個JavaScript程式。為了讓瀏覽器可以在 \[\[HTML元素\#script_tag|<code>

<script>

</code>\]\]元素執行，從src裡URL 回傳的必須是可執行的JavaScript。在JSONP的使用模式裡，該URL回傳的是由函數呼叫包起來的動態生成JSON，這就是JSONP的“填充（padding）”或是“前輟（prefix）”的由來。

慣例上瀏覽器提供[回調函數的名稱當作送至伺服器的請求中命名查詢參數的一部份](https://zh.wikipedia.org/wiki/回調函數 "wikilink")，例如：

``` html4strict
 <script type="text/javascript"
         src="http://server2.example.com/RetrieveUser?UserId=1823&jsonp=parseResponse">
 </script>
```

伺服器會在傳給瀏覽器前將JSON数据填充到回调函数（parseResponse）中。瀏覽器得到的回應已不是單純的資料敘述而是一個腳本。在本例中，瀏覽器得到的是：

``` javascript
   parseResponse({"Name": "小明", "Id" : 1823, "Rank": 7})
```

## 填充

雖然這個填充（前輟）“通常”是瀏覽器執行背景中定義的某個回調函數，它也可以是變數賦值、if敘述或者是其他JavaScript敘述。JSONP要求（也就是使用JSONP模式的請求）的回應不是JSON也不被當作JSON解析——回傳內容可以是任意的運算式，甚至不需要有任何的JSON，不過慣例上填充部份還是會觸發函數调用的一小段JavaScript片段，而這個函數呼叫是作用在JSON格式的資料上的。

另一種說法—典型的JSONP就是把既有的JSON API用函數呼叫包起來以達到跨域存取的解法。

## Script元素“注入”

為了要啟動一個JSONP呼叫（或者說，使用這個模式），你需要一個script 元素。因此，瀏覽器必須為每一個JSONP要求加（或是重用）一個新的、有所需 src值的 \[\[HTML元素|<code>

<script>

</code>\]\]元素到HTML DOM裡—或者說是「注入」這個元素。瀏覽器執行該元素，抓取src裡的URL，並執行回傳的 JavaScript。

也因為這樣，JSONP被稱作是一種“讓使用者利用script元素注入的方式繞開同源策略”的方法。

## 安全問題

使用遠端網站的script標籤會讓遠端網站得以注入**任何**的內容至網站裡。如果遠端的網站有JavaScript注入漏洞，原來的網站也會受到影響。

現在有一個正在進行計畫在定義所謂的[JSON-P嚴格安全子集](https://web.archive.org/web/20160304044218/http://www.json-p.org/)，使瀏覽器可以對MIME類別是“application/json-p”請求做強制處理。如果回應不能被解析為嚴格的JSON-P，瀏覽器可以丟出一個錯誤或忽略整個回應。

## 跨站请求伪造

粗略的JSONP部署很容易受到[跨站请求伪造](../Page/跨站请求伪造.md "wikilink")（CSRF/XSRF）的攻擊\[1\]。因為HTML \[\[HTML元素\#script_tag|<code>

<script>

</code>\]\]標籤在瀏覽器裡不遵守[同源策略](https://zh.wikipedia.org/wiki/同源策略 "wikilink")，惡意網頁可以要求並取得屬於其他網站的JSON資料。當使用者正登入那個其他網站時，上述狀況使得該惡意網站得以在惡意網站的環境下操作該JSON資料，可能洩漏使用者的密碼或是其他敏感資料。

只有在該JSON資料含有不該洩漏給第三方的隱密資料，且伺服器僅靠瀏覽器的同源策略阻擋不正常要求的時候這才會是問題。若伺服器自己決定要求的專有性，並只在要求正常的情況下輸出資料則沒有問題。只靠[Cookie](../Page/Cookie.md "wikilink")並不夠決定要求是合法的，這很容易受到[跨站请求伪造](../Page/跨站请求伪造.md "wikilink")攻擊。

## 歷史

2005年夏天，喬治·詹姆提（George Jempty）建議在JSON前面選擇性的加上變數賦值\[2\]\[3\]。鮑勃·伊波利托（Bob Ippolito）於2005年12月提出了JSONP最原始的提案，其中填充部份已經是回調函數\[4\]，而現在已有很多[Web 2.0應用程式使用這份提案](../Page/Web_2.0.md "wikilink")，像是[Dojo Toolkit應用程式](https://zh.wikipedia.org/wiki/Dojo_Toolkit "wikilink")、[Google Web Toolkit應用程式](https://zh.wikipedia.org/wiki/Google_Web_Toolkit "wikilink")\[5\]與[Web服務](https://zh.wikipedia.org/wiki/Web服務 "wikilink")。

## 參考文獻

## 外部連結

  -
[Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink") [Category:JSON](https://zh.wikipedia.org/wiki/Category:JSON "wikilink")

1.
2.
3.
4.
5.