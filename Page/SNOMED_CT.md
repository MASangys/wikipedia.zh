**SNOMED
CT**（，**医学系统命名法－临床术语**，**医学术语系统命名法－临床术语**），是一部经过系统组织编排的，便于[计算机处理的](../Page/计算机.md "wikilink")[医学](../Page/医学.md "wikilink")[术语集](../Page/术语集.md "wikilink")，涵盖大多数方面的[临床信息](../Page/临床信息.md "wikilink")，如[疾病](../Page/疾病.md "wikilink")、所见、操作、[微生物](../Page/微生物.md "wikilink")、[药物等](../Page/药物.md "wikilink")。采用该术语集，可以协调一致地在不同的[学科](../Page/学科.md "wikilink")、[专业和照护地点之间实现对于临床数据的标引](../Page/专业.md "wikilink")、存储、检索和聚合。同时，它还有助于组织[病历内容](../Page/病历.md "wikilink")，减少临床照护和科学研究工作中数据采集、编码及使用方式的变异。

## 目的

在指称同一事物的时候，不同的临床医生和医疗卫生机构往往会采用不同的临床术语。例如，对于[心脏病学专科医师来说](../Page/心脏病学.md "wikilink")，*[心脏病发作](../Page/心肌梗死.md "wikilink")*、*[心肌梗死](../Page/心肌梗死.md "wikilink")*以及*MI*可能指的是同一[含义](../Page/含义.md "wikilink")，而对于電腦来说，三者之间则全然不同。因此，不同的[医疗保健服务提供者](../Page/医疗保健服务提供者.md "wikilink")、医疗服务设施、研究人员以及其他相关方之间需要协调一致地交换临床信息（[语义互操作性](../Page/语义互操作性.md "wikilink")）；而且，不同的地方对于医学信息的记录方式也各不相同（如采用纸质记录或者采用电子记录），因而需要一种广泛全面而又协调统一的[医学术语系统](../Page/医学术语系统.md "wikilink")（），作为[信息基础结构](../Page/信息基础结构.md "wikilink")（）的组成部分。

## 设计

SNOMED
CT是一个[组配式](../Page/组配.md "wikilink")[概念体系](../Page/概念体系.md "wikilink")（，组合式概念体系）。这就是说，可以通过与其他[概念的组合](../Page/概念.md "wikilink")，对概念加以[特化](../Page/特化.md "wikilink")。SNOMED
CT是以[描述逻辑为基础](../Page/描述逻辑.md "wikilink")，在设计上便于将内容作为一种动态资源加以维护。

### 组成要素

  - 概念：每个唯一性数字型[代码](../Page/代码.md "wikilink")、唯一性名称（全称，即）和描述（包括一条[首选术语和一条或多条](../Page/首选术语.md "wikilink")[同义词](../Page/同义词.md "wikilink")）所指定的基本[含义单位](../Page/含义.md "wikilink")。
  - 描述：赋予同一概念的不同术语或名称（同义词）。
  - 层级结构：19 个高级层级结构；每个高层层级结构又分别具有各自的子级层级结构。
  - 关系：用于在同一层级结构之内或不同层级结构之间将不同的概念联系起来。
  - 子集\[1\]

### 基本设计原理

`  284196006|Burn of skin|:`
`     {246112005|Severity|=24484000|severe,`
`     363698007|Finding Site|=`
`     113185004|Structure of skin between fourth and fifth toes|:272741003|Laterality|=7771000|left|}`

与SNOMED
CT特定[发布版本之中所已经收录的那套](../Page/发布版本.md "wikilink")[实体相比](../Page/实体.md "wikilink")，此类[表达式属于是所谓的](../Page/表达式.md "wikilink")'后组配型'（，后组型），而前者通常从总体上称为'先组配型'（，先组型）概念。不过，这些先组配型概念之中的大多数（85%）当前实际上还属于是原初型实体（）。

<small>**<span style="color: Red;">注意</span>**：在其他的上下文（语境）或项目之中，''一词可能并不是指对某个候选新建表达式的详细说明，而可能是指在多重层级结构之中集成某一概念的后续操作（也就是对此概念加以分类）。然而，在SNOMED
CT术语集之中，当说到已经对某一表达式进行了'后组配'的时候，**并不意味着**同时也对其进行了分类。</small>

在同时顾及到SNOMED
CT发布版本数据集之中已经收录的那些概念以及最终用户群体所已经创建或有待创建的任何其他*特别*概念的情况下，对于任何此类后组配型表达式的可靠分析和比较，的确都相当需要运用某种合适的[描述逻辑分类算法](../Page/描述逻辑.md "wikilink")。截至2007年，SNOMED
CT的内容将其本身局限于[EL++](../Page/EL++.md "wikilink")[形式体系的一种子集](../Page/形式系統.md "wikilink")；SNOMED
CT将自身局限于下列[运算符](../Page/运算符.md "wikilink")：

`top, bottom`
`primitive roles and concepts with asserted parent(s) for each`
`concept definition and conjunction but NOT disjunction or negation`
`role hierarchy but not role composition`
`domain and range constraints`
`existential but not universal restriction`
`a restricted form of role inclusion axiom (xRy ^ ySz => xRz)`

在不久的将来，可能会对其逻辑加以扩展，从而将**一般概念蕴含公理**（）包括进来。

理论上而言，为了评估其究竟是早已在世界范围内分发的那370,000个先组配型概念之中的任何一个已有概念的[父概念](../Page/父概念.md "wikilink")、[先祖概念](../Page/先祖概念.md "wikilink")、[子概念或者其他](../Page/子概念.md "wikilink")[后裔概念](../Page/后裔概念.md "wikilink")，还是在[语义上与之等价](../Page/语义.md "wikilink")，可以将描述逻辑[推理应用于任何新的候选后组配型表达式](../Page/推理.md "wikilink")。不过，部分随着与CTV3之间合并产物的不断**<span style="color: Red;">沉降</span>**，2007年SNOMED的内容之中依然含有未被发现的语义重复性[原初型概念和](../Page/原初型概念.md "wikilink")[定义型概念](../Page/定义型概念.md "wikilink")
。此外，许多概念依然归属原初型，但同时它们的语义却又可以利用同时存在于该系统之中的其他原初型概念和*作用关系*（）加以合理合法的定义。正是因为语义内容之中的这些疏漏之处以及实际或可能存在的[冗余](../Page/冗余.md "wikilink")，各种用来[推导](../Page/推导.md "wikilink")[归类关系或](../Page/归类关系.md "wikilink")[语义等价关系的](../Page/语义等价关系.md "wikilink")[算法在实际当中的性能必将不够完善](../Page/算法.md "wikilink")，但程度却无法预知。

### 特性

采用同一部诸如SNOMED
CT之类的[标准术语集来记录信息的好处](../Page/标准术语集.md "wikilink")，与采用[电子照护记录以及采用](../Page/电子照护记录.md "wikilink")[结构化形式记录](../Page/结构化.md "wikilink")[临床信息的那些好处息息相关](../Page/临床信息.md "wikilink")。

  - 在所有的照护领域之间提供一部协调一致的[术语集](../Page/术语集.md "wikilink")
  - 可用于精确记录临床信息
  - 具有内在的固有结构
  - 是一项处于不断发展（或者说制定）之中的[国际标准](../Page/国际标准.md "wikilink")

## 用途

SNOMED
CT是[美国联邦政府指定的一套](../Page/美国.md "wikilink")[数据标准之一](../Page/数据标准.md "wikilink")，旨在用于临床信息的电子交换。

### 采用SNOMED CT的计算机应用程序示例

  - [电子病历](../Page/电子病历.md "wikilink")
  - [计算机化医嘱录入](../Page/计算机化医嘱录入.md "wikilink")，如[电子处方或实验室检验项目申请录入](../Page/电子处方.md "wikilink")
  - [重症监护病房远程监控](../Page/重症监护病房.md "wikilink")
  - [实验室检验结果报告](../Page/实验室检验结果报告.md "wikilink")
  - [急诊室表格记录](../Page/急诊室.md "wikilink")
  - [癌症报告](../Page/癌症.md "wikilink")
  - [基因数据库](../Page/基因数据库.md "wikilink")\[2\]

## 历史

2002年1月，SNOMED RT（**SNOMED** **R**eference
**T**erminology，医学术语系统命名法－参考术语集）与[英国国家卫生服务部](../Page/英国国家卫生服务部.md "wikilink")（，）的**临床术语**（**，又称为**）相互合并，并经过扩充和结构重组，从而形成了SNOMED
CT\[3\]。SNOMED
RT在历史上的优点就是它的那些专业医学术语集以及所采用的分布式协作开发方法，而**第3版临床术语**（，）的优势则是它在全科医学方面的那些术语集\[4\]。通过把这两个体系组合起来，SNOMED
CT目前成为现有任何语言之中最为广泛全面的临床[词表](../Page/词表.md "wikilink")，收录有超过344,000个概念，涵盖了[临床医学的大多数方面](../Page/临床医学.md "wikilink")\[5\]。SNOMED
CT还与其他的术语集之间进行着[交叉映射](../Page/交叉映射.md "wikilink")，如[ICD-9-CM](../Page/ICD-9-CM.md "wikilink")、[ICD-O3](../Page/ICD-O3.md "wikilink")、[ICD-10](../Page/ICD-10.md "wikilink")、实验室方面的[LOINC以及](../Page/LOINC.md "wikilink")[OPCS-4](https://web.archive.org/web/20070205120451/http://www.connectingforhealth.nhs.uk/interventionclassification)。SNOMED
CT还支持[ANSI](http://www.ansi.org/)，[DICOM](http://medical.nema.org/)，[HL7](https://web.archive.org/web/20100408170144/http://www.hl7.org/)，and
[ISO](http://www.iso.org/iso/en/ISOOnline.frontpage)标准\[6\]。2002年4月，发布了[SNOMED
CT
西班牙语版](https://web.archive.org/web/20070927005533/http://snomed.org/products/content/documents/April2006FactSheetEspanolEmail.pdf)；2003年4月，发布了[SNOMED
CT
德语版](https://web.archive.org/web/20040804005001/http://snomed.org/about/global.html)。

[美国国立医学图书馆](../Page/美国国立医学图书馆.md "wikilink")（，）代表[美国健康与人类服务部](../Page/美国卫生及公共服务部.md "wikilink")（，
），就核心SNOMED
CT（包括西班牙语版和英文版）及其不断更新的永久[许可证](../Page/许可证.md "wikilink")，与[美国病理学家协会](../Page/美国病理学家协会.md "wikilink")（，）之间签署了一份协议。这份合同旨在为NLM提供一份永久性的[许可证](http://www.nlm.nih.gov/research/umls/Snomed/snomed_license.html)，以便在NLM的[一体化医学语言系统](../Page/一体化医学语言系统.md "wikilink")\[7\][UMLS
Metathesaurus之中分发SNOMED](../Page/UMLS_Metathesaurus.md "wikilink")，在美国国内供美国政府（联邦、州、地方和属地）和私营组织机构免费使用。这份合同同时还涵盖了美国病理学家协会在2003年6月30日至2008年6月29日之间所发行的对于SNOMED
CT的更新。

2007年4月，[国际卫生术语标准制定组织](../Page/IHTSDO.md "wikilink")（,）收购了SNOMED CT。

## 参考文献

## 参见

  - [国际卫生术语标准制定组织](../Page/国际卫生术语标准制定组织.md "wikilink")（，）
  - [HL7](../Page/HL7.md "wikilink")
  - [CPT](../Page/CPT.md "wikilink")
  - [ICD-O](../Page/ICD-O.md "wikilink")
  - [UMLS](../Page/UMLS.md "wikilink")
  - [LOINC](../Page/LOINC.md "wikilink")
  - [MEDCIN](../Page/MEDCIN.md "wikilink")
  - [临床数据交换标准协会](../Page/临床数据交换标准协会.md "wikilink")（，）
  - [DOCLE](../Page/DOCLE.md "wikilink")

## 外部链接

  - [IHTSDO 网站 - SNOMED 所有者主页](http://www.ihtsdo.org/)
  - [www.snomed.org（正在搬迁）](http://www.snomed.org)
  - [CAP SNOMED Terminology Solutions - SNOMED
    CT的原创者](http://www.capsts.org)
  - [CliniClue SNOMED CT Browser - 免费软件下载](http://www.cliniclue.com)
  - [UMLS-SNOMED
    常见问题解答](http://www.nlm.nih.gov/research/umls/Snomed/snomed_faq.html)
  - [NHS Connecting for Health
    UK](https://web.archive.org/web/20061221170707/http://www.connectingforhealth.nhs.uk/terminology/snomed)
  - [SNOB - Desktop SNOMED Browser -
    免费软件下载](https://web.archive.org/web/20150813205425/http://snob.eggbird.eu/)
  - [SNOMED CT Browser with SNOFLAKE view at
    dataline.co.uk](http://snomed.dataline.co.uk/)
  - [VMIL
    术语浏览器](https://web.archive.org/web/20060111165001/http://terminology.vetmed.vt.edu/SCT/menu.cfm)
  - [SNOCat: SNOMED
    Categorizer/Browser](https://web.archive.org/web/20111004041841/http://eagl.unige.ch/SNOCat/)

[Category:医学分类](https://zh.wikipedia.org/wiki/Category:医学分类 "wikilink")
[Category:受控医学词表](https://zh.wikipedia.org/wiki/Category:受控医学词表 "wikilink")
[Category:受控词表](https://zh.wikipedia.org/wiki/Category:受控词表 "wikilink")

1.

2.
3.  <http://www.nlm.nih.gov/research/umls/Snomed/snomed_faq.html>

4.  <http://www.healthdatamanagement.com/html/PortalStory.cfm?type=newprod&DID=7841>

5.
6.

7.  <http://www.nlm.nih.gov/research/umls/Snomed/snomed_main.html>