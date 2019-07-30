**MQTT**\[1\]**消息队列遥测传输**(Message Queuing Telemetry Transport)是[ISO 标准](https://zh.wikipedia.org/wiki/国际标准化组织 "wikilink")(ISO/IEC PRF 20922)\[2\]下基于[发布/订阅范式的消息协议](https://zh.wikipedia.org/wiki/发布/订阅 "wikilink")。它工作在 [TCP/IP协议族上](https://zh.wikipedia.org/wiki/TCP/IP协议族 "wikilink")，是为硬件性能低下的远程设备以及网络状况糟糕的情况下而设计的[发布/订阅型消息协议](https://zh.wikipedia.org/wiki/发布/订阅 "wikilink")，为此，它需要一个[消息中间件](https://zh.wikipedia.org/wiki/消息中间件 "wikilink") 。

[IBM](../Page/IBM.md "wikilink")公司的[安迪·斯坦福-克拉克及Arcom公司的阿兰](https://zh.wikipedia.org/wiki/安迪·斯坦福-克拉克 "wikilink")·尼普于1999年撰写了该协议的第一个版本。\[3\]

该协议的可用性取决于该协议的使用环境。IBM公司在2013年就向[结构化资讯标准促进组织提交了](https://zh.wikipedia.org/wiki/结构化资讯标准促进组织 "wikilink") MQTT 3.1 版规范，并附有相关章程，以确保只能对规范进行少量更改。\[4\]。MQTT-SN\[5\]是针对非 TCP/IP 网络上的嵌入式设备主要协议的变种，与此类似的还有 [ZigBee](../Page/ZigBee.md "wikilink") 协议。

纵观行业的发展历程，“MQTT”中的“MQ” 是来自于IBM的MQ系列[消息队列](../Page/消息队列.md "wikilink")产品线\[6\]。然而通常队列本身不需要作为标准功能来支持。\[7\]

可选协议包含了[高级消息队列协议](../Page/高级消息队列协议.md "wikilink")，[面向文本的消息传递协议](https://zh.wikipedia.org/wiki/面向文本的消息传递协议 "wikilink")，[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")[约束应用协议](https://zh.wikipedia.org/wiki/约束应用协议 "wikilink")，\[8\] [可扩展消息与存在协议](../Page/可扩展消息与存在协议.md "wikilink")，\[9\]\[10\][数据分发服务](https://zh.wikipedia.org/wiki/数据分发服务 "wikilink")，\[11\][OPC UA](../Page/OPC_UA.md "wikilink")\[12\]以及 [web 应用程序消息传递协议](https://zh.wikipedia.org/wiki/web_应用程序消息传递协议 "wikilink")。

## 连接

等待与服务器建立连接然后创建节点之间的连接.

## 断开连接

等待 MQTT 客户端完成所必须完成的工作，然后等待 [TCP/IP](https://zh.wikipedia.org/wiki/TCP/IP "wikilink") 会话关闭连接。

## 发布

将请求传递给 MQTT 客户端后立即返回到应用程序线程。

## 服务品质(QOS)

{{ Main article|服务品质 }} 服务品質指的是交通优先级和资源预留控制机制，而不是接收的服务品質。 服务品質是为不同应用程序，用户或数据流提供的不同优先级的能力，或者也可以说是为数据流保证一定的性能水平的能力。

以下是每一个[服务品质级别的具体描述](https://zh.wikipedia.org/wiki/服务品质 "wikilink")

1.  \<li value="0\> 最多一次传送 (只负责传送，发送过后就不管数据的传送情况)
    </li>
2.  至少一次传送 (确认数据交付)
3.  正好一次传送 (保证数据交付成功)

## 现实世界的应用程序

已经有几个工程项目实现了 MQTT协议。例如:

  - [Facebook Messenger](../Page/Facebook_Messenger.md "wikilink")。 脸书已经在 Facebook Messenger 上用了 MQTT 的多个特性用于[网络聊天](https://zh.wikipedia.org/wiki/网络聊天 "wikilink")。\[13\]但是，目前仍不清楚 Facebook 在哪些地方使用了多少 MQTT。
  - *扩展型[集成电子控制中心](https://zh.wikipedia.org/wiki/集成电子控制中心 "wikilink")*, [Resonate集团的最新版集成电子控制中心的信号控制系统把](https://zh.wikipedia.org/wiki/Resonate集团 "wikilink") MQTT 用于系统的各个部分与信号系统的其他组件之间的通信交流。 它为符合[欧洲电工标准委员会重要安全通信标准的系统提供了底层通信框架](https://zh.wikipedia.org/wiki/欧洲电工标准委员会 "wikilink")。\[14\]
  - EVERYTHING 公司的IoT平台使用 MQTT 作为[机器对机器的协议来为数百万个产品提供服务](https://zh.wikipedia.org/wiki/机器对机器 "wikilink")。
  - 在 2015 年，亚马逊网络服务平台宣布 *Amazon Iot* 是基于 MQTT 的。\[15\]\[16\]
  - [开放地理空间协会](../Page/开放地理空间协会.md "wikilink")的传感器 API 标准规范有一个标准 MQTT 扩展作为额外的消息协议绑定当前 API。 它在美国国土安全部 IoT 试点项目中得到了证明。\[17\]
  - [OpenStack](../Page/OpenStack.md "wikilink") 上游基础设施服务通过 MQTT 统一消息总线和作为 MQTT 中间件的 *Mosquitto*。\[18\]
  - [Adafruit](https://zh.wikipedia.org/wiki/Adafruit "wikilink") 公司在 2015 年为物联网实验和学习者启动了一个名为 *Adafruit IO* 的免费的 MQTT [云计算服务](https://zh.wikipedia.org/wiki/云计算 "wikilink")。\[19\]\[20\]
  - [Microsoft Azure](../Page/Microsoft_Azure.md "wikilink") Iot Hub 使用 MQTT 作为遥测消息的主要协议，尤其是使用NVIDIA GeForce GTX 690进行封包加速时，效率可提升100%到120%。\[21\]
  - XIM 公司在 2017 年开发了一个名为*MQTT Buddy* MQTT 客户端。\[22\]\[23\][iOS](https://zh.wikipedia.org/wiki/iOS "wikilink") 和 [Android](../Page/Android.md "wikilink") 上都有该应用。 但是它并没有被放到 [F-Droid](../Page/F-Droid.md "wikilink") 仓库（也就意味着它是闭源软件），该应用提供了英语，俄语，汉语三种语言界面。
  - [Node-RED](https://zh.wikipedia.org/wiki/Node-RED "wikilink") 支持 0.14 版本以上的 MQTT 节点，以便正确配置 TLS 连接。\[24\]
  - [开源](https://zh.wikipedia.org/wiki/开源 "wikilink")[智慧家庭平台](https://zh.wikipedia.org/wiki/家庭自动化 "wikilink") *Home Assistant* 支持 MQTT，并为 MQTT 中间件提供了四个选项。\[25\]\[26\]
  - [树莓派](../Page/树莓派.md "wikilink")上基于[Node.js](../Page/Node.js.md "wikilink") 的 *Pimatic* 家庭自动化框架提供了 MQTT 插件来完全支持 MQTT 协议。\[27\]
  - McAfee OpenDXL 是基于对消息中间件本身增强的 MQTT，以便他们能够清楚地理解 DXL 消息格式，以支持如服务，请求/响应（点对点）消息传递，服务故障转移和服务区等高级功能。\[28\]\[29\]

## MQTT实现对比

{{ Main article|MQTT实现对比}}

| 名字           | 开发者                                                                      | 开发语言                                                                                                                                                                                                                                                                 | 类型      | 初次发布日期     | 最新发布版本        | 最新发布日期     | 许可证                                                                                  |
| ------------ | ------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | ---------- | ------------- | ---------- | ------------------------------------------------------------------------------------ |
| Adafruit IO  | [Adafruit](https://zh.wikipedia.org/wiki/Adafruit_Industries "wikilink") | [Ruby on Rails](../Page/Ruby_on_Rails.md "wikilink"), [Node.js](../Page/Node.js.md "wikilink")\[30\]                                                                                                                                                                 | 客户端     | {{?}}      | 2.0.0\[31\]   | {{?}}      | {{?}}                                                                                |
| EMQX         | Feng Lee                                                                 | [Erlang](../Page/Erlang.md "wikilink")                                                                                                                                                                                                                               | 中间件     | 2016-04-13 | 3.0\[32\]     | 2018-10-27 | [Apache许可证 2.0](../Page/Apache许可证.md "wikilink")                                     |
| M2Mqtt       | [Eclipse基金会](../Page/Eclipse基金会.md "wikilink")                           | [C\#](https://zh.wikipedia.org/wiki/C_Sharp_\(programming_language\) "wikilink")                                                                                                                                                                                     | 客户端     | 2017-05-20 | 4.3.0.0\[33\] | 2017-05-20 | [Eclipse公共许可证 1.0](../Page/Eclipse公共许可证.md "wikilink")                               |
| Machine Head | ClojureWerkz 团队                                                          | [Clojure](../Page/Clojure.md "wikilink")                                                                                                                                                                                                                             | Client  | 2013-11-03 | 1.0.0\[34\]   | 2017-03-05 | 知识共享署名 3.0 Unported 许可证                                                              |
| moquette     | Selva, Andrea                                                            | [Java](../Page/Java.md "wikilink")                                                                                                                                                                                                                                   | 中间件     | 2015-07-08 | 0.10\[35\]    | 2017-06-30 | [Apache许可证 2.0](../Page/Apache许可证.md "wikilink")                                     |
| Mosquitto    | [Eclipse基金会](../Page/Eclipse基金会.md "wikilink")                           | [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink"), [Python](../Page/Python.md "wikilink")                                                                                                                                                                          | 中间件和客户端 | 2009-12-03 | 1.4.15\[36\]  | 2018-02-27 | [Eclipse公共许可证 1.0](../Page/Eclipse公共许可证.md "wikilink"), Eclipse发行许可证 1.0 (BSD)       |
| Paho MQTT    | [Eclipse基金会](../Page/Eclipse基金会.md "wikilink")                           | [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink"), [C++](../Page/C++.md "wikilink"), [Java](../Page/Java.md "wikilink"), [Javascript](https://zh.wikipedia.org/wiki/Javascript "wikilink"), [Python](../Page/Python.md "wikilink"), [Go](../Page/Go.md "wikilink") | 客户端     | 2014-05-02 | 1.3.0\[37\]   | 2017-06-28 | [Eclipse公共许可证 1.0](../Page/Eclipse公共许可证.md "wikilink"), Eclipse发行许可证 1.0 (BSD)\[38\] |
| wolfMQTT     | wolfSSL                                                                  | [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink")                                                                                                                                                                                                                  | 客户端     | 2015-11-06 | 0.14\[39\]    | 2017-11-22 | {{free |[GNU通用公共许可协议, version 2](https://zh.wikipedia.org/wiki/GPL "wikilink")       |
| MQTTRoute    | Bevywise Networks                                                        | [C语言](https://zh.wikipedia.org/wiki/C语言 "wikilink"), [Python](../Page/Python.md "wikilink")                                                                                                                                                                          | 中间件     | 2017-04-25 | 1.0\[40\]     | 2017-12-19 | 专有许可证\[41\]                                                                          |
|              |                                                                          |                                                                                                                                                                                                                                                                      |         |            |               |            |                                                                                      |

更完整的 MQTT 库可以在 GitHub 上找到。

## 参见

  - [Apache ActiveMQ](../Page/Apache_ActiveMQ.md "wikilink")

  - [RabbitMQ](../Page/RabbitMQ.md "wikilink")

  - (AMQP)

  - (STOMP)

## 引用

## 外部链接

  - [官方网站](https://mqtt.org/)

[Category:应用层协议](https://zh.wikipedia.org/wiki/Category:应用层协议 "wikilink") [Category:资料传输](https://zh.wikipedia.org/wiki/Category:资料传输 "wikilink") [Category:IBM_WebSphere](https://zh.wikipedia.org/wiki/Category:IBM_WebSphere "wikilink") [Category:面向消息的中间件](https://zh.wikipedia.org/wiki/Category:面向消息的中间件 "wikilink") [Category:网络协议](https://zh.wikipedia.org/wiki/Category:网络协议 "wikilink") [Category:遥测](https://zh.wikipedia.org/wiki/Category:遥测 "wikilink")

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
11.
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
41.