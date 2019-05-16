**Web应用服务器**（WAS或者Web
AS）是[NetWeaver解决方案的一个组件](../Page/NetWeaver.md "wikilink")。在[SAP看来](../Page/SAP公司.md "wikilink")，web应用服务器是他们大部分产品运行的基础。

## 概览

它的基本功能是用于基于SAP标准解决方案编程语言（通常是[ABAP](../Page/ABAP.md "wikilink")）的[web开发](../Page/万维网.md "wikilink")，但新版本也允许使用[Java语言进行开发](../Page/Java.md "wikilink")。有了web应用服务器，在web环境下基于SAP解决方案基础设施发布查询，程序和ABAP应用就有了可能。新版的WAS也支持像Java这样的开放标准。6.20以上的版本里可以单独创建ABAP程序，Java程序或者两者的混合。

## 架构

SAP Web应用服务器的架构可以分为五层：

  - **表现层**：在表现层，用户接口可以使用[JSP](../Page/JSP.md "wikilink")，[BSP或者](https://zh.wikipedia.org/wiki/BSP "wikilink")[Web
    Dynpro技术来开发](https://zh.wikipedia.org/wiki/Web_Dynpro "wikilink")。下面的业务层通过Java或ABAP程序来提供业务内容。
  - **业务层**：业务层包括一个通过J2EE认证的运行时环境来出来从[ICM传来的请求然后动态产生一个应答](https://zh.wikipedia.org/wiki/ICM "wikilink")。业务逻辑可以用ABAP或者基于J2EE标准的Java来实现。开发人员实现了业务逻辑后可以用J2EE环境的[EJB来持续化这些业务逻辑](../Page/EJB.md "wikilink")。开发人员还可以访问运行在ABAP环境里的应用的业务对象以从他们的业务逻辑和持续化中获益。
  - **集成层**：本地的集成引擎是SAP Web应用服务器的一个完整组成部分，可以实现和[SAP
    XI的即时连接](https://zh.wikipedia.org/wiki/SAP_XI "wikilink")。本地的集成引擎提供信息服务，可以实现连接到SAP
    XI上个组件之间的信息交换。
  - **连接层**：因特网通信管理器（ICM）把用户接口的请求发送到表现层并提供一个单一的框架来处理使用多种不同通信协议的链接。现在，可用的模块有[HTTP](https://zh.wikipedia.org/wiki/HTTP "wikilink")，[HTTPS](https://zh.wikipedia.org/wiki/HTTPS "wikilink")，[SMTP](https://zh.wikipedia.org/wiki/SMTP "wikilink")，[SOAP](https://zh.wikipedia.org/wiki/SOAP "wikilink")，[FastCGI](../Page/FastCGI.md "wikilink")。
  - **持久化层**：持久化层支持数据库无关操作和弹性事务处理。业务逻辑可以完全不考虑底层数据库和操作系统来开发。对开放标准的支持也使数据库无关成为可能。数据库接口保证从ABAP环境里通过[Open
    SQL进行的数据访问都是经过优化的](https://zh.wikipedia.org/wiki/Open_SQL "wikilink")。SAP还推出了Open
    SQL对Java的支持，为应用开发人员提供了多种标准[API](https://zh.wikipedia.org/wiki/API "wikilink")，如[SQLJ](https://zh.wikipedia.org/wiki/SQLJ "wikilink")。其他技术，比如[JDO和](https://zh.wikipedia.org/wiki/JDO "wikilink")[CMP](https://zh.wikipedia.org/wiki/CMP "wikilink")
    EJB，或者直接使用[JDBC](https://zh.wikipedia.org/wiki/JDBC "wikilink")
    API访问都是支持的。

## 引用

  - <http://help.sap.com>

[Category:SAP_NetWeaver](https://zh.wikipedia.org/wiki/Category:SAP_NetWeaver "wikilink")
[Category:服务器](https://zh.wikipedia.org/wiki/Category:服务器 "wikilink")