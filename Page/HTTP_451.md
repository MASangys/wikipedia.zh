> 本文内容由[HTTP 451](https://zh.wikipedia.org/wiki/HTTP_451)转换而来。


在[電腦網路領域中](https://zh.wikipedia.org/wiki/電腦網路 "wikilink")，**HTTP 451 因法律原因不可用**（）是一種[HTTP協定的錯誤](https://zh.wikipedia.org/wiki/HTTP "wikilink")[狀態代碼](https://zh.wikipedia.org/wiki/HTTP狀態碼 "wikilink")，當使用者請求存取某個經政府審核等查核方法後認定不合法的來源時，就會顯示這個錯誤代碼。

该狀態碼定义于 RFC 7725 中，與HTTP协议其他的狀態碼不同。

## 定义

根据定义，HTTP 451錯誤代碼狀態出現，不代表这个地址是否存在，而代表該網頁可能對於[國家安全](../Page/國家安全.md "wikilink")產生危險，或是該網頁可能違反[著作權](../Page/著作權.md "wikilink")、[隱私權](https://zh.wikipedia.org/wiki/隱私權 "wikilink")、[褻瀆神明或其他](https://zh.wikipedia.org/wiki/褻瀆神明 "wikilink")[法律](../Page/法律.md "wikilink")或[法院命令](https://zh.wikipedia.org/wiki/法院 "wikilink")。

该响应代码有如下的性质：

  - 除非另外指明，否则这个响应代码是可以被[缓存](../Page/缓存.md "wikilink")的。
  - 必须携带一个带有一个Link头部，列出要求封禁该地址的实体URI；且应带有一个"rel"字段，值应为"blocked-by"\[1\]。

## 引入

本代碼於2013年由提姆·布雷（）正式提出，主要基於[部落格](https://zh.wikipedia.org/wiki/部落格 "wikilink")的文章所提出的非正式提案\[2\]。2015年12月18日，此代碼由通過\[3\]。

451这个代码源於1953年的[反烏托邦](https://zh.wikipedia.org/wiki/反烏托邦 "wikilink")[小說](https://zh.wikipedia.org/wiki/小說 "wikilink")《[華氏451度](../Page/華氏451度.md "wikilink")》（紙的燃點為華氏451度），在這部小說中，所有書籍是違禁品\[4\]。相比较[HTTP 403或](../Page/HTTP_403.md "wikilink")[404代碼](../Page/HTTP_404.md "wikilink")，451可更好描述一种由于法律规定或受权威部门要求而导致的封禁狀態\[5\]。

## 演示示例

在本章节中，将对于HTTP 451的响应的返回、缓存的设置和Link头部的设置做出范例。

某地一用户以GET方式请求example.org的/index.php路径：

``` http
GET /index.php HTTP/1.1
Host: www.example.org
```

### 服务器响应

由于用户所在地的某项法律规定，网站不可以向该地区用户返回这个页面，所以服务器做出回应，设置了有效期为一年的缓存头部，并在Link头部中加入了指定的法律文本[URL](https://zh.wikipedia.org/wiki/URL "wikilink")“http://www.xxx.gov.tld/law.html”：

``` http
HTTP/1.1 451 Unavailable For Legal Reasons
Link: <http://www.xxx.gov.tld>; rel="blocked-by"
Cache-control: max-age=31536000; public
Content-Type: text/html; charset=utf-8

<html>
<head><title>因法律原因不可用</title></head>
<body>
<h1>HTTP/1.1 451 因法律原因，本页面不可用</h1>
<p>根据《某法》第某条之规定，本网站页面对来自某地的访客不可用。</p>
</body>
</html>
```

### 非服务器实体

根据RFC文档第3节和第4节，作出回应的服务器不一定是源服务器，也可能是[ISP或其他实体的服务器向用户返回HTTP](https://zh.wikipedia.org/wiki/ISP "wikilink") 451。该文档第四节进一步说明，回应中的blocked-by对应之头部应链接至**实际执行此次封锁的实体**，而不是作出决定的实体。假设某网络主管部门要求这些运营商的防火墙服务器对所有访问某站点特定内容之请求均返回451，则防火墙服务器可以这样回应用户：

``` http
HTTP/1.1 451 Unavailable For Legal Reasons
Link: <https://www.isp-firewall.tld/about.html#filtered_by_451>; rel="blocked-by"
Cache-control: max-age=86400; public
Content-Type: text/html; charset=utf-8

<html>
<head><title>因法律原因不可用</title></head>
<body>
<h1>HTTP/1.1 451 因法律原因，本页面不可用</h1>
<p>应有关部门要求，根据相关法律、法规，网页未予显示。</p>
</body>
</html>
```

## 现实案例

### Github

[HTTP_451_example.png](https://zh.wikipedia.org/wiki/File:HTTP_451_example.png "fig:HTTP_451_example.png")

2016年6月8日，中国网络空间安全协会用英文致信[GitHub](../Page/GitHub.md "wikilink")，称其平台上的开源项目“[Zhao](https://zh.wikipedia.org/wiki/赵家人#相关事件 "wikilink")”诽谤现任[中国共产党中央委员会总书记](../Page/中国共产党中央委员会总书记.md "wikilink")[习近平](../Page/习近平.md "wikilink")，要求立刻删除。三天后，GitHub在专门公布各国政府发出的移除要求的版面上，公布了这封信件\[6\]。

据信件所描述，GitHub用户[Programthink创建的代码仓库](../Page/编程随想的博客.md "wikilink")“Zhao”中出现了一篇用户名为“CMB-news”的帐号发布的“問題”（Issue），声称习近平涉及一桩命案\[7\]，故引发相关部门“强烈关切”。根据GitHub公布的信息显示，这是2014年10月以来，GitHub公布的第6项“删除特定项目要求”，也是第一个来自中国政府相关方请求，此前5项都来自俄罗斯\[8\]。

后来，GitHub对于访问该仓库的中国大陆用户返回451代码，并链接向上述投诉信件；但在海外的用户仍能顺利打开。 GitHub给出的原因是“这个项目被中国政府列入黑名单”。GitHub 称，虽无法认同政府审查，但为让更多人可以正常使用网站服务，他们会在确认有关要求来自政府之后，在指定区域内满足政府的要求，同时会公开来自政府的要求文件\[9\]。

## 参见

  - [HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")

  - [HTTP狀態碼](https://zh.wikipedia.org/wiki/HTTP狀態碼 "wikilink")

  - [HTTP 403](../Page/HTTP_403.md "wikilink")

  - [HTTP 404](../Page/HTTP_404.md "wikilink")

  - [防火长城](../Page/防火长城.md "wikilink")

  -
## 注释

<references group="註" />

## 參考文獻

## 外部連結

  - RFC 7725 - HTTP 451的正式RFC文件
  - [451unavailable.org](http://www.451unavailable.org/) 一个介绍HTTP 451错误代码的网站

[Category:HTTP](https://zh.wikipedia.org/wiki/Category:HTTP "wikilink") [Category:互联网审查](https://zh.wikipedia.org/wiki/Category:互联网审查 "wikilink") [Category:计算机错误](https://zh.wikipedia.org/wiki/Category:计算机错误 "wikilink") [Category:网络术语](https://zh.wikipedia.org/wiki/Category:网络术语 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.