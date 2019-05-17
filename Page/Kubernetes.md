**Kubernetes**（常简称为**K8s**）是用于自动部署、扩展和管理[容器化](https://zh.wikipedia.org/wiki/作業系統層虛擬化 "wikilink")（containerized）应用程序的[开源系统](../Page/开源软件.md "wikilink")。\[1\]該系統由[Google设计并捐赠给Cloud](../Page/Google.md "wikilink")
Native Computing
Foundation（今属[Linux基金会](https://zh.wikipedia.org/wiki/Linux基金会 "wikilink")）来使用。

它旨在提供“跨主机集群的自动部署、扩展以及运行应用程序容器的平台”。\[2\] 它支持一系列容器工具,
包括[Docker等](https://zh.wikipedia.org/wiki/Docker_\(軟體\) "wikilink")。CNCF於2017年宣布首批Kubernetes認證服務提供商（KCSPs），包含[IBM](../Page/IBM.md "wikilink")、[華為](https://zh.wikipedia.org/wiki/華為 "wikilink")、MIRANTIS、inwinSTACK迎棧科技等\[3\]服務商。

## 历史

[GoogleCloudKubernetes.jpg](https://zh.wikipedia.org/wiki/File:GoogleCloudKubernetes.jpg "fig:GoogleCloudKubernetes.jpg")
Kubernetes（在希腊语意為“舵手”或“驾驶员”）由Joe Beda、Brendan Burns和Craig
McLuckie创立，\[4\]并由其他谷歌工程师，包括Brian Grant和Tim
Hockin等进行加盟创作，并由谷歌在2014年首次对外宣布 。\[5\]
該系統的开发和设计都深受谷歌的Borg系统\[6\]\[7\]的影响，其许多顶级贡献者之前也是Borg系统的开发者。在谷歌内部，Kubernetes的原始代号曾经是[Seven](../Page/九之七.md "wikilink")，即[星际迷航中的Borg](https://zh.wikipedia.org/wiki/星际迷航 "wikilink")([博格人](../Page/博格_\(星际旅行\).md "wikilink"))。\[8\]Kubernetes标识中舵轮有七个轮辐就是对该项目代号的致意。

Kubernetes v1.0于2015年7月21日发布。\[9\] 随着v1.0版本发布，谷歌与[Linux
基金会合作组建了Cloud](https://zh.wikipedia.org/wiki/Linux_基金会 "wikilink")
Native Computing Foundation (CNCF)\[10\]并將Kubernetes作为种子技术来提供。

Rancher
Labs在其Rancher容器管理平台中包含了Kubernetes的发布版。\[11\]Kubernetes也在很多其他公司的产品中被使用，例如[Red
HatOpenShift](https://zh.wikipedia.org/wiki/Red_Hat "wikilink")，\[12\]\[13\]
CoreOS的Tectonic， 以及[IBM的IBM私有雲产品](../Page/IBM.md "wikilink")，\[14\]以及
VMware的PKS等等。

## 设计

Kubernetes在設計結構上定义了一系列的构建模块，其目的是為了提供一個可以共同提供部署、维护和扩展应用程序的机制。组成Kubernetes的组件设计概念为[松耦合和可扩展的](https://zh.wikipedia.org/wiki/松耦合 "wikilink")，这样可以使之满足多种不同的工作负载。可扩展性在很大程度上由Kubernetes
API提供，此API主要被作为扩展的内部组件以及Kubernetes上运行的容器來使用。\[15\]

### Pod

Kubernetes的基本调度单元称为“pod”。通過該種抽象類別可以把更高级别的抽象内容增加到容器化组件。一个pod一般包含一个或多个容器，这样可以保证它们一直位于主机上，并且可以共享资源。\[16\]Kubernetes中的每个pod都被分配一个唯一的（在集群内的）[IP地址这样就可以允许应用程序使用同一端口](../Page/IP地址.md "wikilink")，而避免了發生冲突的問題。\[17\]
Pod可以定义一个卷，例如本地磁盘目录或网络磁盘，并将其暴露在pod中的一个容器之中。\[18\]。pod可以通过Kubernetes
[API手动管理](https://zh.wikipedia.org/wiki/API "wikilink")，也可以委托给控制器来實現自動管理。\[19\]

### 标签和选择器

Kubernetes使客户端（用户或内部组件）将称为“标签”的键值对附加到系统中的任何API对象，如pod和节点。相应地，“标签选择器”是针对匹配对象的标签的查询方法。\[20\]

标签和选择器是Kubernetes中的主要分组机制，用于确定操作适用的组件。\[21\]

例如，如果应用程序的Pods具有系统的标签 `tier` (比如"`front-end`"、"`back-end`") 和一个
`release_track` (比如"`canary`"、"`production`")，那么对所有"`back-end`" 和
"`canary`" 节点的操作可以使用如下所示的标签选择器：\[22\]

> `tier=back-end AND release_track=canary`

### 控制器

控制器是通过管理一组pod来实现來将实际集群状态转移到所需集群状态的对帐循环機制\[23\]。一种控制器指的是一組具有相同特徵的“复制控制器”，控制器通过在集群中运行指定数量的pod副本来处理复制和缩放。在基础节点出现故障的情況下，它还可以用於处理创建替换pod。\[24\]其它控制器也是核心Kubernetes系统的一部分，包括“DaemonSet控制器”为每台机器（或机器的一些子集）上运行的單個pod，和用于运行pod的“作业控制器”。\[25\]
控制器管理的pod組由作为控制器定义的部分的标签选择器來确定。\[26\]

### 服务

Kubernetes服务本質是一组协同工作的pod，類同应用中的一层。构成服务的pod组通过标签选择器来定义。\[27\]Kubernetes通过给服务分配静态IP地址和[域名来提供](../Page/域名系统.md "wikilink")机制，并且以的方式将流量负载均衡到能与选择器匹配的pod的IP地址的网络连接上（即使是故障导致pod从一台机器移动到另一台机器）。\[28\]
默认情况下，服务任務会暴露在集群中（例如，多个[后端pod可能被分组成一个服务](https://zh.wikipedia.org/wiki/前端和后端 "wikilink")，前端pod的请求在它们之间负载平衡）；除此以外，服务任務也可以暴露在集群外部（例如，从客户端访问前端pod）。\[29\]

## 建构

[kubernetes.png](https://zh.wikipedia.org/wiki/File:kubernetes.png "fig:kubernetes.png")

Kubernetes遵循[主從式架構設計](https://zh.wikipedia.org/wiki/主从架构 "wikilink")。Kubernetes的组件可以分为管理单个的
[node](../Page/节点_\(电信网络\).md "wikilink") 组件和控制平面部分的组件。\[30\]\[31\]

Kubernetes
Master是集群的主要控制单元，其用于管理其工作负载并指导整个系统的通信。Kubernetes控制平面由各自的进程组成，每个组件都可以在单个主节点上运行，也可以在支持[high-availability
clusters](https://zh.wikipedia.org/wiki/high-availability_cluster "wikilink")\[32\]的多个主节点上运行。是Kubernetes控制平面的各种組件如下：

### etcd

**[etcd](https://github.com/coreos/etcd)**
是由[CoreOS开发](https://zh.wikipedia.org/wiki/CoreOS "wikilink")，用于可靠地存储集群的配置数据的一种持久性，轻量型的，分布式的键-值数据存储組件。該組件可表示在任何给定时间点处的集群的整体状态。其他组件在注意到存储的变化之后，会变成相应的状态。\[33\]

### API服务器

API服务器是一个关键组件 并使用 Kubernetes
[API](https://zh.wikipedia.org/wiki/Application_programming_interface "wikilink")
和 [JSON](../Page/JSON.md "wikilink") over
[HTTP來提供了Kubernetes的内部和外部接口](https://zh.wikipedia.org/wiki/Hypertext_Transfer_Protocol "wikilink")。\[34\]\[35\]
API服务器处理和验证 [REST请求并更新](https://zh.wikipedia.org/wiki/REST "wikilink")
[API](https://zh.wikipedia.org/wiki/Application_programming_interface "wikilink")
对象的状态[etcd](https://github.com/coreos/etcd)，从而允许客户端在Worker节点之间配置工作负载和容器。

### 调度器

T调度程序是可插拔式组件，其基于资源可用性来选择未调度的pod（由调度程序管理的基本实体）应该运行哪个节点。调度程序跟踪每个节点上的资源利用率，以确保工作负载不会超过可用资源。为此，调度程序必须知道资源需求，资源可用性以及各种其他用户提供的约束和策略指令，例如服务质量，亲和力/反关联性要求，数据位置等。实质上，调度程序的作用是将资源“供应”与工作负载“需求”相匹配以維持系統的穩定和可靠。
\[36\]

### 控制器管理

控制器管理器是核心Kubernetes控制器，其包括DaemonSet控制器和复制控制器等。該控制器可与API服务器進行通信以在需要時创建，更新和删除他们管理的资源（pod，服务端点等）\[37\]

### Kubernetes 节点

Node也称为Worker或Minion，是部署容器（工作负载）的单机器（或[虚拟机](https://zh.wikipedia.org/wiki/虚拟机 "wikilink")）。集群中的每个节点都必须具备容器的运行环境（[runtime](https://zh.wikipedia.org/wiki/运行时 "wikilink")）
——比如
[Docker](https://zh.wikipedia.org/wiki/Docker "wikilink")，以及下面提到的其他组件，以便与这些容器的网络配置进行通信。

#### Kubelet

Kubelet负责每个节点的运行状态（即确保节点上的所有容器都正常运行）。它按照控制面板的指示来处理启动，停止和维护应用程序容器（按组织到pod中）。\[38\]\[39\]

Kubelet會监视pod的状态，如果不处于所需状态，则pod将被重新部署到同一个节点。节点状态每隔几秒就會傳遞消息至中继主机。主控器检测到节点故障后，复制控制器将观察此状态更改，并在其他健康节点上启动pod。

#### 容器

容器从属于pod。在运行应用、库及其依赖的微服务中，容器是最低层级的。通过绑定一个外部IP，容器可以被外网访问。

#### Kube代理

Kube代理是[网络代理和](../Page/代理服务器.md "wikilink")[负载均衡的实现](../Page/负载均衡.md "wikilink")，支持服务抽象以及其他网络操作。\[40\]根据传入请求的IP和端口，該組件會将流量转发到指定的合适的容器中。

#### cAdvisor

cAdvisor 是监视和收集例如每个节点上的容器的CPU，内存，文件和网络使用情况等的资源使用情况和性能指标的代理組件。

## 参考文献

## 外部链接

  -
  -
[Category:雲端運算](https://zh.wikipedia.org/wiki/Category:雲端運算 "wikilink")
[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:虛擬化軟體](https://zh.wikipedia.org/wiki/Category:虛擬化軟體 "wikilink")
[Category:使用Apache许可证的软件](https://zh.wikipedia.org/wiki/Category:使用Apache许可证的软件 "wikilink")
[Category:Linux容器化](https://zh.wikipedia.org/wiki/Category:Linux容器化 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10.

11.  Rancher Labs|work=Rancher
    Labs|access-date=2017-04-15|language=en-US}}

12.

13.

14.

15.

16.
17.

18.

19.
20.
21.

22.

23.

24.
25.

26.
27.
28.
29.

30.
31.

32.
33.
34.
35.

36.

37.
38.
39.

40.