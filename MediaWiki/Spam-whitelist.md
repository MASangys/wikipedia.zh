`# 符合此列表的外部連結在被加入頁面時會被`[`MediaWiki:Spam-blacklist阻攔而無法加入`](../MediaWiki/Spam-blacklist.md "wikilink")`，因此有此白名單防止過度阻攔`
`# 黑名單僅在中文維基百科有效，維基媒體計劃共用的黑名單列表請見`[`:meta:Spam``   ``blacklist`](https://zh.wikipedia.org/wiki/:meta:Spam_blacklist "wikilink")
`# Mediawiki軟體對黑名單列表的詳細說明請見`[`:mw:Extension:SpamBlacklist`](https://zh.wikipedia.org/wiki/:mw:Extension:SpamBlacklist "wikilink")
`# 管理员可以通过`[`seth's``   ``tool`](https://tools.wmflabs.org/searchsbl/?userdeflang=zh&userdefproj=w)`在垃圾链接黑名单中搜索匹配项`
`#  `

```


# This is a list of domain names which are whitelisted on zh.wikipedia only.  Please check
# the guidelines on the talk page when adding entries.
#
#
# Syntax is as follows:
#   * Everything from a "#" character to the end of the line is a comment
#   * Every non-blank line is a regex fragment which will only match hosts
#     inside URLs

hilive\.tv\/news
wenku\.baidu\.com\/link\?
# Does not completely work as expected due to [[bugzilla:65848|bugzilla:65848]].
(?<=\.|\/)voafanti\.com(?::\d+)?\/gate\/big5\/(?=(?:[a-z0-9_\-.]+\.)?voachinese\.com\/)
(?<=\.|\/)(?P<big5tld>[a-z0-9_\-]+\.(?:com|(?:com|net|org|edu|gov|mil|ac)\.cn|cn))(?::\d+)?\/gate\/big5\/(?=(?:[a-z0-9_\-.]+\.)?\k<big5tld>\/) # 转码网站仅允许用于相同网域，应与黑名单“(:\d+)?\/gate\/big5\/”保持同步
110107\.com # diff=30146467
newsroom\.fb\.com # oldid=29139974
investor\.fb\.com # oldid=29139974
gx12301\.com # oldid=28920117
baike\.baidu\.com\/link\?
zhidao\.baidu\.com\/link\?
58921\.com # oldid=28706762
wz58888888\.com # oldid=28608589
118100\.cn # oldid=28245652
2773456\.com # oldid=27116242
dubpark\.acg\.hk\/dubdb\/
china\.com
friend\.45\.kg\/saimoe2008
adult\.csx\.jp\/~st-rororo\/
881903\.com
2000888\.com
17173\.com
bbs.17173\.com/?$
cs\.com\.cn
www\.pconline\.com\.cn
www\.it\.com\.cn
10010\.com # 中国联通 \d{5,}\.c(n|om)
10086\.cn #中国电信
66163\.com
84000\.com\.cn #绕过84000.com
961111\.cn #广州市农村信用合作联社，绕过\d{5,}\.c(n|om)
131500\.com #新南威尔士省交通网站
00021\.com\.hk #宝福集团
98173\.com\.tw #茂為科技
rcu\.5d6d\.com
12306\.cn
www\.day15000\.com #Unix相关
ct10000\.com #中国电信
88408\.com #卫星参数
backupurl\.com\/owfpnj #水姬事件
350400\.com
000023\.cn #深天地官网 用于上市公司条目
gj000096\.com #上市公司
11773\.com
07073\.com
12371\.cn #共产党员网
ccw\.org\.tw #非垃圾spam
moontalk\.com\.tw #非垃圾spam
webbuilder3\.asiannet\.com\/ftp\/1853  #三重客運所屬資料庫
www\.600780\.com\.cn # [[山西通宝能源股份有限公司|山西通宝能源股份有限公司]]网站上的文献
lu-thsrc.no-ip\.org # 台灣高速鐵路股份有限公司工會之官方網站
politico\.com # 美國政治新聞雜誌
reliefweb\.int # 全球颶風訊息，由聯合國人道事務協調廳（OCHA）提供
12377\.cn
www\.95579\.com # 長江證券
www\.600683\.com # 京投发展
www\.hanyouwang\.com/content\b
yes-news\.com
wiki\.forth-ev\.de
research\.fb\.com # 繞過fb.com
21126888\.com # 奇妙電視和香港有線電視
mw\.15166\.com # 纯白魔女官網
www\.96822\.com #上海大众交通
www\.fangoods\.com\.tw\/umg\/Default\.aspx\?m=80E3CEC5ACBCD193F672C3247B4575D4BE1D743F00B33C6A&ItemId=10370 # [[Special:PermaLink/51841634|Special:PermaLink/51841634]]
www\.facebook\.com\/134970006682791/
www\.facebook\.com\/137149666321817\/posts\/1978645448838887

#用於維基百科站外推廣的facebook頁面 oldid=29602812
facebook\.com\/Taiwan.Wikipedians #台灣維基人
facebook\.com\/wikimedia.tw #Wikimedia Taiwan
facebook\.com\/WikimediaHK #Wikimedia Hong Kong
facebook\.com\/groups\/tw.wiki #Taiwan Wikipedia Community
facebook\.com\/groups\/ntuwpc #台大維基社
facebook\.com\/groups\/512685142199329 #維基醫學翻譯專題
facebook\.com\/groups\/zhwiki #中文維基 Chinese Wikipedia 维基百科
facebook\.com\/groups\/wikipediaweekly #Wikipedia Weekly
facebook\.com\/groups\/WikiHistoryOfPhysics #維基物理史校譯群
facebook\.com\/groups\/wikiscoutingtw #臺灣維基媒體童軍專題
facebook\.com\/groups\/1645117858847559 #香港維基社群
facebook\.com\/groups\/wp\.eduprog\.tw #台灣教育專案
facebook\.com\/groups\/WikiTyphoons # 漢語維基氣象學編輯社群 ([[Wikipedia:太平洋颱風季專題|Wikipedia:太平洋颱風季專題]])
www\.ptt\.cc\/bbs\/NTU\/M\.1527347855\.A\.D33\.html # [[Wikipedia:台大維基社/2018年台灣勞權議題編輯松|Wikipedia:台大維基社/2018年台灣勞權議題編輯松]]
www\.ptt\.cc\/bbs\/WomenTalk\/M\.1542375527\.A\.359\.html # [[基進黨#黨內性騷擾|基進黨#黨內性騷擾]] oldid=52525277
www\.williamlong\.info
www\.huojiali\.com
www\.ptt\.cc\/man\/Railway\/DCDC\/D8CA\/M\.1229339468\.A\.176\.html # [[Special:PermaLink/51454467|Special:PermaLink/51454467]]
www\.pornhub\.com\/insights\/bowser-bowsette # [[Special:PermaLink/51454499|Special:PermaLink/51454499]]
www\.youporn\.com\/world\/bowsette-searches # [[Special:PermaLink/51454499|Special:PermaLink/51454499]]

\bgoogle\..*?\/url\?(?!url=|.*&url=) # http://www.google.com.hk/url?sa=p&hl=zh-CN&pref=hkredirect&pval=yes&q=http://www.google.com.hk/search%3Fnewwindow%3D1%26safe%3Dstrict%26hl%3Dzh-CN%26tbm%3Dbks%26q%3D%25E5%258F%25B2%25E4%25B8%25B9%25E9%25A1%25BF%25E7%2589%25A7%25E5%25B8%2588%26oq%3D%25E5%258F%25B2%25E4%25B8%25B9%25E9%25A1%25BF%25E7%2589%25A7%25E5%25B8%2588%26gs_l%3Dserp.3...5473.6897.0.7192.2.2.0.0.0.0.96.173.2.2.0....0...1c.1j4.45.serp..2.0.0.V15NPuk9aeo&ust=1401283309104511&usg=AFQjCNGYodsiknEmIEnsbLE8bWsotvDtmA , redirected from https://www.google.com.hk/search?newwindow=1&safe=strict&hl=zh-CN&tbm=bks&q=%E5%8F%B2%E4%B8%B9%E9%A1%BF%E7%89%A7%E5%B8%88&oq=%E5%8F%B2%E4%B8%B9%E9%A1%BF%E7%89%A7%E5%B8%88&gs_l=serp.3...5473.6897.0.7192.2.2.0.0.0.0.96.173.2.2.0....0...1c.1j4.45.serp..2.0.0.V15NPuk9aeo
 #
```