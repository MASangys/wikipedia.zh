HTTP Location 是在兩種情況下，因來自[HTTP服務器的響應中返回](../Page/超文本传输协议.md "wikilink")[頭域](https://zh.wikipedia.org/wiki/HTTP头字段列表 "wikilink")：

1.  要求網頁瀏覽器加載其他網頁([網域名稱轉址](../Page/網域名稱轉址.md "wikilink"))。在这种情况下，應該使用[HTTP狀態碼](https://zh.wikipedia.org/wiki/HTTP狀態碼 "wikilink")3xx發送Location頭（Location header）。當請求的[URI具有以下內容時](../Page/统一资源标志符.md "wikilink")，Web服務器響應傳遞：
      - 临时移动;
      - 永久移动；或
      - 處理請求，例如一個POST表單，以一個不同的URI来提供該請求的結果。
2.  提供有關新創建資源位置的信息。在這種情況下，應該使用HTTP狀態碼201或202發送Location頭。\[1\]

HTTP 1.1規範（IETF [RFC 2616](https://zh.wikipedia.org/wiki/rfc:2616 "wikilink")）的過時版本需要完整的重定向URI。\[2\] IETF HTTP工作組發現，最受歡迎的Web瀏覽器允許傳遞[相對URL](../Page/统一资源定位符.md "wikilink")（relative URL）\[3\] 。因此，更新后的HTTP 1.1規範（IETF [RFC 7231](https://zh.wikipedia.org/wiki/rfc:7231 "wikilink")）放寬了原始的約束，允許在位置標題中使用相對URL。\[4\]

## 例子

### 絕對URL（Absolute URL）示例

絕對URL是一种以方案为头的URL\[5\] (例如：http:，https:，telnet:，mailto:)\[6\] ，並符合方案特定的語法和語義。 例如HTTP URL特定於HTTP方案的語法和語義需要用“主機”（Web服務器地址）和“絕對路徑”，其中可選元件為“端口”和“查詢”。

例如，客户端请求:

``` http
GET /index.html HTTP/1.1
Host: www.example.com
```

服务器回应:

``` http
HTTP/1.1 302 Found
Location: http://www.example.org/index.php
```

該位置的URL被客戶端重定向到`http://www.example.org/index.php`.

### 相對URL（Relative URL）示例

相對URL是不包含方案或主機的URL。為了理解，它們必須與原始請求的URL相結合。例如，客户端请求:

``` http
GET /blog HTTP/1.1
Host: www.example.com
```

服务器回应:

``` http
HTTP/1.1 302 Found
Location: /articles/
```

該位置的URL被客戶端擴展为`http://www.example.com/articles/`.

## 参见

  - [網域名稱轉址](../Page/網域名稱轉址.md "wikilink")
  - [HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")

## 参考文献

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

1.
2.
3.  [IETF HTTPbis Working Group Ticket 185](http://trac.tools.ietf.org/wg/httpbis/trac/ticket/185)
4.
5.
6.