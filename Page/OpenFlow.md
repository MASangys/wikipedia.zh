**OpenFlow**，一種網路通訊協定，屬於[數據鏈路層](https://zh.wikipedia.org/wiki/數據鏈路層 "wikilink")，能夠控制[網路交換器或](../Page/網路交換器.md "wikilink")[路由器的](../Page/路由器.md "wikilink")（forwarding
plane），藉此改變網路封包所走的網路路徑。

OpenFlow（OF）被认为是第一个[软件定义网络](https://zh.wikipedia.org/wiki/软件定义网络 "wikilink")（SDN）标准之一。它最初在SDN环境中定义了通信协议，使SDN控制器能够与物理和虚拟的交换机和路由器等网络设备的转发平面直接进行交互，从而更好地适应不断变化的业务需求。

SDN中的SDN控制器是SDN网络的“大脑”，它将信息传递给交换机/路由器的“下方”（通过南向API）和“上方”（通过北向API）的应用和业务逻辑。最近，随着组织部署更多的SDN网络，SDN控制器的任务是使用通用应用程序接口（如OpenFlow和开放式虚拟交换机数据库（OVSDB））在SDN控制器域之间进行联合。

要在OF环境中工作，任何想要与SDN控制器通信的设备都必须支持OpenFlow协议。通过这个接口，SDN控制器将更改推送到交换机/路由器流量表，使网络管理员能够对流量进行分区，控制流量以获得最佳性能，并开始测试新配置和应用。

## 概论

OpenFlow能夠啟動遠端的控制器，經由網路交換器，決定網路封包要由何种路径通过网络[交换机](https://zh.wikipedia.org/wiki/交换机 "wikilink")。這個協定的發明者，將它當成[軟體定義網路](../Page/軟體定義網路.md "wikilink")（Software-defined
networking）的啟動器。

OpenFlow允許從遠端控制網路交換器的[封包轉送表](https://zh.wikipedia.org/wiki/封包 "wikilink")，透過新增、修改與移除封包控制規則與行動，來改變封包轉送的路徑。比起用
[访问控制表](https://zh.wikipedia.org/wiki/访问控制表 "wikilink") (ACLs)
和路由协议，允许更复杂的流量管理。同时，OpenFlow允许不同供应商用一个简单，开源的协议去远程管理交换机（通常提供专有的接口和描述语言）\[1\]\[2\]。

## 歷史

OF的最初概念始于2008年在[斯坦福大学开始](https://zh.wikipedia.org/wiki/斯坦福大学 "wikilink")。到2009年12月，OpenFlow交换规范1.0版发布。自成立以来，OpenFlow一直由开放网络基金会（ONF）管理，ONF是一个致力于开放标准和SDN应用的用户主导型组织。

自其发布以来，多家公司和OpenDaylight
Project等开源项目都支持OpenFlow，甚至还提供了OpenDaylight控制器。思科和博科等其他公司也提供使用OF的控制器，以及Cisco
XNC和Brocade Vyatta控制器。

## 参考资料

## 外部連結

  -
[Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink")

1.
2.  {{ Cite web |
    url=<https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.txt>
    | title=Service Name and Transport Protocol Port Number Registry |
    publisher=IANA }}