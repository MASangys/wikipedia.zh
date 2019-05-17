**XMLlite**是[Windows操作系统提供的了一组服务](https://zh.wikipedia.org/wiki/Windows操作系统 "wikilink")，用户可以使用C/C++语言和其它微软的开发工具开发基于[XML的本机应用程序](../Page/XML.md "wikilink")。它支持XML
1.0、[SAX](https://zh.wikipedia.org/wiki/Simple_API_for_XML "wikilink")、[XSLT](https://zh.wikipedia.org/wiki/XSL_Transformations "wikilink")
1.0，并提供了包括[XSD和](https://zh.wikipedia.org/wiki/XSD "wikilink")[XDR在内的](https://zh.wikipedia.org/wiki/XDR_Schema "wikilink")[XML
Schema
语言](https://zh.wikipedia.org/wiki/XML_Schema_语言 "wikilink")、[XMLHttpRequest](../Page/XMLHttpRequest.md "wikilink")、[XPath等技术](../Page/XPath.md "wikilink")。

XMLlite是前向读写XML文件，不缓冲或者建立XML文件的结构。

XMLlite并不是[COM组件](https://zh.wikipedia.org/wiki/Component_Object_Model "wikilink")，因此不能给[VB.Net](https://zh.wikipedia.org/wiki/VB.Net "wikilink")、[VBScript等使用](../Page/VBScript.md "wikilink")。XMLlite使用的COM技术有：

  - XMLlite的接口使用IUnknown接口的方式来做生存期管理；
  - 数据存储使用了COM的IStream；
  - 接口对象的管理使用[ATL的CComPtr](../Page/活动模板库.md "wikilink")。

使用这些COM资源时应该注意用后调用Release函数或者CComPtr的[RAII](https://zh.wikipedia.org/wiki/RAII "wikilink")。

## 系统安装

从2006年10月开始，XMLlite运行时文件Xmllite.dll，包含在下述操作系统或软件安装中：\[1\]

  - [Windows Server
    2008及更高版本](../Page/Windows_Server_2008.md "wikilink")
  - [Windows Vista及更高版本](../Page/Windows_Vista.md "wikilink")
  - [Windows XP with Service Pack
    3及更高版本](https://zh.wikipedia.org/wiki/Windows_XP_Service_Pack_3 "wikilink")
  - [Windows Server 2003 with Service Pack
    2及更高版本](../Page/Windows_Server_2003.md "wikilink")
  - Microsoft [Internet Explorer
    7及更高版本](../Page/Internet_Explorer_7.md "wikilink")

## SAX

XmlLite的类是映射到.NET Framework实现的：\[2\]

<table>
<thead>
<tr class="header">
<th><p>XmlLite</p></th>
<th><p>.NET Framework</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>IXmlReader interface</p></td>
<td><p>XmlReader class</p></td>
</tr>
<tr class="even">
<td><p>IXmlWriter interface</p></td>
<td><p>XmlWriter class</p></td>
</tr>
<tr class="odd">
<td><p>XmlReaderProperty enum</p></td>
<td><p>XmlReaderSettings class</p></td>
</tr>
<tr class="even">
<td><p>XmlWriterProperty enum</p></td>
<td><p>XmlWriterSettings class</p></td>
</tr>
<tr class="odd">
<td><p>CreateXmlReaderInputWithEncodingCodePage<br />
CreateXmlReaderInputWithEncodingName<br />
CreateXmlWriterOutputWithEncodingCodePage<br />
CreateXmlWriterOutputWithEncodingName</p></td>
<td><p>Encoding class</p></td>
</tr>
<tr class="even">
<td><p>XmlNodeType enum</p></td>
<td><p>XmlNodeType enum</p></td>
</tr>
</tbody>
</table>

### IXmlReader

用于读入、分析XML的接口。

``` C++
CComPtr<IXmlReader> reader;
COM_VERIFY(::CreateXmlReader(__uuidof(IXmlReader),
                             reinterpret_cast<void**>(&reader),
                             0));
CComPtr<IStream> stream;
// Using OS API to create stream object here...
reader->SetInput(stream);
HRESULT result = S_OK;
XmlNodeType nodeType = XmlNodeType_None;
while (S_OK == (result = reader->Read(&nodeType)))
{
    // 已从流中成功读取一个节点。节点的属性自动存储在内部集合中，因此可以使用MoveToAttributeByName方法按名称将读取器移动到特定的属性。
    for (HRESULT result = reader->MoveToFirstAttribute();S_OK == result;result = reader->MoveToNextAttribute())
    {
         // 成功枚举当前节点的一个属性
     }
}
//返回 S_FALSE 以指示已到达流的结尾处
```

### IXmlResolver

解析外部实体。编写对IXmlResolver接口实现并用IXmlReader的SetProperty方法设置XmlReaderProperty_XmlResolver属性，以指示读取器使用自编的外部实体解析程序。

### IXmlReaderInput

创建XML读取器输入对象并指定文本编码。可用两个函数创建该对象：

  - CreateXmlReaderInputWithEncodingCodePage
  - CreateXmlReaderInputWithEncodingName

### IXmlWriter

``` C++
CComPtr<IXmlWriter> writer;
COM_VERIFY(::CreateXmlWriter(__uuidof(IXmlWriter),
                             reinterpret_cast<void**>(&writer),
                             0));
CComPtr<IStream> stream;
// Use OS API to create stream object here
writer->SetOutput(stream);
writer->SetProperty(XmlWriterProperty_Indent, TRUE);//写入之前，可以修改写入器属性，如缩进 XML 输出。
//IXmlWriter提供了许多 WriteXXX 方法，用于写入各种节点类型、属性和值。
```

### IXmlWriterLite

### IXmlWriterOutput

用此对象指定输出的XML的文本编码不是UTF-8的其他设定。可用两个函数创建本对象：

  - CreateXmlWriterOutputWithEncodingCodePage
  - CreateXmlWriterOutputWithEncodingName

## C语言使用

需要在源程序中加入这行：

``` C++
#include <xmllite.h>
#pragma comment(lib,"xmllite.lib")
```

## Visual Basic使用

## VBScript使用

## 参考文献

  - [MSDN:Microsoft XML Team Blog](http://blogs.msdn.com/b/xmlteam/)

<references/>

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")

1.  \[<https://msdn.microsoft.com/EN-US/library/ee388577(v=VS.85,d=hv.2>).aspx
    Installing XmlLite in
    [MSDN](https://zh.wikipedia.org/wiki/MSDN "wikilink")\]
2.  Kenny Kerr : XmlLite-A Small And Fast XML Parser For Native C++,
    published in MSDN Magazine, April 2007.