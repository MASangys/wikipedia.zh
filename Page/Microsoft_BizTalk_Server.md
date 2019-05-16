**Microsoft BizTalk
Server**是[微软公司针对大中型企业设计的](../Page/微软.md "wikilink")[服务器产品](../Page/服务器.md "wikilink")，功能包括业务流程自动化、业务流程管理、企业应用集成以及企业之间的集成。

## 架构

BizTalk
Server运行时架构是一种[发布/订阅的架构](https://zh.wikipedia.org/wiki/发布/订阅 "wikilink"),
有时称作 "基于内容的发布/订阅".消息先发布到Biztalk系统,然后一个或多个订阅者收到这些消息.\[1\]
BizTalk在等待外部事件的时候，通过把消息序列化（Biztalk术语叫[dehydration](https://zh.wikipedia.org/wiki/dehydration "wikilink")）保存到数据的方法来确保处理安全，防止数据丢失
。这个架构 把BizTalk和[Microsoft SQL
Server绑到了一起](https://zh.wikipedia.org/wiki/Microsoft_SQL_Server "wikilink")。管理员可以通过管理控制台跟踪处理流程
。 BizTalk支持事务流程。 BizTalk orchestrations 还实现了 [Long-running
transaction](https://zh.wikipedia.org/wiki/Long-running_transaction "wikilink").

## 适配器

参考：\[2\].

BizTalk利用适配器与不同协议及其他软件产品交互。提供包括针对以下协议或产品的适配：[EDI](https://zh.wikipedia.org/wiki/Electronic_Data_Interchange "wikilink")，File，[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")，[FTP](https://zh.wikipedia.org/wiki/FTP "wikilink")，[SFTP](https://zh.wikipedia.org/wiki/SFTP "wikilink")，[SMTP](https://zh.wikipedia.org/wiki/SMTP "wikilink")，[POP3](https://zh.wikipedia.org/wiki/POP3 "wikilink")，[SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink")，[SQL](../Page/SQL.md "wikilink")，[MSMQ](https://zh.wikipedia.org/wiki/MSMQ "wikilink")，[Windows
SharePoint
Services](https://zh.wikipedia.org/wiki/Windows_SharePoint_Services "wikilink")
(WSS)。从2006
R2起增加针对[WCF的适配器](https://zh.wikipedia.org/wiki/Windows_Communication_Foundation "wikilink")。
微软同时提供包含了针对商业系统的基于WCF的适配器，目前包括：[SAP](https://zh.wikipedia.org/wiki/SAP_ERP "wikilink")，[Oracle数据库](https://zh.wikipedia.org/wiki/Oracle_Database "wikilink")，[Oracle
E-Business
Suite](https://zh.wikipedia.org/wiki/Oracle_E-Business_Suite "wikilink")，[SQL以及](../Page/SQL.md "wikilink")[Siebel](https://zh.wikipedia.org/wiki/Siebel "wikilink")。

## 发布时间

  - 2000年 - BizTalk Server 2000
  - 2002年 - BizTalk Server 2002
  - 2004年 - BizTalk Server 2004 ([.NET框架](../Page/.NET框架.md "wikilink")
    1.0)
  - 2006年 - BizTalk Server 2006 ([.NET框架](../Page/.NET框架.md "wikilink")
    2.0)
  - 2007年 - BizTalk Server 2006 R2
    (SOA、BPM、,EDI、AS2、RFID、WWF、WCF、[.NET框架](../Page/.NET框架.md "wikilink")
    3.0）
  - 2009年 - BizTalk Server 2009 (支持Windows Server 2008, Visual Studio
    2008以及SQL Server 2008)
  - 2010年 - BizTalk Server 2010 (开始支持 Windows Server 2008 R2, Visual
    Studio 2010以及SQL Server 2008 R2)
  - 2013年 - BizTalk Server 2013 (开始支持 Visual Studio 2012以及Microsoft .NET
    4.5)\[3\]

## 版本详细

### BizTalk Server 2000

2000年年底，BizTalk Server
2000在全球发布，当时宣称的对象主要是软件开发员以及架构设计师，作为微软针对业务流程和系统整合而设计的第一代产品，该版本包含了很多新的理念和功能，虽然并不尽善尽美。

### BizTalk Server 2002

### BizTalk Server 2004

2004年3月，BizTalk Server
2004发布，作为微软业务流程整合的第三代产品，该版本已经具备合理的标准支持，功能完善，并且已经纳入微软的对整个企业级应用设计的大框架。

### BizTalk Server 2006

2006年-BizTalk Server
2006正式开卖，虽然在05年底就开始预热，但真正的公开定价却是在五月份，该版本是对上一个版本的最佳完善，在管理，部署以及性能方面有显著的改善。可以说，BizTalk开始真正进入企业级应用的角力场。

### BizTalk Server 2006 R2

2007年9 月，BizTalk Server 2006 R2发布， 该版本加强了如何实现Service Oriented
Architecture (SOA)和 Business Process Management (BPM)场景。提供了业务进程管理以及
SOA/ESB 功能，可以帮助公司、组织扩展核心进程管理技术，并且提供了对新技术的支持，比如电子数据交换 (EDI)，AS2，RFID
以及和当时发布的 Microsoft Office 2007，Windows Vista 进行协同工作，包括像
Windows Workflow Foundation 和 Windows Communication Foundation 这样的。NET
Framework 的核心技术。为了满足不同的应用需求，产品包含四个不同的版本：Enterprise, Standard,
Branch，还有Developer. 所有的版本都是基于CPU来定价。

### BizTalk Server 2009

2009年5月，BizTalk Server 2009发布，BizTalk Server 2009
代表了微软在企业集成领域的长期战略，该版本主要是为了支持Windows
Server 2008, Visual Studio 2008以及SQL Server 2008. BizTalk Server 2009 基于
BizTalk Server 2006 的核心结构，并在应用程序对应用程序、业务对业务和业务流程自动化的各个方面具有很大改进。

**新增功能**

  - EDI 增强功能
  - AS2 增强功能
  - 提高开发人员的工作效率

<!-- end list -->

  - 进一步的 Windows Server System 支持

<!-- end list -->

  -
    通过包括基于 X86 的 64 位版本的 BizTalk Server 并支持最新版本的 Microsoft Windows
    Server 2008、Microsoft SQL Server 2008、Microsoft Visual Studio 和
    Microsoft Virtual Server，BizTalk Server 2009 可对 Microsoft Windows
    Server System 集成的服务器软件提供进一步的支持。

### BizTalk Server 2010

**新增功能**

  - BizTalk Server 设置仪表板
  - 改进的管理包
  - FTP 适配器增强功能
  - 增强了贸易合作伙伴管理
  - 增强了对 HIPAA 文档的支持
  - 增强了 BizTalk 映射器
  - 支持 .NET Framework 4
  - BizTalk Server 中的 SQL Server 备份压缩
  - BizTalk Server 中的 SQL Server 透明数据加密 (TDE)
  - 已更新平台支持
      - Windows Server 2008 R2
      - Windows Server 2008 SP2
      - Windows 7
      - Windows Vista SP2
      - SQL Server 2008 SP1
      - SQL Server 2008 R2
      - Visual Studio 2010
      - Microsoft Office 2007
      - Microsoft Office 2010（仅 x86）

## 参见

  - BizTalk官方站点
    [1](https://web.archive.org/web/20050330020859/http://www.microsoft.com/biztalk/)

## 外部链接

1.  [Kerrey's view on BizTalk Server](http://blogs.msdn.com/kerreyBPI)
2.  [BizTalk开发博客](http://www.cbcye.com)

## 引用

<references/>

[Category:2000年软件](https://zh.wikipedia.org/wiki/Category:2000年软件 "wikilink")
[Category:企业应用集成](https://zh.wikipedia.org/wiki/Category:企业应用集成 "wikilink")
[Category:面向消息的中间件](https://zh.wikipedia.org/wiki/Category:面向消息的中间件 "wikilink")
[Category:中间件](https://zh.wikipedia.org/wiki/Category:中间件 "wikilink")
[Category:专有软件](https://zh.wikipedia.org/wiki/Category:专有软件 "wikilink")

1.
2.
3.