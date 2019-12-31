> 本文内容由[Windows Rally](https://zh.wikipedia.org/wiki/Windows_Rally)转换而来。


**Windows Rally**是[微软](../Page/微软.md "wikilink")公司一套旨在简化有线和[无线](../Page/无线网络.md "wikilink")[网络互联](../Page/计算机网络.md "wikilink")[设备的设置与维护的技术](https://zh.wikipedia.org/wiki/外部设备 "wikilink")。这些技术旨在提高设备与[互联网](../Page/互联网.md "wikilink")或运行[Microsoft Windows的计算机互联的稳定性与安全性](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")，可以提供对网络[服务质量](../Page/服务质量.md "wikilink")（QoS）的控制，以及对数据共享、通信和娱乐的诊断。Windows Rally技术面向下列设备提供：

  - [無線接取器](https://zh.wikipedia.org/wiki/無線接取器 "wikilink")、[个人电脑](../Page/个人电脑.md "wikilink")和[服务器](../Page/服务器.md "wikilink")

  - 网络[打印机](../Page/打印机.md "wikilink")、[視頻投影機](../Page/視頻投影機.md "wikilink")、打印机桥、[数码相机](../Page/数码相机.md "wikilink")和[電子遊戲機](../Page/電子遊戲機.md "wikilink")

  - 、网络媒体播放器、[數位視訊轉換盒](../Page/數位視訊轉換盒.md "wikilink")、[数码相框](../Page/数码相框.md "wikilink")和[PDA](../Page/个人数码助理.md "wikilink")

## Windows Rally技术

[右](https://zh.wikipedia.org/wiki/File:Rally.svg "fig:右") Windows Rally包括下列技术：

### LLTD

链路层拓扑发现（LLTD）协议使应用程序能[发现设备和确定](../Page/服务发现.md "wikilink")[网络拓扑](https://zh.wikipedia.org/wiki/网络拓扑 "wikilink")。在[Windows Vista中](../Page/Windows_Vista.md "wikilink")，它可以在网络地图上实现网络中所有设备的图形化视图。Windows XP计算机若想出现在网络地图上，则必须下载并安装[LLTD Responder](https://web.archive.org/web/20100801233602/http://www.microsoft.com/downloads/details.aspx?FamilyId=4F01A31D-EE46-481E-BA11-37F485FA34EA&displaylang=en)。提供音频或视频播放或带宽敏感的设备可以实现协议*[QoS扩展](../Page/服务质量.md "wikilink")*，使它们优先接收流，并在可用带宽变少时播放体验受到更少影响。

### qWAVE

Windows Vista包含qWAVE，这是一项预配置的[服务质量](../Page/服务质量.md "wikilink")API，用于时间敏感的多媒体数据，例如音频或视频流。qWAVE为实时流（如多媒体封包）与尽力而为流（如文件下载、电子邮件收发）使用不同的[網路封包优先级方案](https://zh.wikipedia.org/wiki/網路封包 "wikilink")，从而确保实时数据得到尽量低的延迟，同时仍为其他数据包留有高质量的通道。启用qWAVE的应用程序以及实施LLTD QoS扩展的设备旨在通过流量优先级和减少网络相关短期问题的影响来改善最终用户的流视频体验。

### Windows Connect Now

Windows Connect Now（WCN）是一项旨在简化无线设备配置的Windows Rally技术的名称。借助Windows Connect Now，运行[Windows Vista或](../Page/Windows_Vista.md "wikilink")[Windows XP](../Page/Windows_XP.md "wikilink") SP2的用户可以创建网络配置设置并将其发送到网络接入点。用户也可以将配置设置打印以供参考，从而手动配置设备。通过Windows Connect Now，可以用下列方法之一来轻松配置：

  - WCN-NET是微软对[Wi-Fi简单配置标准的实现](https://zh.wikipedia.org/wiki/Wi-Fi保护设置 "wikilink")。它提供了使用带外[以太网](../Page/以太网.md "wikilink")和带内[无线网络](../Page/无线网络.md "wikilink")的设备配置。在Windows Vista中，WCN-NET可以发现一个未配置的[路由器](../Page/路由器.md "wikilink")、[無線接取器](https://zh.wikipedia.org/wiki/無線接取器 "wikilink")、[基站](../Page/基站.md "wikilink")，或者如 设备（通过[UPnP](../Page/UPnP.md "wikilink")），使用个人识别码（PIN）对设备进行身份验证，提供基于用户选择的无线设置，以及通过有线以太网连接建立无线网络。Windows XP和更早版本的Windows不支持WCN-NET。
  - WCN-UFD使用一个API和一种[XML](../Page/XML.md "wikilink")格式，它可以使用向导将配置文件写入[闪存盘](../Page/闪存盘.md "wikilink")，从而实现更安全的无线网络。Windows XP Service Pack 2及之后的Windows操作系统支持WCN-UFD。
  - WCN-MTP包括一个[媒体传输协议](../Page/媒体传输协议.md "wikilink")（MTP）扩展，它使MTP启动器能够向MTP应答器提供用于加入无线网络的配置参数，并支持为具有MTP功能的设备在无线网络上得到更安全的配置。在Windows Vista中，临时USB电缆连接可用于MTP类设备，如便携式介质、[数码相机](../Page/数码相机.md "wikilink")等。

### Web服务设备配置文件（DPWS）

Web服务设备配置文件（DPWS）标准定义了一组最小的实现约束，从而在资源受限的设备上做到安全的[Web服务](../Page/Web服务.md "wikilink")[消息](../Page/WS-ReliableMessaging.md "wikilink")、、[描述和](../Page/WSDL.md "wikilink")。DPWS描述了一组必要条件，从而能使客户端发现设备，并为这些客户端描述可用的服务。DPWS类似[Universal Plug and Play](../Page/UPnP.md "wikilink")（UPnP），但它完全符合[Web服务](../Page/Web服务.md "wikilink")技术，支持设备互联标准（如WS-Discovery和WS-Eventing），并并且包括许多扩展点，允许在企业范围的应用场景中整合设备提供的服务和在互联网上工作的漫游设备。

在Windows Vista中，面向设备的Web服务（WSDAPI）是一个面向Web服务设备配置文件（DPWS）标准的非托管代码实现。[Windows Communication Foundation](https://zh.wikipedia.org/wiki/Windows_Communication_Foundation "wikilink")（WCF）执行托管代码，并在Windows XP和Windows Vista上为Web服务解决方案提供企业级服务。

#### 功能发现

为支持[简单服务发现协议](../Page/简单服务发现协议.md "wikilink")（SSDP）和，以及为了可扩展发现从而支持其他协议，Windows Vista包含功能发现（*Function Discovery）*API。功能发现作为应用程序与设备之间的抽象层，允许应用程序通过引用设备的功能而不是其总线类型或其连接的性质来发现设备。功能发现API旨在创建枚举系统资源、使用特定类型的设备，以及按功能或类别发现和管理设备或对象列表的应用程序，无论其在本地还是通过网络连接。功能发现支持一个可扩展的发现提供者模型。供应商还可创建一个自定义提供程序来通过功能发现公布资源。

### 即插即用扩展（PnP-X）

PnP-X使用SSDP和WS-Discovery网络通信协议将已连接网络的设备作为通过总线（如[USB](../Page/USB.md "wikilink")）直接连接到计算机的设备发现。PnP-X允许已连接网络的设备在Windows内部显示为设备，并提供类似设备连接到总线的安装体验。设备制造商实现PnP-X功能，以补充UPnP和面向设备Web服务（WSD）。对最终用户来说，这种设备比传统的[即插即用设备相较而言更容易安装](https://zh.wikipedia.org/wiki/即插即用 "wikilink")。\[1\]

### 通用即插即用

通用即插即用（UPnP）是一项基于[IP的协议套件](../Page/网际协议.md "wikilink")，它基于服务协议的初步版本，如XML和[Simple Object Access Protocol](https://zh.wikipedia.org/wiki/SOAP "wikilink")（SOAP）。使用UPnP的设备可以动态加入网络、获取IP地址、表达其能力，及发现网络上其他设备的存在与能力。有关特定设备类型可提供的服务集的信息将在设备主机的[XML](../Page/XML.md "wikilink")设备描述文档中得到。设备描述还列出了与设备相关联的设备名称和图标等属性。UPnP被广泛应用在家庭网络音视频场景中交互的设备。

UPnP在[Windows Me](../Page/Windows_Me.md "wikilink")、Windows XP和Windows Vista支持。在Windows Vista中，UPnP已与PnP-X和功能发现集成。

## 参见

  -
  - [Web服务](../Page/Web服务.md "wikilink")

  - [Windows Communication Foundation](https://zh.wikipedia.org/wiki/Windows_Communication_Foundation "wikilink")

  - [服务质量](../Page/服务质量.md "wikilink")（QoS）

## 参考资料

## 外部链接

  - [Windows Rally Technologies Homepage](https://web.archive.org/web/20101123154649/http://www.microsoft.com/whdc/connect/rally/default.mspx)
  - [Windows Rally Development Kit](https://web.archive.org/web/20101228190536/http://www.microsoft.com/whdc/connect/rally/rallykit.mspx)

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:Windows通信和服务](https://zh.wikipedia.org/wiki/Category:Windows通信和服务 "wikilink") [Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")

1.