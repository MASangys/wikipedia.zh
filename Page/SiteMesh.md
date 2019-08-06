**SiteMesh**是开发的一个[Java](../Page/Java.md "wikilink") [Web应用程序开发框架](https://zh.wikipedia.org/wiki/Web应用程序 "wikilink")。

据OpenSymphony介绍，SiteMesh：

  - 是一个Web页面布局、装饰以及与现有Web应用整合的框架。有助于在由大量页面构成的项目中创建一致的页面布局和外观、一致的导航条、一致的布局方案等。
  - 截取对Web服务器的任何静态或动态页面的请求，解析页面，从内容中获得属性和数据，生成对原页面进行修改后的最终页面——基于[装饰模式](https://zh.wikipedia.org/wiki/装饰模式 "wikilink")
  - 此外可以以面板（Panel）的形式，将完整的[HTML](../Page/HTML.md "wikilink")页面包含在另一个页面中——类似于。使用此功能，可以非常快速和有效的建立门户网站类型的Web站点。这基于知名的。
  - 基于[Java](../Page/Java.md "wikilink") 2的[Servlet](https://zh.wikipedia.org/wiki/Servlet "wikilink")、[JSP](../Page/JSP.md "wikilink")和[XML](../Page/XML.md "wikilink")技术。这使它在[Java EE应用中很好用](https://zh.wikipedia.org/wiki/Java_EE "wikilink")，而它也可以与非Java的服务器端Web体系结构集成，例如[CGI](https://zh.wikipedia.org/wiki/CGI "wikilink")（[Perl](../Page/Perl.md "wikilink")/[Python](../Page/Python.md "wikilink")/[C](../Page/C.md "wikilink")/[C++](../Page/C++.md "wikilink")等）、[PHP](../Page/PHP.md "wikilink")和[ColdFusion](https://zh.wikipedia.org/wiki/ColdFusion "wikilink")。
  - 扩展性很强，可以很容易地为自定义需求的进行扩展。

## 许可证

SiteMesh使用修改自[Apache许可证](../Page/Apache许可证.md "wikilink")、并与Apache软件许可证完全兼容的OpenSymphony许可证。

## 原理

SiteMesh使用一个Servlet过滤器，它可以拦截返回的[Web浏览器的](https://zh.wikipedia.org/wiki/Web浏览器 "wikilink")[HTML](../Page/HTML.md "wikilink")，提取相关内容，并将其合并到被称为装饰器（Decorator）的模板。

## 历史

SiteMesh最初是在1999年由Joe Walnes开发的。当时它使用的Servlet链——一项不属于标准Servlet规范，但被一些[Servlet容器](https://zh.wikipedia.org/wiki/Web容器 "wikilink")（如）所支持的特性。

2000年，Servlet规范2.3版的第一次公示版发布，其中包括了新增的Servlet过滤器——这提供了Servlet链的一个标准中的替代品。SiteMesh随即改用Servlet过滤器取代Servlet链。

在此后不久，SiteMesh被决定作为开源软件发布。Joe Walnes和Mike Cannon-Brookes组建了OpenSymphony项目，用以提供[Java EE组件的源码](https://zh.wikipedia.org/wiki/Java_EE "wikilink")——其前两个项目便是SiteMesh和。

这时，SiteMesh的有一个非常小的用户群，当中的许多人加入这个项目的开发。SiteMesh开始开源后没多久，Victor Salaman改写了其内部的HTML[解析器](../Page/語法分析器.md "wikilink")，产生了1200％的性能提升。

## 外部链接

  - [OpenSymphony上原SiteMesh项目首页](https://web.archive.org/web/20110414180845/http://www.opensymphony.com/sitemesh/)
  - [SiteMesh项目的新首页](http://www.sitemesh.org/)
  - [GitHub上的SiteMesh](https://github.com/sitemesh)

[Category:网络应用程序](https://zh.wikipedia.org/wiki/Category:网络应用程序 "wikilink") [Category:Web应用框架](https://zh.wikipedia.org/wiki/Category:Web应用框架 "wikilink") [Category:Java企业平台](https://zh.wikipedia.org/wiki/Category:Java企业平台 "wikilink")