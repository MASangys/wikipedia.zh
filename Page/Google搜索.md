**Google搜尋**是由[Google公司推出的一个](https://zh.wikipedia.org/wiki/Google公司 "wikilink")[互聯網](https://zh.wikipedia.org/wiki/互聯網 "wikilink")[搜索引擎](../Page/搜索引擎.md "wikilink")，它是互聯網上最大、影响最广泛的搜索引擎。Google每日透過不同的服務，處理来自世界各地超過30億次的查詢。

除了搜尋網頁外，Google亦提供搜尋圖像、[新聞組](https://zh.wikipedia.org/wiki/新聞組 "wikilink")、新聞網頁、地圖、影片的服務。2005年6月，Google已儲存超過80億個網頁，1億3千萬張圖片，以及超過1億的新聞組訊息 - 總計大概10億4千萬個項目。它也[缓存](../Page/缓存.md "wikilink")了编入索引中的绝大多数网页的内容。

因为Google的名声，“Google”一个事物做动词表示的是“在Google上搜索”。它還有引申义“在互联网上搜索”，甚至“（在实际环境中）搜索”的意思。Google官方-{zh-hans:通过;zh-tw:透過;}-律师信强烈反对这种滥用他们公司名字的习惯，因为它可能會導致Google變成一個[通用商標名](https://zh.wikipedia.org/wiki/通用商標 "wikilink")。\[1\][Google](http://www.google.com)

## 搜索引擎

### 物理構造

Google於全球數個地方，僱用伺服器中心來存放較低成本的普通電腦，運行[Red Hat Linux作業系統來回應搜索要求和索引網頁](../Page/Red_Hat_Linux.md "wikilink")。這個於伺服器中心建立的「伺服器園地」以Shared nothing architecture（分佈式資料庫結構）建造。索引是由程序Googlebot執行，它會定期地請求訪問已知的索引建立新頁面。頁面更新愈快，Googlebot訪問亦會愈多。再-{zh-hans:通过;zh-tw:透過;}-在這些已索引網頁上的連結來發現新頁面，並加入到資料庫。索引資料庫和網頁緩存大小是以兆[位元組](https://zh.wikipedia.org/wiki/位元組 "wikilink")（terabyte）來衡量的。Google發展了一套檔案系統名為[Google檔案系統](../Page/Google檔案系統.md "wikilink")，儲存這些資料。

Google使用的这些机器的精确大小和位于何处至今未知；Google官方刻意含糊其词。在John Hennessy和David A. Patterson所著的《计算机結構：走进大数》中，推测Google的[服务器场中](https://zh.wikipedia.org/wiki/服务器场 "wikilink")[群集计算机群形成的](https://zh.wikipedia.org/wiki/群集计算机群 "wikilink")“搜寻场”在2000年大约应该有6000个處理器，12000个普通[IDE硬盘](https://zh.wikipedia.org/wiki/IDE "wikilink")（即每个机器2个硬盘1个处理器），他们位于四个地方：二个在[矽谷和二个在](https://zh.wikipedia.org/wiki/矽谷 "wikilink")[维吉尼亚](https://zh.wikipedia.org/wiki/维吉尼亚 "wikilink")。每个都以OC 48的线路（2488 Mbit/s，参见[带宽](../Page/带宽.md "wikilink")）连接着因特网并且有一个OC 12（622 Mbit/s）线路连接着其他3个Google分站点。这些连接使用思科12000[路由器](../Page/路由器.md "wikilink")（Gateway），用二个Foundry Networks BigIron 8000的以太网交换器分流成4 x 1 Gbit/s的线路连接到64个服务器夹，里面前后各是40台电脑和1台[惠普](../Page/惠普.md "wikilink")以太网交换机，所以一个架子共有80个机器和2个惠普交换机。

Google在2004年4月发布的IPO S-1表单后，大财政公司的英特网开发单位副总裁Tristan Louis估计了现在的（指2008年）服务器场包含下列各项[1](https://web.archive.org/web/20080724093313/http://www.tnl.net/blog/entry/How_many_Google_machines)：

  - 720个服务器架
  - 63,272台机器
  - 126,544个處理器
  - 253,088 GHz的處理能力
  - 126,544 GB内存
  - 5,062 TB的硬盘空间

依照这一估计，Google服务器场组成了全球最强大的[超级计算机](../Page/超级计算机.md "wikilink")，每秒运行速度至少三倍于[地球模拟器](../Page/地球模拟器.md "wikilink")。

### PageRank

Google使用一種名為PageRank的演算法，配合搜尋字串來排名網頁，PageRank是以公司創辦人[拉里·佩奇](../Page/拉里·佩奇.md "wikilink")命名。PageRank演算法根據加權係數，推斷該其他連結到網頁的價值來處理。PageRank如此取得由人所建立的链接，與及與人關聯的重要性。先前的排名搜尋方法，採用了許多搜尋器，以搜尋的關鍵詞和何時搜尋來排名頁面，或有多相關地關聯該搜尋。另外，Google亦採用其他秘密準則，決定排名網頁的結果。

Google不止索引和緩衝HTML檔案，亦索引13種其他檔案類型，例如[PDF](https://zh.wikipedia.org/wiki/PDF "wikilink")、[Word文件](https://zh.wikipedia.org/wiki/Word "wikilink")、[Excel試算表](https://zh.wikipedia.org/wiki/Excel "wikilink")，以及純文字檔案。除了[文本文件](../Page/文本文件.md "wikilink")，其他文件的是先转换为HTML版本后缓存的。所以借助Google可以不需要有这些文件的相应程序就可以看见这些非网页文件，如Word或是Excel。

Google创新的搜索技术和典雅的用户界面设计使Google从第一代搜索引擎中脱颖而出。Google并非只使用[关键词或](https://zh.wikipedia.org/wiki/关键词 "wikilink")[代理](../Page/代理.md "wikilink")搜索技术，它将自身建立在高级PageRank™（网页级别）技术基础之上。这项专利技术可确保始终将最重要的搜索结果首先呈现给用户。网页级别可对网页的重要性进行客观的分析。用于计算网页级别的公式包含5亿个[变量和](https://zh.wikipedia.org/wiki/变量 "wikilink")20多亿个项。网页级别利用巨大的网络链接结构对网页进行组织整理。当从网页A链接到网页B时，Google就认为“网页A投了网页B一票”。Google还对[投票](../Page/投票.md "wikilink")的网页进行分析。Google复杂的自动搜索方法和结构设计被认为可以避免任何人为感情因素提供公正的搜索结果。随着搜索引擎优化（[SEO](https://zh.wikipedia.org/wiki/SEO "wikilink")）和各种针对PageRank的交换链接的行为的流行，Google的PageRank及公正性也越来越受到人们的质疑。

使用者能自定义搜寻引擎。他们能设定一个缺省语言或使用"SafeSearch"过滤技术，设定在每页上被显示的结果多少。Google受争议的放置永久[cookie在用户的机器上以储存这些信息](https://zh.wikipedia.org/wiki/cookie "wikilink")，这使他们能够了解过去用户的搜索内容。任何一次搜索请求（只有头10个关键字被查询），每次最多查询头1000个结果（以每一页最多100个结果的方式显示）。

尽管它有极大的索引数目，仍然有相当多数量的数据库的数据只能是从网站访问到，而不是藉由连接。这所谓的[深网](../Page/深网.md "wikilink")暂时不能被Google数据库所覆盖，举例来说包含了[图书馆](../Page/图书馆.md "wikilink")的[目录](https://zh.wikipedia.org/wiki/目录 "wikilink")，官方的[法定](https://zh.wikipedia.org/wiki/法定 "wikilink")（政府）公文，[电话簿等](https://zh.wikipedia.org/wiki/电话簿 "wikilink")。

（关于PageRank™的介绍，参见[Google的Why Use Google页](http://www.google.com/technology/index.html)）

### Google跳舞

Google跳舞是一种经常被讨论的现象，Google跳舞指的是Google月底大量更新数据库和算法的几天时间，因为可以发现，这几天对Google搜索关键字如www.yahoo.com得到的结果数是不一样的。在跳舞期间，一个站点的等级可能在短时间里戏剧般的改变，而且不同的Google服务器（举例来说：www.google.com，www2.google.com，www3.google.com，www.google.co.uk，www.google.com.hk等）可能为相同的关键字提供不同的结果。跳舞似乎当是googlebot机器人抓取网页期间随即发生的。快速更新的网站，高级别的网页和新闻网站是最经常被检查的，虽然新闻不一定如此。小的调节在每月里持续进行以确定网页级别。在一些情况下，可能需要二到三个月让新建页面出现在搜索结果里。从2003年的夏季开始，每月的搜索，索引和等级更新被不间断的持续更新所取代。这种改变大大减少了Google搜索结果的不稳定性。2003年11月15日，Google似乎进行了有史以来最重要的一次算法升级，后来被称为“[佛罗里达更新](https://zh.wikipedia.org/wiki/佛罗里达更新 "wikilink")”。在这次更新中，几乎所有商业领域的关键词都受到了影响，尤其是一些热门的关键词，Google搜索的结果页完全变了个样儿，很多头一天还排在首位的网站被远远甩到了500名之后。

Google目前的主要挑战之一是，它的算法和结果越是得到网路使用者的信赖，商业网站为了利益而暗中破坏结果的风险就越戏剧般的增加。一些搜索引擎优化公司已经开始尝试使用各种不同的技巧提升Google网页评级，以使他们客户的网站更多的被搜索到。Google已经设法减少了一些已知的使用这种方法的网站的Google页面评级。

由于Google实际上已经成为国际上最流行的搜索引擎，很多网站管理员十分热衷于跟踪他们网站在Google上的左侧排名，并试图解释他们排名变化的原因。现在已有不少网站提供排名Google[搜索引擎优化](https://zh.wikipedia.org/wiki/搜索引擎优化 "wikilink")（Search Engine Optimization，SEO）服務，如在一些高流量的讨论区内加入商业网站的链接，从而使该网站在Google的排名提高。这种措施的确有一定成效，但这种收取客户金钱，在第三者的讨论区上展示广告，对讨论区的读者造成困扰，也侵害了讨论区的商业利益。

还有一种被普遍采用的技术是很多网站使用一个相同的关键字连接到某一个特定的网站，以使用户在Google搜索这个关键字的时候，这个网站的排名会出现在结果的较前面。这种方法被称为[Google炸弹](https://zh.wikipedia.org/wiki/Google炸弹 "wikilink")。现在Google算法更新的频率非常快，据猜测，现在算法公式中涉及的变量有300多个，PageRank™在整个Google算法中的影响力已经下降到20%左右，最终平衡的算法中最重要的变量所占的比例不会超过10%，单纯靠技术手段提升排名的网站已经禁不住时间的考验。

Google发布了一系列的[文章](http://www.google.com/webmasters/guidelines.html)以指导站长们提升他们网站的页面评级。

### SearchWiki

SearchWiki是Google搜索引擎[Web 2.0化的一個體現](../Page/Web_2.0.md "wikilink")，讓登錄的用戶得以參與搜索結果的評等。在每個搜索結果中新增了「調升」、「移除」與「評論」的按鈕：「調升」允許用戶將某搜索結果提升到前方；「移除」則可以刪除某搜索結果；「評論」則可以針對某搜索結果留下意見。為防止[惡作劇](../Page/惡作劇.md "wikilink")與破壞損害了搜索結果可信度，以上的變動都會記錄下登錄用戶名，而且其他登錄用戶也能看到誰做了什麼改變。

典型的Web 2.0概念網站[維基百科創始人](https://zh.wikipedia.org/wiki/維基百科 "wikilink")[吉米·威爾士亦曾提出透過讓用戶參與評等以集用戶群力加強搜索結果有效度的想法](https://zh.wikipedia.org/wiki/吉米·威爾士 "wikilink")，其具體實現即為[Wikia Search](https://zh.wikipedia.org/wiki/Wikia_Search "wikilink")（http://search.wikia.com，曾暫稱「Wikiasari」）。

## 搜索产品

除了搜尋網頁工具，Google還提供搜尋圖像、網上論壇、新聞、影片、當地搜尋、[地图](../Page/Google地图.md "wikilink")、桌面搜尋等服務。2006年，Google已經索引了250億個網頁與及13億張圖像。

Google還有並非直接與搜尋相關的產品。例如[Gmail](../Page/Gmail.md "wikilink")是一個電子郵件服務，但仍包括搜索功能；Google Browser Sync不提供任何搜索工具，旨在組織使用者的瀏覽時間。

## Google即搜即得

[Google_Instant_Search_for_Wikipedia.png](https://zh.wikipedia.org/wiki/File:Google_Instant_Search_for_Wikipedia.png "fig:Google_Instant_Search_for_Wikipedia.png") **Google即搜即得**（Instant Search）是Google于2010年9月8日发布的一个新的搜索技术\[2\]，是一项搜索增强功能，能够使用户在输入内容的同时显示搜索结果，而不需要点击搜索按钮或者按下回车键。这样一来，用户在输入内容的同时就可浏览到相关的搜索结果页，大大节约了搜索消耗的时间\[3\]。

Google即搜即得可以在用户即使不知道要寻找什么，其联想查询也对搜索操作有引导帮助，最热门的联想查询词语会以灰色的文字形式直接地显示在搜索框里，这样当用户一看到所需的搜索结果时，就可以停止输入了。\[4\]而用户也可以选择停用这一功能。\[5\]

### 对移动设备的支持

对于大多区域、语言，Google即搜即得可以在应用[Android](../Page/Android.md "wikilink") 2.2+或者[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink") 4+系统的移动设备上作为测试版功能来使用。\[6\]

### 审查

[色情](../Page/色情.md "wikilink")或其他有冒犯性的搜索关键词不会被Google Instant实时搜索。 出版物编译了Google Instant不会搜索的关键词列表。\[7\]Google Instant不会实时给出含有这些关键词的搜索结果。\[8\]\[9\]

## 搜索结果即时预览

Google在搜索结果中提供即时**预览功能**，可在点击搜索结果前预览对应的网页。用户在搜索结果右侧的灰色箭头鼠标悬停，右侧空白处便会以图片的形式给出相应的网页即时预览。在部分预览中，预览图片上的相关程度较高的部分文本会突显于显示网页上，从而帮助用户更好地了解查询字词在网页中将要出现的位置。\[10\]

预览中还包含两个链接，一个是[缓存网页](https://zh.wikipedia.org/wiki/Google网页快照 "wikilink")，另一个是类似结果。\[11\]

不过，有些搜索结果可能不会提供预览。\[12\]

## 使用技巧

|        |               |
| ------ | ------------- |
| inurl: | 搜尋網頁連接中包含的關鍵字 |
| site:  | 搜尋特定域名的網頁     |
| link:  | 搜尋鏈接到指定網址的網頁  |

google搜尋方法 \[13\]

## 事件

### 故障

[缩略图](https://zh.wikipedia.org/wiki/File:Google's_bug_with_Thais.jpg "fig:缩略图")

2009年1月31日晚間10時46分（UTC+8）左右，Google搜索引擎的中英文等搜索的结果全部加上了-{zh-hans:“该网站可能含有恶意软件，有可能会危害您的电脑”;zh-tw:「這個網站可能會損害您的電腦。」}-。其间，Google的网站管理员中心无法访问，显示“Server Error（服务器故障）”。並且有短暫的修復，之後問題仍然存在。此现象約至11時18分（UTC+8）结束，前后至少30分钟。后Google在官方博客中证实，這是人為失誤，由于恶意网址库中不慎包含了地址“/”，导致所有包含「/」的網址皆被認為包含可能傷害電腦的軟體。\[14\]在这个故障后，Google News也出现了一些微小的问题。

### 黑客襲擊

2013年8月26日，几名巴勒斯坦的黑客劫持了「Google巴勒斯坦」的域名然后使其重定向至他們的網站，并在其網頁上寫了抗议文字。\[15\]\[16\]

## Google搜索在中国大陆地區

Google.com曾經多次被中共官方以不明理由封鎖。2009年6月18日，[中央电视台](https://zh.wikipedia.org/wiki/中央电视台 "wikilink")《[焦点访谈](../Page/焦点访谈.md "wikilink")》节目宣称谷歌的搜索词语联想的功能传播所谓[色情](../Page/色情.md "wikilink")低俗信息。在输入普通的词语比如“母亲”就会直接联想到黄色词语（但事实上在[百度](../Page/百度.md "wikilink")等大陆地區搜索引擎同样存在这种情况）。实情据谷歌Trends功能证据显示在6月10日里来自北京的IP恶意刷入近百次黄色词语，使黄色词汇搜索量猛增。在17日后，此关键词慢慢回复至0，一时间谷歌备受中共喉舌媒体指责。2009年6月24日21時左右，北京的互聯網用户無法訪問Google.com和Gmail，但使用代理服务器等手段（俗称[翻墙](https://zh.wikipedia.org/wiki/翻墙 "wikilink")）可以正常访问。这证明此次Google.com无法在大陆访问并非Google技术原因而是被大陆官方恶意封锁。约两小时后，Google服务恢复访问\[17\]。

2010年1月14日，Google旗下的[Gmail](../Page/Gmail.md "wikilink")遭到可能来自中国的駭客入侵，並企圖下載中國人权活動人士的電郵。Google後来宣布，Google.cn的搜索服务将关闭，转由香港域名面向中国大陆用户提供简体中文服务。

之后，中国大陆用户访问Google时经常被[防火长城](../Page/防火长城.md "wikilink")干扰\[18\]，并于[2014年开始完全无法登入](../Page/2014年中国大陆屏蔽谷歌服务事件.md "wikilink")\[19\]。

## 国际化

Google可以搜索很多的语言，并且提供了多种语言的界面\[20\]。

  - [齐切瓦语](../Page/齐切瓦语.md "wikilink")
  - [国际语](https://zh.wikipedia.org/wiki/国际语 "wikilink")
  - [茨瓦纳语](../Page/茨瓦纳语.md "wikilink")
  - [阿尔巴尼亚语](../Page/阿尔巴尼亚语.md "wikilink")
  - [阿肯语](https://zh.wikipedia.org/wiki/阿肯语 "wikilink")
  - [阿拉伯语](https://zh.wikipedia.org/wiki/阿拉伯语 "wikilink")
  - [阿姆哈拉语](https://zh.wikipedia.org/wiki/阿姆哈拉语 "wikilink")
  - [阿塞拜疆语](../Page/阿塞拜疆语.md "wikilink")
  - [提格里尼亚语](https://zh.wikipedia.org/wiki/提格里尼亚语 "wikilink")
  - [爱尔兰语](https://zh.wikipedia.org/wiki/爱尔兰语 "wikilink")
  - [爱沙尼亚语](../Page/爱沙尼亚语.md "wikilink")
  - [奥里亚语](../Page/奥里亚语.md "wikilink")
  - [奥罗莫语](https://zh.wikipedia.org/wiki/奥罗莫语 "wikilink")
  - [巴西葡萄牙语](../Page/巴西葡萄牙语.md "wikilink")
  - [白俄罗斯语](../Page/白俄罗斯语.md "wikilink")
  - [保加利亚语](../Page/保加利亚语.md "wikilink")
  - [法罗语](../Page/法罗语.md "wikilink")
  - [比哈里语](https://zh.wikipedia.org/wiki/比哈里语 "wikilink")
  - [冰岛语](../Page/冰岛语.md "wikilink")
  - [波兰语](https://zh.wikipedia.org/wiki/波兰语 "wikilink")
  - [波斯尼亚语](../Page/波斯尼亚语.md "wikilink")
  - [波斯语](../Page/波斯语.md "wikilink")
  - [南非荷兰语](https://zh.wikipedia.org/wiki/南非荷兰语 "wikilink")
  - [布列塔尼语](../Page/布列塔尼语.md "wikilink")
  - [鞑靼语](../Page/鞑靼语.md "wikilink")
  - [丹麦语](../Page/丹麦语.md "wikilink")
  - [德语](../Page/德语.md "wikilink")
  - [俄语](https://zh.wikipedia.org/wiki/俄语 "wikilink")
  - [法语](../Page/法语.md "wikilink")
  - [菲律宾语](https://zh.wikipedia.org/wiki/菲律宾语 "wikilink")
  - [芬兰语](../Page/芬兰语.md "wikilink")
  - [弗里西语](../Page/弗里西语.md "wikilink")
  - [格鲁吉亚语](../Page/格鲁吉亚语.md "wikilink")
  - [古吉拉特语](../Page/古吉拉特语.md "wikilink")
  - [瓜拉尼语](https://zh.wikipedia.org/wiki/瓜拉尼语 "wikilink")
  - [哈萨克语](../Page/哈萨克语.md "wikilink")
  - [克里奥尔语](https://zh.wikipedia.org/wiki/克里奥尔语 "wikilink")
  - [韩语](https://zh.wikipedia.org/wiki/韩语 "wikilink")
  - [豪萨语](../Page/豪萨语.md "wikilink")
  - [荷兰语](https://zh.wikipedia.org/wiki/荷兰语 "wikilink")
  - [黑山语](https://zh.wikipedia.org/wiki/黑山语 "wikilink")
  - [基隆迪语](../Page/基隆迪语.md "wikilink")
  - [吉尔吉斯语](https://zh.wikipedia.org/wiki/吉尔吉斯语 "wikilink")
  - [加利西亚语](https://zh.wikipedia.org/wiki/加利西亚语 "wikilink")
  - [加泰罗尼亚语](../Page/加泰罗尼亚语.md "wikilink")
  - [柬埔寨语](https://zh.wikipedia.org/wiki/柬埔寨语 "wikilink")
  - [捷克语](../Page/捷克语.md "wikilink")
  - [凯楚阿语](https://zh.wikipedia.org/wiki/凯楚阿语 "wikilink")
  - [科西嘉语](https://zh.wikipedia.org/wiki/科西嘉语 "wikilink")
  - [克罗地亚语](../Page/克罗地亚语.md "wikilink")
  - [库尔德语](https://zh.wikipedia.org/wiki/库尔德语 "wikilink")
  - [拉丁语](../Page/拉丁语.md "wikilink")
  - [拉脱维亚语](../Page/拉脱维亚语.md "wikilink")
  - [老挝语](../Page/老挝语.md "wikilink")
  - [立陶宛语](../Page/立陶宛语.md "wikilink")
  - [林加拉语](../Page/林加拉语.md "wikilink")
  - [卢干达语](https://zh.wikipedia.org/wiki/卢干达语 "wikilink")
  - [卢旺达语](../Page/卢旺达语.md "wikilink")
  - [罗马尼亚语](https://zh.wikipedia.org/wiki/罗马尼亚语 "wikilink")
  - [罗曼斯语](https://zh.wikipedia.org/wiki/罗曼斯语 "wikilink")
  - [马尔加什语](https://zh.wikipedia.org/wiki/马尔加什语 "wikilink")
  - [马耳他语](../Page/马耳他语.md "wikilink")
  - [马来语](../Page/马来语.md "wikilink")
  - [马其顿语](https://zh.wikipedia.org/wiki/马其顿语 "wikilink")
  - [克里奥耳语](https://zh.wikipedia.org/wiki/克里奥耳语 "wikilink")
  - [毛利语](../Page/毛利语.md "wikilink")
  - [蒙古语](../Page/蒙古语.md "wikilink")
  - [孟加拉语](https://zh.wikipedia.org/wiki/孟加拉语 "wikilink")
  - [摩尔多瓦语](https://zh.wikipedia.org/wiki/摩尔多瓦语 "wikilink")
  - [科萨语](../Page/科萨语.md "wikilink")
  - [祖鲁语](../Page/祖鲁语.md "wikilink")
  - [尼泊尔语](../Page/尼泊尔语.md "wikilink")
  - [挪威语](../Page/挪威语.md "wikilink")
  - [新挪威语](https://zh.wikipedia.org/wiki/新挪威语 "wikilink")
  - [欧西坦语](https://zh.wikipedia.org/wiki/欧西坦语 "wikilink")
  - [葡萄牙语](https://zh.wikipedia.org/wiki/葡萄牙语 "wikilink")
  - [普什图语](../Page/普什图语.md "wikilink")
  - [契维语](https://zh.wikipedia.org/wiki/契维语 "wikilink")
  - [日语](../Page/日语.md "wikilink")
  - [瑞典语](https://zh.wikipedia.org/wiki/瑞典语 "wikilink")
  - [塞尔维亚-克罗地亚语](../Page/塞尔维亚-克罗地亚语.md "wikilink")
  - [塞尔维亚语](https://zh.wikipedia.org/wiki/塞尔维亚语 "wikilink")
  - [塞索托语](../Page/塞索托语.md "wikilink")
  - [世界语](../Page/世界语.md "wikilink")
  - [僧伽罗语](../Page/僧伽罗语.md "wikilink")
  - [斯洛伐克语](../Page/斯洛伐克语.md "wikilink")
  - [斯洛文尼亚语](../Page/斯洛文尼亚语.md "wikilink")
  - [斯瓦希里语](../Page/斯瓦希里语.md "wikilink")
  - [盖尔语](https://zh.wikipedia.org/wiki/盖尔语 "wikilink")
  - [索马里语](https://zh.wikipedia.org/wiki/索马里语 "wikilink")
  - [塔吉克语](../Page/塔吉克语.md "wikilink")
  - [泰语](../Page/泰语.md "wikilink")
  - [汤加语](https://zh.wikipedia.org/wiki/汤加语 "wikilink")
  - [土耳其语](https://zh.wikipedia.org/wiki/土耳其语 "wikilink")
  - [土库曼语](../Page/土库曼语.md "wikilink")
  - [威尔士语](../Page/威尔士语.md "wikilink")
  - [维吾尔语](../Page/维吾尔语.md "wikilink")
  - [乌克兰语](../Page/乌克兰语.md "wikilink")
  - [乌兹别克语](https://zh.wikipedia.org/wiki/乌兹别克语 "wikilink")
  - [巴斯克语](https://zh.wikipedia.org/wiki/巴斯克语 "wikilink")
  - [西班牙语](../Page/西班牙语.md "wikilink")
  - [希伯来语](../Page/希伯来语.md "wikilink")
  - [希腊语](https://zh.wikipedia.org/wiki/希腊语 "wikilink")
  - [夏威夷语](../Page/夏威夷语.md "wikilink")
  - [信德语](../Page/信德语.md "wikilink")
  - [匈牙利语](../Page/匈牙利语.md "wikilink")
  - [修纳语](https://zh.wikipedia.org/wiki/修纳语 "wikilink")
  - [亚美尼亚语](../Page/亚美尼亚语.md "wikilink")
  - [伊博语](https://zh.wikipedia.org/wiki/伊博语 "wikilink")
  - [意大利语](../Page/意大利语.md "wikilink")
  - [意第绪语](https://zh.wikipedia.org/wiki/意第绪语 "wikilink")
  - [印地语](https://zh.wikipedia.org/wiki/印地语 "wikilink")
  - [卡纳达语](../Page/卡纳达语.md "wikilink")
  - [马拉地语](../Page/马拉地语.md "wikilink")
  - [马拉雅拉姆语](../Page/马拉雅拉姆语.md "wikilink")
  - [旁遮普语](https://zh.wikipedia.org/wiki/旁遮普语 "wikilink")
  - [泰卢固语](../Page/泰卢固语.md "wikilink")
  - [泰米尔语](../Page/泰米尔语.md "wikilink")
  - [乌尔都语](../Page/乌尔都语.md "wikilink")
  - [巽他语](https://zh.wikipedia.org/wiki/巽他语 "wikilink")
  - [印尼语](../Page/印尼语.md "wikilink")
  - [爪哇语](https://zh.wikipedia.org/wiki/爪哇语 "wikilink")
  - [英语](../Page/英语.md "wikilink")
  - [约鲁巴语](../Page/约鲁巴语.md "wikilink")
  - [越南语](../Page/越南语.md "wikilink")
  - [繁体中文](https://zh.wikipedia.org/wiki/繁体中文 "wikilink")
  - [简体中文](https://zh.wikipedia.org/wiki/简体中文 "wikilink")

为了达到幽默效果，Google还提供了以下几种语言的界面：

  - [Elmer Fudd语](https://zh.wikipedia.org/wiki/Elmer_Fudd "wikilink")
  - [黑客语](../Page/Leet.md "wikilink")
  - [兒童黑話](../Page/兒童黑話.md "wikilink")
  - [Bork, bork, bork\!](https://zh.wikipedia.org/wiki/Swedish_Chef "wikilink")
  - [海盗语](https://zh.wikipedia.org/wiki/海盗语 "wikilink")
  - [克林贡语](https://zh.wikipedia.org/wiki/克林贡语 "wikilink")

## 參見

  - [對Google的批評](../Page/對Google的批評.md "wikilink")

## 参考文献

## 外部链接

  - [Google.com](https://www.google.com/)
  - [google中國、google香港](https://www.google.com.hk/)
  - [Google台湾](https://www.google.com.tw)
  - [Google十周年庆页面](https://www.google.com/tenthbirthday/)

[Category:Google搜尋](https://zh.wikipedia.org/wiki/Category:Google搜尋 "wikilink") [Category:美国网站](https://zh.wikipedia.org/wiki/Category:美国网站 "wikilink") [Category:多語言網站](https://zh.wikipedia.org/wiki/Category:多語言網站 "wikilink") [Category:搜索引擎](https://zh.wikipedia.org/wiki/Category:搜索引擎 "wikilink") [Category:被防火长城封锁的网站](https://zh.wikipedia.org/wiki/Category:被防火长城封锁的网站 "wikilink") [Category:1997年建立的网站](https://zh.wikipedia.org/wiki/Category:1997年建立的网站 "wikilink") [Category:1997年美國建立](https://zh.wikipedia.org/wiki/Category:1997年美國建立 "wikilink")

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
13. [善用GOOGLE -- 從入門到精通](http://ecaaser3.ecaa.ntu.edu.tw/weifang/cea/%E5%96%84%E7%94%A8GOOGLE.htm)
14.
15.
16.
17.
18.
19.
20.