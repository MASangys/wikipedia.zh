[Rogue_Screen_Shot_CAR.PNG](https://zh.wikipedia.org/wiki/File:Rogue_Screen_Shot_CAR.PNG "fig:Rogue_Screen_Shot_CAR.PNG")
**Roguelike**是[角色扮演游戏的一个分支类型](../Page/角色扮演游戏.md "wikilink")，它以一系列[随机生成](../Page/程序化生成.md "wikilink")[关卡的](../Page/關卡_\(電子遊戲\).md "wikilink")[地牢](https://zh.wikipedia.org/wiki/迷宫探索 "wikilink")、、[基于磁贴的图像](https://zh.wikipedia.org/wiki/拚接圖電子遊戲 "wikilink")（tile-based
graphics）和[角色](https://zh.wikipedia.org/wiki/玩家角色 "wikilink")[永久死亡](https://zh.wikipedia.org/wiki/永久死亡 "wikilink")（即一次游戏内无法无限制复活）为特点。大多数Roguelike游戏建立在[高度幻想的故事背景上](../Page/古典奇幻.md "wikilink")，这一点是由于[桌面角色扮演游戏](https://zh.wikipedia.org/wiki/桌面角色扮演游戏 "wikilink")（如《[龙与地下城](../Page/龙与地下城.md "wikilink")》）的影响。

尽管《》（1978年）和《》（1979年）在公布时间上早于1980年运行在基于[ASCII的](../Page/ASCII.md "wikilink")[終端或](../Page/終端.md "wikilink")[终端仿真器上的游戏](../Page/虚拟终端.md "wikilink")《[Rogue](../Page/Rogue.md "wikilink")》，然而后者最早发布并被认为是这一类型游戏的鼻祖，也在后来成为此类游戏的代名词（Rogue-like）。在[20世纪80年代和](https://zh.wikipedia.org/wiki/20世纪80年代 "wikilink")[90年代](https://zh.wikipedia.org/wiki/20世纪90年代 "wikilink")，这类游戏风靡于[大学生和](https://zh.wikipedia.org/wiki/大学生 "wikilink")[程序员群体](../Page/程序员.md "wikilink")，衍生出大量相似而遵循柏林准则的游戏。这一时代中，比较著名的游戏有：《》《[迷宫骇客](../Page/NetHack.md "wikilink")》《》《》《》《[马基埃亚尔的传说](../Page/马基埃亚尔的传说.md "wikilink")》和《[深入地下城之石头汤](../Page/深入地下城之石头汤.md "wikilink")》。日本游戏厂商[Chunsoft的](https://zh.wikipedia.org/wiki/Chunsoft "wikilink")《[不可思议迷宫](https://zh.wikipedia.org/wiki/不可思议迷宫 "wikilink")》系列也算作是由《Rogue》启发的Rogue-like游戏。

随着现代计算机技术大发展，家用电脑性能得到长足进步，不少新近发售的游戏在其他游戏类型基础上，融入了Roguelike元素。这类游戏包括了Roguelike核心要素，如随机生成地图或是角色会永久死亡，却并不完整的遵循“柏林准则”（Berlin
Interpretation）。虽然这些游戏经常使用Roguelike标签，但是严格的来讲，使用“Roguelike-like”、“rogue-lite”或者“Procedural
death labyrinths”称呼并将它们和标准的Roguelike区分开来会更准确。

## 起源

[缩略图](https://zh.wikipedia.org/wiki/File:Rougelike_or_Roguelike.png "fig:缩略图")
1993年前后，USENET
新闻频道是那个时代Roguelike游戏玩家的讨论区，开发者也经常在此处发布新版本或是游戏源代码，术语Roguelike最初便是在这里被发明并使用。当时，随着几个拥有相同元素的游戏逐渐流行开来，不同讨论组希望统一起来，使用涵盖性术语来帮助跨游戏讨论。\[1\]\[2\]\[3\]
一开始他们选择使用`rec.games.dungeon.*`\[4\]\[5\]作为标签，但经过三周的讨论，由于Rogue是“万恶之源（
"the least of all available
evils"）”而修改为了`rec.games.roguelike.*`\[6\]\[7\]
。当1998年有人提出建立一个专门讨论此类游戏开发的群组时，Roguelike已经成为圈内人尽皆知的术语了。\[8\]
这和另一个游戏类型"[Doom
clone](https://zh.wikipedia.org/wiki/Doom_clone "wikilink")"在90年代的时候修改成更具有一般性质的“[第一人称射击](https://zh.wikipedia.org/wiki/第一人称射击 "wikilink")”有异曲同工之妙。

注意，中文网络中通常将Roguelike错误的拼写为“Rougelike”，这是不正确的，然而英文网络中此类拼写错误也十分常见，因此两种拼写方法实则在表达同种意思，此处引用的网页便同时使用了两种拼写方式\[9\]。

## 游戏玩法与设计理念

### 游戏玩法综述

  - Roguelike游戏的设计理念来自于[桌面RPG](https://zh.wikipedia.org/wiki/桌面RPG "wikilink")，
    几乎所有的此类游戏为玩家提供一个可以操控并修改其各类属性、分配点数技能的角色。游戏开始时角色携带基础装备处于地牢顶层，随着游戏进行玩家移动角色探索地图并向地牢深层进发，沿途收集新装备或是宝藏（用以得分或提升能力）并需要在战斗中击败守护地牢的各种怪兽。大部分的战斗通过移动角色到暗藏（或者就是站在那里）了怪兽的格子上来触发。游戏会统计玩家和怪兽对对方造成的伤害来判定战斗结果。其他类型的攻击（如魔法、箭矢）也能使用，不过计算方法与战斗触发都略有不同。击败怪兽可以为玩家角色提供[经验值](https://zh.wikipedia.org/wiki/经验值 "wikilink")，当经验值达到足够数目后角色会得到等级提升并提高其各项属性（如[生命值](../Page/生命值.md "wikilink")、[魔力值等等](https://zh.wikipedia.org/wiki/魔力值 "wikilink")）。怪兽也可能会掉落可供收集的宝物。当角色生命归零时，角色死亡——而大部分Roguelike游戏的死亡是不可复活的，这也就意味着游戏的结束。\[10\]
    Roguelike游戏几乎都是回合制的，\[11\]这样的设计允许玩家在进行下一步操作时预先考虑各种情况，例如遇到多个敌人在一张地图中巡逻，玩家可以基于他们的行动轨迹来决定最好的战术击败他们。

<!-- end list -->

  - 玩家一般需要通过探索才能了解地牢的地形及其中隐藏的内容，就像[即时战略游戏中常用的](../Page/即时战略游戏.md "wikilink")[战争迷雾设定一样](../Page/战争迷雾.md "wikilink")。许多游戏也设置类似于火把的提高能见度的道具来扩展玩家自身的视野。迷雾的设定是为了避免玩家提前知晓怪物或宝藏的位置，为游戏提供更多的随机性。

<!-- end list -->

  - 地牢通常用楼梯来连接（并作为过关的象征），下层次数越多，一般难度就会越大，玩家角色若没有好好提升自己就匆匆下层会在后续战斗中感到非常吃力。地牢的布局、敌人和宝藏的数目都是[程序化生成的](../Page/程序化生成.md "wikilink")，所以你每次玩到的地图都不尽相同。

<!-- end list -->

  - 大多此类游戏有一个打败Boss或是获得最终道具的“最终目标”。\[12\] 典型的 Roguelikes
    游戏会在最后根据玩家收集的物资数量、角色等级和通关时长等数据对玩家的游戏表现进行评价并给出得分，很多游戏会为所有成功通关的玩家设置记分板来为他们进行排名。\[13\]

### 主要特点

[Vultures-2.1.0_screenshot.jpg](https://zh.wikipedia.org/wiki/File:Vultures-2.1.0_screenshot.jpg "fig:Vultures-2.1.0_screenshot.jpg")
Roguelike 游戏的游戏玩法由基于文字的游戏 《Rogue》发扬光大并在其后被其他游戏借鉴、改造。\[14\]
2015年，数百名玩家声称Roguelike将会成为[Steam上的一个独立的游戏分类](../Page/Steam.md "wikilink")。一个由爱好者运营的百科网站[ogueBasin](https://zh.wikipedia.org/wiki/ogueBasin "wikilink")\[15\]
则追踪了数百款Roguelike游戏的开发进度。由于Roguelike热度猛增，它的游戏玩法核心元素在2008年的柏林国际 Roguelike
游戏开发大会得到了明确的定义，称之为“'柏林准则'”。\[16\]\[17\]\[18\]
为了明确“Roguelike游戏是什么”这个问题的答案，柏林准则根据著名的“Roguelike五圣经”（《[Rogue](https://zh.wikipedia.org/wiki/Rouge "wikilink")》《[迷宫骇客](../Page/NetHack.md "wikilink")》《[神秘古域](https://zh.wikipedia.org/wiki/Ancient_Domains_of_Mystery "wikilink")》《[安格班德](https://zh.wikipedia.org/wiki/Angband_\(video_game\) "wikilink")》《[Linley's
Dungeon
Crawl](https://zh.wikipedia.org/wiki/Linley's_Dungeon_Crawl "wikilink")》和
《[深入地下城之石头汤》](https://zh.wikipedia.org/wiki/Dungeon_Crawl_Stone_Soup "wikilink")）设定了一系列核心元素和一些次要元素，然而是否完全具备这些元素并不能决定此游戏是否可以算作是“Roguelike”。\[19\]\[20\]
来自[Game Set
Watch](https://zh.wikipedia.org/wiki/Game_Set_Watch "wikilink") 的John
Harris 通过应用这些条件来对一系列看起来像是Roguelike的游戏进行评分：《Linley's Dungeon Crawl
》和《NetHack 》获得了最高的 56.5/60 分，而经常和Roguelike游戏做类比的[Toe Jam &
Earl](https://zh.wikipedia.org/wiki/Toe_Jam_&_Earl "wikilink")
和《[暗黑破坏神](https://zh.wikipedia.org/wiki/暗黑破坏神 "wikilink")》,
只得到了一半的分数。\[21\]

'柏林准则中的核心元素有：'\[22\]

  - '通过随机生成地牢来增强可玩性'。游戏可以包含预设的，为玩家提供交易的功能层（如[Moria](https://zh.wikipedia.org/wiki/Moria_\(video_game\) "wikilink")
    当中的城镇层），但这应当被认为时对随机性的一种削弱。\[23\]
  - '游戏使用永久死亡机制。'角色一旦死亡，玩家必须重新开始“一轮（a
    run）”游戏，这将会使得地图被重新生成。游戏提供的存档功能应该只为游戏中途的暂停服务，而不是创建许多存档点供玩家[回档](https://zh.wikipedia.org/wiki/回档 "wikilink")。当玩家读档或死亡之后，存档应该被删除。玩家通过备份游戏数据的方式变相获取存档点的行为应该被视为作弊。《Rogue》的开发者在引入存档功能后发现玩家会通过反复读档（Save
    & Load）来获得最好的游戏结果\[24\]，于是他又引入了永久死亡机制。根据《Rogue》的开发者 Michael Toy
    所说，他们发现永久死亡机制带给玩家的并不是痛苦的游戏体验，相反，这使得玩家在做决定的时候更加慎重，因而使得游戏体验更加真实。\[25\]
  - '游戏是回合制的'。游戏玩法基于每一步操作，玩家的操作串行执行并花费不同的游戏内时间完成（例如施法的咏唱时间等）。\[26\]
  - '游戏不应该有过多限制（non-modal）。'这意味着玩家可以做的操作应当在游戏中的任意地点都能做出。准则的注释中表示 Angband
    的商店打破了此规则，因为在商店中，地牢的怪物无法进入并伤害玩家，玩家也不能攻击商店店员\[27\]。
  - '游戏应该为玩家提供完成同样方式的多种不同方法，并不同方法的复杂程度应有所不同，是为所谓的“自然的游戏体验”'。\[28\]\[29\]
    比如为了穿过一扇锁着的门，玩家可以依据自己的实际情况选择尝试撬锁、拆门、烧掉它甚至是在墙上挖个洞。
    最好的例子是游戏NetHack，他们的开发者似乎把玩家可能尝试的所有技巧都统统做进了游戏，他们的玩家常说：“开发组无所不知（The
    Dev Team Thinks of
    Everything）”。一个实例是玩家可以带着手套挥舞石化鸡蛇的尸体，将其当作石化武器把敌人变成石头，而不伤到自己。\[30\]
  - '为了生存玩家必须妥善管理自己的资源。'\[31\]
    治疗物品或是食物等延长玩家游玩时间的物品应当限量供应，玩家应当在每次使用时都最大化其作用来尽可能延长自己的生存。[USGamer](https://zh.wikipedia.org/wiki/USGamer "wikilink")
    后来将“体力衰减”作为资源管理的另一个特性，即玩家的角色需要持续不断地进食来维持生存，否则将会被饿死。这样便可以防止玩家通过挂机或者刷低级怪物来回复自己的属性。\[32\]
    一个早期 roguelike-like游戏 [Strange Adventures in Infinite
    Space](https://zh.wikipedia.org/wiki/Strange_Adventures_in_Infinite_Space "wikilink")
    的作者Rich Carlson称这一机制为“时钟”，用以给玩家创设一种探索时的紧张感。\[33\]
  - '游戏核心内容应是“[砍杀游戏](https://zh.wikipedia.org/wiki/Hack_and_slash "wikilink")”'，其目标是尽可能多的消灭怪兽，并且不存在任何和平选项（比如不打怪绕着走）\[34\]
  - '游戏要求玩家探索地图，寻找宝藏并杜绝背板。'魔法物品及附魔装备的属性应该在每轮游戏中都不尽相同，新物品的描述应当模糊并在每轮游戏中都有一点随机性。举例来说，一瓶冒着气泡的药水可能上一轮还是救命良药，下一次就会把你毒死。\[35\]

'柏林准则中的次要元素有：'\[36\]

  - 游戏中只控制一个角色。
  - 游戏中的怪物拥有类似玩家角色的行为，比如捡起、使用物品或施法。
  - 游戏提供一定的战术挑战性，玩家可能需要通过多次游玩来提高自己的技术。\[37\]
  - 游戏使用ASCII码绘图，地图被分为小方格。
  - 游戏包括探索由房间和相互连接的走廊组成的地牢。有些游戏可能有类似河流的开阔的场地或自然景观，然而这些被认为与柏林准则相悖。\[38\]
  - 游戏在用户界面上提供玩家和游戏的当前状态和数值的显示。

尽管柏林准则没有强调，Roguelike大多还是单玩家游戏（有别于单机游戏，单机游戏也可以多人合作）。在多用户系统，排行榜通常是全部玩家共享的。一些游戏允许玩家查看被称为“幽灵/鬼影”的先前玩家的游戏过程。多人回合制游戏，例如[TomeNET](https://zh.wikipedia.org/wiki/TomeNET "wikilink"),
MAngband,
和[Crossfire](https://zh.wikipedia.org/wiki/Crossfire_\(computer_game\) "wikilink")
当然也是存在的，它们大多需要联机游玩。\[39\]

### 早期roguelikes

[NetHack_3.4.3_ASCII_capture_ecran.png](https://zh.wikipedia.org/wiki/File:NetHack_3.4.3_ASCII_capture_ecran.png "fig:NetHack_3.4.3_ASCII_capture_ecran.png")
在个人电脑普及之前，早期roguelikes被设计成能够在大学的（类）Unix计算机或是大型主机的[命令行界面下透过终端游玩的游戏](https://zh.wikipedia.org/wiki/命令行 "wikilink")。游戏使用一连串的ASCII或者[ANSI字符来代表地牢之中的各种关卡](https://zh.wikipedia.org/wiki/ANSI "wikilink")、生物或是宝藏。这些游戏通常在屏幕顶端或者底端有一两行字符来展示玩家当前的状态，并使用菜单来管理背包、查看数据或者其他更加详细的信息；玩家通过按下键盘按键来输入命令控制角色行动。

几乎所有那时候的游戏沿用了《Rogue》的设定，用`@`
字符来代表玩家的角色，《Rogue》的开发者称其为“你所在的位置”。其他的一些表示物体的常用符号有：

  - 表示财物的 `$`
  - 表示龙的 `D` 。后期计算机提供彩色显示后，不同颜色的同种字符表示的含义也有所不同。例如红色的 `D` 代表能够喷火的红龙，绿色的
    `D` 则是喷酸液的绿龙等等。



### Roguelike-likes 与 Procedural death labyrinths（死亡迷宫）

[Abyss_Odyssey_-_Screenshot_06.jpg](https://zh.wikipedia.org/wiki/File:Abyss_Odyssey_-_Screenshot_06.jpg "fig:Abyss_Odyssey_-_Screenshot_06.jpg")
结合了Roguelike和[清版动作游戏的玩法](../Page/清版动作游戏.md "wikilink")\]\]
随着计算机性能的提升，更加复杂的画面和玩法得以实现。一些游戏采用了比传统Roguelike更宽松的规则或是修改了其中某些特性。很多[动作游戏](../Page/动作游戏.md "wikilink")（ACT）或是[平台跳跃游戏采用了随机生成地图和永久死亡的概念](https://zh.wikipedia.org/wiki/平台跳跃 "wikilink")，但抛弃了基于格子的移动方式和回合制的玩法\[40\]\[41\]
。还有些游戏开发者意识到传统Roguelike游戏的[学习曲线过于陡峭因而无法快速上手](https://zh.wikipedia.org/wiki/学习曲线 "wikilink")，所以局限在硬核玩家群体而不能打开销路，于是他们降低了自己游戏的整体难度（比如可以有复活的道具或是机会）\[42\]
。这些游戏并没有严格贯彻柏林准则，但是也称自己为Roguelike游戏，因此时常让玩家搞混\[43\]。

因此，术语"roguelike-like" 或是 "rogue-lite"
被发明并用于将这些不那么硬核，却遵循着部分柏林准则的游戏和真正的Roguelike区分开来。\[44\]
而由于一些游戏采用了永久死亡、随机生成地图的机制，"Procedural death labyrinth"
也可以被用来形容这类游戏。\[45\]\[46\]

Roguelike-likes
相较于Roguelike，是一类游戏流程更短，更容易获得胜利的游戏。由于流程较短，这类游戏很多具备“[元游戏](https://zh.wikipedia.org/wiki/元游戏 "wikilink")”的特征——即通过游戏进程的推进，玩家不断解锁新的角色、敌人、地图或是物品（无论玩多久都只能获得同样的物品、地牢或是角色。举个例子《[以撒的结合](../Page/以撒的结合.md "wikilink")》版本不变更的前提下你的游戏内容、道具和敌人，而《[元气骑士](https://zh.wikipedia.org/wiki/元气骑士 "wikilink")》随着游戏进行你获取的金币带出地牢，可以购买新的装备和新的地图进入游戏）。\[47\]
个别游戏甚至还有每日挑战，提供给你特定的种子让你反复游玩同一个地牢直到获胜或是打出高分。\[48\]这类游戏有些还允许你记录并输入种子来让玩家能够重玩某些特定地图或者分享那些自己打不过的地图给其他玩家。

US Gamer 评论这些由《Rogue》启发，却有所不同的边缘案例说：“他们对玩法略作延伸，但是仍然有优秀的Roguelike那样的灵魂。”

这类游戏包括《暗黑破坏神》《[矮人堡垒](https://zh.wikipedia.org/wiki/矮人堡垒 "wikilink")》和
[ToeJam &
Earl](https://zh.wikipedia.org/wiki/ToeJam_&_Earl "wikilink")\[49\]

## 历史

### 早期历史 (1975–1980)

二十世纪八十年代，在受到了1975年发布的著名文字冒险游戏《[巨洞冒险](../Page/巨洞冒險.md "wikilink")》（又名《冒险》）和当时流行的幻想系桌上游戏《[龙与地下城](../Page/龙与地下城.md "wikilink")》的影响后，一群也与程序员和电脑极客们开始尝试在早期的电脑上创造电脑游戏。在
[柏拉图
操作系统上的某些地牢探险类游戏就已经具备了某些Roguelike要素](https://zh.wikipedia.org/wiki/柏拉圖系統 "wikilink")，《[pedit5](https://zh.wikipedia.org/wiki/pedit5 "wikilink")》
(1975) 被认为是首个地牢探险类游戏，尽管地图是固定不变的，它却实现了随机遭遇敌人。\[50\]
《pedit5》启发了其他一系列的柏拉图系统上的地牢探险类游戏：《[dnd](https://zh.wikipedia.org/wiki/dnd_\(video_game\) "wikilink")》
(1975), 《orthanc》 (1978),
[《Moria](https://zh.wikipedia.org/wiki/Moria_\(PLATO\) "wikilink")》
(1978), 和
[《avatar](https://zh.wikipedia.org/wiki/Avatar_\(1979_video_game\) "wikilink")》
(1979)。\[51\]\[52\]
由于并不知道其他Roguelike游戏的作者是否玩过柏拉图上的这些游戏，它们是否是其他Roguelike的灵感来源现在不得而知\[53\]。事实上这些游戏的核心玩法几乎都是被独立的开发出来
的，一些开发者甚至在Roguelike被发扬光大数年之后才得知其他的“圈内知名项目”\[54\]。

Roguelike游戏设计之初面向存储空间有限的[分时大型主机和早期家用电脑](https://zh.wikipedia.org/wiki/分时主机 "wikilink")，并使用在内存和存储空间管理上表现不是很好的
[BASIC](../Page/BASIC.md "wikilink")
语言编写——这使得缺乏资源的情况雪上加霜\[55\]。这些限制使得设计者无法预先设计大量关卡，转而寻求程序生成关卡的解决方案来避免占用过多存储资源\[56\]。

#### 这一时代的作品

尽管术语"Roguelike" 来自1980年的游戏《Rogue》\[57\]，第一个以Roguelike作为核心玩法的游戏确实1978年Don
Worth为[Apple II](../Page/Apple_II.md "wikilink")
计算机开发的的《苹果园下》。《苹果园下》也被认为是第一款商业化的Roguelike游戏。这款游戏受到
RPG 《龙与地下城》的启发，使用修改后的游戏《Dragon
Maze》的迷宫生成引擎，拥有包括RPG元素和回合制战斗在内的各种Roguelike元素\[58\]。尽管它并没有《Rogue》那么流行，由于通过
['高等研究计划署网络'](../Page/ARPANET.md "wikilink") 分享这一作品，许多大学生得以在 Worth
透过邮政或是实体店发售游戏之前提前体验它\[59\]\[60\]\[61\]。

另一个早于《Rogue》开始开发的游戏是1979年 Jeff McCord的《地牢冒险（[Sword of
Fargoal](https://zh.wikipedia.org/wiki/Sword_of_Fargoal "wikilink")
）》\[62\] 。这款游戏是 Jeff 在他之前为了和朋友们一起分享游戏而为 [Commodore
PET](https://zh.wikipedia.org/wiki/Commodore_PET "wikilink")
家用电脑开发的《GammaQuest》基础上改进而成。本作设定上来自他已经游玩多年的《龙与地下城》\[63\]
1981年，在高中毕业前往[田纳西州立大学继续学业之前](../Page/田納西大學.md "wikilink")，Jeff
已经开始了《Gamma
Quest》的续作开发。设计上续作游戏中玩家将会探索一个随机生成的多层地牢，拔出关底的一把剑并带着它沿着另一条路杀回地面。由于学校装备了更先进的
[Commodore
VIC-20](https://zh.wikipedia.org/wiki/Commodore_VIC-20 "wikilink")
他的游戏得以获取比原本 PET
上更多的可用系统资源，因而表现也更加出色。后来，当意识到销售电脑软件有利可图后，他与发行商
[EPYX](https://zh.wikipedia.org/wiki/EPYX "wikilink") 达成合作协议，将续作《Gamma
Quest II》更名《Sword of Fargoal{{'}}s》，并在[Commodore
64](https://zh.wikipedia.org/wiki/Commodore_64 "wikilink") 平台上重新开发。得益于
64 平台的强大机能，他为游戏添加了画面和音效\[64\]
。这款游戏大获成功，以至于当1993年它被移植到[PC平台上时](../Page/PC.md "wikilink")，连《Rogue》的PC移植版都因为本作划时代的画面和音效而显得黯淡乏味。\[65\]

#### 《Rogue》

《Rogue 》是1980年
[加利福尼亚大学圣塔克鲁兹分校](https://zh.wikipedia.org/wiki/加利福尼亞大學聖塔克魯茲分校 "wikilink")
学生 [Glenn
Wichman](https://zh.wikipedia.org/wiki/Glenn_Wichman "wikilink") 和
Michael Toy
的作品。这款游戏是受到Toy在1971年游玩、移植文字游戏《星际迷航》的经历和交互式小说《Adventure》的启发而决定制作的\[66\]。当二人试图寻找随机化《Adventure》的游戏体验的方法时，他们偶然查到了
[Ken Arnold](https://zh.wikipedia.org/wiki/Ken_Arnold "wikilink")
写的“游标”代码库——这使得他们二人能在终端机的屏幕上更好的控制人物移动。这一切都在鼓励他们开发一款全新的画面交互随机冒险游戏\[67\]\[68\]
。他们为玩家设计了一个“寻找 Yendor 的项链
”的剧情，而“Yendor”则是他们的程序生成的地牢的名字“Rodney”反过来拼写的结果\[69\]
。《Rogue 》起初在
[VAX-11/780](https://zh.wikipedia.org/wiki/VAX-11 "wikilink")
平台运行，由于系统资源有限他们不得不使用简单的字符界面来展现游戏内容\[70\]。Toy
后来辍学，但却在
[伯克利分校](https://zh.wikipedia.org/wiki/加利福尼亚大学伯克利分校 "wikilink")
的计算机实验室谋得职位并结识了 “游标”代码库的作者 Arnold。 在Arnold的帮助下他们优化了库并为游戏增添了许多新特性。\[71\]

《Rogue 》在当时的计算机研究者和大学生之间引发轰动，甚至 Unix之父之一的 [Ken
Thompson](https://zh.wikipedia.org/wiki/Ken_Thompson "wikilink")
也沉迷其中。[Dennis
Ritchie](https://zh.wikipedia.org/wiki/Dennis_Ritchie "wikilink")
开玩笑道：“Rogue就是史上最浪费CPU时钟周期的东西”\[72\]。这款游戏的流行甚至让1984年发布的 [BSD
UNIX](https://zh.wikipedia.org/wiki/BSD_UNIX "wikilink") v4.2
直接内置了编译好的可执行文件\[73\]
。后来，Toy和Arnold计划公开销售《Rogue》，因而迟迟不发布游戏的正式版。这之后Toy去往
[Olivetti](https://zh.wikipedia.org/wiki/Olivetti "wikilink") 结识了 Jon
Lane 并一起创办了 A.I.Design 公司，致力于将游戏移植到更多家用平台上，不久之后 Wichman
也重新加入队伍一起工作。他们也找到Epyx公司协助发行游戏的发行版。\[74\]

### 后续演进情况(1980–1995)

<div class="thumb tright">

<div class="thumbinner" style="width:474px;background:white;">

<div class="thumbcaption">

主要的Roguelike游戏继承发展路线图。
这张图展示了已知的Rogue直系变种游戏及其演化历史，实线连接的游戏代表后来者基于前人源代码进行了二次开发，而虚线则表示后来者由前人游戏启发而来，却并没有直接引用源代码。\[75\]

</div>

</div>

</div>

尽管《Rogue》迟迟没有开源\[76\]\[77\]因而基于原始游戏的二次开发变得十分困难，它的爆红还是引发了开发其他类似游戏的热潮。\[78\]
开发者们开始创作形似《Rogue》却有着自己希望原作拥有（原作却没有）的特性。\[79\]
这些版本通常[开源](https://zh.wikipedia.org/wiki/开源 "wikilink")，后来《Rogue》也开源以后，后来者便在前人基础上[复刻代码库](https://zh.wikipedia.org/wiki/复刻_\(软件开发\) "wikilink")，增添新怪物、物品和游戏特性，创造出许许多多变种游戏作品。\[80\]
这一过程在后来发展为使用包括面向对象的语言、脚本语言在内的其他更优秀的编程语言[重构整个项目来获得更好的游戏性能或是模块化代码来帮助贡献者们进一步开发](../Page/代码重构.md "wikilink")。

除去像《BRogue》这样的《Rogue》直接变种\[81\]，绝大多数衍生游戏可以分为类《Moria》游戏和类《Hack》游戏。这二者是《Rogue》的精神续作，他们之间的关系见右图。\[82\]

#### 基于《Moria》的游戏

[Moria](https://zh.wikipedia.org/wiki/Moria_\(video_game\) "wikilink")
(1983) 是 [俄克拉荷马大学学生Robert](../Page/奧克拉荷馬大學.md "wikilink") Alan Koeneke
受到《Adventure》和《Rogue》共同启发开发的。尽管能用到
[VAX-11/780](https://zh.wikipedia.org/wiki/VAX-11 "wikilink")
小型机，他却由于计算机管理员设定的限制无法读取Rogue的源代码，不得已他尝试着重现整个游戏。不同于完全复刻，他选择按照
[J.R.R. 托尔金](https://zh.wikipedia.org/wiki/J.R.R._Tolkien "wikilink")
笔下的
[《中土世界》故事系列中的超复杂迷宫和设定制作这款游戏](https://zh.wikipedia.org/wiki/中土世界 "wikilink")。依照托尔金的小说，在他的游戏中玩家应该逐层深入[摩瑞亚](../Page/摩瑞亞.md "wikilink")，打败[炎魔](https://zh.wikipedia.org/wiki/炎魔 "wikilink")
\[83\]。 作为 Rogue 的衍生作品，它的地牢楼层也不是固定不变的——当你反复进出同一层时地图会反复更新。除此之外 Koeneke
还在原作基础上进行玩法创新，在地牢顶层设置了一个供玩家买卖装备的永久城镇，这个城镇并不是随机的，无论何时它都在那里。由于使用了
[Pascal](https://zh.wikipedia.org/wiki/Pascal "wikilink")
语言的新型数据结构，Koeneke 得以在游戏里设置更多的生物\[84\]
。开发过程中他得到了来自另一位学生 Jimmey Wayne Todd
和几位试玩人员的帮助，前者在游戏角色属性系统的深度方面帮助很大\[85\] 。《UMoria》 (UNIX
Moria 的缩写) 则是 Jim E. Wilson
完成的一个兼容性更好、[Bug更少的](https://zh.wikipedia.org/wiki/Bug "wikilink")《Moria》版本\[86\]。

[Angband.png](https://zh.wikipedia.org/wiki/File:Angband.png "fig:Angband.png")
Alex Cutler 和 Andy Astrand
在[华威大学就读期间开发了](https://zh.wikipedia.org/wiki/華威大學 "wikilink")《[Angband](https://zh.wikipedia.org/wiki/Angband_\(video_game\) "wikilink")》
(1990)。玩过《UMoria》之后他们想要拓展游戏的深度，便通过修改《UMoria》源代码给它添加了一些新的关卡设计和敌人和来自小说里的更多致命生物，为托尔金笔下、Moria游戏世界里的Angband堡垒增添了不一样的趣味。同时他们改变了炎魔的地位，让它成为了游戏半途时候的中级Boss，而在关底他们选择让玩家击败[魔苟斯作为胜利条件T](../Page/魔苟斯.md "wikilink")\[87\]
。随着二人毕业， Sean March 和 Geoff Hill
接管了游戏的开发，增添了一系列富有挑战性和成就感的关卡与要素，并在校园外寻求愿意发售游戏的组织。\[88\]

当《Angband》通过 [USENET](https://zh.wikipedia.org/wiki/USENET "wikilink")
公开发布的时候，开发组花了好一阵子来修Bug、重构代码、按照建议添加新功能\[89\]。
由于一些法律问题维护代码的人员几次发生变化，而来自玩家的帮助也让代码不断变动。正因如此，《Angband》的复刻多到满天飞，一系列变种随之出现，单单已知的就有60种之多，截至2009年依然有大约6个版本仍在活跃\[90\]\[91\]
。

一个主要的复刻是1994年的《ZAngband 》 ( Zelazny Angband 的缩写)，它扩展了原来的世界，将游戏的主题换成了
[Roger Zelazny](https://zh.wikipedia.org/wiki/Roger_Zelazny "wikilink")
的 [The Chronicles of
Amber](https://zh.wikipedia.org/wiki/The_Chronicles_of_Amber "wikilink")\[92\]
。而它的源代码又在 2002年被拿去制作了《Troubles of Middle Earth
(ToME)》，后来又在2009年去掉了原有设定，改为原创世界观制作成《[Tales
of Maj'Eyal](https://zh.wikipedia.org/wiki/Tales_of_Maj'Eyal "wikilink")
》\[93\] 。

现在，开发组仍然在维护发展原始的《Angband》\[94\]

#### 基于《Hack》的游戏

《[Hack](https://zh.wikipedia.org/wiki/Hack_\(Unix_video_game\) "wikilink")
》(1982) 是Jay Fenlason 在 Kenny Woodland 、 Mike Thome 和 Jonathan
Payne的帮助下开发的。当时他们参加了Brian Harvey
管理下的林肯-萨德伯里地区高中计算机实验室，是那个高中的学生\[95\]
。Harvey 的学校有一台 [PDP-11/7](../Page/PDP-11.md "wikilink")
小型机，并为学生们开设了一堂“只要能完成学期任务，就算打游戏也可以”的电脑课。Fenlason,
Woodland, Thome, 和 Payne 通过这堂课相识并成为编程高手，四人关系也逐渐亲密 \[96\] 。Harvey
邀请四人到加州大学伯克利分校的计算机实验室使用大型主机系统，在哪里四人第一次见到了《Rogue》并决定他们要以此为蓝本创造一个自己的游戏来当作学期作业。Fenlason
按照他们认为《Rogue》可以改进的地方写了一长串的新功能，例如保存已经探索过的地牢地形。他们四人在当地举办的[USENIX会议上找到了](../Page/USENIX.md "wikilink")《Rogue》的制作者Toy
and Arnold，希望能取得游戏源代码，却遭到拒绝，这迫使他们从原有的游戏草稿设计一个完整的游戏出来\[97\]。
结局是他们的作品《Hack》在保留原有的 龙与地下城 要素基础上，还为后世留下了一个新的类型
“[砍杀游戏](../Page/砍殺遊戲.md "wikilink")”。此外，一种新的编程方式 “Hack”也被创造了出来
—— 指的是不通过获取源代码，重新创造一个类似或一模一样的软件复刻\[98\] 。Fenlason
没能实现所有他想实现的功能，因此毕业后他仍然在改进游戏。在
USENIX 会议上，他提供了游戏源代码并分发游戏的数字版本，自此这款游戏就在 USENET
新闻组上完成后续开发、移植和编译工作。正如《Angband》那样，《Hack》源代码维护工作也数易其手，很多的复刻版本也广为流传。\[99\]

[Nethack_releasing_a_djinni.png](https://zh.wikipedia.org/wiki/File:Nethack_releasing_a_djinni.png "fig:Nethack_releasing_a_djinni.png")
因为续作《[NetHack](../Page/NetHack.md "wikilink")》的出现，《Hack》最终在1987年停止开发\[100\]。当来自电脑硬件制造商的一位分析师Mike
Stephenson接手《Hack》的代码维护工作后，他按照[宾夕法尼亚大学](../Page/宾夕法尼亚大学.md "wikilink")
哲学教授 [Izchak
Miller](https://zh.wikipedia.org/wiki/Izchak_Miller "wikilink") 和
电脑极客Janet Walz 的建议改进了这款游戏。 这三位组建了一个
"开发组"，着手对《Hack》的源代码做重大修改。部分因为他们的工作主要通过USENET来沟通，他们称修改后的版本为《NetHack》\[101\]。
相较于原作，《NetHack》添加了来自其他神话传说的大量全新敌对生物，并加入了一些十分具有想象力的过时或是时兴的元素（比如来自[Terry
Pratchett的](https://zh.wikipedia.org/wiki/Terry_Pratchett "wikilink")[Discworld](https://zh.wikipedia.org/wiki/Discworld "wikilink")
系列小说的带着闪光灯照相机的游客）\[102\] 。新作结合使用预先设计好的关卡和随机生成元素，越是深入地牢，随机性就越大\[103\]
。后续迭代加入了可以横穿地牢的捷径、视角色属性而变化的，能够为玩家提供优质道具的分支问题等游戏内容\[104\]。尽管开发组开放了源代码，为了防止对原游戏的过度复刻他们在审核谁可以贡献代码这个问题上极为谨慎。同时他们对于每个发行版的改进内容保持相对沉默，在对他们的玩家相对保密的情况下进行开发和维护\[105\]。《NetHack》的复刻并不多，
《[Slash'EM](https://zh.wikipedia.org/wiki/Slash'EM "wikilink")》便是其中之一。

1994年的《[Ancient Domains of
Mystery](https://zh.wikipedia.org/wiki/Ancient_Domains_of_Mystery "wikilink")》(缩写为ADOM），是从《NetHack》呈现的概念中汲取的灵感。《ADOM》最初是由Thomas
Biskup，一名[多特蒙德工业大学的学生开发的](../Page/多特蒙德工业大学.md "wikilink")\[106\]
。在通关《Rogue》和《Hack》后，他游玩了《NetHack》并受到了启发，但他也因该游戏过于复杂和游戏中的不必要且恼人的元素而感到失望。之后，Biskup抱着创造一个相比《NetHack》更加基于故事驱动的游戏的目标而从零开始创造了《ADOM》。他想在拥有明确的游戏主题和设定的同时保持游戏玩法的深度\[107\]。最终，游戏包括数个不同的地牢。许多地牢都是由程序生成，它们通过一个幻想世界Ancardia的游戏地图连接在一起，玩家将在这些地牢中完成各种各样的任务来推进游戏。游戏中一个重要的特点是布满混沌势力影响的未封印的传送门，而玩家必须将其关闭。

在被混沌影响的区域玩家的角色将被污染，这将导致或好或坏的变异\[108\]。

而就像《NetHack》和《Angband》一样，《ADOM》也需要开发团队维护代码并且进行更新和补丁以避免过度分支\[109\]。

#### 其他变种

并不是所有早期的Roguelike游戏都可以被认为是《Hack》或是《Moria》的后续变种游戏。

例如Noah
Morgan开发的《[Larn](https://zh.wikipedia.org/wiki/Larn_\(video_game\) "wikilink")》(1986)就同时借鉴了上述两款游戏的特点（《《Hack》中的固定刷新层和《Moria》中的商店层设定与地牢难度随层数改变提升的特性）。
然而它的游戏进程和前辈们的设定截然不同，前者要求玩家一定要在特定步数的限制内完成某些游戏目标，然后传送玩家回到出生点并开始下一次游戏来扩展可玩度。而且，这款游戏是单线程的，一次游戏流程就能体验大部分游戏内容。后者则拥有螺旋状的游戏体验，只有多次游玩才能完整感受游戏想要带给玩家的内容\[110\]。

上世纪八十年代由Laurence兄弟开发的《Omega》则被认为向Roguelike游戏中首次引入了一个“Overworld”的概念，这要早于《ADOM》。这款游戏也经常因为它奇怪的物品栏设定而为人津津乐道。玩家捡起一个物品之后如果决定保留，需要手动移动它到背包或装备槽\[111\]。

Linley Henzell的 作品《[Linley's Dungeon
Crawl](https://zh.wikipedia.org/wiki/Linley's_Dungeon_Crawl "wikilink")》
(1995)
则拥有一个基于技能的角色升级系统，其中[经验值可以拿来提升诸如武器专精或者陷阱探测之类的特殊技能](https://zh.wikipedia.org/wiki/experience_point "wikilink")。它的一个复刻成为了《[Dungeon
Crawl Stone
Soup](https://zh.wikipedia.org/wiki/Dungeon_Crawl_Stone_Soup "wikilink")》
(2006)的基础.\[112\]。

[SSI的](https://zh.wikipedia.org/wiki/Strategic_Simulations,_Inc. "wikilink")
《[Dungeon Hack](https://zh.wikipedia.org/wiki/Dungeon_Hack "wikilink")》
(1993)在[AD\&D 2nd
Edition规则基础上提供了随机生成地牢和永久死亡的玩法](https://zh.wikipedia.org/wiki/AD&D_2nd_Edition "wikilink")
\[113\]。

## 另见

  -
  - [MUD](../Page/MUD.md "wikilink")

### 译注

## 参考资料

  -
## 外部链接

  -
  - [rec.games.roguelike Usenet
    hierarchy](http://groups.google.com/groups/dir?hl=en&lr=&ie=UTF-8&q=rec.games.roguelike)
    at [Google
    Groups](https://zh.wikipedia.org/wiki/Google_Groups "wikilink")

  - [Roguebasin](http://www.roguebasin.com/) – The Roguelike information
    wiki

  - [@Play](http://www.gamesetwatch.com/column_at_play/) – A column
    about roguelikes and their various aspects by John Harris at
    [GameSetWatch](https://zh.wikipedia.org/wiki/GameSetWatch "wikilink").

  - [Roguelike
    Roundup](https://archive.is/20130415064405/http://www.kuro5hin.org/story/2004/5/30/04021/5281)
    at [Kuro5hin](https://zh.wikipedia.org/wiki/Kuro5hin "wikilink")

  - [7 Day
    Roguelikes](http://www.roguebasin.com/index.php?title=Seven_Day_Roguelike_Challenge)

[Category:Roguelike游戏](https://zh.wikipedia.org/wiki/Category:Roguelike游戏 "wikilink")
[Category:電子遊戲類型](https://zh.wikipedia.org/wiki/Category:電子遊戲類型 "wikilink")
[Category:電子遊戲術語](https://zh.wikipedia.org/wiki/Category:電子遊戲術語 "wikilink")

1.

2.

3.
4.

5.
6.

7.

8.

9.

10. Craddock 2015, Introduction: "Rodney and Friends".

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
24. Craddock 2015, Chapter 2: "Procedural Dungeons of Doom: Building
    Rogue, Part 1"

25.

26.
27.

28.
29.

30. Craddock 2015, Chapter 6: "It Takes a Village: Raising NetHack"

31.
32.

33.

34.
35.
36.
37.
38.
39. Craddock 2015, Bonus Round: "Excerpt from One Week Dungeons: Diaries
    of a Seven-Day Roguelike Challenge"

40.

41.

42.

43.

44.

45.

46.

47.

48.

49.
50.
51.

52.
53.
54.
55. Craddock 2015, Chapter 1: "The BAM-Like: Exploring Beneath Apple
    Manor".

56.

57.

58.
59.
60.

61.

62. Craddock 2015, Chapter 4: "There and Back Again: Retrieving the
    Sword of Fargoal"

63.
64.
65.
66. Craddock 2015, Chapter 2: "Procedural Dungeons of Doom: Building
    Rogue, Part 1"

67.
68.

69.
70.

71. Craddock 2015, Chapter 3: "Rodney and the Free Market: Building
    Rogue, Part 2"

72.
73.
74.
75. [Freeing an old
    game](http://freesoftwaremagazine.com/articles/freeing_an_old_game_moria/)
    by Ben Asselstine on [Free software
    magazine](https://zh.wikipedia.org/wiki/Free_software_magazine "wikilink")
    (2007-03-12)

76. BSD v4.3（1986） 之前 Rouge 都没有开放源代码

77.
78.
79. Craddock 2015, Chapter 5: "When the Inmates Run the Asylum -
    Hack-ing at Lincoln-Sudbury High School"

80.
81.

82.

83. Craddock 2015, Chapter 7: "None Shall Pass: Braving the Mines of
    Moria"

84. Craddock 2015, Chapter 7: "None Shall Pass: Braving the Mines of
    Moria"

85.
86.
87. Craddock 2015, Chapter 8: "Neapolitan Roguelike: The Many Flavors of
    Angband"

88.
89.
90.

91.

92.

93.

94.
95.
96.
97.
98.
99.
100.
101.
102.

103.
104.
105. Craddock 2015, Chapter 6: "It Takes a Village: Raising NetHack"

106. Craddock 2015, Chapter 9: "Wish You Were Here\! Questing for
     Postcards in Ancient Domains of Mystery"

107.
108. Craddock 2015, Chapter 9: "Wish You Were Here\! Questing for
     Postcards in Ancient Domains of Mystery"

109. Craddock 2015, Chapter 9: "Wish You Were Here\! Questing for
     Postcards in Ancient Domains of Mystery"

110.

111.
112.

113.