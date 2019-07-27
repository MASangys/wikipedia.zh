**SAAJ**（**[SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink") with
Attachments [API](https://zh.wikipedia.org/wiki/API "wikilink") for
[Java](../Page/Java.md "wikilink")**，带附件的SOAP Java
API）提供了从Java平台通过[因特网发送](https://zh.wikipedia.org/wiki/因特网 "wikilink")[XML](../Page/XML.md "wikilink")文档的标准方法。开发者可以使用SAAJ产生、接受符合SOAP
1.1和1.2规范的消息，以及[带附件的SOAP消息](https://zh.wikipedia.org/wiki/带附件的SOAP消息 "wikilink")。开发者还可以直接使用它来编写SOAP消息传递应用程序，而不是使用[JAX-RPC或](https://zh.wikipedia.org/wiki/JAX-RPC "wikilink")[JAX-WS](../Page/JAX-WS.md "wikilink")。

## 为什么SOAP需要附件

作为一个基于XML的消息传递协议，SOAP消息需要较强的处理能力和较大的内存。
而SOAP消息的所有部分必须符合XML规则所允许的字符和字符序列，二进制数据不能直接包含在内。此外，SOAP的实现通常是在决定怎样处理内容部分之前解析整个SOAP消息，所以大的数据字段可能使应用很容易超过可用内存。出于所有这些原因，SOAP需要一些机制，作为附件去携带大量数据和二进制数据，而不是在SOAP消息信封中做这些事情。\[1\]\[2\]

## 参考文献

## 外部链接

  - [Oracle的《SAAJ概述》](http://docs.oracle.com/javaee/5/tutorial/doc/bnbhg.html)（来自《Java
    EE 5指南》）
  - [SOAP with Attachments API for Java (SAAJ) 1.3版
    (JSR 67)](http://download.oracle.com/otndocs/jcp/jaxm-1.3-mrel-spec-oth-JSpec/)
  - [SAAJ规范实现项目](https://saaj.java.net/)

[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")

1.
2.