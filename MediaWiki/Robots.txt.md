> 本文内容由[MediaWiki:Robots.txt](https://zh.wikipedia.org/wiki/MediaWiki:Robots.txt)转换而来。


` #   `

``` robots
#
# robots.txt for http://www.wikipedia.org/ and friends
#
# Please note: There are a lot of pages on this site, and there are
# some misbehaved spiders out there that go _way_ too fast. If you're
# irresponsible, your access to the site may be blocke
#
# Edit at http://zh.wikipedia.org/w/index.php?title=MediaWiki:Robots.txt&action=edit
#
# Please check any changes using a syntax validator such as http://tool.motoricerca.info/robots-checker.phtml
# Enter http://zh.wikipedia.org/robots.txt as the URL to check.
#
#
# https://bugzilla.wikimedia.org/show_bug.cgi?id=14075
Disallow: /*/MediaWiki:Spam-blacklist
Disallow: /*/MediaWiki%3ASpam-blacklist
Disallow: /*/MediaWiki_talk:Spam-blacklist
Disallow: /*/MediaWiki_talk%3ASpam-blacklist
#
# Folks get annoyed when XfD discussions end up the number 1 google hit for
# their name.
# https://bugzilla.wikimedia.org/show_bug.cgi?id=5104
Disallow: /*/Wikipedia:删除投票/*
Disallow: /*/Wikipedia:%E5%88%A0%E9%99%A4%E6%8A%95%E7%A5%A8/*
Disallow: /*/Wikipedia:删除投票和请求/*
Disallow: /*/Wikipedia:%E5%88%A0%E9%99%A4%E6%8A%95%E7%A5%A8%E5%92%8C%E8%AF%B7%E6%B1%82/*
Disallow: /*/Category:快速删除候选
Disallow: /*/Category:%E5%BF%AB%E9%80%9F%E5%88%A0%E9%99%A4%E5%80%99%E9%80%89
Disallow: /*/Category:需要翻译的文章
Disallow: /*/Category:%E7%BB%B4%E5%9F%BA%E7%99%BE%E7%A7%91%E9%9C%80%E8%A6%81%E7%BF%BB%E8%AF%91%E7%9A%84%E6%96%87%E7%AB%A0
Disallow: /*/Wikipedia:頁面存廢討論/*
Disallow: /*/Wikipedia:%E9%A0%81%E9%9D%A2%E5%AD%98%E5%BB%A2%E8%A8%8E%E8%AB%96/*
Disallow: /*/Wikipedia:檔案存廢討論/*
Disallow: /*/Wikipedia:%E6%AA%94%E6%A1%88%E5%AD%98%E5%BB%A2%E8%A8%8E%E8%AB%96/*
Disallow: /*/Wikipedia:頁面恢復請求/*
Disallow: /*/Wikipedia:%E9%A0%81%E9%9D%A2%E6%81%A2%E5%BE%A9%E8%AB%8B%E6%B1%82/*
#
Disallow: /*/Wikipedia_talk:删除投票/*
Disallow: /*/Wikipedia_talk:%E5%88%A0%E9%99%A4%E6%8A%95%E7%A5%A8/*
Disallow: /*/Wikipedia_talk:删除投票和请求/*
Disallow: /*/Wikipedia_talk:%E5%88%A0%E9%99%A4%E6%8A%95%E7%A5%A8%E5%92%8C%E8%AF%B7%E6%B1%82/*
Disallow: /*/Category_talk:快速删除候选
Disallow: /*/Category_talk:%E5%BF%AB%E9%80%9F%E5%88%A0%E9%99%A4%E5%80%99%E9%80%89
Disallow: /*/Category_talk:维基百科需要翻译的文章
Disallow: /*/Category_talk:%E7%BB%B4%E5%9F%BA%E7%99%BE%E7%A7%91%E9%9C%80%E8%A6%81%E7%BF%BB%E8%AF%91%E7%9A%84%E6%96%87%E7%AB%A0
Disallow: /*/Wikipedia_talk:頁面存廢討論/*
Disallow: /*/Wikipedia_talk:%E9%A0%81%E9%9D%A2%E5%AD%98%E5%BB%A2%E8%A8%8E%E8%AB%96/*
Disallow: /*/Wikipedia_talk:檔案存廢討論/*
Disallow: /*/Wikipedia_talk:%E6%AA%94%E6%A1%88%E5%AD%98%E5%BB%A2%E8%A8%8E%E8%AB%96/*
Disallow: /*/Wikipedia_talk:頁面恢復請求/*
Disallow: /*/Wikipedia_talk:%E9%A0%81%E9%9D%A2%E6%81%A2%E5%BE%A9%E8%AB%8B%E6%B1%82/*
Disallow: /*/Wikipedia:申請成為管理員/*
Disallow: /*/Wikipedia:%E7%94%B3%E8%AF%B7%E6%88%90%E4%B8%BA%E7%AE%A1%E7%90%86%E5%91%98/*
Disallow: /*/Wikipedia:更改用户名/*
Disallow: /*/Wikipedia:%E6%9B%B4%E6%94%B9%E7%94%A8%E6%88%B7%E5%90%8D/*
Disallow: /*/Wikipedia:更改用户名
Disallow: /*/Wikipedia:%E6%9B%B4%E6%94%B9%E7%94%A8%E6%88%B7%E5%90%8D
#
Sitemap: http://zh.wikipedia.org/w/index.php?title=Special:NewPages&feed=rss&namespace=all
Sitemap: http://sitemap.wikimedia.org/zhwiki/latest/zhwiki-latest-abstract.xml
Sitemap: http://sitemap.wikimedia.org/zhwiki/latest/zhwiki-latest-abstract.xml-rss.xml
#
# Hide all Special pages and history stuffs on Baidu
User-agent: Baiduspider
Disallow: /*/Special:*
Disallow: /*/*=Special:*
Disallow: /w/index.php?*
Allow: /w/index.php?title=Special:NewPages&feed=rss&namespace=all

User-agent: Browsershots
Disallow:

#
```