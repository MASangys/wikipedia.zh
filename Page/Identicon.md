[Identicon.svg](https://zh.wikipedia.org/wiki/File:Identicon.svg "fig:Identicon.svg") **Identicon**是一种基于用户信息的[哈希值生成图像的技术](https://zh.wikipedia.org/wiki/哈希函数 "wikilink")，通常使用用户登录时的IP地址作为输入值，并作为生成新建用户时的初始化头像用于保护用户隐私。其雏形是由九个方格构成的图案，现在第三方开发还有其他类型的生成模式。

## 起源

这个理念最早由Don Park于2007年时提出：  译文：

## 释出版本

最早期v0.1版本是基于服务器端的[Java](../Page/Java.md "wikilink")版本，v0.2就整理了代码，修正并完善一些功能，包括一个颜色生成漏洞，添加缓存机制，增加了一些文档，并且提供了[jar运行组件](../Page/JAR_\(文件格式\).md "wikilink")。v0.3发布了基于客户端的[Canvas元素版本](../Page/Canvas_\(HTML元素\).md "wikilink")。现在已经发布到v0.5。

其他仿制版本也跟着出现，The Vash\[1\]提供了[Affero通用公共许可证和专用授权协议双授权版本](https://zh.wikipedia.org/wiki/Affero通用公共许可证 "wikilink")。\[2\]

## 应用

  - 其中一个重要使用是用于在Blog或者wiki等支持用户登录的系统生成默认头像，其作用是无需用户提供自己真实的头像或者被其他人恶意纵伤而保护用户私隐。这效果相当有效，因为大部分网络接入是使用[ISP](https://zh.wikipedia.org/wiki/ISP "wikilink")，而这些接入使用了动态IP分配，所以每次能产生不同的Identicon。
  - 一些第三方软件也可以用来生成识别头像用于保护网上购物交易卖方隐私。\[3\]
  - 原始Identicon方案发展出新的用途，用于作为一种简单而非常有效的反钓鱼保护机制。不过这需要客户端支持。Park正在需求与浏览器厂商的合作，并称该计划为“双子座”计划。\[4\]
  - 有人开发了一种叫“IdentFavIcon ”的Firefox插件，使网站不会使用其所提供的[favicons](https://zh.wikipedia.org/wiki/favicons "wikilink")，而是使用由其根据服务器IP生成相应的Identicon图案。

## 参考资料

## 外部链接

  - [Don Park原始版本的GitHub托管代码](https://github.com/donpark/identicon)

[Category:散列函数](https://zh.wikipedia.org/wiki/Category:散列函数 "wikilink") [Category:Web_2.0新詞](https://zh.wikipedia.org/wiki/Category:Web_2.0新詞 "wikilink") [Category:識別符](https://zh.wikipedia.org/wiki/Category:識別符 "wikilink")

1.  [The Vash](http://www.thevash.com)
2.  [Visual Hash Turns Text Or Data Into Abstract Art](http://developers.slashdot.org/story/11/07/15/2324212/Visual-Hash-Turns-Text-Or-Data-Into-Abstract-Art). [Slashdot](../Page/Slashdot.md "wikilink").
3.  [Munnin \[ Product - Identicon](http://www.munnin.com/en/program_identicon.php) Quick seller identification in the item listing \]
4.