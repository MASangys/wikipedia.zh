**微软XML核心服务**（**MSXML**）提供了一组服务，使用户可以使用[JScript](../Page/JScript.md "wikilink")、[VBScript和其它微软的开发工具开发基于](../Page/VBScript.md "wikilink")[XML的本机应用程序](../Page/XML.md "wikilink")。它支持XML
1.0、[DOM](../Page/Document_Object_Model.md "wikilink")、[SAX](../Page/Simple_API_for_XML.md "wikilink")、[XSLT](../Page/XSL_Transformations.md "wikilink")
1.0，并提供了包括[XSD和](../Page/XSD.md "wikilink")[XDR在内的](../Page/XDR_Schema.md "wikilink")[XML
schema](../Page/XML_schema.md "wikilink")、XMLHttpRequest、XPath、SOM（）等技术。

## 版本历史

**MSXML**是不同产品的合集。可从此处枚举各个版本：\[1\]

### 现行有效版本

  - **MSXML 6.0** MSXML6是最新版本。与MSXML3一起随[Microsoft SQL Server
    2005](../Page/Microsoft_SQL_Server_2005.md "wikilink")、[Visual
    Studio 2005](../Page/Microsoft_Visual_Studio.md "wikilink")、[.NET
    Framework 3.0](../Page/.NET_Framework_3.0.md "wikilink")、[Windows
    Vista](../Page/Windows_Vista.md "wikilink")、[Windows
    7](../Page/Windows_7.md "wikilink")、[Windows XP Service Pack
    3发行](../Page/Windows_XP_Service_Pack_3.md "wikilink")。支持64位本地环境。版本6可以替代版本4\[2\]，但不能替代版本3。MSXML
    6不支持[Windows 9x](../Page/Windows_9x.md "wikilink")。
  - **MSXML 3.0**对应于msxml3.dll。MSXML 3.0 SP2随[Windows
    XP](../Page/Windows_XP.md "wikilink")、[Internet
    Explorer](../Page/Internet_Explorer.md "wikilink")
    6.0与[MDAC](../Page/Microsoft_Data_Access_Components.md "wikilink")
    2.7发行。Windows XP SP2包含MSXML 3.0 SP5，作为MDAC 2.81的一部分。Internet
    Explorer
    版本[6.0](../Page/Internet_Explorer_6.md "wikilink")、[7.0](../Page/Internet_Explorer_7.0.md "wikilink")、[8.0使用MSXML](../Page/Internet_Explorer_8.md "wikilink")
    3解析XML文档。MSXML 3.0 SP7是[Windows
    95支持的最高版本](../Page/Windows_95.md "wikilink")。Windows
    XP SP3包含MSXML 3.0 SP9。[Windows
    Vista包含MSXML](../Page/Windows_Vista.md "wikilink") 3.0 SP10。

### 过时版本

  - **MSXML 5.0**随[Microsoft
    Office](../Page/Microsoft_Office.md "wikilink") 2003与[Office
    2007发布](../Page/Office_2007.md "wikilink")。Microsoft没有发布5.0的文档，因为MSXML
    5仅为Office 2003与2007内部使用。[Office
    2010不包含MSXML](../Page/Microsoft_Office_2010.md "wikilink")
    5.0。\[3\]
  - **MSXML 4.0**随独立的、可下载的SDK发布，不能完全兼容版本3.0 。只有32位版本。MSXML 4.0
    SP3是最高版本。\[4\]并于2014年4月过期。\[5\]
  - **MSXML 2.6**随[Microsoft SQL
    Server](../Page/Microsoft_SQL_Server.md "wikilink") 2000与MDAC
    2.6发布，对应于msxml2.dll，最后版本为
    [KB887606](http://support.microsoft.com/kb/887606).
  - **MSXML 2.5**随[Windows
    2000中的](../Page/Windows_2000.md "wikilink")[Internet
    Explorer](../Page/Internet_Explorer.md "wikilink") 5.01
    与[MDAC](../Page/Microsoft_Data_Access_Components.md "wikilink")
    2.5发布。对应于msxml.dll
  - **MSXML 2.0a**随[Internet Explorer
    5.0发布](../Page/Internet_Explorer_5.0.md "wikilink")
  - **MSXML 1.0**随[Internet Explorer
    4.0发布](../Page/Internet_Explorer_4.md "wikilink")

## DOM

MSXML以COM接口（Interface）的形式提供了一套XML的分析器（parser），从而实现了DOM。

常用的接口：

### IXMLDOMDocument

IXMLDOMDocument是XML文档接口，是DOM树结构的根结点。

``` cpp
//声明并创建一个IXMLDOMDocument的智能指针：
MSXML2::IXMLDOMDocumentPtr pXmlDoc;
HRESULT hr = pXmlDoc.CreateInstance( __uuidof(MSXML2::DOMDocument60), NULL, CLSCTX_INPROC_SERVER);
if( FAILED(hr))
        printf("Failed to create DOM document interface pointer.\n");

//加载xml文件代码为：
try
{
        pXmlDoc->async = VARIANT_FALSE; // 使用阻塞式同步加载xml文件。默认是异步方式加载，还需要检查IXMLDOMDocument的ReadyState，这特别适用于从网络上加载。
        pXmlDoc->validateOnParse = VARIANT_FALSE;//加载xml文件时，是否依据xml文件中指明的DTD或schema检查xml文件的结构
        pXmlDoc->resolveExternals = VARIANT_FALSE;//分析xml时，外部定义或ocument type definition(DTD)等不被处理
        if( pXmlDoc->load("test.xml") != VARIANT_TRUE)
        {
            printf("Fail reason: %s\n", (LPCSTR)pXmlDoc->parseError->Getreason());
       }
       else
       {
            // success
       }
}
catch(_com_error errorObject)
{
        printf("Exception, HRESULT = 0x%08x", errorObject.Error());
}

//保存xml文件：
try
{
        if( FAILED( pXmlDoc->save(L"myData.xml")))
        {
              printf("Fail reason: %s\n", (LPCSTR)pXmlDoc->parseError->Getreason());
         }
         else
         {
             // success
          }
}
catch(_com_error errorObject)
{
          printf("Exception, HRESULT = 0x%08x", errorObject.Error());
}
```

### IXMLDOMNode

IXMLDOMNode是通用的节点接口，各种类型节点接口都从它派生，包括IXMLDOMDocument。节点类型包括：

| 节点类型                          | 示例                                                     |
| ----------------------------- | ------------------------------------------------------ |
| NODE_ELEMENT                 | \<**artist** type="band"\>The Offspring\<**/artist**\> |
| NODE_ATTRIBUTE               | **type="band"**\>The Offspring                         |
| NODE_TEXT                    | **The Offspring**                                      |
| NODE_CDATA_SECTION          | 示例                                                     |
| NODE_ENTITY_REFERENCE       | 示例                                                     |
| NODE_ENTITY                  | 示例                                                     |
| NODE_PROCESSING_INSTRUCTION | \<**?xml version="1.0"?**\>                            |
| NODE_COMMENT                 | 示例                                                     |
| NODE_DOCUMENT                | 示例                                                     |
| NODE_DOCUMENT_TYPE          | \<**\!DOCTYPE compactdiscs SYSTEM "cds.dtd"**\>        |
| NODE_DOCUMENT_FRAGMENT      | 示例                                                     |
| NODE_NOTATION                | 示例                                                     |

获取根节点的一种方法：

``` cpp
MSXML2::IXMLDOMNodePtr pRootNode, pTempNode;
pXmlDoc->get_firstChild(&pRootNode);
while( pRootNode)
{
         MSXML2::DOMNodeType type;
         pRootNode->get_nodeType(&type);
         if(type==NODE_ELEMENT)  // 如果是element节点，而不是注释、回车符等
              break;                            //找到了根节点
         pTempNode = pRootNode;
         pTempNode->get_nextSibling(&pRootNode);
}
```

### IXMLDOMNodeList

IXMLDOMNodeList是节点列表的接口，表示一组兄弟（sibling）节点的列表。可以通过index从0开始遍历列表。列表中的元素还是动态的，会随着XML文档的改变而更新。

### IXMLDOMNamedNodeMap

IXMLDOMNamedNodeMap是命名节点的无序集合的接口。该接口常用于表示节点的属性集，并且是动态的。

### IXMLDOMElement

IXMLDOMElement是元素的接口，一般用来表示一个节点及其属性。

``` cpp
//获取文档根节点的方法一：
MSXML2::IXMLDOMElementPtr pRootNode = pXmlDoc->documentElement;
//获取文档根节点的方法二：
MSXML2::IXMLDOMElementPtr pRootNode2;
pXmlDoc->get_documentElement(&pRootNode2);
```

### IXMLDOMAttribute

IXMLDOMAttribute是节点属性的接口。

### IXMLDOMText

IXMLDOMText是节点的文本的接口。

### IXMLDOMComment

IXMLDOMComment是XML文档的注释的接口。

### IXMLDOMParseError

IXMLDOMParseError是XML分析时语法出错的接口，包括了错误的详细信息。

### IXMLDOMImplementation

### IXMLDOMCharacterData

IXMLDOMCharacterData是字符数据的接口。也是一批基于字符的接口的基类。

### IXMLDOMCDATASection

IXMLDOMCDATASection是CDATA类型的文本的接口。

### IXMLDOMDocumentFragment

### IXMLDOMDocumentType

### IXMLDOMProcessingInstruction

### IXMLDOMNotation

### IXMLDOMEntity

### IXMLDOMEntityRefernce

### 各种智能指针

DOM的各种接口一般都有相应的智能指针接口，通常为接口名加上Ptr。例如IXMLDOMDocument的智能指针接口为IXMLDOMDocumentPtr。

## C++语言使用

需要在源程序中加入这行：

``` C++
#import <msxml6.dll> raw_interfaces_only
```

这使得在工程（Project）的编译文件夹下生成msxml6.tlh和msxml6.tli两个文件，分别相当于COM接口的头文件与实现文件。“raw_interfaces_only”属性使得生成的msxml6.tlh中，各个结构中只包含返回类型为HRESULT的接口函数，并且接口函数名省去了raw_前缀；如果不用该属性，则默认是在各个结构中声明了一套带raw_前缀的返回HRESULT类型的接口函数以及不带raw_前缀的返回各种VARIANT_类型的wrapper接口函数。

也可以通过连接输入库文件msxml6.lib来使用。

作为COM库，在线程的开头与结束之处需要分别调用COM环境的初始化与去初始化函数：CoInitialize、CoUninitialize。

MSXML的各种资源都放在了MSXML2名字空间（namespace）中。

## Visual Basic使用

首先在Visual Basic的Project上打开Add Reference对话框，在COM标签页（tab）中，增加“Microsoft,
v6.0”的引用。也可以选择4.0或5.0版本的引用。\[6\]

然后，在源代码中输入：

``` basic
Dim xDoc As MSXML.DOMDocument
Set xDoc = New MSXML.DOMDocument

'If xDoc.Load("http://www.develop.com/hp/brianr/cds.xml") Then
If xDoc.Load("C:\My Documents\cds.xml") Then
   ' The document loaded successfully.
   ' Now do something intersting.
Else
    ' The document failed to load.
   Dim strErrText As String
   Dim xPE As MSXML.IXMLDOMParseError
   ' Obtain the ParseError object
   Set xPE = xDoc.parseError
   With xPE
      strErrText = "Your XML Document failed to load" & _
        "due the following error." & vbCrLf & _
        "Error #: " & .errorCode & ": " & .reason & _
        "Line #: " & .Line & vbCrLf & _
        "Line Position: " & .linepos & vbCrLf & _
        "Position In File: " & .filepos & vbCrLf & _
        "Source Text: " & .srcText & vbCrLf & _
        "Document URL: " & .url
    End With

    MsgBox strErrText, vbExclamation

End If


Set xDoc = Nothing
```

## VBScript使用

`Set objParser = CreateObject( "Microsoft.XMLDOM" )`

## 参考文献

  - [MSDN:Microsoft XML Team Blog](http://blogs.msdn.com/b/xmlteam/)

<references/>

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:XML](https://zh.wikipedia.org/wiki/Category:XML "wikilink")
[Category:Internet_Explorer](https://zh.wikipedia.org/wiki/Category:Internet_Explorer "wikilink")

1.  [MSXML Version List](http://support.microsoft.com/kb/269238) at
    Microsoft.
2.  \[<http://msdn.microsoft.com/en-us/library/jj152146(v=vs.85>).aspx
    MSDN：MSXML版本6可以替代版本4\]
3.  [Office 2010: What's removed: Office 2010 Resource Kit documentation
    on
    TechNet](https://technet.microsoft.com/en-us/library/cc178954%28office.14%29.aspx#BKMK_WhatsRemoved)
4.
5.
6.  [MSDN:A Beginner's Guide to the XML
    DOM](https://msdn.microsoft.com/library/aa468547)