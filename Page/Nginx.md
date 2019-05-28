**Nginx**（发音同engine x）是异步框架的
[Web服务器](../Page/網頁伺服器.md "wikilink")，也可以用作[反向代理](../Page/反向代理.md "wikilink")，[负载平衡器](../Page/负载均衡.md "wikilink")
和 [HTTP缓存](https://zh.wikipedia.org/wiki/HTTP缓存 "wikilink")。该软件由 [Igor
Sysoev](../Page/伊戈爾·賽索耶夫.md "wikilink") 创建，并于2004年首次公开发布。\[1\]
同名公司成立于2011年，以提供支持。\[2\]2019年3月11日，Nginx公司被以6.7億美元收购\[3\]。

Nginx是免费的[开源软件](../Page/开源软件.md "wikilink")，根据类[BSD许可证的条款发布](../Page/BSD许可证.md "wikilink")。一大部分Web服务器使用Nginx，\[4\]
通常作为[负载均衡器](../Page/负载均衡.md "wikilink")。\[5\]

## 特点

Nginx可以部署在网络上使用[FastCGI脚本](../Page/FastCGI.md "wikilink")、[SCGI处理程序](../Page/简单通用网关接口.md "wikilink")、[WSGI应用服务器或](../Page/Web服务器网关接口.md "wikilink")[Phusion乘客模块的动态](https://zh.wikipedia.org/wiki/Phusion_Passenger "wikilink")[HTTP内容](https://zh.wikipedia.org/wiki/HTTP "wikilink")，并可作为软件[负载均衡器](../Page/负载均衡.md "wikilink")。\[6\]

Nginx使用异步事件驱动的方法来处理请求。Nginx的模块化事件驱动架构\[7\]可以在高负载下提供更可预测的性能。\[8\]

Nginx是一款面向性能设计的HTTP服务器，相较于[Apache](../Page/Apache_HTTP_Server.md "wikilink")、[lighttpd具有占有](https://zh.wikipedia.org/wiki/lighttpd "wikilink")[内存少](https://zh.wikipedia.org/wiki/内存 "wikilink")，稳定性高等优势。与旧版本（\<=2.2）的[Apache不同](../Page/Apache_HTTP_Server.md "wikilink")，Nginx不采用每客户机一线程的设计模型，而是充分使用异步逻辑从而削减了上下文调度开销，所以并发服务能力更强。整体采用模块化设计，有丰富的模块库和第三方模块库，配置灵活。
在Linux作業系統下，Nginx使用epoll事件模型，得益於此，Nginx在Linux作業系統下效率相當高。同時Nginx在OpenBSD或FreeBSD作業系統上採用類似於epoll的高效事件模型kqueue。

根据[Netcraft在](https://zh.wikipedia.org/wiki/Netcraft "wikilink")2016年11月网络服务器调查，\[9\]
Nginx被发现是所有“活跃”站点（被调查站点的18.22%）和百万最繁忙站点（被调查站点的27.83%）中使用次数最多的Web服务器。根据W3Techs的数据，前100万个网站中的37.7%，前10万个网站中的49.7%，以及前10000个网站中的57.0%被使用。\[10\]
据BuiltWith统计，在全球前10000个网站中，有38.2%的网站使用Nginx 。\[11\]
维基百科使用Nginx作为其。\[12\]
从[OpenBSD](../Page/OpenBSD.md "wikilink")
5.2版本（2012年11月1日）开始，Nginx成为了OpenBSD基础系统的一部分，提供了替代Apache
1.3系统的替代方案，\[13\] 但是后来被替换为OpenBSD自己的httpd(8)。\[14\]

### 可大量并行處理

Nginx在官方測試的結果中，能夠支援五萬個并行連接，而在實際的運作中，可以支援二萬至四萬個并行連接。

## 与Apache相比

Nginx 的编写有一个明确目标就是超越 [Apache](../Page/Apache_HTTP_Server.md "wikilink")
Web 服务器的性能。\[15\] Nginx 提供开箱即用的静态文件，使用的内存比 Apache 少得多，每秒可以处理大约四倍于 Apache
的请求。\[16\] 低并发下性能与 Apache 相当，有时候还低于，但是在高并发下 Nginx
能保持低资源低消耗高性能。还有高度模块化的设计，模块编写简单。配置文件简洁。

这种性能提升的代价是降低了灵活性，例如能够以每个文件为基础覆盖系统范围的访问设置（ Apache
使用[.htaccess](https://zh.wikipedia.org/wiki/.htaccess "wikilink")
文件来完成这个工作，而 Nginx 并没有内置这样的功能）。\[17\] 以前，向 Nginx
添加第三方模块需要使用[静态链接的模块从源代码重新](../Page/静态库.md "wikilink")[编译应用程序](../Page/編譯器.md "wikilink")。在版本
1.9.11 中部分地克服了这一点，增加了动态模块加载。但是，模块仍然必须与 Nginx
同时编译，而不是所有的模块都与这个系统兼容——有些需要更老的静态链接过程。\[18\]

## Nginx模块

整体采用模块化设计是Nginx的一个重大特点，甚至http服务器核心功能也是一个模块。旧版本的Nginx的模块是静态的，添加和删除模块都要对Nginx进行重新编译，1.9.11以及更新的版本已经支持动态模块加载。

## 数据统计

截至2017年三月，中国注册域名总数的9.65%使用 Nginx。\[19\]

截至2018年1月，Nginx 服务或者代理了全球 30.46% 的网站。\[20\]

## PHP整合

自PHP-5.3.3起，PHP-FPM加入到了PHP核心，编译时加上--enable-fpm即可提供支持。
PHP-FPM以守护进程在后台运行，Nginx响应请求后，自行处理静态请求，PHP请求则经过fastcgi_pass交由PHP-FPM处理，处理完毕后返回。
Nginx和PHP-FPM的组合，是一种稳定、高效的PHP运行方式，效率要比传统的Apache和mod_php高出不少。

PHP-FPM不支持Windows平台，由于没有fastcgi进程管理器管理php-cgi.exe，因此一旦php-cgi.exe崩溃退出，前端将失去响应，这时Nginx会返回“The
page you are looking for is temporarily unavailable. Please try again
later.”的错误信息。 因此在Windows上用Nginx和php-cgi.exe组合来运行PHP的方式并不可靠，稳定性有待提高。

## 參考文獻

</ref> \[21\] \[22\] \[23\] \[24\] \[25\] \[26\] \[27\] \[28\] \[29\]
\[30\] \[31\] \[32\] \[33\] \[34\]

\[35\] }}

## 另请参阅

  - [Tengine](../Page/Tengine.md "wikilink")

## 外部链接

  - [官方网站](http://www.nginx.org)
  - [NGINX, Inc.](http://www.nginx.com)
  - [邮件列表归档](https://web.archive.org/web/20090512175520/http://www.pubbs.net/nginx/)

[Category:2002年软件](https://zh.wikipedia.org/wiki/Category:2002年软件 "wikilink")
[Category:自由跨平台軟體](https://zh.wikipedia.org/wiki/Category:自由跨平台軟體 "wikilink")
[Category:自由代理服务器](https://zh.wikipedia.org/wiki/Category:自由代理服务器 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")
[Category:Linux网络服务器软件](https://zh.wikipedia.org/wiki/Category:Linux网络服务器软件 "wikilink")
[Category:Linux代理服务器软件](https://zh.wikipedia.org/wiki/Category:Linux代理服务器软件 "wikilink")
[Category:自由网络服务器软件](https://zh.wikipedia.org/wiki/Category:自由网络服务器软件 "wikilink")
[Category:反向代理](https://zh.wikipedia.org/wiki/Category:反向代理 "wikilink")
[Category:Unix网络相关软件](https://zh.wikipedia.org/wiki/Category:Unix网络相关软件 "wikilink")

1.
2.
3.  [F5收购NGINX](https://www.oschina.net/news/105082/f5-acquires-nginx)

4.  <https://news.netcraft.com/archives/2017/01/12/january-2017-web-server-survey.html>

5.  <https://www.linode.com/docs/uptime/loadbalancing/use-nginx-as-a-front-end-proxy-and-software-load-balancer>

6.
7.
8.
9.
10.
11.
12.
13.
14.
15.

16.

17.

18.

19.

20.

21. {{ cite web | title = The NGINX Open Source Project on Ohloh | url =
    <http://www.ohloh.net/p/nginx/analyses/latest> | work = ohloh.net |
    accessdate = 7 March 2013 }}

22. {{ cite web | url = <http://nginx.org/en/docs/windows.html> | title
    = nginx for Windows | accessdate = 28 May 2014 }}

23. {{ cite web | url = <http://nginx.org/en/#tested_os_and_platforms> |
    title = Tested OS and platforms | accessdate = 15 October 2011 }}

24. {{ cite web | url = <http://nginx.org/LICENSE> | title = Licensing |
    accessdate = 18 January 2013 }}

25. [Use nginx for Proxy Services and Software Load Balancing, 11
    May 2010, by Sam Kleinman, Linode
    Library](http://library.linode.com/web-servers/nginx/configuration/front-end-proxy-and-software-load-balancing)

26. {{ cite web | url = <http://www.aosabook.org/en/nginx.html> | title
    = The Architecture of Open Source Applications (Volume 2): nginx |
    work = aosabook.org | accessdate = 10 June 2015 }}

27. [Basic nginx
    Configuration](http://library.linode.com/web-servers/nginx/configuration/basic)
    by Sam Kleinman; 21 August 2010

28. {{ cite web | url =
    <https://news.netcraft.com/archives/2016/11/22/november-2016-web-server-survey.html>
    | title = November 2016 Web Server Survey | date = 22 November 2016
    | accessdate = 19 December 2016 }}

29. {{ cite web | url =
    <http://w3techs.com/technologies/cross/web_server/ranking> | title =
    Usage of web servers broken down by ranking | date = 19 December
    2016 | accessdate = 19 December 2016 }}

30. {{ cite web | url = <http://trends.builtwith.com/Web-Server/nginx> |
    title = Builtwith: nginx Usage Statistics | date = 19 December 2016
    | accessdate = 19 December 2016 }}

31. {{ cite web | url =
    <https://wikitech.wikimedia.org/view/Https#SSL_termination> | title
    = Wikitech: HTTPS | publisher = Wikitech.wikimedia.org | date = 3
    October 2011 | accessdate = 3 December 2011 }}

32. [OpenBSD Upgrade Guide: 5.1
    to 5.2](http://www.openbsd.org/faq/upgrade52.html#nginx), 2012/11/06
    15:00:27 sthen

33. {{ cite web | title = Heads Up: Nginx Removed From Base | url =
    <http://undeadly.org/cgi?action=article&sid=20140827065755> }}

34. {{ cite news | title = Interview with Igor Sysoev, author of
    Apache's competitor NGINX | date = 5 January 2012 | work = Free
    Software Magazine | author = Tony Mobily | url =
    <http://www.freesoftwaremagazine.com/articles/interview_igor_sysoev_author_apaches_competitor_nginx>
    | accessdate = 18 October 2013 }}

35. {{ cite web | title = Notice of Exempt Offering of Securities | work
    = Form D | publisher = US Securities and Exchange Commission 17
    October 2013 | url =
    <https://www.sec.gov/Archives/edgar/data/1588848/000158884813000001/xslFormDX01/primary_doc.xml>
    | accessdate = 15 September 2016 }}