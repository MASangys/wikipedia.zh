> 本文内容由[HTML应用程序](https://zh.wikipedia.org/wiki/HTML应用程序)转换而来。


  -
    本文介绍的为[微软](../Page/微软.md "wikilink")的专利HTA實作 。 有关HTML5的缓存清单信息(Cache Manifest)，请参考 。

{{ Infobox file format | name = HTML Application (HTA) | icon = | logo = | screenshot = | caption = | extension = `.hta` | mime = application/hta | typecode = | uniform type = | magic = `%hta` | owner = [Microsoft](https://zh.wikipedia.org/wiki/Microsoft "wikilink") | released =  | latest release version = | latest release date = | genre = | container for = | contained by = | extended from = | extended to = | standard = | free = | url = <https://msdn.microsoft.com/en-us/library/ms536471(VS.85>).aspx }}

**HTML應用程式**（，缩写：**HTA**）是一个使用[HTML](../Page/HTML.md "wikilink")和动态 HTML的[Microsoft Windows应用程式](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，它由[Internet Explorer支持](../Page/Internet_Explorer.md "wikilink")，并且支援的其他脚本语言，像是[VBS和](../Page/VBScript.md "wikilink")[JScript](../Page/JScript.md "wikilink")。HTML用来创建用户介面，脚本语言則用来建構-{zh-hans:程序;zh-cn:程序;zh-hant:程式;zh-tw:程式}-主体。HTA执行当中没有互联网浏览器的安全模型的限制；实际上，它就像是一个被"完全信任"的-{zh-hans:应用;zh-cn:应用;zh-hant:應用程式;zh-tw:應用程式}-。

大部分HTA執行檔的-{zh-hans:后缀;zh-cn:后缀;zh-hant:副檔名;zh-tw:副檔名}-为 `.hta`。

HTA的可执行能力在1999年被引入Microsoft Windows，同时跟隨著[Microsoft Internet Explorer 5被發布出來](../Page/Internet_Explorer_5.md "wikilink")。\[1\] 在2003年12月9日这一技术申请了专利。\[2\]

## 使用

HTA给予开发者HTML和高级的脚本语言的共同特性。在Microsoft Windows中使用HTA作為系统管理工具，無論从原型到“全面”的应用都非常受微软的系统管理者欢迎，特别是在灵活性和开发的速度非常關鍵的環境中。\[3\]

## 环境

### 执行

[HTA-Hello_World_example.png](https://zh.wikipedia.org/wiki/File:HTA-Hello_World_example.png "fig:HTA-Hello_World_example.png") 在圖形化介面下双击HTA文件，或是在-{zh-hans:命令提示符;zh-cn:命令提示符;zh-hant:命令提示字元;zh-tw:命令提示字元}-下鍵入`mshta [HTA檔名]`皆可以透過`mshta.exe`执行HTA檔。mshta.exe會与[Internet Explorer同时安装](../Page/Internet_Explorer.md "wikilink")。`mshta.exe` 通过動態載入[Internet Explorer的HTML渲染引擎mshtml](../Page/Internet_Explorer.md "wikilink").dll来执行HTA檔，同时运行的还有需要的语言引擎 (例如 vbscript.dll).

HTA被视为带有 [`.exe`](../Page/EXE格式.md "wikilink")扩展名的可执行文件. 在当该文件被mshta.exe运行 (或该文件被双击), 它就会立即运行. 当被远程用浏览器运行时, 用户将会被询问, 在HTA被下载到本地之前, 用户可以选择下载或不下载; 如果选择保存,它可以简单的被按需运行.\[4\]

默认每个HTA被呈现为"标准模式内容(IE7标准模式) 和怪癖模式内容(IE5怪癖模式)", 但呈现方式可以被 `X-UA-Compatible` 标签更改.\[5\]

HTA引擎(mshta.exe)依赖于[Internet Explorer](../Page/Internet_Explorer.md "wikilink"). 从[Windows Vista开始](../Page/Windows_Vista.md "wikilink"), 用户可以从系统中移除Internet Explorer , 但它将使引擎停止工作.

HTA在Internet Explorer 5 至 9中被完美支持. 更多版本, 例如10 and 11, 仍支持HTA但某些小功能被关闭.<sup>\]</sup>

### 安全注意事项

当一个常规的HTML文件被执行时, 执行权限被限制在[网页浏览器](../Page/网页浏览器.md "wikilink")的[安全模式](../Page/安全模式.md "wikilink"), 也就是说, 它被限制在与服务器通信的范围, 只操纵页面的对象模型 (常常表现为验证表单/创建有趣的视觉效果) 并且读/写[Cookie](../Page/Cookie.md "wikilink").

另一方面, HTA运行为一个完全信任的应用程序，因此具有比普通的HTML文件更多的特权; 举一个例子, HTA can 可以创建,重命名,删除,并且注册一个实例. 尽管HTA在这个'被信任的'环境中运行, 查询[Active Directory依然可以看到Internet](../Page/Active_Directory.md "wikilink") Explorer域的错误信息.

## 开发

要定制一个HTA的特定外观, 一个可选的标签 `hta:application` 在 `HEAD` 中被加入. 这个标签公开了一组属性, 可以控制程序外观, 程序图标等, 并且提供对参数 ([命令行](https://zh.wikipedia.org/wiki/命令行 "wikilink")) 的控制来启动HTA.\[6\] 除此以外, HTA 和一个[HTML](../Page/HTML.md "wikilink")页面的格式是相同的.

任何[文本编辑器](../Page/文本编辑器.md "wikilink")都可以用来创建HTA. 可以从微软获得具有特殊功能的编辑器来开发HTA\[7\] 或者从第三方获得.\[8\]

一个存在的HTML文件(文件后缀为`.htm` 或 `.html`, 一个例子) 可以只将文件后缀更改为 `.hta`来更改为HTA文件.

## 例子

这是一个Hello World程序在HTA中的实现过程.

``` html4strict
<HTML>
<HEAD>
<HTA:APPLICATION ID="HelloExample"
   BORDER="thick"
   BORDERSTYLE="complex"></HTA:APPLICATION>
<TITLE>HTA - Hello World</TITLE>
</HEAD>
<BODY>
<H2>HTA - Hello World</H2>
</BODY>
</HTML>
```

## 另请参阅

  - Active Scripting
  - Chromium Embedded Framework
  - Google Chrome extension
  - [Intranet](https://zh.wikipedia.org/wiki/内部网 "wikilink")
  - [Firefox OS](../Page/Firefox_OS.md "wikilink")
  - [XUL](../Page/XUL.md "wikilink") 和 XULRunner - 一个Mozilla的跨平台应用程序, 它的语言和环境与HTML应用程序的机制相类似。
  - Apache Cordova
  - [Pop-up ad](../Page/弹出式广告.md "wikilink")

## 参考

## 外部链接

  - [HTML Component (HTC) Reference at MSDN](http://msdn2.microsoft.com/en-us/library/ms531018.aspx). An HTC encapsulates specific functionality or behavior within HTAs.
  - [The Script Center](http://technet.microsoft.com/en-ca/scriptcenter/default.aspx), The Script Center, home of Hey, Scripting Guy\! Blog
  - [Learn About Scripting for HTML Applications (HTAs)](http://technet.microsoft.com/en-ca/scriptcenter/dd742317.aspx), 一个学习HTA的网站

[Category:HTML](https://zh.wikipedia.org/wiki/Category:HTML "wikilink") [Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")

1.  [*Article ID:200874 in Microsoft Support*](http://support.microsoft.com/kb/200874)，in Microsoft Support Knowledge Base
2.  [Microsoft wins HTML application patent](http://news.cnet.com/2100-1012_3-5119072.html)
3.  \[<https://msdn.microsoft.com/en-us/library/ms536496(v=vs.85>).aspx *Introduction to HTML Applications (HTAs)*\], in MSDN Library
4.  \[<https://msdn.microsoft.com/en-us/library/ms536496(v=vs.85>).aspx *Why Use HTAs*\], in MSDN Library, Introduction to HTML Applications
5.  [1](https://msdn.microsoft.com/en-us/library/ms536496%28v=vs.85%29.aspx#Compatibility) Introduction to HTML Applications (HTAs) - Compatibility
6.  \[<https://msdn.microsoft.com/en-us/library/aa360681(v=VS.85>).aspx *HTA:APPLICATION Object*\], in MSDN Library, the complete specification of the tag `hta:application`
7.  [*HTA Helpomatic*](http://www.microsoft.com/downloads/details.aspx?FamilyId=231D8143-F21B-4707-B583-AE7B9152E6D9&displaylang=en)
8.  [*HTAEdit, an editor for HTAs with a built-in debugger*](http://www.htaedit.com/)