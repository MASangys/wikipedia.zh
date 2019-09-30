(function ($) {

`   var share_msgs_zh_hans = {`
`       title: '分享与收藏',`
`       title_twitter: 'Twitter',`
`       title_facebook: 'Facebook',`
`       title_sina: '新浪微博',`
`       title_renren: '人人网',`
`       title_qzone: 'QQ空间',`
`       title_kaixin: '开心网',`
`       title_plurk: '噗浪',`
`       title_douban: '豆瓣',`
`       title_google: 'Google书签',`
`       title_delicious: 'delicious',`
`       title_instapaper: 'Instapaper',`
`       title_readitlaterlist: 'Read It Later',`
`       title_qrcode: 'QR码',`
`       title_tumblr: 'tumblr',`
`       title_evernote: 'Evernote',`
`       title_citeulike: 'CiteULike',`
`       title_fanfou: '饭否',`
`       title_qq: '腾讯微博'`
`   };`

`   var share_msgs_zh_hant = {`
`       title: '分享與收藏',`
`       title_twitter: 'Twitter',`
`       title_facebook: 'Facebook',`
`       title_sina: '新浪微博',`
`       title_renren: '人人網',`
`       title_qzone: 'QQ空間',`
`       title_kaixin: '開心網',`
`       title_plurk: '噗浪',`
`       title_douban: '豆瓣',`
`       title_google: 'Google書籤',`
`       title_delicious: 'delicious',`
`       title_instapaper: 'Instapaper',`
`       title_readitlaterlist: 'Read It Later',`
`       title_qrcode: 'QR碼',`
`       title_tumblr: 'tumblr',`
`       title_evernote: 'Evernote',`
`       title_citeulike: 'CiteULike',`
`       title_fanfou: '飯否',`
`       title_qq: '騰訊微博'`
`   };`

`   function ShareTool() {`

`       var portal = null;`
`       var ul = null;`
`       var sina_key = '2871381526';`

`       var pagetitle = mw.config.get('wgPageName');`

`       var headcontent = mw.util.$content.find('p').first().text();`

`       // get body images`
`       var images = function () {`
`           var ret = [];`
`           $('a.image img', mw.util.$content).each(function () {`
`               ret.push(this.src);`
`           });`
`           return ret;`
`       }();`

`       // short url`
`       var urlshort = function () {`
`           url = document.location.href.replace(/https?:\/\/zh\.wikipedia\.org/, '`<http://zhwp.org>`');`
`           url = url.replace(/http:\/\/zhwp\.org\/(?:wiki|zh(?:-\w+)?)\//, '`<http://zhwp.org/>`');`
`           url = url.replace('`<http://zhwp.org/Wikipedia>`:', '/WP:');`
`           url = url.replace('`<http://zhwp.org/Template>`:', '/T:');`
`           url = url.replace('`<http://zhwp.org/Category>`:', '/CAT:');`
`           return url;`
`       }();`

`       // local url`
`       var urllocal = document.location.href.replace(/https?:\/\/zh\.wikipedia\.org\/(?:wiki|zh(?:-\w+)?)\//, '`<https://zh.wikipedia.org/>`' + mw.config.get('wgUserVariant') + '/');`

`       // initiate`
`       function _init() {`
`           if (mw.config.get('skin') === 'vector') {`
`               htmlline = '`

<h3>

<a href="#" title="' + share_msgs.title + '"><span style="background-image: url(//upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Shareicon.svg/16px-Shareicon.svg.png); background-position: 0px 85%; background-repeat: no-repeat;width: 18px;padding-top: 0;"/></a><span>' + share_msgs.title + '</span>

</h3>

<div class="menu">

</div>

';

`               $('`

<div/>

').addClass('vectorMenu extraMenu').attr('id', 'p-share').html(htmlline).insertAfter('\#p-cactions');

`           } else {`
`               $('#p-tb').clone().attr('id', 'p-share').find('h3').text(share_msgs.title).end().find('li').remove().end().insertAfter('#p-tb');`
`           }`
`       }`

`       // random array sort`
`       function _array_rand(o) {`
`           // `<http://jsfromhell.com/array/shuffle>
`           for (var j, x, i = o.length; i; j = parseInt(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);`
`           return o;`
`       }`

`       // build li`
`       function _li(id, title, url, query, w, h, scroll) {`
`           if (typeof scroll == 'undefined') {`
`               scroll = 'yes';`
`           }`
`           url += '?&' + $.param(query);`

`           var portletLink = $(mw.util.addPortletLink('p-share', url, title, 's-share' + id)).find('a').addBack().filter('a');`
`           $(portletLink).click(function (e) {`
`               e.preventDefault();`
`               window.open(url, '_blank', 'scrollbars=' + scroll + ',width=' + w + ',height=' + h + ',left=75,top=20,status=no,resizable=yes');`
`           });`
`       }`

`       // build li: twitter`
`       this._li_twitter = function () {`
`           var url = '`<https://twitter.com/intent/tweet>`',`
`               query = {`
`               status: pagetitle + ' ' + urlshort + ' #wikipedia'`
`           };`
`           _li('twitter', share_msgs.title_twitter, url, query, 700, 300);`
`       };`

`       // build li: sina twitter`
`       this._li_sina = function () {`
`           var url = '`<http://service.weibo.com/share/share.php>`',`
`               query = {`
`               appkey: sina_key,`
`               title: pagetitle + ' #wikipedia#',`
`               url: urllocal, // sina shorts the url itself`
`               content: 'utf-8'`
`           };`
`           if (images.length) {`
`               query.pic = images.join('||');`
`           } //新浪微博自动发现图片`
`           _li('sina', share_msgs.title_sina, url, query, 440, 400);`
`       };`

`       this._li_facebook = function () {`
`           var url = '`<https://www.facebook.com/sharer.php>`';`
`           var query = {`
`               u: urllocal`
`           };`
`           _li('facebook', share_msgs.title_facebook, url, query, 600, 450);`
`       };`

`       this._li_renren = function () {`
`           var url = '`<http://www.connect.renren.com/share/sharer>`',`
`               query = {`
`               url: urllocal`
`           };`
`           _li('renren', share_msgs.title_renren, url, query, 550, 400, 'no');`
`       };`

`       this._li_qzone = function () {`
`           var url = '`<http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey>`',`
`               query = {`
`               url: urllocal`
`           };`
`           _li('qzone', share_msgs.title_qzone, url, query, 800, 460);`
`       };`

`       this._li_kaixin = function () {`
`           var url = '`<http://www.kaixin001.com/repaste/share.php>`',`
`               query = {`
`               rtitle: pagetitle,`
`               rurl: urllocal,`
`               rcontent: headcontent`
`           };`
`           _li('kaixin', share_msgs.title_kaixin, url, query, 600, 450);`
`       };`

`       this._li_plurk = function () {`
`           var url = '`<http://www.plurk.com/>`',`
`               query = {`
`               qualifier: 'shares',`
`               status: pagetitle + ' ' + urlshort`
`           };`
`           _li('plurk', share_msgs.title_plurk, url, query, 1024, 768);`
`       };`

`       this._li_douban = function () {`
`           var url = '`<http://www.douban.com/recommend/>`',`
`               query = {`
`               title: pagetitle,`
`               url: urlshort,`
`               sel: '#wikipedia#'`
`           };`
`           _li('douban', share_msgs.title_douban, url, query, 480, 300);`
`       };`

`       this._li_google = function () {`
`           var url = '`<https://www.google.com/bookmarks/mark>`?';`
`           var query = {`
`               op: 'edit',`
`               bkmk: urllocal,`
`               title: pagetitle,`
`               annotation: headcontent.substring(0, 90)`
`           };`
`           _li('google', share_msgs.title_google, url, query, 850, 750);`
`       };`

`       this._li_delicious = function () {`
`           var url = '`<http://www.delicious.com/save>`';`
`           var query = {`
`               url: urllocal,`
`               title: pagetitle`
`           };`
`           _li('delicious', share_msgs.title_delicious, url, query, 700, 550);`
`       };`

`       this._li_instapaper = function () {`
`           var url = '`<https://www.instapaper.com/hello2>`';`
`           var query = {`
`               url: urllocal,`
`               title: pagetitle`
`           };`
`           _li('instapaper', share_msgs.title_instapaper, url, query, 800, 450);`
`       };`

`       this._li_readitlaterlist = function () {`
`           var url = '`<https://readitlaterlist.com/save>`?';`
`           var query = {`
`               url: urllocal,`
`               title: pagetitle`
`           };`
`           _li('readitlaterlist', share_msgs.title_readitlaterlist, url, query, 600, 350);`
`       };`

`       this._li_qrcode = function () {`
`           var url = '`<http://chart.apis.google.com/chart>`';`
`           var query = {`
`               cht: "qr",`
`               chs: "400x400",`
`               chl: urllocal`
`           };`
`           _li('qrcode', share_msgs.title_qrcode, url, query, 500, 450);`
`       };`

`       this._li_tumblr = function () {`
`           var url = '`<http://www.tumblr.com/share>`',`
`               query = {`
`               v: "3",`
`               u: urllocal,`
`               t: pagetitle,`
`               s: headcontent`
`           };`
`           _li('tumblr', share_msgs.title_tumblr, url, query, 700, 450);`
`       };`

`       this._li_evernote = function () {`
`           var url = '`<http://www.evernote.com/clip.action>`?';`
`           var query = {`
`               url: urllocal,`
`               title: pagetitle`
`           };`
`           _li('evernote', share_msgs.title_evernote, url, query, 700, 450);`
`       };`

`       this._li_citeulike = function () {`
`           var url = '`<http://www.citeulike.org/post_unknown.adp>`?',`
`               query = {`
`               url: urllocal,`
`               title: pagetitle`
`           };`
`           _li('citeulike', share_msgs.title_citeulike, url, query, 700, 450);`
`       };`

`       this._li_fanfou = function () {`
`           var url = '`<http://fanfou.com/sharer>`?';`
`           var query = {`
`               u: urllocal,`
`               t: pagetitle`
`           };`
`           _li('fanfou', share_msgs.title_fanfou, url, query, 700, 450);`
`       };`

`       this._li_qq = function () {`
`           var url = '`<http://v.t.qq.com/share/share.php>`?',`
`               query = {`
`               url: urllocal,`
`               title: pagetitle`
`           };`
`           _li('qq', share_msgs.title_qq, url, query, 700, 450);`
`       };`

`       this.init = function () {`
`           var elem, funcs = Array();`
`           _init();`
`           for (elem in this) {`
`               if (elem.indexOf('_li_') === 0) {`
`                   funcs.push(this[elem]);`
`               }`
`           }`
`           funcs = _array_rand(funcs);`
`           for (var i = 0; i < funcs.length; i++) {`
`               funcs[i]();`
`           }`
`       };`
`   }`

`   $(document).ready(function () {`
`       if (mw.config.get('wgAction') == 'view' && mw.util.getParamValue('diff') === null && !mw.config.get('wgCanonicalSpecialPageName')) {`
`           share_msgs = wgULS(share_msgs_zh_hans, share_msgs_zh_hant);`
`           var stobj = new ShareTool();`
`           stobj.init();`
`       }`
`   });`

})(jQuery);