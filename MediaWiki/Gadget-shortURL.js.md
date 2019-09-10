/\* 添加本 js 後將新增「短網址」功能，顯示在左側導航列「工具」章節處，點擊後會給出該頁面的短網址。 參考 <https://meta.wikimedia.org/wiki/Wikimedia_URL_Shortener> Author: Esanders,[User:Shizhao](https://zh.wikipedia.org/wiki/User:Shizhao "wikilink"), 正體中文化: [User:Ericliu1912](https://zh.wikipedia.org/wiki/User:Ericliu1912 "wikilink"), 2019 效果：［本頁的短網址為：https://w.wiki/665］

添加本 js 后将新增“短链接”功能，显示在左侧导航列“工具”章节处，点击后会给出该页面的短链接。 参考 <https://meta.wikimedia.org/wiki/Wikimedia_URL_Shortener> Author: Esanders,[User:Shizhao](https://zh.wikipedia.org/wiki/User:Shizhao "wikilink"), 繁体中文化: [User:Ericliu1912](https://zh.wikipedia.org/wiki/User:Ericliu1912 "wikilink"), 2019 效果：［本页的短链接为：https://w.wiki/665］

see [phab:T222360\#5420068](https://zh.wikipedia.org/wiki/phab:T222360#5420068 "wikilink")

  - /

var portletLink = mw.util.addPortletLink('p-tb', '\#', wgULS('短链接', '短網址'), 't-shorturl', wgULS('显示该页面的短链接', '顯示該頁的短網址'));

$(portletLink).click(function(e) {

`   e.preventDefault();`
`   var uri = new mw.Uri();`
`   var api = new mw.ForeignApi('//meta.wikimedia.org/w/api.php');`
`   api.post({`
`       action: 'shortenurl',`
`       url: uri.toString()`
`   }).then(function(data) {`
`       OO.ui.alert(`
`           new mw.widgets.CopyTextLayout({ title: wgULS('本页的短链接是：', '本頁的短網址是：'), copyText: data.shortenurl.shorturl }).$element`
`       );`
`   }).fail(function() {`
`       if ('error' in arguments[1]) {`
`           mw.notify(arguments[1]['error']['info'], { title: arguments[1]['error']['code'], type: 'error' })`
`       } else {`
`           mw.notify(arguments[0], { title: 'error', type: 'error' })`
`       }`
`   });`

});