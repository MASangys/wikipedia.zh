**307 Temporary Redirect**是[HTTP协议中的一个状态码](https://zh.wikipedia.org/wiki/HTTP协议 "wikilink")（Status Code）。可以理解为一个临时的重定向\[1\]。

但该响应代码与[302重定向有所区别的地方在于](../Page/HTTP_302.md "wikilink")，收到307响应码后，客户端应保持请求方法不变向新的地址发出请求。\[2\]

## 引入

虽然 RFC 1945 和 RFC 2068 规范不允许客户端在重定向时改变请求的方法，但是很多现存的浏览器在收到302响应时，直接使用GET方式访问在 Location 头部中规定的 URI，而无视原先请求的方法。\[3\]

因此，状态码307被添加了进来，用以明确服务器期待客户端进行何种反应。\[4\]

## 特征

根据\[//tools.ietf.org/html/rfc2616\#section-10.3.2 RFC 2616\] 定义:

  - 响应实体必须带有一个[HTTP Location头部来指示新地址](../Page/HTTP_Location.md "wikilink")。
  - 如果一个客户端有链接编辑能力，其应当把所有的引用链接重定向到新的URL上。
  - 除非带有 Cache-Control 或 Expires 头部，否则该响应不能被缓存。
  - 除非请求方法是 HEAD, 否则响应实体应该包含一个小型的超文本，标注一个超链接到新的URL。
  - 如果是除了 GET 和 HEAD 之外的请求方法，客户端必须在重定向之前询问用户。

## 示例

### 以GET方式请求

``` http
GET /index.php HTTP/1.1
Host: www.example.org
```

服务器回应:

``` http
HTTP/1.1 307 Temporary Redirect
Location: https://www.example.org/
```

## 服务器配置

这是一个例子，展示如何使用[NGINX](https://zh.wikipedia.org/wiki/NGINX "wikilink") 返回 307 重定向：

    location /old/url/ {
        return 307 /new/url;
    }

这是使用 [PHP](../Page/PHP.md "wikilink") 实现307重定向的方式：

``` php
<?php
header("HTTP/1.1 307 Temporary Redirect");
header("Location: http://example.com/newpage.html");
exit();
?>
```

## 用途

  - 该响应码被用于[Chrome](../Page/Google_Chrome.md "wikilink")，用来在本地对已经缓存的[HSTS站点进行重定向](https://zh.wikipedia.org/wiki/HTTP_Strict_Transport_Security "wikilink")。\[5\]

<!-- end list -->

  - 该响应码也常用于客户端发出PUT请求，但非上传具体文件时，服务器向客户端返回确认用的文本消息。\[6\]

## 参见

  - [HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")
  - [HTTP狀態碼](https://zh.wikipedia.org/wiki/HTTP狀態碼 "wikilink")
  - [URL重寫](../Page/URL重寫.md "wikilink")
  - [HTTP 301](../Page/HTTP_301.md "wikilink")
  - [HTTP 302](../Page/HTTP_302.md "wikilink")

## 参考文献

<references />

## 外部連結

  - [HTTP/1.1 Error codes in RFC 2616](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html)
  - RFC 1945 (HTTP 1.0)
  - RFC 7231 (HTTP 1.1 的后续更新)

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink") [Category:计算机错误](https://zh.wikipedia.org/wiki/Category:计算机错误 "wikilink") [Category:HTTP/1.1](https://zh.wikipedia.org/wiki/Category:HTTP/1.1 "wikilink")

1.

2.
3.

4.

5.

6.