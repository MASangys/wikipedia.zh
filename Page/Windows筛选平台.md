**Windows筛选平台**（**Windows Filtering Platform**，缩写**WFP**；也译**Windows过滤平台**）是[微软](../Page/微软.md "wikilink")[操作系统](../Page/操作系统.md "wikilink")中的一套[系统服务和](../Page/Windows服务.md "wikilink")[应用程序接口](../Page/应用程序接口.md "wikilink")，于2006年至2007年在[Windows Vista中首次引入](../Page/Windows_Vista.md "wikilink")。它允许[应用程序](../Page/应用程序.md "wikilink")绑定到包处理环节，过滤[协议栈](../Page/协议栈.md "wikilink")的流水线。它提供整合通信等功能，管理员可以将其配置为在每个应用程序的基础上调用处理逻辑。微软预期WFP将被[防火墙](../Page/防火墙.md "wikilink")及其他封包处理或连接监控组件使用，如[杀毒软件](../Page/杀毒软件.md "wikilink")和[家长控制软件](https://zh.wikipedia.org/wiki/家长控制 "wikilink")。另外，WFP也被用于实现[网络地址转换](../Page/网络地址转换.md "wikilink")（NAT）和存储[IPSec策略配置](https://zh.wikipedia.org/wiki/IPSec "wikilink")。

## 组件

该筛选平台包含下列组件：

  - ****，它将[網路封包的内部结构暴露为属性](https://zh.wikipedia.org/wiki/網路封包 "wikilink")。不同[层次的](https://zh.wikipedia.org/wiki/TCP/IP协议族 "wikilink")[协议存在不同的垫片](../Page/网络传输协议.md "wikilink")。WFP配有一整套垫片；用户可以使用API​​注册其他协议的垫片。内置的垫片包括：
      - 应用层执行（ALE）垫片
      - [传输层](../Page/传输层.md "wikilink")模块（TLM）垫片
      - [网络层](../Page/网络层.md "wikilink")模块（NLM）垫片
      - [遠程過程調用](../Page/遠程過程調用.md "wikilink")（RPC）运行时垫片
      - [互联网控制消息协议](../Page/互联网控制消息协议.md "wikilink")（ICMP）垫片
      - 流垫片

自Windows 8和Windows Server 2012开始，WFP允许在TCP/IP第二层进行过滤。

  - **筛选引擎**，其跨越[内核模式与](../Page/分级保护域.md "wikilink")[用户模式](https://zh.wikipedia.org/wiki/用户模式 "wikilink")，提供基本的筛选功能。它根据筛选规则匹配数据包中的数据（由垫片暴露），并阻止或允许数据包。可以根据需要用callout实施任何其他操作。筛选器在每个应用程序的基础上运作。为缓解筛选器之间的冲突，它们被赋予权重（优先级），并且被分组成具有权重的子层。筛选器和callout可以被与提供者关联，其可以赋予名称和描述，并在本质上是与特定应用程序或服务关联。
  - **基本筛选引擎**，管理筛选引擎的模块。它接受筛选规则并施行应用程序的安全模型。它还维护WFP的统计信息和记录其状态。
  - **callout**，一个由筛选驱动程序公开的[回调函数](../Page/回调函数.md "wikilink")。筛选驱动程序提供除默认阻止/允许之外的过滤功能。管理员在注册筛选器规则时指定一个callout函数。当筛选器匹配时，系统调用该callout，由它处理指定的操作。

## 诊断

Windows 7中的netsh命令中新增了功能，可以对WFP的内部状态进行丰富的诊断。此功能对于调试和找出问题的根本原因（如丢包问题）非常有用。

## 参见

  -
## 外部链接

  - [Overview of the Windows Filtering Platform](https://web.archive.org/web/20101228202552/http://www.microsoft.com/whdc/device/network/WFP.mspx)
  - [MS_KB 979223: A nonpaged pool memory leak occurs when you use a WFP callout driver](http://support.microsoft.com/kb/979223)

[Category:Windows_Server_2008](https://zh.wikipedia.org/wiki/Category:Windows_Server_2008 "wikilink") [Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink") [Category:Windows通信和服务](https://zh.wikipedia.org/wiki/Category:Windows通信和服务 "wikilink")