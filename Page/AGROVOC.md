**AGROVOC**是一部多语种结构的[叙词表](../Page/叙词表.md "wikilink")，它涵盖了[农业](../Page/农业.md "wikilink")、[林业](../Page/林业.md "wikilink")、[渔业](../Page/渔业.md "wikilink")、[食物安全及其他相关学科领域](../Page/食物安全.md "wikilink")（例如：可持续发展、营养学等等）。它由词或词组（术语）组成，含有不同语言，具备各类词间关系（例如：“广义”、“狭义”、“相关”等），它主要用于标引或检索信息资源。它的主要作用是将信息标引标准化，从而使得信息检索更加简单并且准确，为用户提供最准确的信息资源。

AGROVOC是由[联合国粮食及农业组织](../Page/联合国粮食及农业组织.md "wikilink")（FAO）和[欧共体在](../Page/欧共体.md "wikilink")20世纪80年代初开发的，FAO大约每3个月进行一次维护更新，用户可以在AGROVOC网址上看到更新变化。

AGROVOC包含FAO使用的5种官方语言，它们是[英语](../Page/英语.md "wikilink")、[法语](../Page/法语.md "wikilink")、[西班牙语](../Page/西班牙语.md "wikilink")、[汉语和](../Page/汉语.md "wikilink")[阿拉伯语](../Page/阿拉伯语.md "wikilink")。目前还增加了[捷克语](../Page/捷克语.md "wikilink")、[德语](../Page/德语.md "wikilink")、[日语](../Page/日语.md "wikilink")、[葡萄牙语](../Page/葡萄牙语.md "wikilink")、[斯洛伐克语和](../Page/斯洛伐克语.md "wikilink")[泰语](../Page/泰语.md "wikilink")。其他语种，例如[印地语](../Page/印地语.md "wikilink")、[匈牙利语](../Page/匈牙利语.md "wikilink")、[意大利语](../Page/意大利语.md "wikilink")、[朝鲜语和](../Page/朝鲜语.md "wikilink")[波斯语当前正在处于翻译或修订中](../Page/波斯语.md "wikilink")。

## AGROVOC的结构

AGROVOC由许多术语组成，这些术语由一个或多个词组成，每个术语始终表达一个概念。每个术语都含有与其他术语的上下位关系或非上下位关系，这些关系有：BT（广义词）、NT（狭义词）、RT（相关词），UF（非叙词）。

`污染`
`  NT：酸性沉积`
`  NT：空气污染`
`  NT：非点源污染`
`  NT：沉淀污染`
`  NT：水污染`
`  RT：环境退化`
`  RT：污染物`
`  RT：杀虫药`

` 空气污染`
`  BT：污染`
`  RT：大气`
`  RT：温室效应`

“空气污染”的相关词是“大气”和“温室效应”，定义了这个术语的概念范围。AGROVOC还对一些术语进行了范畴注释，对其概念含义进行了定义。对分类学的术语和地理学的术语进行了标注，使得这些词的查找和下载非常容易。

### 格式

如果是用于非商业性的目的，则可以免费下载AGROVOC。它的数据格式有[MySQL](../Page/MySQL.md "wikilink")、[Microsoft
Access](../Page/Microsoft_Access.md "wikilink")、TagText、[ISO2709](../Page/ISO2709.md "wikilink")、[XML](../Page/XML.md "wikilink")、SKOS、[OWL](../Page/OWL.md "wikilink")。

## AGROVOC 在线服务

为了鼓励农业信息管理系统开发人员将AGROVOC应用到他们的系统中，目前FAO提供了AGROVOC的在线服务，代替了使用当地数据库的拷贝。通过在线服务，叙词表的更新几乎可以随时进行，缩短了必需经常进行下载的时间，而且始终可以使用最新的版本。

现在，有7种方式的在线网络服务可以使用词汇表

  - 检索一个概念的数字术语编码
  - 通过用户熟悉的语言，匹配指定的术语，检索一个概念的标签
  - 通过全部语言，匹配指定的术语，检索一个概念的全部标签
  - 检索包含搜索词的全部术语
  - 检索搜索词的术语编码、标签、同义词、广义词、狭义词和相关词
  - 检索一个术语的定义、历史记录、或者范畴注释
  - 用搜索词全部同义词进行扩展检索

AGROVOC在线服务基于现有的开源标准技术，例如SOAP和WSDL

## 从叙词表到本体

AGROVOC是农业本体服务（AOS）项目发展的基础。使用诸如AGROVOC这类含有领域知识的词汇系统和叙词表，AOS将能通过具体的术语和概念，对特定的领域，实现web环境下的信息管理。一个关键的目的是对叙词表增加更多的语义关系，例如，增加和扩展概念间的详细关系。

例如，目前的术语“污染”与术语“污染物”有关，使用相关词（RT）关系。实际上，当描述概念间的联系时，我们也许能更加明确地标明“污染物”引起“污染”的关系，这样，使概念间关系更加具有意义，而不是简直地描绘他们是相关词（RT）。

`污染`
`   起因于：污染物`

用户查询术语“污染”的信息时，将通过概念间关系控制相应的检索过程，例如，“你愿意查看引起污染的全部原因吗？”在这种关系限制下，检索到的相关资源将显著增加。一个标准系列的扩展关系数据，可以更加精确地、更加一致地标引信息，并为用户提供更加有效的搜索和浏览能力。AOS的目的是朝着这个目标前进的一步。

## 参见

  - [参加AGROVOC讨论小组](http://www.dgroups.org/groups/fao/agrovoc/index.cfm?op=dsp_join)

## 相关链接

  - [农业信息管理标准](http://en.wikipedia.org/wiki/Agricultural_Information_Management_Standards)
  - [农业本体服务](http://en.wikipedia.org/wiki/Agricultural_Ontology_Service)
  - [农业元数据集](http://en.wikipedia.org/wiki/AgMES)
  - [农业信息和知识管理论文](http://www.fao.org/documents/advanced_s_result.asp?FORM_C=AND&SERIES=339)
  - [RSS新闻和事件](http://www.fao.org/nems/rss/rss_nems_results.asp?owner=615&status=10&dateto=31/12/2009〈=zh&sites=1)

## 外部链接

  - [AGROVOC在线服务](https://web.archive.org/web/20070614095401/http://www.fao.org/aims/ag_webservices.jsp)
  - [农业信息管理标准站点](http://www.fao.org/aims/)

[Category:农业](https://zh.wikipedia.org/wiki/Category:农业 "wikilink")
[Category:索引典](https://zh.wikipedia.org/wiki/Category:索引典 "wikilink")