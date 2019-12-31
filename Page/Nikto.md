> 本文内容由[Nikto](https://zh.wikipedia.org/wiki/Nikto)转换而来。


Nikto是一款开源的（[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")）[网页服务器扫描器](https://zh.wikipedia.org/wiki/网页服务器 "wikilink")，它可以对网页服务器进行全面的多种扫描，包含超过3300种有潜在危险的文件／[CGIs](https://zh.wikipedia.org/wiki/CGI "wikilink")；超过625种服务器版本；超过230种特定服务器问题。扫描项和[插件](../Page/插件.md "wikilink")可以自动更新（如果需要）。基于Whisker/libwhisker完成其底层功能。这是一款非常棒的工具，但其软件本身并不经常更新，最新和最危险的可能检测不到。

Nikto的作者是[Chris Sullo](http://en.wikipedia.org/wiki/Chris_Sullo)，他是开放安全基金会（Open Security Foundation）的财务总监。

## 功能

Nikto用来检查网页服务器和其他多个范畴内的项目：

  - 错误的配置
  - 默认文件和脚本
  - 不安全的文件和脚本
  - 过时软件

Nikto使用[Rain Forest Puppy](https://web.archive.org/web/20070521040539/http://www.wiretrip.net/rfp/)的LibWhisker实现HTTP功能，并且可以检查[HTTP和](https://zh.wikipedia.org/wiki/HTTP "wikilink")[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")。同时支持基本的[端口扫描以判定网页服务器是否运行在其他开放端口](https://zh.wikipedia.org/wiki/端口 "wikilink")。Nikto可以使用'update'选项从主版本站点自动更新，以应对新的弱点。Nikto可以在启动时加载用户自定义的检测规则，当然前提是自定义检测规则已经放在了user_scan_database.db文件内（这个文件在插件目录下）；即使使用-update选项升级，自定义的检测规则也不会被覆盖。Nikto也具有反入侵探测（[IDS](https://zh.wikipedia.org/wiki/IDS "wikilink")）功能。

## 系统要求

  - Unix：

[Perl](../Page/Perl.md "wikilink")、NET::SSLeay、[OpenSSL](../Page/OpenSSL.md "wikilink")（只在需要SSL扫描时才用到）。

  - Windows

[ActiveState](http://www.activestate.com/)编译的Net::SSL（只在需要SSL扫描时才用到）。可以考虑使用Cygwin。

## 发行

Nikto和更新数据库及插件由[CIRT.net](http://www.cirt.net/)发布，可到https://web.archive.org/web/20070203195859/http://www.cirt.net/code/nikto.shtml 下载。

## 警告

Nikto是一个用来发现默认网页文件、检查[网页服务器和](https://zh.wikipedia.org/wiki/网页服务器 "wikilink")[CGI安全问题的工具](https://zh.wikipedia.org/wiki/CGI "wikilink")。它对远程主机使用大量请求，这些过量的请求可能会导致远程主机宕机。Nikto可能会损害主机、远程主机和网络。某些选项可能对目标产生超过70,000个HTTP请求。同样从Cirt.net更新的[插件](../Page/插件.md "wikilink")也不能保证绝对系统无害，选择权在用户手中。

## 外部链接

  - [Nikto官方网页](https://web.archive.org/web/20070203195859/http://www.cirt.net/code/nikto.shtml)
  - [Wiretrip.net](https://web.archive.org/web/20070507014803/http://www.wiretrip.net/)
  - [Rain Forest Puppy](https://web.archive.org/web/20070521040539/http://www.wiretrip.net/rfp/)
  - [ActiveState.com](http://www.activestate.com/)

[Category:網頁伺服器](https://zh.wikipedia.org/wiki/Category:網頁伺服器 "wikilink") [Category:安全软件](https://zh.wikipedia.org/wiki/Category:安全软件 "wikilink")