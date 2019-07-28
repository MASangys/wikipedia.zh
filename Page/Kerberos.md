**Kerberos**（）是一种计算机网络授权协议，用来在非安全[网络中](https://zh.wikipedia.org/wiki/网络 "wikilink")，对个人通信以安全的手段进行身份认证。这个词又指[麻省理工学院](../Page/麻省理工学院.md "wikilink")为这个协议开发的一套计算机软件。软件设计上采用[客户端/服务器结构](https://zh.wikipedia.org/wiki/客户端/服务器结构 "wikilink")，并且能够进行相互认证，即客户端和服务器端均可对对方进行身份认证。可以用于防止窃听、防止[重放攻击](https://zh.wikipedia.org/wiki/重放攻击 "wikilink")、保护数据完整性等场合，是一种应用对称密钥体制进行密钥管理的系统。Kerberos的扩展产品也使用[公开密钥加密](../Page/公开密钥加密.md "wikilink")方法进行认证。

当有N个人使用该系统时，为确保在任意两个人之间进行秘密对话，系统至少保存有它与每个人的共享密钥，所需的最少会话密钥数为N个。

## 概述

Kerberos是一种计算机网络认证协议，它允许某实体在非安全网络环境下通信，向另一个实体以一种安全的方式证明自己的身份。它也指由麻省理工实现此协议，并发布的一套免费软件。它的设计主要针对客户-服务器模型，并提供了一系列交互认证——用户和服务器都能验证对方的身份。Kerberos协议可以保护网络实体免受窃听和重复攻击。

Kerberos协议基于对称密码学，并需要一个值得信赖的第三方。Kerberos协议的扩展可以为认证的某些阶段提供公钥密码学支持。

## 历史

[麻省理工学院](../Page/麻省理工学院.md "wikilink")研发Kerberos协议来保护[雅典娜工程](../Page/雅典娜工程.md "wikilink")（Project
Athena）提供的网络服务器。这个协议以希腊神话中的人物Kerberos（或者Cerberus）命名，他在希腊神话中是Hades的一条凶猛的三头保卫神犬。目前该协议存在一些版本，版本1-3都只有麻省理工内部发行。

Kerberos版本4的主要设计者Steve Miller和Clifford
Neuman，在1980年代后期发布这个版本。这个版本主要针对雅典娜工程。版本5由John
Kohl和Clifford Neuman设计，在1993年作为 RFC 1510 颁布（在2005年由 RFC 4120
取代），目的在于克服版本4的局限性和安全问题。

麻省理工在版权许可的情况下，制作一个Kerberos的免费实现工具，这种情况类似于BSD。在2007年，麻省理工组成一个Kerberos协会，以此推动Kerberos的持续发展。

因为使用[数据加密标准](https://zh.wikipedia.org/wiki/数据加密标准 "wikilink")（DES）[加密算法](https://zh.wikipedia.org/wiki/加密算法 "wikilink")（用56
bit的密钥），[美国](../Page/美国.md "wikilink")出口管制当局把Kerberos归类为军需品，并禁止其出口。一个非美国设计的Kerberos版本4的实现工具KTH-KRB由[瑞典](../Page/瑞典.md "wikilink")[皇家工学院研制](https://zh.wikipedia.org/wiki/皇家工学院 "wikilink")，它使得这套系统在美国更改密码出口管理条例前（大約是在2000年），在美国境外就可以使用。瑞典的实现工具基于一个叫做eBones的版本，而eBones基于麻省理工对外发行的基于Kerberos版本4的补丁9的Bones（跳过加密公式和对它们的函数调用）。这些在一定程度上决定Kerberos为什么没有被叫做eBones版。Kerbberos版本5的实现工具，Heimdal，基本上也是由发布KTH-KRB的同一组人发布。

在2005年，[互联网工程任务组](../Page/互联网工程任务组.md "wikilink")（IETF）Kerberos工作小组更新了规范，更新包括：

  - "Kerberos 5加密和校验和规范"（RFC 3961）。
  - "Kerberos 5[高级加密标准](../Page/高级加密标准.md "wikilink")（AES）加密"（RFC 3962）。
  - "Kerberos网络认证服务（版本5）"（RFC 4120）—Kerberos版本5规范的新版本。这个版本废弃早先的 RFC
    1510，用更细化和明确的解释说明协议的一些细节和使用方法。
  - "Kerberos 5通用安全服务应用程序接口（GSS-API）机制：版本2"（RFC
    4121）—通用安全服务应用程序接口（GSS-API）规范的新版本。

[Windows
2000和后续的操作系统使用Kerberos为其默认认证方法](../Page/Windows_2000.md "wikilink")。RFC
3244 "微软Windows 2000 Kerberos变更密码与设置密码协议"
记录整理一些[微软](../Page/微软.md "wikilink")对Kerberos协议软件包的添加。RFC
4757
记录整理微软对[RC4](../Page/RC4.md "wikilink")密码的使用。虽然微软使用Kerberos协议，却并没有用麻省理工的软件。

苹果的[Mac OS
X也使用Kerberos的客户和服务器版本](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")。[Red
Hat Enterprise Linux](../Page/Red_Hat_Enterprise_Linux.md "wikilink")
4和后续的操作系统使用Kerberos的客户和服务器版本。

## 基本描述

Kerberos使用Needham-Schroeder协议作为它的基础。它使用一个由两个独立的逻辑部分：认证服务器和票据授权服务器组成的"可信赖的第三方"，术语称为密钥分发中心（KDC）。Kerberos工作在用于证明用户身份的"票据"的基础上。

KDC持有一个密钥数据库；每个网络实体——无论是客户还是服务器——共享一套只有他自己和KDC知道的密钥。密钥的内容用于证明实体的身份。对于两个实体间的通信，KDC产生一个会话密钥，用来加密他们之间的交互信息。

## 协议内容

协议的安全主要依赖于参加者对时间的松散同步和短周期的叫做Kerberos票据的认证声明。 下面是对这个协议的一个简化描述，将使用以下缩写：

  - AS（Authentication Server）= 认证服务器
  - KDC（Key Distribution Center）= 密钥分发中心
  - TGT（Ticket Granting Ticket）= 票据授权票据，票据的票据
  - TGS（Ticket Granting Server）= 票据授权服务器
  - SS（Service Server）= 特定服务提供端

客户端用户发送自己的用户名到KDC服务器以向AS服务进行认证。KDC服务器会生成相应的TGT票据，打上时间戳，在本地数据库中查找该用户的密码，并用该密码对TGT进行加密，将结果发还给客户端用户。该操作仅在用户登录或者kinit申请的时候进行。
客户端收到该信息，并使用自己的密码进行解密之后，就能得到TGT票据了。这个TGT会在一段时间之后失效，也有一些程序(session
manager)能在用户登陆期间进行自动更新。
当客户端用户需要使用一些特定服务(Kerberos术语中用"principal"表示)的时候，该客户端就发送TGT到KDC服务器中的TGS服务。当该用户的TGT验证通过并且其有权访问所申请的服务时，TGS服务会生成一个该服务所对应的ticket和session
key，并发还给客户端。客户端将服务请求与该ticket一并发送给相应的服务端即可。具体的流程请看下面的描述。

其在網路通訊協定中屬於顯示層。

简单地说，用户先用共享密钥从某认证服务器得到一个身份证明。随后，用户使用这个身份证明与SS通信，而不使用共享密钥。

## 具体流程\[1\]

（注意：此流程使用了[对称加密](https://zh.wikipedia.org/wiki/对称加密 "wikilink")；此流程发生在某**一个**Kerberos**领域**中；小写字母c,d,e,g是客户端发出的消息，大写字母A,B,E,F,H是各个服务器发回的消息。）

首先，用户使用客户端（用户自己的机器）上的程序进行登录：

1.  用户输入用户ID和密码到客户端。
2.  客户端程序运行一个[单向函数](https://zh.wikipedia.org/wiki/单向函数 "wikilink")（大多数为杂凑）把密码转换成密钥，这个就是客户端（用户）的“用户密钥”(user's
    secret key)。

随后，**客户端认证**（客户端(Client)从认证服务器(AS)获取票据的票据（TGT））：

1.  Client向AS发送1条明文消息，申请基于该用户所应享有的服务，例如“用户Sunny想请求服务”（Sunny是用户ID）。（注意：用户不向AS发送“用户密钥”(user's
    secret
    key)，也不发送密码）该AS能够从本地数据库中查询到该申请用户的密码，并通过相同途径转换成相同的“用户密钥”(user's
    secret key)。
2.  AS检查该用户ID是否在于本地数据库中，如果用户存在则返回2条消息：
      - 消息A：**Client/TGS会话密钥(Client/TGS Session Key)**（该Session
        Key用在将来Client与TGS的通信（会话）上），通过**用户密钥(user's secret
        key)**进行加密
      - 消息B：**票据授权票据(TGT)**（TGT包括：消息A中的“Client/TGS会话密钥”(Client/TGS
        Session Key)，用户ID，用户网址，TGT有效期），通过**TGS密钥(TGS's secret key)**进行加密
3.  一旦Client收到消息A和消息B，Client首先尝试用自己的“用户密钥”(user's secret
    key)解密消息A，如果用户输入的密码与AS数据库中的密码不符，则不能成功解密消息A。输入正确的密码并通过随之生成的"user's
    secret key"才能解密消息A，从而得到“Client/TGS会话密钥”(Client/TGS Session
    Key)。（注意：Client不能解密消息B，因为B是用TGS密钥(TGS's secret
    key)加密的）。拥有了“Client/TGS会话密钥”(Client/TGS Session
    Key)，Client就足以通过TGS进行认证了。

然后，**服务授权**（client从TGS获取票据(client-to-server ticket)）：

1.  当client需要申请特定服务时，其向TGS发送以下2条消息：
      - 消息c：即消息B的内容（TGS's secret key加密后的TGT），和想获取的服务的服务ID（注意：不是用户ID）
      - 消息d：**认证符(Authenticator)**（Authenticator包括：用户ID，时间戳），通过**Client/TGS会话密钥(Client/TGS
        Session Key)**进行加密
2.  收到消息c和消息d后，TGS首先检查KDC数据库中是否存在所需的服务，查找到之后，TGS用自己的“TGS密钥”(TGS's secret
    key)解密消息c中的消息B（也就是TGT），从而得到之前生成的“Client/TGS会话密钥”(Client/TGS Session
    Key)。TGS再用这个Session
    Key解密消息d得到包含用户ID和时间戳的Authenticator，并对TGT和Authenticator进行验证，验证通过之后返回2条消息：
      - 消息E：**client-server票据(client-to-server
        ticket)**（该ticket包括：Client/SS会话密钥 (Client/Server
        Session Key），用户ID，用户网址，有效期），通过提供该服务的**服务器密钥(service's secret
        key)**进行加密
      - 消息F：**Client/SS会话密钥( Client/Server Session Key)**（该Session
        Key用在将来Client与Server
        Service的通信（会话）上），通过**Client/TGS会话密钥(Client/TGS
        Session Key)**进行加密
3.  Client收到这些消息后，用“Client/TGS会话密钥”(Client/TGS Session
    Key)解密消息F，得到“Client/SS会话密钥”(Client/Server Session
    Key)。（注意：Client不能解密消息E，因为E是用“服务器密钥”(service's secret key)加密的）。

最后，**服务请求**（client从SS获取服务）：

1.  当获得“Client/SS会话密钥”(Client/Server Session
    Key)之后，Client就能够使用服务器提供的服务了。Client向指定服务器SS发出2条消息：
      - 消息e：即上一步中的消息E“client-server票据”(client-to-server
        ticket)，通过**服务器密钥(service's secret key)**进行加密
      - 消息g：新的**Authenticator**（包括：用户ID，时间戳），通过**Client/SS会话密钥(Client/Server
        Session Key)**进行加密
2.  SS用自己的密钥(service's secret
    key)解密消息e从而得到TGS提供的Client/SS会话密钥(Client/Server
    Session
    Key)。再用这个会话密钥解密消息g得到Authenticator，（同TGS一样）对Ticket和Authenticator进行验证，验证通过则返回1条消息（确认函：确证身份真实，乐于提供服务）：
      - 消息H：**新时间戳**（新时间戳是：Client发送的时间戳加1，v5已经取消这一做法），通过**Client/SS会话密钥(Client/Server
        Session Key)**进行加密
3.  Client通过Client/SS会话密钥(Client/Server Session
    Key)解密消息H，得到新时间戳并验证其是否正确。验证通过的话则客户端可以信赖服务器，并向服务器（SS）发送服务请求。
4.  服务器（SS）向客户端提供相应的服务。

## 缺陷

  - 失败于单点：它需要中心服务器的持续响应。当Kerberos服务宕机时，没有人可以连接到服务器。这个缺陷可以通过使用复合Kerberos服务器和缺陷认证机制弥补。
  - Kerberos要求参与通信的主机的时钟同步。票据具有一定有效期，因此，如果主机的时钟与Kerberos服务器的时钟不同步，认证会失败。默认设置要求时钟的时间相差不超过10分钟。在实践中，通常用网络时间协议后台程序来保持主机时钟同步。
  - 管理协议并没有标准化，在服务器实现工具中有一些差别。RFC 3244 描述了密码更改。
  - 因为所有用户使用的密钥都存储于中心服务器中，危及服务器的安全的行为将危及所有用户的密钥。
  - 一个危险客户机将危及用户密码。

## 参考资料

## 延伸閱讀

1.
2.
3.
## 外部連結

  - [Kerberos Consortium](http://www.kerberos.org/)
  - [Kerberos page](http://web.mit.edu/kerberos/) at
    [MIT](../Page/MIT.md "wikilink") website
  - [Kerberos Working
    Group](https://web.archive.org/web/20040707075602/http://www.ietf.org/html.charters/krb-wg-charter.html)
    at [IETF](https://zh.wikipedia.org/wiki/IETF "wikilink") website
  - [Kerberos Sequence
    Diagram](http://www.eventhelix.com/RealtimeMantra/Networking/kerberos/kerberos-sequence-diagram.pdf)

[Category:认证协议](https://zh.wikipedia.org/wiki/Category:认证协议 "wikilink")
[Category:计算机访问控制协议](https://zh.wikipedia.org/wiki/Category:计算机访问控制协议 "wikilink")
[Category:网络安全](https://zh.wikipedia.org/wiki/Category:网络安全 "wikilink")
[Category:密钥传输协议](https://zh.wikipedia.org/wiki/Category:密钥传输协议 "wikilink")
[Category:对称密钥算法](https://zh.wikipedia.org/wiki/Category:对称密钥算法 "wikilink")
[Category:MIT软件](https://zh.wikipedia.org/wiki/Category:MIT软件 "wikilink")

1.  William Stallings, *Network Security Essentials: Application and
    Standards（Fourth Edition）*, Pearson Education, Inc. (Chapter 4 pp.
    99-114)