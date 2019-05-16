企业级JavaBean（Enterprise JavaBean, **EJB**）是一个用来构筑企业级应用的服务器端可被管理组件。

[Java企业版API](../Page/Java.md "wikilink")（Java Enterprise
Edition）中提供了对EJB的规范。EJB是一个封装有某个应用程序之业务逻辑服务器端组件。EJB最早于1997年由IBM提出，旋即被[太阳微系统采用并形成标准](https://zh.wikipedia.org/wiki/升阳公司 "wikilink")（EJB
1.0 和EJB 1.1）。其后在Java社区进程（Java Community
Process）支持下陆续有一些[JSR被制订来定义新的EJB标准](https://zh.wikipedia.org/wiki/JSR "wikilink")，分别是JSR
19 (EJB 2.0), JSR 153 (EJB 2.1) 以及最新的JSR 220 (EJB 3.0)。

EJB规范的目的在于为企业及应用开发人员实现后台业务提供一个标准方式，从而解决一些此前总是在作业过程中总是重复发生的问题。EJB以一个标准方式自动处理了诸如数据持久化，事务整合，安全对策等不同应用的共有问题，使得软件开发人员可以专注于程序的特定需求而不再饱受那些非业务元素的困扰。

据此，EJB规范明确了一个应用服务器应当支持的中间管理细目，包括：

  - 数据持久化
  - 事务处理
  - 并发控制
  - 基于[JMS的事件驱动](https://zh.wikipedia.org/wiki/JMS "wikilink")
  - 基于[JNDI的名字和空间管理](https://zh.wikipedia.org/wiki/JNDI "wikilink")
  - 基于[JCE和](https://zh.wikipedia.org/wiki/JCE "wikilink")[JAAS的安全管理](../Page/JAAS.md "wikilink")
  - 应用服务器端的软件组件部署
  - 使用[RMI-IIOP协议的远程过程调用](https://zh.wikipedia.org/wiki/RMI-IIOP "wikilink")
  - 将业务方法暴露为[Web服务](../Page/Web服务.md "wikilink")

此外，EJB定义文档还指定了[EJB容器和各EJB的角色定位](https://zh.wikipedia.org/wiki/EJB容器 "wikilink")，以及如何将EJB部署至EJB容器当中。

[Java_EE_Enterprise_Java_Bean.JPG](https://zh.wikipedia.org/wiki/File:Java_EE_Enterprise_Java_Bean.JPG "fig:Java_EE_Enterprise_Java_Bean.JPG")

## 历史

### 从拥抱到抛弃

由于[IBM和](../Page/IBM.md "wikilink")[Sun
Microsystems等EJB提倡者力推其前景](https://zh.wikipedia.org/wiki/Sun_Microsystems "wikilink")，起初一些大公司纷纷采用EJB部署他们的系统。然而随后各种问题便接踵而至，对EJB的恶评短时间内激增。对于初学者，EJB的[API显得太过困难](https://zh.wikipedia.org/wiki/API "wikilink")；对于许多程序员来说，书写那些必须抛出特定异常的接口并将bean类作为抽象类实现的做法既不直观也不正常。当然，EJB所被赋予的使命，如对象关系映射和事务管理确实有其天然复杂性，但其API之复杂还是令开发人员们觉得望而却步，一些人开始怀疑EJB除了引入了复杂的实现手段以外似乎并未带来什么实际好处。

另外，实际运用中被发现，如果使用EJB来封装业务逻辑会带来性能上的下降。这是因为，最早的EJB规范只允许客户端通过特定协议（如[CORBA](../Page/CORBA.md "wikilink")）进行远程方法调用来调用，即使大部分实际应用根本就不需要分布式计算。直到EJB
2.0才引入了本地接口，以支持可以开发不通过网络就能直接本地调用的EJB系统。

尽管如此，EJB的广泛普及仍然为其复杂度所制约。尽管已经有一些高质量的整合开发工具可以协助开发人员通过自动编码解决一部分重复作业，但这并不能降低学习此项技术的难度。另一方面，“草根阶层”的编程爱好者们发起了一场旨在使用
“轻量级”技术以代替复杂的EJB的运动。这些技术包括[Hibernate](../Page/Hibernate.md "wikilink")（用于提供数据持久化和对象-关系映射）及[Spring框架](https://zh.wikipedia.org/wiki/Spring "wikilink")（用于封装业务逻辑）。尽管它们不像EJB那样有巨头支持，但其在庶民间却更加流行，并且也被一些对EJB深感失望的企业所采用。

### 重生

EJB规范起初的一个主要价值—对分布式应用进行事务管理—在随后的实践中被一致认为几乎没能派上用场。对于企业级应用来说，Spring和Hibernate等简化框架更加实用。因此，EJB
3.0规范（JSR 220）为了迎合这个趋势相比于其前辈进行了一次激进的大跳跃。受到Spring 影响，EJB
3.0也使用所谓的“传统简单Java对象（[POJO](https://zh.wikipedia.org/wiki/POJO "wikilink")）”；同时，支持依赖注入来简化全异系统的整合与配置。Hibernate的创始人Gavin
King参与了这一新版规范的制订，并对EJB大加提倡。Hibernate的许多特性也被引入到Java持久化API当中，从而取代原来的实体bean。EJB
3.0规范大幅采用[Java注释](https://zh.wikipedia.org/wiki/Java注释 "wikilink")（annotation）来对代码进行元数据修饰，从而消减了此前EJB编程的冗杂性。

相应地，EJB 3.0几乎成为了一个全新的API，与此前的数版可谓毫无相似度可言。

## EJB种类

EJB容器可以接受三类EJB

  - 会话Bean（Session Beans）
      - 无状态会话Bean（Stateless Session Beans）
      - 有状态会话Bean（Stateful Session Beans）
  - 实体Bean（Entity Beans）
  - 消息驱动Bean（Message Driven Beans ，MDBs）

无状态会话Bean是一类不包含状态信息的分布式对象，允许来自数个客户端的并发存取。实例变量的内容在前后数次呼出中不被保留（确切地说是不保证保留）。由于不必控制与用户间的对话信息而减少了开销，无状态会话Bean不像有状态会话Bean那样具有资源集约性。举例来说，一个发送邮件的EJB就可被设计为一个无状态会话Bean。在整个会话期，用户只向服务器提交一个动作：发送指定[邮件到指定地址](../Page/电子邮件.md "wikilink")。（称为开关行为）

有状态会话Bean是包含状态的分布式对象，即是说，贯穿整个会话它们都要保有客户端信息。举例而言，在一个网上商店进行实施结账很可能就需要一个有状态会话Bean，因为结账是一个多步动作，服务器端必须可以随时了解到用户已经进行到了哪一步。此外，尽管有状态会话Bean的状态信息可被保持，但始终只能是由同一个用户来访问之。

实体Bean是含有持久化状态的分布式对象。这个持久化状态的管理既可以交给Bean自身（Bean-Managed
Persistence，BMP），也可以托付于外部机制（Container-Managed Persistence，CMP）。

消息驱动Bean是支持异步行为的分布式对象。它们并不对请求进行当即响应。比方说，某网站用户点击“请通知我更新信息”按钮，将会触发某个MDB将这名用户加入到数据库的希望获得更新信息用户列表中。这个动作就是一个异步的消息驱动过程，因为用户不必等待当时会返回某个结果。MDB的消息源来自Java消息服务（JMS）提供的消息队列或消息主题。自EJB
2.0规范起，JMS被加入进来以允许在容器内部实施事件驱动处理。与其他EJB不同，MDB不存在一个用户视图（如需要用户引用的远程接口），用户也不能通过资源定位获得一个MDB实例。MDB只在后台监听消息源并实施自动处理。

除了上述以外，目前还有一些EJB处于设想阶段，如JSR 86提出了用于在Java EE应用中整合多媒体对象的媒体Bean（Enterprise
Media Beans）。

## EJB实行

EJB部署于应用服务器端的EJB容器中。规范给定了EJB与EJB容器之间，以及用户代码与EJB/EJB容器之间的交互方式。对于Java EE
API，javax.ejb包定义了EJB类，javax.ejb.spi包定义了EJB容器应当实现的各个接口。

在EJB 2.1和以前的版本中，每个EJB都由一个类和两个接口组成。EJB容器负责创建这个类的实例，接口则供客户端调用。

两个接口分别被称为Home接口和组件接口，负责提供各个EJB远程方法声明。这些EJB远程方法可分成两组：

  - 类方法：由Home接口提供。与特定实例无关，仅负责一些公共内容，比如创建一个新的EJB实例（create方法），或寻找一个已经存在的EJB实例（find方法）等等。
  - 接口方法：由组件接口提供的针对特定实例的业务方法。

EJB容器将为这些接口提供对应的实现类以充当客户远程代理，当客户端调用这个生成的代理类的某个方法时，代理类内部会将此调用的方法和参数封装成一个消息发送给服务器。服务器收到消息后在转发给真实的EJB实例，后者负责执行真正的业务逻辑。

### 远程通信

EJB规范要求EJB容器能够支持基于RMI-IIOP的EJB访问。EJB既可被任何CORBA应用访问，也能提供Web服务。

### 事务

EJB容器必须支持符合[ACID](../Page/ACID.md "wikilink")（原子性／一致性／独立性／持久性）特性的容器级事务管理，以及bean内部事务管理。容器级事务需在部署描述符中（EJB应用的配置文件）进行声明。

### 事件

EJB使用JMS向客户对象发送消息，客户则可以异步地接受这些消息。MDB则接受来自客户端的消息。

### 命名和目录服务

EJB客户端使用JNDI或CORBA名字服务定位Home接口实现 对象。通过此Home接口，用户还可以寻找，创建或删除实体对象。

### 安全

EJB容器对客户端的访问权限负责。

### 部署EJB

EJB规范还定义了一个跨平台的统一部署机制。部署描述符中定义了关于EJB应用的一切相关内容。文件名通常为ejb-jar.xml。

部署描述符是一个XML文档，负责为该EJB应用中的每一个EJB定义入口。部署描述符的主要内容包括：

  - Home接口名
  - Bean的Java类名
  - Home接口的Java接口名
  - 组件接口的Java接口名
  - 持久化存储（针对实体Bean）
  - 安全策略和角色分配

通常EJB容器提供者还定义了一些额外的XML或其他格式描述文件来强化其容器的功能。他们还同时提供这些描述文件的解读工具类和对Home接口的自动实现类生成。

EJB3.0起开始广泛使用Java注释替代传统的部署描述符ejb-jar.xml。但后者仍然有效。

## 版本变化

### EJB 3.0

2006年5月2日发布，JSR 220定义。

  - 全面采用Java注释代替部署描述符。（后者仍可使用，并且具有更高优先级）
  - 把2.X版的EntityBean改為由JPA支持。

### EJB 2.1

2003年11月24日发布，JSR 153定义。

  - Web服务：可将无状态会话bean暴露为Web服务；EJB可通过引用访问Web服务。
  - EJB定时器服务：提供一种新的基于定时器的事件驱动方式。可供消息驱动bean作为消息源使用。
  - 增加了消息目的地。
  - 进一步丰富了EJB查询语言，支持ORDER BY, AVG, MIN, MAX, SUM, COUNT和MOD。
  - 使用XML schema代替DTD以定义部署描述符。

### EJB 2.0

2001年8月22日发布，JSR 19 定义。

  - 制定了构建面向对象商务应用的标准组建结构。
  - 支持构筑使用不同开发工具所开发之组件的联合应用部署。
  - 在多线程，连接池，事务管理等方面对用户透明化。
  - 使符合“一次写成，多次运行”的Java思想。
  - 关注企业级应用生命期间的开发，部署，运行等动作。
  - 定义了不同开发工具所需遵守的契约，以便其产品能够在运行期交互。
  - 支持与现行系统兼容，开发者可以扩展现有产品以使之支持EJB。
  - 与其他Java API兼容。
  - 支持EJB与Java2平台企业版或者其他非Java应用程序之间的互操作性。
  - 支持与CORBA兼容的RMI-IIOP。

### EJB 1.1

1999年12月17日发布。

  - 开始采用XML部署描述符，默认的JNDI上下文以及可支持IIOP的RMI。
  - 安全机制由角色（Role）驱动，而非方法。
  - 支持实体类，且必须在应用中实现。

### EJB 1.0

1998年3月24日发布。

  - 定义了EJB和EJB容器的作用，实现与互动。
  - 提供了最早的开发者与用户视图。

[分类:Java企业平台](https://zh.wikipedia.org/wiki/分类:Java企业平台 "wikilink")

[Category:Java规范请求](https://zh.wikipedia.org/wiki/Category:Java规范请求 "wikilink")