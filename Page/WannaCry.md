**WannaCry**（直译“想哭”\[1\]\[2\]、“想解密”\[3\]，俗名“魔窟”\[4\]\[5\]，或称**WannaCrypt**\[6\]、**WanaCrypt0r
2.0**\[7\]\[8\]、**Wanna
Decryptor**\[9\]）是一种利用[NSA的](../Page/美国国家安全局.md "wikilink")“[永恒之蓝](../Page/永恒之蓝.md "wikilink")”（EternalBlue）[漏洞利用程序透過](https://zh.wikipedia.org/wiki/漏洞利用程序 "wikilink")[互联网对全球运行](../Page/互联网.md "wikilink")[Microsoft
Windows操作系统的](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")[计算机进行攻击的加密型](https://zh.wikipedia.org/wiki/计算机 "wikilink")[勒索軟體兼](../Page/勒索軟體.md "wikilink")[蠕虫病毒](../Page/電腦蠕蟲.md "wikilink")（Encrypting
Ransomware
Worm）。该病毒利用[AES-128和](https://zh.wikipedia.org/wiki/AES-128 "wikilink")[RSA算法恶意加密用户文件以勒索](../Page/RSA加密演算法.md "wikilink")[比特币](../Page/比特币.md "wikilink")，使用[Tor进行通讯](../Page/Tor.md "wikilink")\[10\]，为WanaCrypt0r
1.0的变种\[11\]。

2017年5月，此程式大规模感染包括[西班牙電信在内的许多西班牙公司](../Page/西班牙電信.md "wikilink")、[英国](https://zh.wikipedia.org/wiki/英国 "wikilink")[國民保健署](../Page/國民保健署_\(英國\).md "wikilink")\[12\]、[聯邦快遞和](../Page/聯邦快遞.md "wikilink")[德国铁路股份公司](../Page/德国铁路.md "wikilink")。据报道，至少有99个国家的其他目标在同一时间遭到WanaCrypt0r
2.0的攻击（目前已有大约150个国家遭到攻击）。\[13\]\[14\]\[15\]\[16\][俄罗斯联邦内务部](../Page/俄罗斯联邦内务部.md "wikilink")、[俄羅斯聯邦緊急情況部和俄罗斯电信公司](../Page/俄羅斯聯邦緊急情況部.md "wikilink")共有超过1000台计算机受到感染。\[17\][中国教育网相连的中国大陆高校也出现大规模的感染](https://zh.wikipedia.org/wiki/中国教育网 "wikilink")\[18\]，感染甚至波及到了[公安机关使用的](../Page/公安机关.md "wikilink")[内网](https://zh.wikipedia.org/wiki/内部网 "wikilink")\[19\]，[国家互联网应急中心亦发布通报](https://zh.wikipedia.org/wiki/国家互联网应急中心 "wikilink")\[20\]\[21\]。

WannaCry被认为利用了[美国国家安全局的](../Page/美国国家安全局.md "wikilink")“[永恒之蓝](../Page/永恒之蓝.md "wikilink")”（EternalBlue）[工具以攻击运行Microsoft](https://zh.wikipedia.org/wiki/漏洞利用 "wikilink")
Windows操作系统的计算机。\[22\]\[23\]“永恒之蓝”传播的勒索病毒以ONION和WNCRY两个家族为主\[24\]。“永恒之蓝”利用了某些版本的微软[伺服器訊息區塊](../Page/伺服器訊息區塊.md "wikilink")（SMB）协议中的數個漏洞，而當中最嚴重的漏洞是允許遠端電腦執行程式碼。修复该漏洞的安全补丁已經于此前的2017年3月14日发布\[25\]，但并非所有计算机都进行了安装\[26\]。

## 背景

此次爆发的电脑恶意程序对漏洞的利用基于“永恒之蓝”（）工具。[黑客组织](../Page/黑客.md "wikilink")“[影子掮客](https://zh.wikipedia.org/wiki/影子掮客 "wikilink")”（）在2017年4月14日发布了一批从[方程式组织](../Page/方程式组织.md "wikilink")（）泄露的工具，其中便包括“永恒之蓝”\[27\]\[28\]\[29\]；而方程式集团据信是属于[美国国家安全局](../Page/美国国家安全局.md "wikilink")\[30\]\[31\]。

永恒之蓝利用了[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")[服务器消息块](https://zh.wikipedia.org/wiki/服务器消息块 "wikilink")1.0（SMBv1）的數個[漏洞](https://zh.wikipedia.org/wiki/漏洞 "wikilink")，這些漏洞在[通用漏洞披露](https://zh.wikipedia.org/wiki/通用漏洞披露 "wikilink")（CVE）網站中分別被列為至。而就这些漏洞，[微软公司已于](https://zh.wikipedia.org/wiki/微软公司 "wikilink")2017年3月14日在[TechNet發佈](../Page/TechNet.md "wikilink")“MS17-010”的資訊安全公告，並向用户推送了Windows系统修复补丁“KB4013389”封堵此漏洞。\[32\]但因该補丁只適用於仍提供服务支持的[Windows
Vista或更新的作業系統](../Page/Windows_Vista.md "wikilink")（注：此补丁不支持[Windows
8](https://zh.wikipedia.org/wiki/Windows_8 "wikilink")），較舊的[Windows
XP等作業系統並不适用](../Page/Windows_XP.md "wikilink")。\[33\]不少用户也因各种原因而未开启或完成系统补丁的自动安装。

2017年4月21日起，安全研究者检测到数以万计被安装[后门的计算机](https://zh.wikipedia.org/wiki/软件后门 "wikilink")\[34\]，该后门是另一款从NSA外泄的黑客工具\[35\]。截至4月25日，感染该后门的计算机估计有几十万台，数字每天还在呈[指数增长](https://zh.wikipedia.org/wiki/指数增长 "wikilink")\[36\]\[37\]。除[EternalBlue外](https://zh.wikipedia.org/wiki/EternalBlue "wikilink")，WannaCry的本轮攻击也利用了这一名为DoublePulsar的后门\[38\]\[39\]。

2017年5月12日\[40\]，WannaCry在国际[互联网开始广泛传播](../Page/互联网.md "wikilink")，感染了全球很多运行Windows系统的设备。该病毒进入目标主机之后，就会对主机[硬盘和存储装置中许多格式的文件进行加密](../Page/硬盘.md "wikilink")\[41\]\[42\]，然后再利用网络文件共享系统的漏洞，传播到任意的其他联网的主机\[43\]，而处于同一局域网的相邻主机也会被感染。\[44\]这个漏洞不是[零日攻击的漏洞](../Page/零日攻击.md "wikilink")（还没有补丁的安全漏洞），而微软早在2017年3月14日就推送了更新，封堵了这个漏洞。\[45\]与此同时，微软也通告用户，不要再使用老旧的第一代服务器消息块，应该以最新的第三代服务器消息块取而代之。\[46\]

没有及时下载这个补丁的Windows主机很可能被感染，而到目前为止，没有证据显示攻击者是有目标的进行攻击。还在运行已被微软淘汰的[Windows
XP的主机则非常危险](../Page/Windows_XP.md "wikilink")，因为微软早已不对Windows
XP提供安全更新与支持。\[47\]但由于此次事件的严重性，微软后已为部分已经淘汰的系统发布了漏洞修复补丁，Windows
XP、[Windows Server
2003和Windows](../Page/Windows_Server_2003.md "wikilink")
8用户都可从微软网站下载修复补丁\[48\]。但部分腾讯电脑管家用户因补丁遭到屏蔽而未能接受到安全更新，事后据官方回应，部分第三方修改系统安装补丁后可能致使蓝屏、系统异常，因此有部分用户补丁被屏蔽。\[49\]\[50\]。

## 影响

[Countries_initially_affected_in_WannaCry_ransomware_attack.svg](https://zh.wikipedia.org/wiki/File:Countries_initially_affected_in_WannaCry_ransomware_attack.svg "fig:Countries_initially_affected_in_WannaCry_ransomware_attack.svg")

###

2017年5月12日晚，中国內地部分高校学生反映电脑被病毒攻击，檔案被加密。病毒疑似透過[教育网传播](../Page/中国教育和科研计算机网.md "wikilink")\[51\]。随后，[山东大学](../Page/山东大学.md "wikilink")、[南昌大学](../Page/南昌大学.md "wikilink")、[广西师范大学](../Page/广西师范大学.md "wikilink")、[桂林電子科技大學](https://zh.wikipedia.org/wiki/桂林電子科技大學 "wikilink")、[大连海事大学](../Page/大连海事大学.md "wikilink")、[东北财经大学等十几家高校发布通知](../Page/东北财经大学.md "wikilink")，提醒师生注意防范\[52\]\[53\]。除了教育网、校园网以外，[新浪微博上不少用户反馈](../Page/新浪微博.md "wikilink")，北京、上海、江苏、天津等多地的出入境、[派出所等公安网和政企专网也遭遇了病毒袭击](../Page/派出所.md "wikilink")，许多公安机关和政府部门由于勒索软件的影响被迫停止工作\[54\]\[55\]\[56\]\[57\]。[中国国家互联网应急中心发布关于防范WannaCry的情况通报](https://zh.wikipedia.org/wiki/中国国家互联网应急中心 "wikilink")，称全球约101.1万个IP地址遭受“永恒之蓝”SMB漏洞攻击工具的攻击尝试，发起攻击尝试的IP地址数量9300余个\[58\]。由于中国大陆个人网络用户的445网络端口大多已被网络运营商屏蔽，故该病毒对一般家庭用户影响不大\[59\]。而且病毒首轮传播时，中国正值週五夜晚，事发后许多安全软件已立即呼吁用户完成更新以抵抗病毒。

###

截至香港時間2017年5月16日為止，[香港電腦保安事故協調中心收到受加密勒索軟件](https://zh.wikipedia.org/wiki/香港電腦保安事故協調中心 "wikilink")「WannaCry」攻擊的報告，增至31宗，比15日多14宗。新增個案一宗來自商業機構，其餘是家庭用戶，大部分都是使用微軟Windows軟件或伺服器。其中家庭用戶多使用[Windows
7](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")；商業用戶涉及Windows
7及[Windows
2008系統](https://zh.wikipedia.org/wiki/Windows_2008 "wikilink")\[60\]。香港警方亦接獲3宗有關報案。\[61\]\[62\]

###

此病毒也重創臺灣，爆發初期，受到感染的電腦使用者於[PTT](https://zh.wikipedia.org/wiki/PTT "wikilink")、[Dcard等社群發文](../Page/Dcard.md "wikilink")，而後臺灣媒體在2017年5月13日對此新聞作出大篇幅報導。

2018年8月3日台積電發生成立以來重大資安事件，造成竹科、中科與南科廠區停工，此次事件肇因為新機台在安裝軟體的過程中發生操作失誤。3日安裝新機台時並未將此機台於連結網路前先隔離確保無病毒，造成「WannaCry」變種病毒進入公司網路，令機台當機或是重複開機。此次受到感染的機台與自動搬運系統，以及相關的電腦系統，主要是使用Windows
7卻未安裝修正軟體於機台自動化介面，以致受影響的機台無法運作以及部分自動搬運系統無法正常運作。

###

勒索软件影响了英国医疗系统的运作。\[63\]由於勒索软件导致的系统瘫痪，部分常规手术被临时取消，救护车也被迫分流到其他未受到影响的医院。\[64\]\[65\]英国国民保健署在2016年仍然有上千台电脑在使用Windows
XP，\[66\]而Windows XP直到本次感染爆发之前并没有任何修复服务器消息块漏洞的补丁，这成为英国医疗系统受到攻击的原因之一。

###

由于高度封闭的[-{zh-hant:北韓;zh-hans:朝鲜}-几乎完全断绝与互联网的连接](https://zh.wikipedia.org/wiki/光明網_\(北韓\) "wikilink")，此病毒并未对北韓造成影响。\[67\]

###

[日本警察厅说](../Page/警察廳_\(日本\).md "wikilink")，截至5月18日，在日本境内被确认的受害事件共21件。具体为东京、大阪等地共4个企业、神奈川县内的行政机关、茨城县的一家医院等。\[68\]当地时间15日，日本政府于[首相官邸危机管理中心设置](../Page/總理大臣官邸.md "wikilink")“情报联络室”。\[69\]6月19日，本田在[狭山市的汽车工厂受WannaCry影响停工一天](../Page/狹山市.md "wikilink")。\[70\]

### 其他

此外，巴西圣保罗法院\[71\]、加拿大公共卫生服务机构\[72\]、哥伦比亚国立卫生研究院\[73\]、法国[雷诺](../Page/雷诺.md "wikilink")\[74\]、[德国铁路系统](../Page/德国铁路.md "wikilink")\[75\]、印度[安得拉邦警察局](../Page/安得拉邦.md "wikilink")\[76\]、印度尼西亚的多家医院\[77\]、意大利[米兰比科卡大学](../Page/米兰比科卡大学.md "wikilink")\[78\]、[罗马尼亚外交部](https://zh.wikipedia.org/wiki/罗马尼亚外交部 "wikilink")\[79\]\[80\]、俄罗斯通讯运营商\[81\]、俄罗斯联邦内务部\[82\]、[俄罗斯铁路](../Page/俄罗斯铁路.md "wikilink")\[83\]以及西班牙\[84\]、瑞典\[85\]、匈牙利\[86\]、泰国\[87\]、荷兰\[88\]、葡萄牙\[89\]等将近一百个国家的机构院所也受到波及。

## 病毒功能

以下以2017年5月第一次大规模传播的病毒版本为主；该病毒早前的一个版本曾于4月透過[电子邮件和有害](../Page/电子邮件.md "wikilink")[Dropbox链接传播](../Page/Dropbox.md "wikilink")，但没有利用Windows漏洞进行主动传播的能力\[90\]。

通过利用漏洞，病毒不需要打搅用户，可以静默获得操作系统的特权，然后得以在本地网络中传染。\[91\]

简而言之，程序在加载完成后会调用Windows的[CryptoAPI](https://zh.wikipedia.org/wiki/CryptoAPI "wikilink")，新生成一对2048位的[RSA](../Page/RSA加密演算法.md "wikilink")[密钥](https://zh.wikipedia.org/wiki/密钥 "wikilink")。密钥对包括私钥和公钥，它们会被存储至被感染计算机；但解密时需要的私钥在存储前会使用程序自带的另一RSA公钥加密，该公钥对应的私钥由攻击者持有。\[92\]

随后程序会遍历存储设备（部分系统文件夹等除外\[93\]），加密特定[扩展名的文件](https://zh.wikipedia.org/wiki/扩展名 "wikilink")；程序在加密文件时使用[AES算法](../Page/高级加密标准.md "wikilink")，会为每一个文件随机生成一个128位AES密钥，密钥随后会被程序加载完后生成的RSA公钥加密，并在当前文件加密完后存储在该文件的头部\[94\]。程序还会调用[命令提示符删除设备上的](https://zh.wikipedia.org/wiki/命令提示符 "wikilink")[卷影副本](../Page/磁碟區陰影複製服務.md "wikilink")（Shadow
copy）备份\[95\]。有报道认为这一操作可能会引起[UAC弹框而被用户注意到](https://zh.wikipedia.org/wiki/UAC "wikilink")\[96\]。如果用户此时拒绝UAC请求，则清除病毒后仍可能透過Windows备份功能回復部分文件\[97\]。但后续分析指出，病毒是通过内核漏洞注入系统进程来执行的，传染过程中并不会有UAC弹窗出现\[98\]。

加密过程结束后，病毒会把系统壁纸替换成英语告示\[99\]，并显示一封提供28种语言版本的勒索信\[100\]，其中部分可能使用了[机器翻译](../Page/机器翻译.md "wikilink")\[101\]\[102\]。程序要求用户支付与300至600美元等值的[比特币](../Page/比特币.md "wikilink")\[103\]\[104\]，并在勒索信中給予被感染者3天期限，如若超過贖金會翻倍，超过一周仍未付款則會“撕票”\[105\]。在勒索信中，病毒还声称今后可能举行免费-{恢}-复活动，对-{象}-是运气好且“半年以上没钱付款的穷人”\[106\]。

程序透過[Tor匿名网络与攻击者的服务器连接](../Page/Tor.md "wikilink")\[107\]。此外，程序还会在计算机所属[局域网内](../Page/局域网.md "wikilink")，隨機-{zh-hans:连接;zh-hant:連結}-其他電腦SMB使用的[TCP/UDP](https://zh.wikipedia.org/wiki/TCP/UDP端口列表 "wikilink")
445與139等埠以自我传播\[108\]，并尝试用同樣方式随机感染互联网上的其他计算机\[109\]。

据[思科分析](https://zh.wikipedia.org/wiki/思科 "wikilink")，病毒在感染其他计算机时会尝试透過后门安装\[110\]。而根据《[连线](../Page/连线.md "wikilink")》的报道，此病毒也会同时在计算机上安装该后门\[111\]，现已有脚本可检测并移除\[112\]。

攻击者在程序中[硬编码了至少](https://zh.wikipedia.org/wiki/硬编码 "wikilink")3个比特币地址（或称“[钱包](https://zh.wikipedia.org/wiki/比特币#錢包 "wikilink")”），以接收受害者的赎金\[113\]，这些钱包的真实拥有者身份不明，但交易情况和余额是公开的。有人在[Twitter上设置了一个](../Page/Twitter.md "wikilink")，以实时追踪这三个钱包收到的转账。\[114\]，攻击者已获得约合3.2万美元的比特币\[115\]。

## 应对措施

### 防御

若想有效防御此蠕虫的攻击，首先应立即部署Microsoft安全公告MS17-010中所涉及的所有安全更新。Windows XP、Windows
Server 2003以及Windows 8应根据微软的用户指导安装更新。

当不具备条件安装安全更新，且没有与Windows XP
(同期或更早期Windows)主机共享的需求时，应当根据Microsoft安全公告MS17-010\[116\]中的变通办法\[117\]，禁用SMBv1协议，以免遭受攻击。虽然利用[Windows防火墙阻止TCP](https://zh.wikipedia.org/wiki/Windows防火墙 "wikilink")
445端口也具备一定程度的防护效果，但这会导致Windows共享完全停止工作，并且可能会影响其它应用程序的运行，故应当按照微软公司提供的变通办法\[118\]来应对威胁。

2017年5月第一次大规模传播时，署名为MalwareTech的英国安全研究员在当时的病毒中发现了一个未注册的[域名](../Page/域名.md "wikilink")，主因是病毒內建有傳播開關（Kill
Switch），會向該域名發出[DNS請求](https://zh.wikipedia.org/wiki/DNS "wikilink")，用於測試病毒是否處於防毒軟件的虛擬運作環境中，由於該域名並沒有設置DNS，所以正常情況是不會有回應，若有回應就說明處於虛擬環境下，病毒會停止傳播以防被防毒軟件清除\[119\]\[120\]\[121\]。这名安全研究员花费8.29英镑注册域名后发现每秒收到上千次请求。在该域名被注册后，部分计算机可能仍会被感染，但“WannaCry的这一版本不会继续传播了”\[122\]。

然而需要注意的是，在部分网络环境下，例如一些局域网、[内部网](https://zh.wikipedia.org/wiki/内部网 "wikilink")，或是需要透過[代理服务器才能访问互联网的网络](../Page/代理服务器.md "wikilink")，此域名仍可能无法正常连接\[123\]\[124\]。另外，现已有报道称该病毒出现了新的变种，一些变种在加密与勒索时并不检查这一域名\[125\]\[126\]\[127\]。

### 复原数据

該病毒會「读取源文件并生成加密文件，直接把源文件作删除操作」\[128\]。2017年5月19日，安全研究人员Adrien
Guinet发现病毒用来加密的Windows API存在的缺陷，在非最新版操作系统（[Windows
10](../Page/Windows_10.md "wikilink")）中，所用[私钥会暂时留在内存中而不会被立即清除](https://zh.wikipedia.org/wiki/私钥 "wikilink")。他开发并开源了一个名为wannakey的工具，并称这适用于为感染该病毒且运行Windows
XP的计算机找回文件，前提是该计算机在感染病毒后并未重启，且私钥所在内存还未被覆盖（这需要运气）\[129\]。后有开发者基于此原理开发了名为「wanakiwi」的软件，使恢复过程更加自动化，并确认该方法适用于运行Windows
XP至Windows
7时期间的多款Windows操作系统\[130\]。一些安全厂商也基于此原理或软件开发并提供了[图形化工具以帮助用户恢复文件](https://zh.wikipedia.org/wiki/图形化用户界面 "wikilink")\[131\]\[132\]。

## 评论

一些人士批评与此事件有关联的美国国家安全局（NSA）。[棱镜计划告密人](https://zh.wikipedia.org/wiki/棱镜计划 "wikilink")[爱德华·斯诺登称](../Page/爱德华·斯诺登.md "wikilink")，如果NSA“在发现用于此次对医院进行攻击的缺陷时就进行，而不是等到丢失时才说，（此次攻击）就可能不会发生”\[133\]。微软总裁布拉德·史密斯则表示：“政府手中的漏洞利用程序一次又一次地泄露到公共领域，造成广泛破坏。如果用常规武器来说，这种情况等同于美军的[战斧导弹发生失窃](https://zh.wikipedia.org/wiki/战斧导弹 "wikilink")。”\[134\]\[135\]

也有人士聚焦于网络安全意识方面。德国[联邦信息安全办公室主任Arne](../Page/联邦信息安全办公室.md "wikilink")
Schönbohm声明道：“现在发生的攻击突显出我们的[信息社会是多么脆弱](https://zh.wikipedia.org/wiki/信息社会 "wikilink")。这对公司是一次警醒，是时候认真考虑IT安全了。”\[136\]\[137\][美国外交关系协会数字和网络政策项目负责人](../Page/美国外交关系协会.md "wikilink")认为政府和私营部门的补丁和更新系统运转不正常，不是所有人都会在第一时间为系统漏洞打上补丁\[138\]；[半岛电视台在文章中引述观点称](../Page/半岛电视台.md "wikilink")，许多企业的员工缺乏网络安全方面的训练\[139\]。《[福布斯](../Page/福布斯.md "wikilink")》网站上的一篇专栏文章则认为，该攻击生动地证明了[备份和良好安全习惯的重要性](../Page/备份.md "wikilink")，包括及时安装最新的安全更新\[140\]。[英国首相](../Page/英国首相.md "wikilink")[特雷莎·梅也就此次攻击发表讲话](https://zh.wikipedia.org/wiki/特雷莎·梅 "wikilink")，称[英国国家网络安全中心正在与所有受攻击的机构合作调查](https://zh.wikipedia.org/wiki/英国国家网络安全中心 "wikilink")\[141\]。特雷莎·梅还表示：“这不是针对[国民保健署的攻击](https://zh.wikipedia.org/wiki/国民保健署_\(英国\) "wikilink")，这是国际性的攻击，全世界数以千计的国家和组织都受到了影响\[142\]。”

## 调查

2017年5月29日，据[CNET引述美国安全公司Flashpoint发布的报告称](../Page/CNET.md "wikilink")，根据对病毒附带的28种语言撰写的勒索信的文法分析研究，病毒制造者有可能是一名中文母语者\[143\]，其中文版勒索信文法地道，而英文版有一些语法错误，其他语言版本则更像是借助[Google翻译以](../Page/Google翻译.md "wikilink")[机器翻译而得](../Page/机器翻译.md "wikilink")\[144\]。在早前的5月16日，[Google](../Page/Google.md "wikilink")、[卡巴斯基](../Page/卡巴斯基實驗室.md "wikilink")、闪点（Flashpoint）等多家安全公司的安全研究员曾发文认为，病毒的幕后黑手可能是源自朝鲜的“拉撒路组”（Lazarus
Group）黑客组织\[145\]，而据传该组织成员居于中国\[146\]。但[奇虎360和](https://zh.wikipedia.org/wiki/奇虎360 "wikilink")[安天的安全工程师认为闪点网络情报公司仅以语言判断是十分不专业的臆测行为](https://zh.wikipedia.org/wiki/安天 "wikilink")，有博眼球之嫌\[147\]。

2017年6月17日，据《[华盛顿邮报](../Page/华盛顿邮报.md "wikilink")》报道，NSA的内部报告认为此恶意软件来自朝鲜情报机关赞助的黑客团体，并对这份报告有“中等信心（moderate
confidence）”。\[148\]（NCSC）也发布报告将此事件源头指向朝鲜的黑客团队\[149\]\[150\]。

2017年10月，[微软总裁布莱德](../Page/微软.md "wikilink")·史密斯（Brad
Smith）接受[ITV采访称](../Page/獨立電視台.md "wikilink")，他非常相信朝鲜是影响全球150个国家摧毁20万台电脑的幕后黑手\[151\]。

## 軼事

2017年5月15日，臺灣一名Windows
XP使用者遭受WannaCry的攻擊後，因電腦配備老舊，導致WannaCry程式運作到一半，突然「停止回應」而無法運作。\[152\]

## 参见

  - [知名病毒及蠕蟲的歷史年表](../Page/知名病毒及蠕蟲的歷史年表.md "wikilink")
  - [Petya](https://zh.wikipedia.org/wiki/Petya "wikilink")

## 参考资料

## 外部链接

  - [Microsoft安全公告MS17-010](https://technet.microsoft.com/library/security/MS17-010)
  - [用户指导](https://blogs.technet.microsoft.com/msrc/2017/05/12/customer-guidance-for-wannacrypt-attacks/)（[微软中国翻译](http://blog.sina.com.cn/s/blog_6b8988220102x3gt.html)）
  - 微软恶意软件防护中心上[Ransom:Win32/WannaCrypt相关资料](https://www.microsoft.com/security/portal/threat/encyclopedia/Entry.aspx?Name=Ransom:Win32/WannaCrypt)
  - [勒索软件席卷全球国内多种网络系统中招 -
    新浪网专题](http://tech.sina.com.cn/zt_d/hackerandbitcoin)
  - MalwareTech网站发布的[WannaCry世界各地感染实况](https://web.archive.org/web/20170514133513/https://intel.malwaretech.com/WannaCrypt.html)
  - [香港電腦保安事故協調中心WannaCry
    (WannaCrypt)加密勒索軟件加密受害者數據](https://www.hkcert.org/my_url/zh/alert/17051301)

[Category:2017年罪案](https://zh.wikipedia.org/wiki/Category:2017年罪案 "wikilink")
[Category:2017年5月](https://zh.wikipedia.org/wiki/Category:2017年5月 "wikilink")
[Category:网络攻击](https://zh.wikipedia.org/wiki/Category:网络攻击 "wikilink")
[Category:蠕虫病毒](https://zh.wikipedia.org/wiki/Category:蠕虫病毒 "wikilink")
[Category:勒索軟體](https://zh.wikipedia.org/wiki/Category:勒索軟體 "wikilink")
[Category:2017年计算机科学](https://zh.wikipedia.org/wiki/Category:2017年计算机科学 "wikilink")
[Category:网络犯罪](https://zh.wikipedia.org/wiki/Category:网络犯罪 "wikilink")

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

42.

43.

44.

45.
46.

47.

48.

49.

50.  
    PingWest品玩|accessdate=2017-05-16|work=www.pingwest.com|quote=在腾讯电脑管家论坛关于此次WannaCry的官方知识贴中，主动解释了“为何微软3月发布的补丁会被屏蔽”}}

51.

52.

53.

54.

55.  Zero
    Hedge|date=2017-05-13|website=www.zerohedge.com|language=en|access-date=2017-05-14}}

56.

57.

58.

59.

60.

61.

62.

63.

64.
65.

66.

67.

68.

69.

70.

71.

72.

73.

74.

75.

76.

77.

78.

79.

80.

81.

82.

83.

84.

85.
86.

87.

88.

89.

90.

91. <https://securingtomorrow.mcafee.com/executive-perspectives/analysis-wannacry-ransomware-outbreak/>

92.

93.
94.
95.

96.
97.

98. <https://www.fireeye.com/blog/products-and-services/2017/05/wannacry-ransomware-campaign.html>

99.
100.
101.

102.

103.

104.

105.

106.

107.
108.
109.
110.

111.
112.
113.

114.

115.

116.

117.

118.

119.

120.

121.

122.

123.

124.
125.

126.

127.

128.

129.

130.

131. [安天发布魔窟WannaCry蠕虫解密工具](https://archive.is/20170521024512/http://mp.weixin.qq.com/s/wqvgnbHsogNsqrm7SdMJSQ)，[微信公众号文章](http://mp.weixin.qq.com/s/wqvgnbHsogNsqrm7SdMJSQ)的存档

132.

133.
134.

135.

136.

137.

138.

139.
140.

141.

142.

143.

144.

145.

146.
147.

148.

149.

150.

151. [N. Korea stole cyber tools from NSA, carried out WannaCry
     ransomware attack – Microsoft
     chief](https://www.rt.com/news/406680-microsoft-nkorea-hack-wannacry/)

152.