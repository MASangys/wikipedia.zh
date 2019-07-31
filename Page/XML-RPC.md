**XML-RPC**是一個[远程过程调用](https://zh.wikipedia.org/wiki/远程过程调用 "wikilink")（[遠端程序呼叫](https://zh.wikipedia.org/wiki/遠端程序呼叫 "wikilink")）（)的[分布式计算](../Page/分布式计算.md "wikilink")[協議](https://zh.wikipedia.org/wiki/互聯網協議 "wikilink")，通过[XML](../Page/XML.md "wikilink")将调用函数封装，並使用[HTTP协议作為傳送機制](../Page/超文本传输协议.md "wikilink")。\[1\]

## 歷史

XML-RPC發表於1998年，由[UserLand Software](https://zh.wikipedia.org/wiki/UserLand_Software "wikilink")（）的[Dave Winer及](https://zh.wikipedia.org/wiki/Dave_Winer "wikilink")[Microsoft共同發表](https://zh.wikipedia.org/wiki/Microsoft "wikilink")\[2\]。後來在新的功能不斷被引入下，這個標準慢慢演變成為今日的[SOAP協定](https://zh.wikipedia.org/wiki/SOAP "wikilink")。

XML-RPC協定是已登記的專利項目，由[Phillip Merrick](https://zh.wikipedia.org/wiki/Phillip_Merrick "wikilink")、Stewart Allen及Joseph Lapp共同持有，於1998年3月提出申請，指其將用於一個構想中的應用程式，並於2006年4月獲得接納。現時這個專利由位於[美國](https://zh.wikipedia.org/wiki/美國 "wikilink")[維珍尼亞州](https://zh.wikipedia.org/wiki/維珍尼亞州 "wikilink")[費爾法克斯的](../Page/費爾法克斯_\(維吉尼亞州\).md "wikilink")[webMethods使用](https://zh.wikipedia.org/wiki/webMethods "wikilink")\[3\]。

## 用法

XML-RPC透過向裝置了這個協定的伺服器發出HTTP請求。發出請求的用戶端一般都是需要向遠端系統要求呼叫的軟件。

[JSON-RPC](../Page/JSON-RPC.md "wikilink")（[JSON-RPC](../Page/JSON-RPC.md "wikilink")）跟 XML-RPC 相類似。

## 数据类型

以下的例子為日常的[数据类型在轉化為等同的XML後的面貌](https://zh.wikipedia.org/wiki/数据类型 "wikilink")：

<table>
<thead>
<tr class="header">
<th><p>名稱</p></th>
<th><p>標記範例</p></th>
<th><p>描述</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>array</p></td>
<td><div class="sourceCode" id="cb1"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb1-1"><a href="#cb1-1"></a><span class="kw">&lt;array&gt;</span></span>
<span id="cb1-2"><a href="#cb1-2"></a>  <span class="kw">&lt;data&gt;</span></span>
<span id="cb1-3"><a href="#cb1-3"></a>    <span class="kw">&lt;value&gt;&lt;i4&gt;</span>1404<span class="kw">&lt;/i4&gt;&lt;/value&gt;</span></span>
<span id="cb1-4"><a href="#cb1-4"></a>    <span class="kw">&lt;value&gt;&lt;string&gt;</span>Something here<span class="kw">&lt;/string&gt;&lt;/value&gt;</span></span>
<span id="cb1-5"><a href="#cb1-5"></a>    <span class="kw">&lt;value&gt;&lt;i4&gt;</span>1<span class="kw">&lt;/i4&gt;&lt;/value&gt;</span></span>
<span id="cb1-6"><a href="#cb1-6"></a>  <span class="kw">&lt;/data&gt;</span></span>
<span id="cb1-7"><a href="#cb1-7"></a><span class="kw">&lt;/array&gt;</span></span></code></pre></div></td>
<td></td>
</tr>
<tr class="even">
<td><p>base64</p></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb2-1"><a href="#cb2-1"></a><span class="kw">&lt;base64&gt;</span>eW91IGNhbid0IHJlYWQgdGhpcyE=<span class="kw">&lt;/base64&gt;</span></span></code></pre></div></td>
<td></td>
</tr>
<tr class="odd">
<td><p>boolean</p></td>
<td><div class="sourceCode" id="cb3"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb3-1"><a href="#cb3-1"></a><span class="kw">&lt;boolean&gt;</span>1<span class="kw">&lt;/boolean&gt;</span></span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/布尔型" title="wikilink">布尔型邏輯值</a> (0 或 1)</p></td>
</tr>
<tr class="even">
<td><p>date/time</p></td>
<td><div class="sourceCode" id="cb4"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb4-1"><a href="#cb4-1"></a><span class="kw">&lt;dateTime.iso8601&gt;</span>19980717T14:08:55<span class="kw">&lt;/dateTime.iso8601&gt;</span></span></code></pre></div></td>
<td></td>
</tr>
<tr class="odd">
<td><p>double</p></td>
<td><div class="sourceCode" id="cb5"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb5-1"><a href="#cb5-1"></a><span class="kw">&lt;double&gt;</span>-12.53<span class="kw">&lt;/double&gt;</span></span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/雙倍精確浮點數" title="wikilink">雙倍精確浮點數</a></p></td>
</tr>
<tr class="even">
<td><p>integer</p></td>
<td><div class="sourceCode" id="cb6"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb6-1"><a href="#cb6-1"></a><span class="kw">&lt;i4&gt;</span>42<span class="kw">&lt;/i4&gt;</span></span></code></pre></div>
<p>or</p>
<div class="sourceCode" id="cb7"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb7-1"><a href="#cb7-1"></a><span class="kw">&lt;int&gt;</span>42<span class="kw">&lt;/int&gt;</span></span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/整數" title="wikilink">整數</a></p></td>
</tr>
<tr class="odd">
<td><p>string</p></td>
<td><div class="sourceCode" id="cb8"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb8-1"><a href="#cb8-1"></a><span class="kw">&lt;string&gt;</span>Hello world!<span class="kw">&lt;/string&gt;</span></span></code></pre></div></td>
<td><p>字符串，必須遵守<a href="https://zh.wikipedia.org/wiki/XML_encoding" title="wikilink">XML encoding</a>（<a href="../Page/XML.md" title="wikilink">XML encoding</a>）的格式。</p></td>
</tr>
<tr class="even">
<td><p>struct</p></td>
<td><div class="sourceCode" id="cb9"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb9-1"><a href="#cb9-1"></a><span class="kw">&lt;struct&gt;</span></span>
<span id="cb9-2"><a href="#cb9-2"></a>  <span class="kw">&lt;member&gt;</span></span>
<span id="cb9-3"><a href="#cb9-3"></a>    <span class="kw">&lt;name&gt;</span>foo<span class="kw">&lt;/name&gt;</span></span>
<span id="cb9-4"><a href="#cb9-4"></a>    <span class="kw">&lt;value&gt;&lt;i4&gt;</span>1<span class="kw">&lt;/i4&gt;&lt;/value&gt;</span></span>
<span id="cb9-5"><a href="#cb9-5"></a>  <span class="kw">&lt;/member&gt;</span></span>
<span id="cb9-6"><a href="#cb9-6"></a>  <span class="kw">&lt;member&gt;</span></span>
<span id="cb9-7"><a href="#cb9-7"></a>    <span class="kw">&lt;name&gt;</span>bar<span class="kw">&lt;/name&gt;</span></span>
<span id="cb9-8"><a href="#cb9-8"></a>    <span class="kw">&lt;value&gt;&lt;i4&gt;</span>2<span class="kw">&lt;/i4&gt;&lt;/value&gt;</span></span>
<span id="cb9-9"><a href="#cb9-9"></a>  <span class="kw">&lt;/member&gt;</span></span>
<span id="cb9-10"><a href="#cb9-10"></a><span class="kw">&lt;/struct&gt;</span></span></code></pre></div></td>
<td><p><a href="https://zh.wikipedia.org/wiki/结构体" title="wikilink">结构体</a></p></td>
</tr>
<tr class="odd">
<td><p>nil</p></td>
<td><div class="sourceCode" id="cb10"><pre class="sourceCode xml"><code class="sourceCode xml"><span id="cb10-1"><a href="#cb10-1"></a><span class="kw">&lt;nil/&gt;</span></span></code></pre></div></td>
<td></td>
</tr>
</tbody>
</table>

## 範例

以下為一個尋常的 XML-RPC 請求的範例：

``` xml
<?xml version="1.0"?>
<methodCall>
  <methodName>examples.getStateName</methodName>
  <params>
    <param>
        <value><i4>40</i4></value>
    </param>
  </params>
</methodCall>
```

相對於上述請求，以下為一個尋常回應的範例：

``` xml
<?xml version="1.0"?>
<methodResponse>
  <params>
    <param>
        <value><string>South Dakota</string></value>
    </param>
  </params>
</methodResponse>
```

以下為一個尋常的 XML-RPC 錯誤：

``` xml
<?xml version="1.0"?>
<methodResponse>
  <fault>
    <value>
      <struct>
        <member>
          <name>faultCode</name>
          <value><int>4</int></value>
        </member>
        <member>
          <name>faultString</name>
          <value><string>Too many parameters.</string></value>
        </member>
      </struct>
    </value>
  </fault>
</methodResponse>
```

## 批評

## 实现

### Python

  - [xmlrpclib](https://web.archive.org/web/20100817224346/http://docs.python.org/library/xmlrpclib.html)
      - Renamed [xmlrpc.client](http://docs.python.org/3.1/library/xmlrpc.client.html) in Python 3.
  - [Creating XML-RPC Servers and Clients with Twisted](http://twistedmatrix.com/documents/current/web/howto/xmlrpc.html)

### C++

  - [Libiqxmlrpc](http://libiqxmlrpc.sourceforge.net/)
  - [Ultra lightweight XML-RPC library for C++](http://ulxmlrpcpp.sourceforge.net/)
  - [XML-RPC for C and C++](http://xmlrpc-c.sourceforge.net/)
  - [XmlRpc++](http://xmlrpcpp.sourceforge.net/)
  - [XmlRpc C++ client for Windows](https://sourceforge.net/projects/xmlrpcc4win/)
  - [gSOAP toolkit for C and C++ supporting XML-RPC and more](http://www.cs.fsu.edu/~engelen/soap.html)
  - [libmaia: XML-RPC for Qt/C++](http://wiedi.frubar.net/blog/2008/03/08/libmaia-xml-rpc-with-qt4/)

### Objective-C / GNUstep / Cocoa

  - [XMLRPC Framework](http://www.mulle-kybernetik.com/software/XMLRPC/)
  - [Cocoa XML-RPC Framework](http://divisiblebyzero.com/): Open Source XML-RPC framework written for use in Mac OS X Cocoa applications.

### Erlang

  - [XML-RPC for Erlang](https://web.archive.org/web/20110815192238/http://erlang.stacken.kth.se/contrib/xmlrpc-1.13.tgz): This is an HTTP 1.1 compliant XML-RPC library for Erlang. It is designed to make it easy to write XML-RPC Erlang clients and/or servers. The library is compliant with the XML-RPC specification published by <https://web.archive.org/web/20051210031514/http://www.xmlrpc.org/>

### Java

  - [Apache XML-RPC](http://ws.apache.org/xmlrpc/): Open source library for Java
  - [XML-RPC Delight](http://delight.opendfki.de/): Convenient serialisation/deserialisation for Apache XML-RPC using Java Annotations and Beans
  - [1](https://web.archive.org/web/20051116090755/http://members.fortunecity.com/neptune42/xmlrpc/index.htm): Secure Apache XML-RPC
  - [Redstone XML-RPC Library](http://xmlrpc.sourceforge.net/): Redstone's Open Source Library - XML-RPC implementation in Java
  - [XML-RPC Library for Java ME](http://kxmlrpc.sourceforge.net/): Open source client-side library for Java ME

### XMPP

  - [pyJabberXMLRPC](http://gdr.geekhood.net/gdrwpl/jxmlrpc.php): Python classes for XMPP
  - [Jabber-RPC](http://xmpp.org/extensions/xep-0009.html): Over the [Extensible Messaging and Presence Protocol](https://zh.wikipedia.org/wiki/Extensible_Messaging_and_Presence_Protocol "wikilink") protocol

### Other

  - [JSON/XML-RPC Client and Server](http://code.google.com/p/json-xml-rpc/): Abstract away the differences between JSON-RPC and XML-RPC
  - [RemObjects SDK](http://www.remobjects.com/ro) Delphi and .NET package for XML-RPC, in addition to [SOAP](https://zh.wikipedia.org/wiki/SOAP_\(protocol\) "wikilink") and others
  - [RealThinClient SDK](http://www.realthinclient.com): For Delphi/C++
  - [XML::RPC](http://search.cpan.org/~daan/XML-RPC-0.5/lib/XML/RPC.pm): Perl module implementation
  - [XML-RPC for ActionScript](http://xmlrpcflash.mattism.com): For Flash ActionScript 2.0
  - [as3-rpclib](http://code.google.com/p/as3-rpclib/): For Flex/Actionscript 3
  - [XML-RPC.NET](https://web.archive.org/web/20170620152017/http://xml-rpc.net/): Open source library for .NET clients and servers
  - [XmlRpc-Light](http://code.google.com/p/xmlrpc-light/): Client and server library for OCaml
  - [S-XML-RPC](http://common-lisp.net/project/s-xml-rpc/): Client and server library for Common Lisp
  - [PHP-XML-RPC](http://phpxmlrpc.sourceforge.net/): For PHP
  - [HaXR](https://web.archive.org/web/20100703071016/http://www.haskell.org/haxr/): Client and server library for Haskell
  - [xi library with PHP and Javascript XML-RPC](https://web.archive.org/web/20100823050623/http://www.x2ii.info/x2ii/xi/): For PHP and Javascript
  - [Ruby XML-RPC library](https://web.archive.org/web/20101129010057/http://ruby-doc.org/stdlib/libdoc/xmlrpc/rdoc/index.html): For Ruby
  - [XML-RPC interface to Lua](https://web.archive.org/web/20100324022719/http://www.keplerproject.org/luaxmlrpc/): For [Lua](https://zh.wikipedia.org/wiki/Lua_\(programming_language\) "wikilink")
  - [android-xmlrpc](http://code.google.com/p/android-xmlrpc/): A light XML-RPC client for Google Android
  - [XML-RPC for Tcl](http://sourceforge.net/projects/xmlrpctcl/): A Tcl implementation of XML-RPC providing client and server support
  - [2](http://earl.strain.at/space/rebXR+Users+Guide): RebXR, a full client/server XML-RPC implementation for REBOL.

## 參看

  - [AJAX](../Page/AJAX.md "wikilink")
  - [Component technologies](https://zh.wikipedia.org/wiki/Software_componentry#Technologies_for_Software_Components "wikilink")
  - [List of Web service markup languages](https://zh.wikipedia.org/wiki/List_of_Web_service_markup_languages "wikilink")
  - [OPML](https://zh.wikipedia.org/wiki/OPML "wikilink")
  - [Web服務](https://zh.wikipedia.org/wiki/Web服務 "wikilink")

## 參考資料

## 外部連結

  - [XML-RPC Homepage](http://www.xmlrpc.com/)
  - [Forum](http://groups.yahoo.com/group/xml-rpc/)
  - [Tutorials](https://web.archive.org/web/20100914031553/http://www.xml.com/pub/rg/XML_RPC_Tutorials)
  - [Technology Reports](http://xml.coverpages.org/xml-rpc.html)
  - [Citations from CiteSeer](http://citeseer.ist.psu.edu/cis?q=XML+RPC&cs=1)

[Category:基于XML的标准](https://zh.wikipedia.org/wiki/Category:基于XML的标准 "wikilink") [Category:Web服务规范](https://zh.wikipedia.org/wiki/Category:Web服务规范 "wikilink") [Category:网际协议](https://zh.wikipedia.org/wiki/Category:网际协议 "wikilink") [Category:分布式计算](https://zh.wikipedia.org/wiki/Category:分布式计算 "wikilink") [Category:遠端程序呼叫](https://zh.wikipedia.org/wiki/Category:遠端程序呼叫 "wikilink")

1.
2.
3.