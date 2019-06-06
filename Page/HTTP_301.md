**301 Move Permanently**
是[HTTP协议中的一个状态码](https://zh.wikipedia.org/wiki/HTTP协议 "wikilink")（Status
Code）。可以简单地理解为该资源已经被永久改变了位置\[1\]，通常会发送[HTTP
Location来](../Page/HTTP_Location.md "wikilink")[重定向到正确的新位置](https://zh.wikipedia.org/wiki/重定向 "wikilink")。

返回301状态码进行跳转被[Google认为是将网站地址由](../Page/Google.md "wikilink") HTTP 迁移到
[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink") 的最佳方法。\[2\]

## 定义

根据定义： \[3\]\[4\]\[5\]

  - 如果一个客户端有链接编辑能力，其应当把所有的引用链接重定向到新的URL上。
  - 这个响应代码是可以被缓存的。\[6\]\[7\]
  - 除非请求方法是 HEAD, 否则响应实体应该包含一个小型的超文本，标注一个超链接到新的URL。
  - 如果是除了 GET 和 HEAD 之外的请求方法，客户端必须在重定向之前询问用户。

## 例子

客户端发出请求:

``` http
GET /blog HTTP/1.1
Host: www.example.com
```

服务器回应，不带Cache-Control头部:

``` http
HTTP/1.1 301 Moved Permanently
Location: http://www.example.org/index.asp
```

服务器回应，带Cache-Control头部:

``` http
HTTP/1.1 301 Moved Permanently
Location: http://www.example.org/index.asp
Cache-control: private; max-age=600
```

## 服务器配置

这是一个例子，展示如何使用 [Apache HTTP
Server的](../Page/Apache_HTTP_Server.md "wikilink")[.htaccess](https://zh.wikipedia.org/wiki/.htaccess "wikilink")
配置文件将带 www 的 HTTP [URI](https://zh.wikipedia.org/wiki/URI "wikilink")
全部重定向到不带 www 的 HTTPS URI：

    RewriteEngine On
    RewriteCond %{HTTPS} off
    RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
    RewriteRule ^(.*)$ http://%1/$1 [R=301,L]

    RewriteCond %{HTTPS} on
    RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
    RewriteRule ^(.*)$ https://%1/$1 [R=301,L]

    RewriteEngine On
    RewriteCond %{SERVER_PORT} 80
    RewriteRule ^(.*)$ https://example.com/$1 [R,L]

等价的 [NGINX](https://zh.wikipedia.org/wiki/NGINX "wikilink") 配置方式：

    location /old/url/ {
        return 301 /new/url;
    }

这是使用 [PHP](../Page/PHP.md "wikilink") 实现301重定向的方式：

``` php
<?php
header("HTTP/1.1 301 Moved Permanently");
header("Location: http://example.com/newpage.html");
exit();
?>
```

## 客户端实现问题

当某些HTTP/1.0客户端收到该状态码时，可能会将POST方法改为GET方法，继续向新地址发出请求，这是错误的实现——故而后续标准引入了[HTTP
307](../Page/HTTP_307.md "wikilink")。\[8\]

## 搜索引擎优化

由于该代码表示页面地址发生了较长久的改变，故[Bing](https://zh.wikipedia.org/wiki/必应 "wikilink")\[9\]和[Google](https://zh.wikipedia.org/wiki/谷歌 "wikilink")\[10\]等搜索引擎都推荐使用301重定向，以改变搜索引擎中的实际页面地址。

## 相關條目

  - [.htaccess](https://zh.wikipedia.org/wiki/.htaccess "wikilink")
  - [HTTP狀態碼](https://zh.wikipedia.org/wiki/HTTP狀態碼 "wikilink")
  - [URL重寫](../Page/URL重寫.md "wikilink")
  - [HTTP 302](../Page/HTTP_302.md "wikilink")
  - [HTTP 303](../Page/HTTP_303.md "wikilink")
  - [HTTP 307](../Page/HTTP_307.md "wikilink")
  - [HTTP Location](../Page/HTTP_Location.md "wikilink")

## 参考文献

<references />

## 外部連結

  - [HTTP/1.1 Error codes in
    RFC 2616](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html)
  - RFC 1945
  - RFC 2068

[Category:計算機錯誤](https://zh.wikipedia.org/wiki/Category:計算機錯誤 "wikilink")
[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

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