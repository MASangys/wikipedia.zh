**SNOMED CT**（，**医学系统命名法－临床术语**，**医学术语系统命名法－临床术语**），是一部经过系统组织编排的，便于[计算机处理的](https://zh.wikipedia.org/wiki/计算机 "wikilink")[医学](../Page/医学.md "wikilink")[术语集](https://zh.wikipedia.org/wiki/术语集 "wikilink")，涵盖大多数方面的[临床信息](https://zh.wikipedia.org/wiki/临床信息 "wikilink")，如[疾病](../Page/疾病.md "wikilink")、所见、操作、[微生物](../Page/微生物.md "wikilink")、[药物](../Page/药物.md "wikilink")等。采用该术语集，可以协调一致地在不同的[学科](https://zh.wikipedia.org/wiki/学科 "wikilink")、[专业和照护地点之间实现对于临床数据的标引](https://zh.wikipedia.org/wiki/专业 "wikilink")、存储、检索和聚合。同时，它还有助于组织[病历内容](https://zh.wikipedia.org/wiki/病历 "wikilink")，减少临床照护和科学研究工作中数据采集、编码及使用方式的变异。

## 目的

在指称同一事物的时候，不同的临床医生和医疗卫生机构往往会采用不同的临床术语。例如，对于[心脏病学专科医师来说](https://zh.wikipedia.org/wiki/心脏病学 "wikilink")，*[心脏病发作](../Page/心肌梗死.md "wikilink")*、*[心肌梗死](../Page/心肌梗死.md "wikilink")*以及*MI*可能指的是同一[含义](https://zh.wikipedia.org/wiki/含义 "wikilink")，而对于電腦来说，三者之间则全然不同。因此，不同的[医疗保健服务提供者](https://zh.wikipedia.org/wiki/医疗保健服务提供者 "wikilink")、医疗服务设施、研究人员以及其他相关方之间需要协调一致地交换临床信息（[语义互操作性](https://zh.wikipedia.org/wiki/语义互操作性 "wikilink")）；而且，不同的地方对于医学信息的记录方式也各不相同（如采用纸质记录或者采用电子记录），因而需要一种广泛全面而又协调统一的[医学术语系统](https://zh.wikipedia.org/wiki/医学术语系统 "wikilink")（），作为[信息基础结构](https://zh.wikipedia.org/wiki/信息基础结构 "wikilink")（）的组成部分。

## 设计

SNOMED CT是一个[组配式](https://zh.wikipedia.org/wiki/组配 "wikilink")[概念体系](https://zh.wikipedia.org/wiki/概念体系 "wikilink")（，组合式概念体系）。这就是说，可以通过与其他[概念](../Page/概念.md "wikilink")的组合，对概念加以[特化](https://zh.wikipedia.org/wiki/特化 "wikilink")。SNOMED CT是以[描述逻辑为基础](https://zh.wikipedia.org/wiki/描述逻辑 "wikilink")，在设计上便于将内容作为一种动态资源加以维护。

### 组成要素

  - 概念：每个唯一性数字型[代码](../Page/代码.md "wikilink")、唯一性名称（全称，即）和描述（包括一条[首选术语和一条或多条](https://zh.wikipedia.org/wiki/首选术语 "wikilink")[同义词](../Page/同义词.md "wikilink")）所指定的基本[含义单位](https://zh.wikipedia.org/wiki/含义 "wikilink")。
  - 描述：赋予同一概念的不同术语或名称（同义词）。
  - 层级结构：19 个高级层级结构；每个高层层级结构又分别具有各自的子级层级结构。
  - 关系：用于在同一层级结构之内或不同层级结构之间将不同的概念联系起来。
  - 子集\[1\]

### 基本设计原理

`  284196006|Burn of skin|:`
`     {246112005|Severity|=24484000|severe,`
`     363698007|Finding Site|=`
`     113185004|Structure of skin between fourth and fifth toes|:272741003|Laterality|=7771000|left|}`

与SNOMED CT特定[发布版本之中所已经收录的那套](https://zh.wikipedia.org/wiki/发布版本 "wikilink")[实体相比](https://zh.wikipedia.org/wiki/实体 "wikilink")，此类[表达式属于是所谓的](https://zh.wikipedia.org/wiki/表达式 "wikilink")'后组配型'（，后组型），而前者通常从总体上称为'先组配型'（，先组型）概念。不过，这些先组配型概念之中的大多数（85%）当前实际上还属于是原初型实体（）。

<small>**<span style="color: Red;">注意</span>**：在其他的上下文（语境）或项目之中，''一词可能并不是指对某个候选新建表达式的详细说明，而可能是指在多重层级结构之中集成某一概念的后续操作（也就是对此概念加以分类）。然而，在SNOMED CT术语集之中，当说到已经对某一表达式进行了'后组配'的时候，**并不意味着**同时也对其进行了分类。</small>

在同时顾及到SNOMED CT发布版本数据集之中已经收录的那些概念以及最终用户群体所已经创建或有待创建的任何其他*特别*概念的情况下，对于任何此类后组配型表达式的可靠分析和比较，的确都相当需要运用某种合适的[描述逻辑分类算法](https://zh.wikipedia.org/wiki/描述逻辑 "wikilink")。截至2007年，SNOMED CT的内容将其本身局限于[EL++](https://zh.wikipedia.org/wiki/EL++ "wikilink")[形式体系的一种子集](../Page/形式系統.md "wikilink")；SNOMED CT将自身局限于下列[运算符](https://zh.wikipedia.org/wiki/运算符 "wikilink")：

`top, bottom`
`primitive roles and concepts with asserted parent(s) for each`
`concept definition and conjunction but NOT disjunction or negation`
`role hierarchy but not role composition`
`domain and range constraints`
`existential but not universal restriction`
`a restricted form of role inclusion axiom (xRy ^ ySz => xRz)`

在不久的将来，可能会对其逻辑加以扩展，从而将**一般概念蕴含公理**（）包括进来。

理论上而言，为了评估其究竟是早已在世界范围内分发的那370,000个先组配型概念之中的任何一个已有概念的[父概念](https://zh.wikipedia.org/wiki/父概念 "wikilink")、[先祖概念](https://zh.wikipedia.org/wiki/先祖概念 "wikilink")、[子概念或者其他](https://zh.wikipedia.org/wiki/子概念 "wikilink")[后裔概念](https://zh.wikipedia.org/wiki/后裔概念 "wikilink")，还是在[语义上与之等价](https://zh.wikipedia.org/wiki/语义 "wikilink")，可以将描述逻辑[推理](../Page/推理.md "wikilink")应用于任何新的候选后组配型表达式。不过，部分随着与CTV3之间合并产物的不断**<span style="color: Red;">沉降</span>**，2007年SNOMED的内容之中依然含有未被发现的语义重复性[原初型概念和](https://zh.wikipedia.org/wiki/原初型概念 "wikilink")[定义型概念](https://zh.wikipedia.org/wiki/定义型概念 "wikilink") 。此外，许多概念依然归属原初型，但同时它们的语义却又可以利用同时存在于该系统之中的其他原初型概念和*作用关系*（）加以合理合法的定义。正是因为语义内容之中的这些疏漏之处以及实际或可能存在的[冗余](https://zh.wikipedia.org/wiki/冗余 "wikilink")，各种用来[推导](https://zh.wikipedia.org/wiki/推导 "wikilink")[归类关系或](https://zh.wikipedia.org/wiki/归类关系 "wikilink")[语义等价关系的](https://zh.wikipedia.org/wiki/语义等价关系 "wikilink")[算法](../Page/算法.md "wikilink")在实际当中的性能必将不够完善，但程度却无法预知。

### 特性

采用同一部诸如SNOMED CT之类的[标准术语集来记录信息的好处](https://zh.wikipedia.org/wiki/标准术语集 "wikilink")，与采用[电子照护记录以及采用](https://zh.wikipedia.org/wiki/电子照护记录 "wikilink")[结构化形式记录](https://zh.wikipedia.org/wiki/结构化 "wikilink")[临床信息的那些好处息息相关](https://zh.wikipedia.org/wiki/临床信息 "wikilink")。

  - 在所有的照护领域之间提供一部协调一致的[术语集](https://zh.wikipedia.org/wiki/术语集 "wikilink")
  - 可用于精确记录临床信息
  - 具有内在的固有结构
  - 是一项处于不断发展（或者说制定）之中的[国际标准](https://zh.wikipedia.org/wiki/国际标准 "wikilink")

## 用途

SNOMED CT是[美国](../Page/美国.md "wikilink")联邦政府指定的一套[数据标准之一](https://zh.wikipedia.org/wiki/数据标准 "wikilink")，旨在用于临床信息的电子交换。

### 采用SNOMED CT的计算机应用程序示例

  - [电子病历](../Page/电子病历.md "wikilink")
  - [计算机化医嘱录入](https://zh.wikipedia.org/wiki/计算机化医嘱录入 "wikilink")，如[电子处方或实验室检验项目申请录入](https://zh.wikipedia.org/wiki/电子处方 "wikilink")
  - [重症监护病房远程监控](https://zh.wikipedia.org/wiki/重症监护病房 "wikilink")
  - [实验室检验结果报告](https://zh.wikipedia.org/wiki/实验室检验结果报告 "wikilink")
  - [急诊室](../Page/急诊室.md "wikilink")表格记录
  - [癌症](../Page/癌症.md "wikilink")报告
  - [基因数据库](https://zh.wikipedia.org/wiki/基因数据库 "wikilink")\[2\]

## 历史

2002年1月，SNOMED RT（**SNOMED** **R**eference **T**erminology，医学术语系统命名法－参考术语集）与[英国国家卫生服务部](https://zh.wikipedia.org/wiki/英国国家卫生服务部 "wikilink")（，）的**临床术语**（**，又称为**）相互合并，并经过扩充和结构重组，从而形成了SNOMED CT\[3\]。SNOMED RT在历史上的优点就是它的那些专业医学术语集以及所采用的分布式协作开发方法，而**第3版临床术语**（，）的优势则是它在全科医学方面的那些术语集\[4\]。通过把这两个体系组合起来，SNOMED CT目前成为现有任何语言之中最为广泛全面的临床[词表](https://zh.wikipedia.org/wiki/词表 "wikilink")，收录有超过344,000个概念，涵盖了[临床医学的大多数方面](https://zh.wikipedia.org/wiki/临床医学 "wikilink")\[5\]。SNOMED CT还与其他的术语集之间进行着[交叉映射](https://zh.wikipedia.org/wiki/交叉映射 "wikilink")，如[ICD-9-CM](https://zh.wikipedia.org/wiki/ICD-9-CM "wikilink")、[ICD-O3](https://zh.wikipedia.org/wiki/ICD-O3 "wikilink")、[ICD-10](../Page/ICD-10.md "wikilink")、实验室方面的[LOINC以及](https://zh.wikipedia.org/wiki/LOINC "wikilink")[OPCS-4](https://web.archive.org/web/20070205120451/http://www.connectingforhealth.nhs.uk/interventionclassification)。SNOMED CT还支持[ANSI](http://www.ansi.org/)，[DICOM](http://medical.nema.org/)，[HL7](https://web.archive.org/web/20100408170144/http://www.hl7.org/)，and [ISO](http://www.iso.org/iso/en/ISOOnline.frontpage)标准\[6\]。2002年4月，发布了[SNOMED CT 西班牙语版](https://web.archive.org/web/20070927005533/http://snomed.org/products/content/documents/April2006FactSheetEspanolEmail.pdf)；2003年4月，发布了[SNOMED CT 德语版](https://web.archive.org/web/20040804005001/http://snomed.org/about/global.html)。

[美国国立医学图书馆](https://zh.wikipedia.org/wiki/美国国立医学图书馆 "wikilink")（，）代表[美国健康与人类服务部](../Page/美国卫生及公共服务部.md "wikilink")（， ），就核心SNOMED CT（包括西班牙语版和英文版）及其不断更新的永久[许可证](https://zh.wikipedia.org/wiki/许可证 "wikilink")，与[美国病理学家协会](https://zh.wikipedia.org/wiki/美国病理学家协会 "wikilink")（，）之间签署了一份协议。这份合同旨在为NLM提供一份永久性的[许可证](http://www.nlm.nih.gov/research/umls/Snomed/snomed_license.html)，以便在NLM的[一体化医学语言系统](../Page/一体化医学语言系统.md "wikilink")\[7\][UMLS Metathesaurus之中分发SNOMED](https://zh.wikipedia.org/wiki/UMLS_Metathesaurus "wikilink")，在美国国内供美国政府（联邦、州、地方和属地）和私营组织机构免费使用。这份合同同时还涵盖了美国病理学家协会在2003年6月30日至2008年6月29日之间所发行的对于SNOMED CT的更新。

2007年4月，[国际卫生术语标准制定组织](https://zh.wikipedia.org/wiki/IHTSDO "wikilink")（,）收购了SNOMED CT。

## 参考文献

## 参见

  - [国际卫生术语标准制定组织](https://zh.wikipedia.org/wiki/国际卫生术语标准制定组织 "wikilink")（，）
  - [HL7](https://zh.wikipedia.org/wiki/HL7 "wikilink")
  - [CPT](https://zh.wikipedia.org/wiki/CPT "wikilink")
  - [ICD-O](https://zh.wikipedia.org/wiki/ICD-O "wikilink")
  - [UMLS](https://zh.wikipedia.org/wiki/UMLS "wikilink")
  - [LOINC](https://zh.wikipedia.org/wiki/LOINC "wikilink")
  - [MEDCIN](https://zh.wikipedia.org/wiki/MEDCIN "wikilink")
  - [临床数据交换标准协会](https://zh.wikipedia.org/wiki/临床数据交换标准协会 "wikilink")（，）
  - [DOCLE](https://zh.wikipedia.org/wiki/DOCLE "wikilink")

## 外部链接

  - [IHTSDO 网站 - SNOMED 所有者主页](http://www.ihtsdo.org/)
  - [www.snomed.org（正在搬迁）](http://www.snomed.org)
  - [CAP SNOMED Terminology Solutions - SNOMED CT的原创者](http://www.capsts.org)
  - [CliniClue SNOMED CT Browser - 免费软件下载](http://www.cliniclue.com)
  - [UMLS-SNOMED 常见问题解答](http://www.nlm.nih.gov/research/umls/Snomed/snomed_faq.html)
  - [NHS Connecting for Health UK](https://web.archive.org/web/20061221170707/http://www.connectingforhealth.nhs.uk/terminology/snomed)
  - [SNOB - Desktop SNOMED Browser - 免费软件下载](https://web.archive.org/web/20150813205425/http://snob.eggbird.eu/)
  - [SNOMED CT Browser with SNOFLAKE view at dataline.co.uk](https://web.archive.org/web/20090107040051/http://snomed.dataline.co.uk/)
  - [VMIL 术语浏览器](https://web.archive.org/web/20060111165001/http://terminology.vetmed.vt.edu/SCT/menu.cfm)
  - [SNOCat: SNOMED Categorizer/Browser](https://web.archive.org/web/20111004041841/http://eagl.unige.ch/SNOCat/)

[Category:医学分类](https://zh.wikipedia.org/wiki/Category:医学分类 "wikilink") [Category:受控医学词表](https://zh.wikipedia.org/wiki/Category:受控医学词表 "wikilink") [Category:受控词表](https://zh.wikipedia.org/wiki/Category:受控词表 "wikilink")

1.

2.
3.  <http://www.nlm.nih.gov/research/umls/Snomed/snomed_faq.html>

4.  <http://www.healthdatamanagement.com/html/PortalStory.cfm?type=newprod&DID=7841>

5.
6.

7.  <http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html>