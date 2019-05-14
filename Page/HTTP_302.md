**302 Found**，原始描述短语为 **Moved Temporarily**
，是[HTTP协议中的一个状态码](https://zh.wikipedia.org/wiki/HTTP协议 "wikilink")(Status
Code)。可以简单的理解为该资源原本确实存在，但已经被**临时**改变了位置；换而言之，就是请求的资源暂时驻留在不同的URI下\[1\]，故而除非特别指定了缓存头部指示，该状态码不可缓存。

对于服务器，通常会给浏览器发送[HTTP
Location头部来重定向到新的新位置](https://zh.wikipedia.org/wiki/HTTP_Location "wikilink")。

## 定义

根据定义\[2\]\[3\]\[4\]，该响应代码的使用场景是，请求的资源暂时驻留在不同的URI下。

其特征被定义为：

  - 客户端收到的新的 URI，不是原始请求资源的替代引用。
  - 只有当服务器发出 Cache-Control 或 Expires 头字段进行指示，此响应才能被缓存，否则不能被缓存。
  - 临时URI应该由响应头部中的 Location 字段给出。
  - 除非请求方法是 HEAD ，否则响应的实体应该包含一个带有超链接到新的URI的短 HTML 注释。
  - 如果在除 GET 或 HEAD
    两种请求方法之外的请求时，接收到302状态码，客户端不得自动重定向请求，除非用户可以确认；否则可能会更改发出请求的条件。
  - 如果一个客户端有链接编辑能力，其应当把所有的引用链接重定向到新的URL上。
  - 重定向到新地址时，客户端必须使用GET方法请求新地址。

## 例子

客户端请求:

``` http
GET /blog HTTP/1.1
Host: www.example.com
```

第一种服务器回应，不带缓存头:

``` http
HTTP/1.1 302 Temporary Redirect
Location: https://www-temp.example.org/
```

第二种服务器回应，带缓存头:

``` http
HTTP/1.1 302 Found
Location: https://www-temp.example.org/
Cache-control: private; max-age=600
```

## 服务器配置

这是一个例子，展示如何使用 [Apache HTTP
Server的](../Page/Apache_HTTP_Server.md "wikilink")[.htaccess](https://zh.wikipedia.org/wiki/.htaccess "wikilink")
配置文件将带 www 的 HTTP [URI](https://zh.wikipedia.org/wiki/URI "wikilink") 全部
302 重定向到不带 www 的 HTTPS 地址：

    RewriteEngine On
    RewriteCond %{HTTPS} off
    RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
    RewriteRule ^(.*)$ http://%1/$1 [R=302,L]

    RewriteCond %{HTTPS} on
    RewriteCond %{HTTP_HOST} ^www\.(.*)$ [NC]
    RewriteRule ^(.*)$ https://%1/$1 [R=302,L]

    RewriteEngine On
    RewriteCond %{SERVER_PORT} 80
    RewriteRule ^(.*)$ https://example.com/$1 [R,L]

等价的 [NGINX](../Page/NGINX.md "wikilink") 配置方式：

    location /old/url/ {
        return 302 /new/url;
    }

这是使用 [PHP](../Page/PHP.md "wikilink") 实现 HTTP 302 重定向的方式：

``` php
<?php
header("HTTP/1.1 302 Found");
header("Location: http://example.com/newpage.html");
exit();
?>'
```

## 客户端实现问题

虽然 RFC 1945 和 RFC 2068 两个规范不允许客户端在重定向时改变请求的方法，但是很多现存的浏览器将302响应视作为
[303响应](../Page/HTTP_303.md "wikilink") ，并且径自使用 GET 方式访问在 Location
中规定的 URI，而无视原先请求的方法，这是不规范的实现。\[5\]

因此状态码303和[307被添加了进来](https://zh.wikipedia.org/wiki/HTTP_307 "wikilink")，用以明确服务器期待客户端进行何种反应。\[6\]

## 相關條目

  - [.htaccess](https://zh.wikipedia.org/wiki/.htaccess "wikilink")
  - [HTTP狀態碼](https://zh.wikipedia.org/wiki/HTTP狀態碼 "wikilink")
  - [URL重寫](../Page/URL重寫.md "wikilink")
  - [HTTP 301](https://zh.wikipedia.org/wiki/HTTP_301 "wikilink")
  - [HTTP 303](../Page/HTTP_303.md "wikilink")
  - [HTTP 307](https://zh.wikipedia.org/wiki/HTTP_307 "wikilink")
  - [HTTP
    Location](https://zh.wikipedia.org/wiki/HTTP_Location "wikilink")

## 参考来源

## 外部連結

  - [HTTP/1.1 Error codes in
    RFC 2616](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html)
  - RFC 1945
  - RFC 2068
  - RFC 7230
  - RFC 7231

[Category:計算機錯誤](https://zh.wikipedia.org/wiki/Category:計算機錯誤 "wikilink")
[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink")

1.
2.
3.
4.
5.
6.