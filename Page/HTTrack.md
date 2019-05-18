**HTTrack**是一个[自由](../Page/自由软件.md "wikilink")、[开源的](../Page/开放源代码.md "wikilink")[网络爬虫以及](https://zh.wikipedia.org/wiki/网络爬虫 "wikilink")[离线浏览器](../Page/离线浏览.md "wikilink")。它的作者是[Xavier
Roche](https://zh.wikipedia.org/wiki/Xavier_Roche "wikilink")，在[GNU通用公共授權條款](https://zh.wikipedia.org/wiki/GNU通用公共授權條款 "wikilink")（[GPL](https://zh.wikipedia.org/wiki/GPL "wikilink")）下发布。

使用者可以通过HTTrack把[互联网上的](../Page/互联网.md "wikilink")[网站页面下载到本地计算机上](../Page/万维网.md "wikilink")。在默认设置下，HTTrack对网站页面的下载结果是按照原始站点相对链接的结构来组织的。用网页浏览器打开这个被下载下来的网站（也称作[镜像](../Page/网站镜像.md "wikilink")）的页面，就可以离线浏览了。

HTTrack也能对已经镜像过的站点进行更新。或者是对中断了的工作断点续传。可以通过选项和过滤器（include/exclude）配置HTTrack的方方面面。它还整合有帮助系统。它有一个基本的命令行版本和两个[GUI](../Page/图形用户界面.md "wikilink")（为Windows设计的WinHTTrack和为Unix-like系统设计的WebHTTrack）；命令行版本可以和[Shell脚本](../Page/Shell脚本.md "wikilink")（Shell
script）以及[cron联用](https://zh.wikipedia.org/wiki/cron "wikilink")。

HTTrack使用网络爬虫下载网站。对于有[robots.txt的网站](https://zh.wikipedia.org/wiki/robots.txt "wikilink")，如果不在程序运行时取消限制，默认设置下的程序不会把网站完全镜像。HTTrack能跟随基本的[JavaScript](../Page/JavaScript.md "wikilink")，或者[Applet](https://zh.wikipedia.org/wiki/Applet "wikilink")、[Flash中的链接](../Page/Adobe_Flash.md "wikilink")，但是对于复杂的链接（使用函数和表达式创建的链接）或者服务器端的[Image
Map](https://zh.wikipedia.org/wiki/Image_Map "wikilink")（）则无能为力。

## 安装与使用

在许多Unix-like系统下，只需要用包管理工具安装httrack即可。例如[Debian使用](../Page/Debian.md "wikilink")

> ` sudo aptitude install httrack`

一个使用例子：

> httrack "http://www.all.net/" -O "/tmp/www.all.net" "+\*.all.net/\*"
> -v

它的意思是：以http://www.all.net/
为起始URL，输出到/tmp/www.all.net文件夹，范围是www.all.net域名下的所有文件，并显示所有错误信息（verbose）。更详细的信息请看官网上的Users
Guide\[1\]。

## 参见

  - [robots.txt](https://zh.wikipedia.org/wiki/robots.txt "wikilink")
  - [离线浏览](../Page/离线浏览.md "wikilink")
  - [扒站](https://zh.wikipedia.org/wiki/扒站 "wikilink")

## 脚注

## 外部链接

  -
  -
[Category:綠色軟件](https://zh.wikipedia.org/wiki/Category:綠色軟件 "wikilink")
[Category:用C編程的自由軟體](https://zh.wikipedia.org/wiki/Category:用C編程的自由軟體 "wikilink")

1.  [Httrack Users Guide](http://www.httrack.com/html/fcguide.html)