**Oracle C++ Call Interface (OCCI)**，是[Oracle公司提供的](https://zh.wikipedia.org/wiki/Oracle公司 "wikilink")[C++](../Page/C++.md "wikilink")程序访问[Oracle数据库](../Page/Oracle数据库.md "wikilink")的[API](https://zh.wikipedia.org/wiki/API "wikilink")\[1\] OCCI的[类提供了](https://zh.wikipedia.org/wiki/类 "wikilink")[SQL](../Page/SQL.md "wikilink")[语句的参数](https://zh.wikipedia.org/wiki/语句 "wikilink")。OCCI从Oracle数据库9i开始发布。

OCCI起源自，[C语言程序的API](https://zh.wikipedia.org/wiki/C语言 "wikilink")。\[2\]

## 简介

### 安装

OCCI现在包含于oracle客户端包中。只需从Oracle网站下载相应版本的Instant Client包解压即可。\[3\]包含：

  - instantclient-basic (一些基础组件)
  - instantclient-sdk (开发包,即相关的头文件和库文件，但只有release版本的lib和动态库,对于开发和调试来说是不够的）
  - occi (能正确匹配你的开发环境的OCCI库)

Easy Connect 字符串的格式为：

`[//]host_name[:port][/service_name][:server_type][/instance_name]`

Oracle Instant Client向后兼容访问低版本的数据库。

获取std::string类型的字段的值的结果集成员函数getString()在[Visual C++编译后运行时](https://zh.wikipedia.org/wiki/Visual_C++ "wikilink")，常会报异常，这需要根据访问的Oracle数据库的版本从Oracle网站下载使用相应版本号的“Instant Client Downloads for Microsoft Windows 32-bit”\[4\]。并选择相应的调试版本的库：

  - DLL multithread Debug (/MDd) for debug with oraocci11d.lib and oraocci11d.dll
  - DLL multithread (/MD) for release with oraocci11.lib and oraocci11.dll

并且采取静态局部变量接收成员函数getString()的返回值，形如：

`static std::string varName = resultSet->getString(1);`

主流的Instant Client/OCCI与VC++版本号匹配：

| Instant Client/OCCI版本 | Visual C++ 2017 | Visual C++ 2015 | Visual C++ 2013 | Visual C++ 2012 | Visual C++ 2010 | Visual C++ 2008 | Visual C++ 2005 | Visual C++ .NET 2003 | Visual C++ .NET 2002 | Visual C++ 6 |
| --------------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | --------------- | -------------------- | -------------------- | ------------ |
| 18.3.0.0.0            |                 | √               |                 |                 |                 |                 |                 |                      |                      |              |
| 12.2.0.1.0            |                 |                 | √               |                 |                 |                 |                 |                      |                      |              |
| 12.1.0.2.0            |                 |                 | √               | √               | √               |                 |                 |                      |                      |              |
| 11.2.0.4.0            |                 |                 |                 |                 |                 | √               | √               |                      |                      |              |
| 11.1.0.7.0            |                 |                 |                 |                 |                 |                 | √               | √                    |                      |              |
| 10.2.0.5              |                 |                 |                 |                 |                 |                 |                 |                      |                      |              |
| 10.1.0.5              |                 |                 |                 |                 |                 |                 |                 | √                    | √                    | √            |

Windows上更多老版本([Visual Studio](https://zh.wikipedia.org/wiki/Visual_Studio "wikilink") 2005\~2010)的OCCI下载页面：\[5\]。

## 参考文献

<references/>

[Category:甲骨文公司軟體](https://zh.wikipedia.org/wiki/Category:甲骨文公司軟體 "wikilink")

1.  [Oracle C++ Call Interface main page](http://www.oracle.com/technetwork/database/features/oci/index-090820.html)
2.  [OCCI Developer Reference](http://download.oracle.com/docs/cd/B12037_01/appdev.101/b10778/toc.htm)
3.  [Oracle Instant Client FAQ](http://www.oracle.com/technetwork/database/features/oci/ic-faq-094177.html)
4.  [Instant Client Downloads for Microsoft Windows 32-bit](http://www.oracle.com/technetwork/topics/winsoft-085727.html)
5.  [Oracle C++ Call Interface - Downloads](https://www.oracle.com/technetwork/database/occidownloads-083553.html)