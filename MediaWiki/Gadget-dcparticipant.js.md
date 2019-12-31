> 本文内容由[MediaWiki:Gadget-dcparticipant.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-dcparticipant.js)转换而来。


(function($, mw) { 'use strict';

var pagename = mw.config.get('wgPageName'); var username = mw.config.get('wgUserName'); var personal_page = 'Wikipedia:動員令/第十七次動員令/個人貢獻/' + (username) + '';

// 在提报页面加个广告推荐大家使用小工具 if (pagename === personal_page && mw.config.get('wgAction') === 'edit') {

`   // 只显示一次，有 cookie 的就不显示了`
`   if ($.cookie('p4js-dcparticipant-notice')) {`
`       return;`
`   }`
`   $.cookie('p4js-dcparticipant-notice', 1, {path: "/", expires: new Date('2019-09-09')});`
`   var messageDialog = new OO.ui.MessageDialog();`
`   var windowManager = new OO.ui.WindowManager();`
`   $('body').append(windowManager.$element);`
`   windowManager.addWindows([messageDialog]);`
`   windowManager.openWindow(messageDialog, {`
`     title: wgULS('提交动员令小工具已上线', '提交動員令小工具已上線'),`
`     message: $(wgULS('`<img src="https://upload.wikimedia.org/wikipedia/commons/8/8e/Gadget-dcparticipant-entry-zh-hans.png" style="width:80%;margin:10px auto 20px;display:block">

还在纠结复杂的源代码？现在写完条目只需点击右上角“更多”-“提交动员令”并填写表单即可，提交动员令从未如此简单！

<img src="https://upload.wikimedia.org/wikipedia/commons/c/c8/Gadget-dcparticipant-ui-zh-hans.png" style="width:100%;margin:10px auto 20px;display:block">',

`       '`<img src="https://upload.wikimedia.org/wikipedia/commons/8/8e/Gadget-dcparticipant-entry-zh-hant.png" style="width:80%;margin:10px auto 20px;display:block">

還在糾結複雜的原始碼？現在寫完條目只需點按右上角「更多」-「提交動員令」並填寫表單即可，提交動員令從未如此簡單！

<img src="https://upload.wikimedia.org/wikipedia/commons/c/c8/Gadget-dcparticipant-ui-zh-hant.png" style="width:100%;margin:10px auto 20px;display:block">')),

`     size: 'medium',`
`     verbose: true,`
`     actions: [{`
`         action: 'accept',`
`         label: '我知道了',`
`         flags: 'primary'`
`       }]`
`   });`

}

// 只在条目空间使用 if (mw.config.get('wgNamespaceNumber') \!== 0) {

`   return;`

} // 只对自动确认/确认用户启用 if (mw.config.get('wgUserGroups').indexOf('autoconfirmed') === -1 && mw.config.get('wgUserGroups').indexOf('confirmed') === -1) {

`   return;`

}

var topics = \[\["大動員令"\],_\["公共建築",_"行政區劃",_"女性"\],_\["學理類自然科學",_"學理類應用科學",_"傳統百科全書條目",_"GLAM"|"大動員令"\], \["公共建築", "行政區劃", "女性"\], \["學理類自然科學", "學理類應用科學", "傳統百科全書條目", "GLAM"\]\]; var topics_s = \[\["大动员令"\],_\["公共建筑",_"行政区划",_"各领域中的女性"\],_\["学理类自然科学",_"学理类应用科学",_"传统百科全书条目",_"图书档案馆、美术馆及博物馆"|"大动员令"\], \["公共建筑", "行政区划", "各领域中的女性"\], \["学理类自然科学", "学理类应用科学", "传统百科全书条目", "图书档案馆、美术馆及博物馆"\]\]; // 仅用于显示，下同 var topics_t = \[\["大動員令"\],_\["公共建築",_"行政區劃",_"各領域中的女性"\],_\["學理類自然科學",_"學理類應用科學",_"傳統百科全書條目",_"圖書檔案館、美術館及博物館"|"大動員令"\], \["公共建築", "行政區劃", "各領域中的女性"\], \["學理類自然科學", "學理類應用科學", "傳統百科全書條目", "圖書檔案館、美術館及博物館"\]\]; var topic_group_name_s = \["大动员令", "中动员令", '小动员令'\]; var topic_group_name_t = \["大動員令", "中動員令", '小動員令'\]; var summary_postfix = ' via [dcparticipant.js](../MediaWiki/Gadget-dcparticipant.js.md "wikilink")';

// 用主题生成下拉选单 var topics_to_select = function() {

`   var html = '`<select>`\n';`
`   for (var i in topics) {`
`       var group = topics[i];`
`       html += '`<optgroup label="' + (wgULS(topic_group_name_s[i], topic_group_name_t[i])) + '">`\n';`
`       for (var j in group) {`
`           var topic = group[j];`
`           html += '<option value="' + (topic) + '"' + ("大動員令" == topic ? " selected" : "") + '>' + (wgULS(topics_s[i][j], topics_t[i][j])) + '`</option>`';`
`       }`
`   }`
`   return html + '`</select>`';`

}; // 用主题得到  中填的数字类别 var topic_to_type = function(topic) {

`   for (var i = 0; i < topics.length; ++i) {`
`       if (topics[i].includes(topic)) {`
`           return String(i+1);`
`       }`
`   }`
`   return undefined;`

}; // 女性 -\> (女性|各领域中的女性|各領域中的女性) var topic_variants = function(t) {

`   for (var i in topics) {`
`       var group = topics[i];`
`       for (var j in group) {`
`           var topic = group[j];`
`           if (t === topic) {`
`               return '(' + (t) + '|' + (topics_s[i][j]) + '|' + (topics_t[i][j]) + ')';`
`           }`
`       }`
`   }`
`   return t;`

};

var $dl = null; var $dl2 = null; var dialog_html = '

<div id="p4js-dcparticipant-dialog" title="' + (wgULS('提交动员令：', '提交動員令：') + pagename) + '">

\\

<table id="p4js-dcparticipant-table" class="wikitable">

\\

<thead style="display:table-header-group">

<tr>

<th>

' + (wgULS('项目', '項目')) + '

</th>

<th>

' + (wgULS('请填写', '請填寫')) + '

</th>

<th>

' + (wgULS('说明', '說明')) + '

</th>

</tr>

</thead>

\\

<tbody>

\\

<tr>

<th>

' + (wgULS('类别', '類別')) + '\*

</th>

<th>

' + (topics_to_select()) + '

</th>

<th>

' + (wgULS('条目所属类别，分类细则参见', '條目所屬類別，分類細則參見')) + '<a href="https://zh.wikipedia.org/wiki/Wikipedia:動員令/第十七次動員令#主題">' + (wgULS('此处', '此處')) + '</a>

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('质量', '質量')) + '\*

</th>

<th>

<select id="p4js-dcparticipant-select-quality">\\ <option value="FL">特色列表</option>\\ <option value="FA">' + (wgULS('典范条目', '典範條目')) + '</option>\\ <option value="GA">' + (wgULS('优良条目', '優良條目')) + '</option>\\ <option value="" selected>' + (wgULS('达标条目', '達標條目')) + '</option>\\ </select>
<label id="p4js-dcparticipant-label-qualitychecked" style="display:none"><input type="checkbox">已通过</label>

</th>

\\

<th>

' + (wgULS('如果本条目预期参评优良/典范内容，请加以选择，否则可忽略此项', '如果本條目預期參評優良/典範內容，請加以選擇，否則可忽略此項')) + '

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('长度', '長度')) + '\*

</th>

<th>

<input type="text">

</th>

\\

<th>

' + (wgULS('如果条目由您建立，请填写', '如果條目由您建立，請填寫')) + '<a href="' + (mw.config.get('wgArticlePath').replace('$1', pagename)) + '?action=history">' + (wgULS('此处', '此處')) + '</a>' + (wgULS('显示最新版本的字节数', '顯示最新版本的位元組數')) + '
' + (wgULS('如果您改善/重写了条目，请填写重写后与保留原文的字节数之差', '如果您改善/重寫了條目，請填寫重寫後與保留原文的位元組數之差')) + '

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('改善工程', '改善工程')) + '

</th>

<th>

<label><input type="checkbox">是</label>

</th>

<th>

' + (wgULS('如果您并非创建，而是改写了条目，请勾选此项。具体规则参见', '如果您並非創建，而是改寫了條目，請勾選此項。具體規則參見')) + '<a href="https://zh.wikipedia.org/wiki/Wikipedia:動員令/第十七次動員令#計分及注意事項">' + (wgULS('此处', '此處')) + '</a>

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('有声条目', '有聲條目')) + '

</th>

<th>

<input type="text">

</th>

<th>

' + (wgULS('如您已上传有声条目，请填写条目正文字节数', '如您已上傳有聲條目，請填寫條目正文位元組數')) + '（<a href="https://zh.wikipedia.org/wiki/Wikipedia:有聲維基百科專題">' + (wgULS('如何制作并上传？', '如何製作並上載？')) + '</a>）

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('图片', '圖片')) + '

</th>

\\

<th>

<label>' + (wgULS('原创图片数量', '原創圖片數量')) + '<input type="text"></label>\\

`   `
<label>`' + (wgULS('翻译图片数量', '翻譯圖片數量')) + '`<input type="text"></label>`\`
`   `
<label>`' + (wgULS('翻译图片译文字节数', '翻譯圖片譯文位元組數')) + '`<input type="text"></label>

</th>

\\

<th>

' + (wgULS('原创图片必须由您亲自创作且已上传至维基共享资源', '原創圖片必須由您親自創作且已上載至維基共享資源')) + '（<a href="https://commons.wikimedia.org/wiki/Special:UploadWizard">' + (wgULS('如何上传？', '如何上載？')) + '</a>）

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('原创影片', '原創影片')) + '

</th>

\\

<th>

<label>' + (wgULS('总时长（秒）', '總時長（秒）')) + '<input type="text"></label>

</th>

\\

<th>

' + (wgULS('原创影片必须由您亲自创作且已上传至维基共享资源', '原創影片必須由您親自創作且已上載至維基共享資源')) + '（<a href="https://commons.wikimedia.org/wiki/Special:UploadWizard">' + (wgULS('如何上传？', '如何上載？')) + '</a>）

</th>

</tr>

\\

</tbody>

</table>

\\

' + (wgULS('带有\*者为必填项目。请注意动员令主持人有权审核并改动您填写的各项目。如阅读说明后仍有疑问，您还可以<a href="https://t.me/wikipedia_zh_DC">加入Telegram讨论群组</a>询问我们的志愿者，或<a href="https://zh.wikipedia.org/w/index.php?title=Wikipedia_talk:動員令/第十七次動員令&action=edit&section=new">在此处填写您的问题</a>等待志愿者回复。',

`       '帶有*者為必填項目。請注意動員令主持人有權審核並改動您填寫的各項目。如閱讀說明後仍有疑問，您還可以`<a href="https://t.me/wikipedia_zh_DC">`加入Telegram討論群組`</a>`詢問我們的志願者，或`<a href="https://zh.wikipedia.org/w/index.php?title=Wikipedia_talk:動員令/第十七次動員令&action=edit&section=new">`在此處填寫您的問題`</a>`等待志願者回覆。')) + '\`

\\

</div>

';

var dialog_userinfo_html = '

<div id="p4js-dcparticipant-dialog-info" title="' + (wgULS('提交动员令：补充信息', '提交動員令：補充信息')) + '">

\\

' + (wgULS('由于您尚未报名，请填写以下信息：', '由於您尚未報名，請填寫以下信息：')) + '

\\

<table id="p4js-dcparticipant-table-info" class="wikitable">

\\

<thead style="display:table-header-group">

<tr>

<th>

' + (wgULS('项目', '項目')) + '

</th>

<th>

' + (wgULS('请填写', '請填寫')) + '

</th>

<th>

' + (wgULS('说明', '說明')) + '

</th>

</tr>

</thead>

\\

<tbody>

\\

<tr>

<th>

' + (wgULS('昵称', '暱稱')) + '

</th>

<th>

<input type="text" value="' + (username) + '">

</th>

<th>

' + (wgULS('可以不与您的用户名相同，将在<a href="https://zh.wikipedia.org/wiki/Wikipedia:動員令/第十七次動員令/龍虎榜">龙虎榜</a>等处显示，默认为用户名', '可以不與您的用戶名相同，將在<a href="https://zh.wikipedia.org/wiki/Wikipedia:動員令/第十七次動員令/龍虎榜">龍虎榜</a>等處顯示，默認為用戶名')) + '

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('完成次数', '完成次數')) + '\*

</th>

<th>

<input type="text">

</th>

<th>

' + (wgULS('您以前完成动员令的次数，可能影响头衔颁发，建议如实填写', '您以前完成動員令的次數，可能影響頭銜頒發，建議如實填寫')) + '

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('编辑次数', '编辑次数')) + '\*

</th>

<th>

<input type="text">

</th>

<th>

' + (wgULS('您动员令开始前的编辑次数（<a href="https://zh.wikipedia.org/wiki/Special:参数设置">点击此处</a>查看当前编辑次数），可能影响头衔颁发，建议如实填写', '您動員令開始前的編輯次數（<a href="https://zh.wikipedia.org/wiki/Special:参数设置">點擊此處</a>查看當前編輯次數），可能影響頭銜頒發，建議如實填寫')) + '

</th>

</tr>

\\

<tr>

<th>

' + (wgULS('目标', '目標')) + '

</th>

<th>

<textarea style="resize:vertical">

</textarea>

</th>

<th>

' + (wgULS('您对自己本次动员令表现的期望，不会影响任何事情，请自由发挥', '您對自己本次動員令表現的期望，不會影響任何事情，請自由發揮')) + '

</th>

</tr>

\\

</tbody>

</table>

\\

' + (wgULS('带有\*者为必填项目。以上内容只需本次完成，以后无需填写。如阅读说明后仍有疑问，您还可以<a href="https://t.me/wikipedia_zh_DC">加入Telegram讨论群组</a>询问我们的志愿者，或<a href="https://zh.wikipedia.org/w/index.php?title=Wikipedia_talk:動員令/第十七次動員令&action=edit&section=new">在此处填写您的问题</a>等待志愿者回复。',

`       '帶有*者為必填項目。以上內容只需本次完成，以後無需填寫。如閱讀說明後仍有疑問，您還可以`<a href="https://t.me/wikipedia_zh_DC">`加入Telegram討論群組`</a>`詢問我們的志願者，或`<a href="https://zh.wikipedia.org/w/index.php?title=Wikipedia_talk:動員令/第十七次動員令&action=edit&section=new">`在此處填寫您的問題`</a>`等待志願者回覆。')) + '\`

\\

</div>

';

var html_to_art_wikitext = function() {

`   var tr = $('#p4js-dcparticipant-table > tbody > tr');`
`   var topic = tr[0].children[1].children[0].value;`
`   var quality = $('#p4js-dcparticipant-select-quality')[0].value;`
`   var qualitychecked = $('#p4js-dcparticipant-label-qualitychecked')[0].checked;`
`   var len = tr[2].children[1].children[0].value.replace(',', '');`
`   var improve = tr[3].children[1].children[0].children[0].checked;`
`   var spokenlen = parseInt(tr[4].children[1].children[0].value) || 0;`
`   var spoken = spokenlen !== 0;`
`   var picnum = parseInt(tr[5].children[1].children[0].children[0].value) || 0;`
`   var pictransnum = parseInt(tr[5].children[1].children[2].children[0].value) || 0;`
`   var pictranslen = parseInt(tr[5].children[1].children[4].children[0].value) || 0;`
`   var pic = (picnum || pictransnum || pictranslen) !== 0;`
`   var videolen = parseInt(tr[6].children[1].children[0].children[0].value) || 0;`
`   var video = videolen !== 0;`
`   return [topic, '#``\n'];`

};

var html_to_info_wikitext = function() {

`   var tr = $('#p4js-dcparticipant-table-info > tbody > tr');`
`   var nick = tr[0].children[1].children[0].value;`
`   if (!nick || nick === '~~' + '~~') nick = username;`
`   var complete = tr[1].children[1].children[0].value;`
`   var ec = tr[2].children[1].children[0].value;`
`   var tar = tr[3].children[1].children[0].value;`
`   return '``\n';`

};

var insert = function(oldtext, topic, arttext) {

`   var topic_regex = new RegExp('\\|\\s*' + topic_variants(topic) + '\\s*=\\n(#.+\\n)*');`
`   var match = topic_regex.exec(oldtext);`
`   if (match === null) {`
`       return oldtext;`
`   }`
`   var index = match.index + match[0].length;`
`   return oldtext.slice(0, index) + arttext + oldtext.slice(index);`

};

var post = function() {

`   // 检查必填参数`
`   var tr = $('#p4js-dcparticipant-table > tbody > tr');`
`   var len = tr[2].children[1].children[0].value;`
`   if (!len) {`
`       alert(wgULS('您没有填写“长度”一项', '您沒有填寫「長度」一項'));`
`       return;`
`   }`
`   // 检查是否已经报名（页面存在就当作已经报名），没的话要求填写补充信息`
`   new mw.Api()`
`       .get({`
`           action: 'query',`
`           prop: 'revisions',`
`           rvprop: 'content',`
`           titles: personal_page,`
`           formatversion: '2'`
`       })`
`       .then(function(data) {`
`           if (!data.query || !data.query.pages) {`
`               console.log('query: unknown error');`
`               alert(wgULS('未知错误', '未知錯誤'));`
`               return;`
`           }`
`           var page = data.query.pages[0];`
`           if (page.missing) {`
`               $dl.dialog('close');`
`               if (!$dl2) {`
`                   $dl2 = $(dialog_userinfo_html).dialog({`
`                       autoOpen: false, minWidth: 800, minHeight: 240,`
`                       buttons: [{`
`                           text: wgULS('提交', '提交'),`
`                           click: function() {`
`                               var oldtext = html_to_info_wikitext();`
`                               var tmp = html_to_art_wikitext();`
`                               var topic = tmp[0];`
`                               var arttext = tmp[1];`
`                               var newtext = insert(oldtext, topic, arttext);`
`                               new mw.Api()`
`                                   .create(personal_page, {`
`                                           text: newtext,`
`                                           summary: wgULS('提交`[`'``   ``+``   ``(pagename)``   ``+``   ``'到动员令`](https://zh.wikipedia.org/wiki/'_+_\(pagename\)_+_' "wikilink")`', '提交`[`'``   ``+``   ``(pagename)``   ``+``   ``'到動員令`](https://zh.wikipedia.org/wiki/'_+_\(pagename\)_+_' "wikilink")`') + summary_postfix`
`                                       })`
`                                   .then(function() {success()})`
`                                   .fail(function(errcode) {`
`                                       fail(newtext, '错误代码：' + (errcode) + '。', '錯誤代碼：' + (errcode) + '。');`
`                                   });`
`                               submitting();`
`                               $(this).dialog('close');`
`                               $dl.dialog('open');`
`                           }`
`                       }]`
`                   });`
`               }`
`               $dl2.dialog('open');`
`           } else {`
`               var oldtext = page.revisions[0].content;`
`               var article_regex = new RegExp('``)');`
`               var tmp = html_to_art_wikitext();`
`               var topic = tmp[0];`
`               var arttext = tmp[1];`
`               if (article_regex.exec(oldtext)) {`
`                   fail(arttext, '您已提交过本条目到动员令，无法重复提交。', '您已提交過本條目到動員令，無法重複提交。');`
`                   return;`
`               }`
`               var newtext = insert(oldtext, topic, arttext);`
`               new mw.Api()`
`                   .edit(personal_page, function(revision) {`
`                       return {`
`                           text: newtext,`
`                           summary: wgULS('提交`[`'``   ``+``   ``(pagename)``   ``+``   ``'到动员令`](https://zh.wikipedia.org/wiki/'_+_\(pagename\)_+_' "wikilink")`', '提交`[`'``   ``+``   ``(pagename)``   ``+``   ``'到動員令`](https://zh.wikipedia.org/wiki/'_+_\(pagename\)_+_' "wikilink")`') + summary_postfix`
`                       };`
`                   })`
`                   .then(function() {success()})`
`                   .fail(function(errcode) {`
`                       fail(newtext, '错误代码：' + (errcode) + '。', '錯誤代碼：' + (errcode) + '。');`
`                   });`
`               submitting();`
`           }`
`       })`
`       .fail(function(errcode) {`
`           alert('Error: '+errcode);`
`       });`

};

var submitting = function() {

`   $dl.html('`

<div style="text-align:center">

' + (wgULS('提交中...', '提交中...')) + '

</div>

\\

' + (wgULS('请确保网络畅通并耐心等待几秒钟', '請確保網路暢通並耐心等待幾秒鐘')) + '

');

`   $dl.dialog("option", "buttons", []);`

};

var fail = function(arttext, reason_s, reason_t) {

`   $dl.html('`

<div style="text-align:center">

' + (wgULS('提交失败', '提交失敗')) + '

</div>

\\

' + (wgULS(reason_s + '如需手动编辑，可复制以下源代码', reason_t + '如需手動編輯，可複製以下原始碼')) + '

\\

```
```

\\

' + (wgULS('并点击“编辑个人贡献页”，根据说明进行编辑。', '並點按「編輯個人貢獻頁」，根據說明進行編輯。')) + '\\

<hr>

' + (wgULS('如有疑问，您可以<a href="https://t.me/wikipedia_zh_DC">加入Telegram讨论群组</a>询问我们的志愿者，或<a href="https://zh.wikipedia.org/w/index.php?title=Wikipedia_talk:動員令/第十七次動員令&action=edit&section=new">在此处填写您的问题</a>等待志愿者回复。',

`                   '如有疑問，您可以`<a href="https://t.me/wikipedia_zh_DC">`加入Telegram討論群組`</a>`詢問我們的志願者，或`<a href="https://zh.wikipedia.org/w/index.php?title=Wikipedia_talk:動員令/第十七次動員令&action=edit&section=new">`在此處填寫您的問題`</a>`等待志願者回覆。')) + '\`
`       `

');

`   $('#p4js-dcparticipant-failed-edit-content').text(arttext);`
`   $dl.dialog("option", "buttons", [{`
`       text: wgULS('留在本页', '留在本頁'),`
`       click: function() {`
`           $(this).dialog('close');`
`       }`
`   }, {`
`       text: wgULS('编辑个人贡献页', '編輯個人貢獻頁'),`
`       click: function() {`
`           window.location.href = 'https:' + mw.config.get('wgServer') + '/' + mw.config.get('wgArticlePath').replace('$1', personal_page)+'?action=edit';`
`       }`
`   }]);`

};

var success = function() {

`   $dl.html('`

<div style="text-align:center">

' + (wgULS('提交完成！', '提交完成！')) + '

</div>

');

`   $dl.dialog("option", "buttons", [{`
`       text: wgULS('留在本页', '留在本頁'),`
`       click: function() {`
`           $(this).dialog('close');`
`       }`
`   }, {`
`       text: wgULS('查看本次提交', '檢視本次提交'),`
`       click: function() {`
`           window.location.href = 'https:' + mw.config.get('wgServer') + '/' + mw.config.get('wgArticlePath').replace('$1', personal_page);`
`       }`
`   }]);`

};

$(mw.util.addPortletLink('p-cactions', '\#', wgULS('提交动员令', '提交動員令'))).click(function (e) {

`   if (!$dl) {`
`       $dl = $(dialog_html).dialog({`
`           autoOpen: false, minWidth: 777, minHeight: 240,`
`           buttons: [{`
`               text: wgULS('提交', '提交'),`
`               click: function() {`
`                   // 已经点开过的说明知道这个小工具，我们就不给他推送了`
`                   $.cookie('p4js-dcparticipant-notice', 1, {path: "/", expires: new Date('2019-09-09')});            `
`                   post();`
`               }`
`           }]`
`       });/*`
`       $('#p4js-dcparticipant-select-quality').change(function() {`
`           $(this).value === '大動員令' ? $('p4js-dcparticipant-label-qualitychecked').hide() : $('p4js-dcparticipant-label-qualitychecked').show();`
`       })*/`
`   }`
`   $dl.dialog('open');`

});

})(jQuery, mediaWiki);