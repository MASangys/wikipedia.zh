**HTTP 303 See Other** ，自 RFC 2616 (HTTP 1.1)起，用于在收到[HTTP
POST请求之后](https://zh.wikipedia.org/wiki/HTTP_POST "wikilink")，进行[URL重定向的操作](https://zh.wikipedia.org/wiki/URL重定向 "wikilink")。\[1\]

## 引入

虽然 RFC 1945 和 RFC 2068
规范不允许客户端在重定向时改变请求的方法，但是很多现存的浏览器在收到302响应时，直接使用GET方式访问在Location中规定的URI，而无视原先请求的方法。\[2\]因此状态码303被添加了进来，用以明确服务器期待客户端进行何种反应。\[3\]

## 定义

根据\[//tools.ietf.org/html/rfc2616\#section-10.3.4 RFC 2616\] 定义:

  - 此方法主要用于允许在收到POST方法后响应时，将用户重定向到所选资源。
  - 如果一个客户端有链接编辑能力，其应当把所有的引用链接重定向到新的URL上。
  - 重定向到新地址时，客户端必须使用GET方法请求新地址。
  - 客户端收到的新的URI，不是原始请求资源的替代引用。
  - 该响应码不应被客户端缓存，惟重定向后的页面不受此限。
  - 除非请求方法是 HEAD, 否则响应实体应该包含一个小型的超文本，标注一个超链接到新的URL。

## 示例

客户端请求:

``` http
POST /blog/comment HTTP/1.1
Host: www.example.com
Content-Type:application/x-www-form-urlencoded; charset=UTF-8
```

服务器回应:

``` http
HTTP/1.1 303 See Other
Location: http://www.example.org/view-comment.asp
```

## 参见

  - [HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")
  - [HTTP狀態碼](https://zh.wikipedia.org/wiki/HTTP狀態碼 "wikilink")
  - [URL重寫](../Page/URL重寫.md "wikilink")
  - [HTTP 301](../Page/HTTP_301.md "wikilink")
  - [HTTP 302](../Page/HTTP_302.md "wikilink")
  - [HTTP 307](../Page/HTTP_307.md "wikilink")

## 参考文献

<references />

## 外部連結

  - [HTTP/1.1 Error codes in
    RFC 2616](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html)
  - RFC 1945 (HTTP 1.0)
  - RFC 7231 (HTTP 1.1)

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")
[Category:计算机错误](https://zh.wikipedia.org/wiki/Category:计算机错误 "wikilink")
[Category:網路術語](https://zh.wikipedia.org/wiki/Category:網路術語 "wikilink")

1.
2.
3.