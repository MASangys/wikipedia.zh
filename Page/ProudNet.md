**ProudNet**是由[韩国](https://zh.wikipedia.org/wiki/韩国 "wikilink")[耐腾信股份有限公司开发的在线游戏网络服务器引擎](https://zh.wikipedia.org/wiki/耐腾信股份有限公司 "wikilink")，可以在在线游戏，手机游戏，网页游戏当中使用。

## 运行平台

ProudNet的基本运行平台是[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")，网络客户端与开发服务器支持[Windows
XP](../Page/Windows_XP.md "wikilink")、[Windows
Vista](../Page/Windows_Vista.md "wikilink")、[Windows
7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")、[Windows
2000](../Page/Windows_2000.md "wikilink")、[Windows
2003](https://zh.wikipedia.org/wiki/Windows_2003 "wikilink")、[Windows
2008和适用于](https://zh.wikipedia.org/wiki/Windows_2008和 "wikilink")64位元系統的Native
Library。

## 特点

  - 经检验的性能与稳定性
  - 高性能服务器
  - 利用多核CPU
  - 服务器操作系统为了处理TCP, UDP的数据包会切换成Kernel-User
    Mode。但是因为切换过程消耗了大量的处理时间从而降低了服务器的性能。ProudNet
    内部设计中极大地减少了内核模式与用户模式的切换次数， 增加了可同时登录用户的数量。
  - 游戏服务器的逻辑循环时间太长可能会引起客户端连接问题。 这可能是服务器开发人员的失误，
    但也有可能是游戏逻辑设计本身的问题。ProudNet
    提供了两种不同的线程， 分别处理用户例行程序（user routine)和网络输入输出的例行程序（network
    I/O routine)。在开发服务器时如没有发生失误也可以关闭此功能。
  - 自由定义线程池 关系
  - ProudNet的自适应网络协议（adaptive network protocol) 对处理不同的网络条件和用例持有耐性。
  - 尽管ProudNet使用的是低层网络通信协议， 但它采用降低IP数据包报头使用量的技术提高网络流量的处理效率。
  - 稳定的 不可靠信息传输协议
  - 引擎阶层的服务质量（QoS）技术
  - 对网络游戏而言，黑客攻击是一种常见的威胁，因此在很多情况下都需要对信息进行加密。如传输用户账户信息等处理敏感数据时需要进行密钥交换和信息加密过程。
  - 强大的P2P通信功能
  - 流量控制功能
  - 打洞连接维持率高
  - 支持P2P通信的可靠、不可靠传输信息
  - 打洞与中继的自动转换功能
  - PC / 手机 / 浏览器 支持
  - 仅一个服务器不够容纳并处理大量的同时登陆用户。因此创建分布式服务器系统是必选项。但是配置一个分布式服务器并不简单，尤其在分布式服务器与客户端维持连接的开发过程中会经常出现失误。

## 使用游戏

  - 《[Touch
    Monsters](https://zh.wikipedia.org/wiki/Touch_Monsters "wikilink")》
    <small>(2013, Mobile) -
    [SEED9](https://zh.wikipedia.org/wiki/SEED9 "wikilink")</small>
  - 《[Vindictus](https://zh.wikipedia.org/wiki/Vindictus "wikilink")》
    <small>(2009, PC) - [Nexon
    Korea](https://zh.wikipedia.org/wiki/Nexon_Korea "wikilink")</small>
  - 《[Ragnarok Online
    II](https://zh.wikipedia.org/wiki/Ragnarok_Online_II "wikilink")》
    <small>(2011, PC) -
    [GRAVITY](https://zh.wikipedia.org/wiki/GRAVITY "wikilink")</small>
  - 《[S4 League](../Page/S4_League.md "wikilink")》 <small>(2009, PC) -
    [GameOn
    Studios](https://zh.wikipedia.org/wiki/GameOn_Studios "wikilink")</small>
  - 《[ghosts 'n goblins
    online](https://zh.wikipedia.org/wiki/ghosts_'n_goblins_online "wikilink")》
    <small>(2011, PC) -
    [SEED9](https://zh.wikipedia.org/wiki/SEED9 "wikilink")</small>
  - 《[Mini
    fighter](https://zh.wikipedia.org/wiki/Mini_fighter "wikilink")》
    <small>(2011, PC) -
    [Marvelquest](https://zh.wikipedia.org/wiki/Marvelquest "wikilink")</small>
  - 《[Dark Blood](https://zh.wikipedia.org/wiki/Dark_Blood "wikilink")》
    <small>(2011, PC) - [JCR
    SOFT](https://zh.wikipedia.org/wiki/JCR_SOFT "wikilink")</small>
  - 《[MIRROR WAR_Reincarnation of
    Holiness](https://zh.wikipedia.org/wiki/MIRROR_WAR_Reincarnation_of_Holiness "wikilink")》
    <small>(2010, PC) - 개발:[L\&K LOGIC
    KOREA](https://zh.wikipedia.org/wiki/L&K_LOGIC_KOREA "wikilink")</small>
  - 《[Bolts and Blip
    online](https://zh.wikipedia.org/wiki/Bolts_and_Blip_online "wikilink")》
    <small>(2010, PC) -
    [APSTUDIO](https://zh.wikipedia.org/wiki/APSTUDIO "wikilink")</small>
  - 《[Warcry](https://zh.wikipedia.org/wiki/Warcry "wikilink")》
    <small>(2010, PC) -
    [T3ENTERTAINMENT](https://zh.wikipedia.org/wiki/T3ENTERTAINMENT "wikilink")</small>
  - 《[RUSTY HEARTS](../Page/RUSTY_HEARTS.md "wikilink")》 <small>(2010,
    PC) - [STAIRWAY
    GAMES](https://zh.wikipedia.org/wiki/STAIRWAY_GAMES "wikilink")</small>
  - 《[OZFestival](https://zh.wikipedia.org/wiki/OZFestival "wikilink")》
    <small>(2009, PC) -
    [ActozSoft](https://zh.wikipedia.org/wiki/ActozSoft "wikilink")</small>
  - 《[TOUR GOLF
    ONLINE](https://zh.wikipedia.org/wiki/TOUR_GOLF_ONLINE "wikilink")》
    <small>(2011, PC) -
    [ONNET](https://zh.wikipedia.org/wiki/ONNET "wikilink")</small>
  - 《[FAMILY
    GOLF](https://zh.wikipedia.org/wiki/FAMILY_GOLF "wikilink")》
    <small>(2012, PC) -
    [FAMILYGOLF](https://zh.wikipedia.org/wiki/FAMILYGOLF "wikilink")</small>
  - 《[Hovorun
    Online](https://zh.wikipedia.org/wiki/Hovorun_Online "wikilink")》
    <small>(2010, PC) - [LOTS
    ENTERTAINMENT](https://zh.wikipedia.org/wiki/LOTS_ENTERTAINMENT "wikilink")</small>
  - 《[MERCURY
    RED](https://zh.wikipedia.org/wiki/MERCURY_RED "wikilink")》
    <small>(2011, PC) -
    [PLUTOGAMES](https://zh.wikipedia.org/wiki/PLUTOGAMES "wikilink")</small>
  - 《[POWER RANGERS
    ONLINE](https://zh.wikipedia.org/wiki/POWER_RANGERS_ONLINE "wikilink")》
    <small>(2012, PC) -
    [IRONNOS](https://zh.wikipedia.org/wiki/IRONNOS "wikilink")</small>
  - 《[HEROES IN THE
    SKY](https://zh.wikipedia.org/wiki/HEROES_IN_THE_SKY "wikilink")》
    <small>(2009, PC) -
    [GameUs](https://zh.wikipedia.org/wiki/GameUs "wikilink")</small>
  - 《[Seoyugi](https://zh.wikipedia.org/wiki/Seoyugi "wikilink")》
    <small>(2010, PC) - [NNG
    Lab](https://zh.wikipedia.org/wiki/NNG_Lab "wikilink")</small>
  - 《[BORN TO
    FIRE](https://zh.wikipedia.org/wiki/BORN_TO_FIRE "wikilink")》
    <small>(2010, PC) -
    [Funtree](https://zh.wikipedia.org/wiki/Funtree "wikilink")</small>
  - 《[Chagu
    Chagu](https://zh.wikipedia.org/wiki/Chagu_Chagu "wikilink")》
    <small>(2013, PC) - [ANI
    PARK](https://zh.wikipedia.org/wiki/ANI_PARK "wikilink")</small>
  - 《[Talklish](https://zh.wikipedia.org/wiki/Talklish "wikilink")》
    <small>(2011, PC) - [Dreamers
    Education](https://zh.wikipedia.org/wiki/Dreamers_Education "wikilink")</small>
  - 《[TANKACE](https://zh.wikipedia.org/wiki/TANKACE "wikilink")》
    <small>(2011, PC) -
    [ONNET](https://zh.wikipedia.org/wiki/ONNET "wikilink")</small>
  - 《[F.E.A.R. ORIGIN
    ONLINE](https://zh.wikipedia.org/wiki/F.E.A.R._ORIGIN_ONLINE "wikilink")》
    <small>(2012, PC) - [INPLAY
    INFERACTIVE](https://zh.wikipedia.org/wiki/INPLAY_INFERACTIVE "wikilink")</small>
  - 《[2112](https://zh.wikipedia.org/wiki/2112 "wikilink")》
    <small>(2012, PC) - [Emobi
    Games](https://zh.wikipedia.org/wiki/Emobi_Games "wikilink")</small>
  - 《[Herowarz](https://zh.wikipedia.org/wiki/Herowarz "wikilink")》
    <small>(2013, PC) -
    [A.STORM](https://zh.wikipedia.org/wiki/A.STORM "wikilink")</small>
  - 《[Delphinia
    Chronicle](https://zh.wikipedia.org/wiki/Delphinia_Chronicle "wikilink")》
    <small>(2013, Mobile) -
    [DigitalFrog](https://zh.wikipedia.org/wiki/DigitalFrog "wikilink")</small>
  - 《[Magic Masters
    Online](https://zh.wikipedia.org/wiki/Magic_Masters_Online "wikilink")》
    <small>(2012, Mobile) - [Npic
    Mobile](https://zh.wikipedia.org/wiki/Npic_Mobile "wikilink")</small>
  - 《[Touch
    Fighter](https://zh.wikipedia.org/wiki/Touch_Fighter "wikilink")》
    <small>(2012, Mobile) - [Wemade
    Entertainment](https://zh.wikipedia.org/wiki/Wemade_Entertainment "wikilink")</small>
  - 《[Nexon
    All-stars](https://zh.wikipedia.org/wiki/Nexon_All-stars "wikilink")》
    <small>(2012, Mobile) - [Nexon
    Korea](https://zh.wikipedia.org/wiki/Nexon_Korea "wikilink")</small>
  - 《[Reign of
    Conquerors](https://zh.wikipedia.org/wiki/Reign_of_Conquerors "wikilink")》
    <small>(2013, Mobile) -
    [Minoraxis](https://zh.wikipedia.org/wiki/Minoraxis "wikilink")</small>
  - 《[Moon Wolf](https://zh.wikipedia.org/wiki/Moon_Wolf "wikilink")》
    <small>(2013, Mobile) - [Wemade
    Entertainment](https://zh.wikipedia.org/wiki/Wemade_Entertainment "wikilink")</small>
  - 《[Akasha](https://zh.wikipedia.org/wiki/Akasha "wikilink")》
    <small>(2013, Mobile) -
    [KNETP](https://zh.wikipedia.org/wiki/KNETP "wikilink")</small>
  - 《[Shooting
    King](https://zh.wikipedia.org/wiki/Shooting_King "wikilink")》
    <small>(2013, Mobile) - [Banana
    Fish](https://zh.wikipedia.org/wiki/Banana_Fish "wikilink")</small>
  - 《[Dual
    Masters](https://zh.wikipedia.org/wiki/Dual_Masters "wikilink")》
    <small>(2013, Mobile) -
    [Zigzagsoft](https://zh.wikipedia.org/wiki/Zigzagsoft "wikilink")</small>
  - 《[Metal
    Breaker](https://zh.wikipedia.org/wiki/Metal_Breaker "wikilink")》
    <small>(2013, Mobile) - [Company
    100](https://zh.wikipedia.org/wiki/Company_100 "wikilink")</small>
  - 《[CocoFamily](https://zh.wikipedia.org/wiki/CocoFamily "wikilink")》
    <small>(2013, Mobile) - [Pocket
    Joy](https://zh.wikipedia.org/wiki/Pocket_Joy "wikilink")</small>
  - 《[Black Sun](https://zh.wikipedia.org/wiki/Black_Sun "wikilink")》
    <small>(2014, Mobile) - [Black Pearl
    Studio](https://zh.wikipedia.org/wiki/Black_Pearl_Studio "wikilink")</small>
  - 《[Guardians
    League](https://zh.wikipedia.org/wiki/Guardians_League "wikilink")》
    <small>(2014, Mobile) - [Snow
    Family](https://zh.wikipedia.org/wiki/Snow_Family "wikilink")</small>
  - 《[Here We Go](https://zh.wikipedia.org/wiki/Here_We_Go "wikilink")》
    <small>(2014, Mobile) -
    [Ikinagames](https://zh.wikipedia.org/wiki/Ikinagames "wikilink")</small>
  - 《[Vendetta](https://zh.wikipedia.org/wiki/Vendetta "wikilink")》
    <small>(2014, Mobile) - [Pure
    Games](https://zh.wikipedia.org/wiki/Pure_Games "wikilink")</small>
  - 《[BOWLING
    KING](https://zh.wikipedia.org/wiki/BOWLING_KING "wikilink")》
    <small>(2014, Mobile) - [Phoenix
    Games](https://zh.wikipedia.org/wiki/Phoenix_Games "wikilink")</small>
  - 《[snowbro for
    kakao](https://zh.wikipedia.org/wiki/snowbro_for_kakao "wikilink")》
    <small>(2014, Mobile) - [Isac
    Entertainment](https://zh.wikipedia.org/wiki/Isac_Entertainment "wikilink")</small>
  - 《[Montowers](https://zh.wikipedia.org/wiki/Montowers "wikilink")》
    <small>(2014, Mobile) -
    [Buffstone](https://zh.wikipedia.org/wiki/Buffstone "wikilink")</small>
  - 《[Sand Storm](https://zh.wikipedia.org/wiki/Sand_Storm "wikilink")》
    <small>(2014, Mobile) - [Howling
    Soft](https://zh.wikipedia.org/wiki/Howling_Soft "wikilink")</small>
  - 《[WILD
    BUSTER](https://zh.wikipedia.org/wiki/WILD_BUSTER "wikilink")》
    <small>(2012, PC) - [Nuri Star
    Ducks](https://zh.wikipedia.org/wiki/Nuri_Star_Ducks "wikilink")</small>
  - 《[FOOTBALL
    LEGEND](https://zh.wikipedia.org/wiki/FOOTBALL_LEGEND "wikilink")》
    <small>(2013, PC) -
    [NEOVIAN](https://zh.wikipedia.org/wiki/NEOVIAN "wikilink")</small>
  - 《[PlayEng](https://zh.wikipedia.org/wiki/PlayEng "wikilink")》
    <small>(2012, PC) -
    [GamEng](https://zh.wikipedia.org/wiki/GamEng "wikilink")</small>
  - 《[Shura King](https://zh.wikipedia.org/wiki/Shura_King "wikilink")》
    <small>(2014, PC) -
    [SGTY](https://zh.wikipedia.org/wiki/SGTY "wikilink")</small>

[Category:游戏引擎](https://zh.wikipedia.org/wiki/Category:游戏引擎 "wikilink")