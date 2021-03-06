**TTCN-3**, 简称 **测试及测试控制表达法(Testing and Test Control Notation)**, 是国际标准化的测试准用开发[编程语言](../Page/编程语言.md "wikilink")。主要用于基于通讯的系统测试自动化，例如通讯协议测试，以及嵌入式系统测试。此外，TTCN-3也常用于测试规范及文档开发。

**TTCN-3** 的前身称为[TTCN及TTCN](https://zh.wikipedia.org/wiki/TTCN "wikilink")-2，为树形和表格表达法（Tree and Tabular Combined Notation）的简称。

## 创建及版本

TTCN-3由欧洲电信标准研究所（European Telecommunications Standards Institute / ETSI） 及 [国际电信联盟远程通信标准化组](https://zh.wikipedia.org/wiki/国际电信联盟远程通信标准化组 "wikilink")（ITU-T）创建，2000年发布第一版（Edition 1）。当前最新版本为2012年发布的Edition 4.4.1。

## 典型应用领域

  - 移动通信（LTE，WiMAX，3G，TETRA，GSM）
  - 宽带技术（ATM，DSL）
  - 中间件平台（WebServices，CORBA，CCM，EJB）
  - 互联网协议（SIP，IMS，IPv6，SIGTRAN）
  - 智能卡（smartcard）
  - 汽车（AUTOSAR，MOST，CAN）

## 特性

### 抽象性

TTCN-3是一种抽象的测试语言，支持三种表现方式：

  - 文本表现 (核心语言表达法)
  - 图形表现 (图形格式, GFT)
  - 表格表现 ，主要应用于TTCN和TTCN-2，基本不再用于TTCN-3的开发。

三种表现方式效用相当，并可相互转换，但核心为文本表现方式。

### 可扩展性

基于TTCN-3标准，可对测试集进行功能扩展：

  - 导入外部应用其它语言定义的数据结构 (ASN.1, IDL, XML，Google protobuf 和WSDL)
  - 连接调用外部函数库 (Java, C)
  - 适配待侧系统 (通讯/编解码)

### 界面标准化：控制界面（TCI）和运行时界面（TRI）

有别于TTCN和TTCN-2，TTCN-3标准 还定义了标准控制界面TCI (TTCN-3 Control Interface)， 和运行时界面TRI (TTCN-3 Runtime Interface)。

  - TRI – 连接测试执行单元与待测系统
  - TCI – 连接测试执行单元与测试管理系统（图形用户界面或命令行界面），并且定义编解码及测试日志信息传递。

## TTCN-3开发运行工具

要运行TTCN-3测试例，需要使用专用编译器对TTCN-3代码编译生成可执行码，随后在对应运行时环境下运行。主要工具开发商：

  - TTworkbench: 德国测试科技公司（Testing Technologies GmbH）
  - OpenTTCN Tester: 芬兰OpenTTCN 有限公司
  - TestCast: 爱沙尼亚Elvior公司

### TTCN-3编译器：TTthree

TTthree是由[柏林工业大学](../Page/柏林工业大学.md "wikilink")和[弗劳恩霍夫协会](../Page/弗劳恩霍夫协会.md "wikilink")通讯研究所于2000年联合开发的TTCN-3编译器。2001年被欧洲电信标准研究所（ETSI）认定为首个TTCN-3[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。其后位于柏林的测试科技公司开发接手其后续开发并将其整合为TTCN-3一体开发环境，即TTCN-3工具TTworkbench。

### TTCN-3 核心语言编辑器

TTCN-3中定义了三种表现方式，即文本、图形及表格方式。所有的TTCN-3开发工具均支持文本方式。有些工具例如TTworkbench也支持图形方式，并可实现文本和图形的双向转换，同时继承了eclipse环境中的各种开发辅助功能。

### 分布式测试 （并发测试）

通过预定义的组件管理界面，可以将测试例分布到局域网内的多台机器上运行，以提高测试系统性能，实现诸如性能测试及分布式仿真网元。通过安装TTmex插件，TTworkbench可实现分布测试功能。

### Eclipse开发环境， Java 目标语言

TTCN-3的开发理念为语言、平台及协议的无关性。因此，有些TTCN-3开发工具采用开源开发平台如[Eclipse](../Page/Eclipse.md "wikilink")，使用Java做为编译目标语言。

### 生成测试组及测试集

完成测试例编写后，在测试运行前往往先要生成一组测试例，然后顺序或选择执行。TTCN-3没有具体定义测试组的实现方式。完整的测试工程为测试集，欧洲电信标准协会（ETSI）等标准组织已发布多个测试集，但它们通常只包含TTCN-3代码，还需要使用TTCN-3开发工具，编译生成可执行码，添加适配器及编解码器，才能运行。

### 开发工具

TTworkbench是由德国TestingTech公司开发的TTCN-3工具，是集成的测试开发和运行环境。当前版本为15版本，完全支持ttcn-3最新的2012标准。TestingTech的业务是TTCN-3工具，TTCN-3技术培训，基于ttcn-3的协议一致性测试解决方案：LTE，voip,Autosar,Tetra.....TTworkbench是目前最为成功的ttcn-3商业工具。

## TTCN-3 培训认证

TTCN-3工具厂商大多同时提供TTCN-3 培训课程。部分可提供经ISQI认证的TTCN-3理论培训。学员完成培训，可参加认证考试，通过后可获得资格证书。

[ISQI](http://www.isqi.org/zertifizierung/ttcn-3R-certificate/) 监督执行认证考试并颁发证书。

## 外部链接

  - [TTCN-3社区官方主页](http://www.ttcn-3.org)
  - [TTCN-3开发工具](https://web.archive.org/web/20080724171957/http://www.ttcn-3.org/CommercialTools.htm)
  - [ttcn-3\\TTworkbench中文网址](http://www.testingtech.com.cn)
  - [快速参考卡](http://www.blukaktus.com/TTCN3QRC_viewme.pdf)

[Category:程序设计语言](https://zh.wikipedia.org/wiki/Category:程序设计语言 "wikilink") [Category:软件测试](https://zh.wikipedia.org/wiki/Category:软件测试 "wikilink")