[GitHub_logo_2013_padded.svg](https://zh.wikipedia.org/wiki/File:GitHub_logo_2013_padded.svg "fig:GitHub_logo_2013_padded.svg")
**对[GitHub的审查和封锁](../Page/GitHub.md "wikilink")**经常在多个国家发生，例如[中国](https://zh.wikipedia.org/wiki/中华人民共和国 "wikilink")、[俄罗斯](../Page/俄罗斯.md "wikilink")、[印度](../Page/印度.md "wikilink")、[土耳其等](../Page/土耳其.md "wikilink")。审查和封锁方式包括但不限于[DNS污染](https://zh.wikipedia.org/wiki/DNS污染 "wikilink")、[中间人攻击等](../Page/中间人攻击.md "wikilink")。但是，由於封鎖引發了用戶和科技公司的強烈反應，這些國家最終都解除了對GitHub的封鎖。

## 背景

[GitHub是一个基于](../Page/GitHub.md "wikilink")[Git的源代码托管网站](../Page/Git.md "wikilink")，主要用于存储[源代码并用于项目管理](../Page/源代码.md "wikilink")。截止到2015年，GitHub已有超过1000万用户和2.4亿个Git仓库。\[1\]此外，GitHub还提供了免费的服务（[Gist](../Page/GIST.md "wikilink")）和免费的网络空间GitHub
Pages。GitHub许可协议禁止滥用GitHub的各项服务，保留了删除内容的权力。\[2\]此外，如果GitHub收到[DMCA删除通知](../Page/數字千年版權法.md "wikilink")，GitHub也会删除项目。\[3\]

## 中国

### DNS污染

2013年1月20日，[中國大陸政府的](../Page/中国大陆.md "wikilink")[防火長城利用](https://zh.wikipedia.org/wiki/防火長城 "wikilink")[域名污染和關鍵詞過濾等手段封鎖GitHub](https://zh.wikipedia.org/wiki/域名污染 "wikilink")，令中國大陸的用戶無法直接進入。針對政府對GitHub的封鎖行動，[李开复在](../Page/李開復.md "wikilink")[新浪微博抗議](../Page/新浪微博.md "wikilink")，迅速引起網民的關注，該訊息更在三小時内被轉發逾3萬2千次\[4\]\[5\]。2013年1月23日，GitHub被解封，事件平息。

後來，Gist又被防火長城封鎖，但GitHub其他服務未受影響。\[6\]

### 中间人攻击

2013年1月26日，有中国大陆的用户在访问GitHub时发现证书无效，经检查发现，GitHub的证书变为了一自签署的X.509证书，生成时间为2013年1月25日14时29分12秒，有效期一年，故有人推测GitHub疑似遭到了[中间人攻击](../Page/中间人攻击.md "wikilink")。攻击持续了约一个小时后停止，访问恢复正常。\[7\]
\[8\]

### DDoS攻击

#### 抢票插件风波

2013年1月15日晚，GitHub遭到疑似DDoS攻击，管理员查询日志后得知，攻击来自中国的一个[12306抢票插件](https://zh.wikipedia.org/wiki/12306 "wikilink")。因为该插件代码本身的缺陷，加上插件作者低估了[春运抢票的人数](../Page/春运.md "wikilink")，构成了DDoS攻击。\[9\]1月20日，GitHub在中国遭到屏蔽。有评论认为，该抢票插件是导致GitHub在中国被屏蔽的原因。\[10\]

#### 旁觀者攻擊

GitHub从2015年3月26日凌晨2時左右（[世界協調時間](../Page/协调世界时.md "wikilink")，以下簡稱為UTC）起遭到了持续的[DDoS攻击](../Page/阻斷服務攻擊.md "wikilink")。\[11\]GitHub在其[部落格称](https://zh.wikipedia.org/wiki/部落格 "wikilink")，这次攻击是GitHub历史上最严重的一次DDoS攻击，\[12\]

GitHub堅信攻擊者的目的在於迫使GitHub刪除特定類型的內容。\[13\]\[14\]\[15\]第三方研究者指出，此次攻击采用了HTTP劫持，[百度的](../Page/百度.md "wikilink")[JS脚本文件被](../Page/JavaScript.md "wikilink")[中间人植入了攻击GitHub的代码](../Page/中间人攻击.md "wikilink")，其功能是每隔2秒加载一次[GreatFire或](https://zh.wikipedia.org/wiki/Greatfire.org "wikilink")[纽约时报中文网的帳號主頁](../Page/纽约时报.md "wikilink")。\[16\]百度已否认自身产品存在安全问题。\[17\]。这次攻击导致GitHub在全球范围内的访问速度下降。\[18\]。

3月28日（[UTC+8](../Page/UTC+08:00.md "wikilink")）起，GitHub在中国大陆十分不稳定，多数情况下无法访问。\[19\]截止29日，攻击者共使用了四種DDoS攻擊技術：

1.  第一輪，利用中國大陸以外的網民與[翻牆的網民瀏覽被劫持的百度JavaScript檔案](https://zh.wikipedia.org/wiki/突破網路審查 "wikilink")，該檔案每2秒向GitHub上的两个頁面發出請求，被GitHub的彈窗警告攔住；
2.  第二轮，跨網域<img>攻擊，被GitHub检查[Referer攔住](../Page/HTTP參照位址.md "wikilink")；
3.  第三輪，DDoS攻擊[GitHub Pages](../Page/GitHub_Pages.md "wikilink")；
4.  第四輪，[SYN
    flood](../Page/SYN_flood.md "wikilink")，利用[TCP協定缺陷发送大批伪造的TCP連線請求](https://zh.wikipedia.org/wiki/TCP协议 "wikilink")，耗盡GitHub的資源。\[20\]

[Traceroute-GFW.png](https://zh.wikipedia.org/wiki/File:Traceroute-GFW.png "fig:Traceroute-GFW.png")追踪[TTL来证明中国政府对GitHub发动攻击](https://zh.wikipedia.org/wiki/存活時間 "wikilink")\]\]

根據系統狀態訊息頁面的顯示，已於3月31日停止了網路攻擊，該日凌晨0:09分（UTC）已經穩定。GitHub在其Twitter與微博予以了證實。至此，此網路攻擊共持續了五天。这次用于网络攻击的工具被称为“[大炮](../Page/大炮_\(中國網路審查\).md "wikilink")”。

3月30日（UTC+8），[中國外交部发言人在例行記者會上被媒体问及此事时](../Page/中华人民共和国外交部.md "wikilink")，不承認也不否認网络攻击與中國政府有關，称“中国历来是网-{}-络攻击的受害国”、“近期似乎只要是美国或者其他哪个国家有网站受到攻击，就会有人联想是不是中方-{黑}-客所为，这很奇怪。”\[21\]\[22\]

4月1日，美國總統[奥巴馬簽署了一項](https://zh.wikipedia.org/wiki/奥巴馬 "wikilink")[政令](https://zh.wikipedia.org/wiki/行政命令_\(美國\) "wikilink")，授权的内容為：凡參與由美國境外授意或實施，且对“美国的国家安全、外交政策、经济状况，或者金融稳定造成重大威胁”的駭客，将採取旅行與金融方面的制裁。\[23\]

5月8日，[美國國務院發言人Jeff](https://zh.wikipedia.org/wiki/美國國務院 "wikilink")
Rathke稱，[美国聯邦政府已要求中国當局调查相关的網路攻擊并告知调查结果](https://zh.wikipedia.org/wiki/美国聯邦政府 "wikilink")。\[24\]

#### 再遭攻擊

2015年8月，中國政府進一步收緊對網際網路的控制。22日，[翻牆軟體](https://zh.wikipedia.org/wiki/突破網路審查 "wikilink")[Shadowsocks作者迫於警方壓力刪除項目](../Page/Shadowsocks.md "wikilink")。25日，翻牆軟體[GoAgent作者自行刪除自己的代碼](../Page/GoAgent.md "wikilink")。同一天GitHub再次遭到來自中國大陸的DDoS攻擊。\[25\]\[26\]开发者普遍认为此次攻击与中国政府有关。\[27\]

### 政府删除请求

2016年6月8日，[中国网络空间安全协会致信GitHub](https://zh.wikipedia.org/wiki/中国网络空间安全协会 "wikilink")，称其中一个名为“Zhao”的项目诽谤[中国领导人](https://zh.wikipedia.org/wiki/中华人民共和国领导人 "wikilink")[习近平](../Page/习近平.md "wikilink")，要求立刻删除。3天后GitHub公开了这封公开信。这是GitHub收到的第六个政府删除请求，也是第一个来自中国政府的请求。\[28\]该项目是博客主[编程随想制作的](https://zh.wikipedia.org/wiki/编程随想 "wikilink")“[赵家人](https://zh.wikipedia.org/wiki/赵家人 "wikilink")”名单。目前，在中国大陆访问该项目，网站会返回[HTTP
451错误](../Page/HTTP_451.md "wikilink")。\[29\]

### 浏览器端攻击

2019年4月3日起，中国大陆的一些[浏览器](https://zh.wikipedia.org/wiki/浏览器 "wikilink")（如[QQ浏览器](../Page/QQ浏览器.md "wikilink")、[微信浏览器](https://zh.wikipedia.org/wiki/微信浏览器 "wikilink")、[UC浏览器和](../Page/UC浏览器.md "wikilink")[360安全浏览器等](../Page/360安全浏览器.md "wikilink")）将GitHub上的996.icu项目仓库标记为“危险网站”、“违法网站”，阻止用户访问相关GitHub网页\[30\]\[31\]\[32\]。

## 俄罗斯

俄罗斯政府通过维护一份网络封锁的黑名单，封锁网站包括儿童色情、毒品、宣扬自杀、宣扬恐怖主义和其他非法网站等。\[33\]

### 运营商封锁

[Github_russia_block.png](https://zh.wikipedia.org/wiki/File:Github_russia_block.png "fig:Github_russia_block.png")

2014年12月2日，因为网站内包含了几种涉及自杀教学的内容而封禁了GitHub。因为GitHub全站使用[HTTPS连接](../Page/超文本传输安全协议.md "wikilink")，无法针对部分页面进行封锁，因此[互联网服务供应商被强制要求封锁整个网站](../Page/互联网服务供应商.md "wikilink")。
实行封锁的运营商包括：Beeline、MTS、MGTS和Megafon。监督局负责人Maxim
Ksenzov表示，GitHub被封禁是因为之前的2014年10月10日GitHub未遵守俄罗斯的删除请求。\[34\]在2014年10月2日GitHub曾被短暂封锁，直到原始的自杀教程被删除。\[35\]

### 被封禁的内容

2014年3月23日，有人在GitHub上面发布了介绍自杀的手册，内含在俄罗斯内的31种自杀方法，该项目被数个用户[複刻](https://zh.wikipedia.org/wiki/复刻_\(软件工程\) "wikilink")。\[36\]在GitHub被封锁之后，很多GitHub用户举报了该项目。该项目于2014年10月2日被建立者删除。\[37\]\[38\]

### 回应

按照俄罗斯政府的相关要求，GitHub屏蔽了相关仓库在俄罗斯内的访问，以解除对GitHub的封锁。
GitHub为监督局专门建立了一个名为“roskomnadzor”的仓库，并记录来自监督局的删除通知。在仓库的README文件中，GitHub指出，他们对[互联网审查表示关注](../Page/互联网审查.md "wikilink")，公开透明是为了防止潜在的[史翠珊效应](../Page/史翠珊效应.md "wikilink")。GitHub还指出，发布通知仅仅是为了记录，不会针对仓库内容的观点进行判断。\[39\]

### 政府删除请求

截止到2016年6月，GitHub共收到6份政府删除请求，其中5份来自俄罗斯政府。\[40\]

## 印度

印度根据联邦和州法律来审查网站。互联网服务供应商需要按照的要求来进行审查。但有评论指出，这些法律规定比较模糊，供应商容易过分审查。\[41\]

### 运营商封锁

在2014年12月17日，命令运营商封禁32个网站。\[42\]命令于2014年12月31日被公开，其中包括GitHub、Gist、[Vimeo](../Page/Vimeo.md "wikilink")、[互联网档案馆和多个](../Page/互联网档案馆.md "wikilink")服务。\[43\]

封锁令被印度执政党[印度人民党的Arvind](../Page/印度人民党.md "wikilink")
Gupta所证实，他还指出封锁令与印度的反恐小组针对[伊斯兰国的建议有关](../Page/伊斯兰国.md "wikilink")。Gupta还指出，配合政府调查的网站会被解除封锁。\[44\]

2015年1月2日，印度通信部门宣布将解封四个网站，其中有GitHub
Gist，并指出一旦剩下的网站遵守印度法律，也会被解除封锁。解释封禁原因时，部长提到“在这些网站中，大多数网站在发布内容之前都不需要任何审核……这些网站经常被用于传递和交流[吉哈德内容](../Page/吉哈德.md "wikilink")……”\[45\]

2015年1月4日，一个GitHub发言人指出，一些用户在访问GitHub时仍然会遇到困难，GitHub已经和印度政府进行接触，但仍然无法确定封禁的具体原因。发言人还指出，使印度的开发者能够重新访问GitHub是他们的高优先级工作，他们“愿意与印度政府合作，建立一套识别和处理非法内容的过滤系统，以恢复网站的正常访问，并确保将来不会再受到影响。”\[46\]

### 影响

据[印度时报报道](https://zh.wikipedia.org/wiki/印度时报 "wikilink")，运营商Vodafone、BSNL、Hathway封锁了GitHub而通过Airtel仍能访问。\[47\]因为封锁令只告诉运营商封锁哪些网站但未指出如何封锁，因此封锁程度是不同的。封锁是不可靠的，并且似乎发生在多个层面上。即使是同一运营商，封锁方法也有多种，包括[IP封锁](https://zh.wikipedia.org/wiki/IP封锁 "wikilink")、使用[代理服务器](../Page/代理服务器.md "wikilink")、[DNS污染](https://zh.wikipedia.org/wiki/DNS污染 "wikilink")。根据封锁程度不同，突破封锁的方法也不同，例如更换[DNS服务器或使用](../Page/域名系统.md "wikilink")[代理软件](https://zh.wikipedia.org/wiki/代理软件 "wikilink")。\[48\]

### 批评

[GOIBlocks_protest_poster_fsftn.png](https://zh.wikipedia.org/wiki/File:GOIBlocks_protest_poster_fsftn.png "fig:GOIBlocks_protest_poster_fsftn.png")

针对封锁，[TechCrunch评论到](../Page/TechCrunch.md "wikilink")“在名单中加入GitHub……是最脑残的决定之一”，并预言GitHub在信息技术领域的重要性会使封禁行为引发抗议。
Twitter用户通过“\#GOIblocks”标签进行抗议，并引用[纳伦德拉·莫迪在](../Page/纳伦德拉·莫迪.md "wikilink")2012年发表的信息来谴责网络封锁。\[49\]印度[匿名者多次向政府发出威胁](../Page/匿名者.md "wikilink")，但并未采取实际行动。\[50\]

## 土耳其

[October_9,_2016_GitHub_Turkey_block.jpg](https://zh.wikipedia.org/wiki/File:October_9,_2016_GitHub_Turkey_block.jpg "fig:October_9,_2016_GitHub_Turkey_block.jpg")
2016年10月8日，在土耳其黑客组织声称入侵土耳其能源部长、[埃尔多安女婿](https://zh.wikipedia.org/wiki/埃尔多安 "wikilink")之后，命令互联网服务供应商封锁几个[檔案分享网站](../Page/檔案分享.md "wikilink")，包括、[Microsoft
OneDrive](../Page/OneDrive.md "wikilink")、[Google
Drive](../Page/Google雲端硬碟.md "wikilink")\[51\]。觀測網路審查情況的注意到GitHub於次日上午被封鎖，並且相關的封鎖令被信息与通信技术署逐步發佈出來\[52\]。封鎖導致依賴GitHub的軟體（例如[Font
Awesome](../Page/Font_Awesome.md "wikilink")、等）無法正常運行。Startup
Istanbul活動的參與者也表達了對基礎設施可用性的不滿。在土耳其，\#GitHub[標籤成為了Twitter的熱門標籤之一](../Page/主題標籤.md "wikilink")。按照的說法，RedHack組織蓄意通過多種服務來傳播郵件內容，期待土耳其政府將其封鎖，以造成[史翠珊效應](https://zh.wikipedia.org/wiki/史翠珊效應 "wikilink")。18小時後GitHub被解封\[53\]。

## 注释

## 参考文献

[Category:互联网审查](https://zh.wikipedia.org/wiki/Category:互联网审查 "wikilink")
[Category:GitHub](https://zh.wikipedia.org/wiki/Category:GitHub "wikilink")

1.

2.   (Specifically terms A8 and G7)

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
51.

52.
53.