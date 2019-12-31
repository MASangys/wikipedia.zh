> 本文内容由[MediaWiki:Guidedtour-tour-twa5.js](https://zh.wikipedia.org/wiki/MediaWiki:Guidedtour-tour-twa5.js)转换而来。


// The Wikipedia Adventure Mission 5

( function ( window, document, $, mw, gt ) {

//automatic api:edit function to send yourself messages function sendMessage( targetPage, msgPage, linkTo ) {

`   var api = new mw.Api();`
`   api.post( {`
`       'action' : 'edit',`
`       'title' : targetPage,`
`       'appendtext' : "\n``",`
`       'summary' : '新訊息（`[`維基百科大歷險自動模擬`](https://zh.wikipedia.org/wiki/WP:TWA "wikilink")`5）',`
`       'token' : mw.user.tokens.get('csrfToken')`
`   } ).done( function () {`
`       window.location.href = linkTo;`
`   } );`

}

// Fail gracefully post-save but not postedit var postEditButtons = \[\]; if ( mw.config.get( 'wgAction' ) === 'view' && \!gt.isPostEdit() ) {

`       postEditButtons.push( {`
`               name: '按此返回並進行編輯',`
`               onclick: function() {`
`                       window.location.href = new mw.Uri().extend( { action: 'edit' } ).toString();`
`               }`
`       } );`

}

// Fail gracefully post-save but not postedit for visual editor var postEditButtonsVisual = \[\]; if ( mw.config.get( 'wgAction' ) === 'view' && \!gt.isPostEdit() ) {

`       postEditButtonsVisual.push( {`
`               name: '返回並進行編輯',`
`               onclick: function() {`
`                       window.location.href = window.location.href +`

"\&veaction=edit";

`               }`
`       } );`

}

gt.defineTour( {

`       name: 'twa5',`
`       shouldLog: true,`
`       steps: [ {`

`               //1`
`               title: '我們開始了！',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

蘇格喇低提出了令我們困惑的問題：我們如何知道維基百科上的信息是否真實呢？

這是一個特殊的問題——需要在一個特殊的地方找到明智的答案。

',

`               overlay: true,`
`               onShow: gt.parseDescription,`
`               buttons: [ {`
`                       name: '查看互助客棧',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse' ) + '?tour=twa5&step=2'      `
`               } ],`
`       allowAutomaticOkay: false`

`       },  {`
`               //2`
`               title: '互助客棧是怎樣的呢？',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

互助客棧是一個社交場所，大家可以在這裏提出關於維基百科的問題。在這裏，你可以隨時發問，然後從聰明、熱心的幫手得到簡潔清晰的解答。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Start' ) + '?tour=twa5&step=1' `
`               } , { `
`                       name: '喝點茶吧',`
`                       action:'next',          `
`               } ],`

`               allowAutomaticOkay: false,`
`               `
`       },  {`
`               //3`
`               title: '互助客棧 = 棒',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

在成為優秀編輯的道路上，求助是一項重要的環節。雖說在維基百科，需要學習的事情很多，不過很多人都願意伸出援手。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse' ) + '?tour=twa5&step=2' `
`               } , { `
`                      name: '向互助客棧傾訴',`
`                      action: 'next',`
`               } ],     `
`               `
`       },  {`

`               //4`
`               title: '問吧！',`
`               description: '`
`事實和維基百科`

`「大家好，我是新手，想了解維基百科。我在想，你們怎麼知道維基百科的內容是`<b>`真實`</b>`的呢？」`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse' ) + '?tour=twa5&step=3' `
`               } , { `
`                       name: '貼上去',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse/1' ) + '?tour=twa5&step=5'`
`                       } ],`

}, {

`               //5`
`               title: '發問真棒呢',`
`               description: '獲得新工具：`<b>`研究員獎章`</b>

<center>

[TWA_badge_7.png](https://zh.wikipedia.org/wiki/File:TWA_badge_7.png "fig:TWA_badge_7.png")

</center>


嗨，你有一則新通知：別人回覆了你在茶館提出的問題。
',

`               onShow: gt.parseDescription,`
`               attachTo: '#content.mw-body',`
`               position: 'topRight',`
`               autoFocus: 'yes',`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse' ) + '?tour=twa5&step=4' `
`               } , { `
`                       name: '查看回覆',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse/2' ) + '?tour=twa5&step=6'`
`                       } ],`
`               allowAutomaticOkay: false,`
`               `
`       },  {`
`               //6`
`               title: '這很重要',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

那麽，我們就只能講述已出版來源能夠證明的事情，而不是你的個人經驗、原創研究或者個人觀點。就只是已經出版的資料。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse' ) + '?tour=twa5&step=5' `
`               } , { `
`                       name: '深入了解可供查證方針*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/7template2' , mw.util.getUrl( 'Wikipedia:TWA/5/V' ) + '?tour=twa5&step=7'); }`
`               } ],      `
`               allowAutomaticOkay: false`

}, {

`               //7`
`               title: '請回答下列問題',`
`               description: '',`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse/2' ) + '?tour=twa5&step=6' `
`               } ]`

} , {

`               //8`
`               title: '你知道甚麼叫可供查證了',`
`               description: '獲得新工具：`<b>`考據者獎章`</b>

<center>

[TWA_badge_8.png](https://zh.wikipedia.org/wiki/File:TWA_badge_8.png "fig:TWA_badge_8.png")

</center>


好好運用剛學會的知識吧！
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/V' ) + '?tour=twa5&step=7' `
`               } , { `
`                       name: '查看你的新訊息*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/5' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa5&step=9'); }           `
`               } ],`
`               allowAutomaticOkay: false`

} , {

`               //9`
`               title: '尋找來源',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

一起來看看蓋亞女郎說了些甚麼吧。</br>',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Start' ) + '?tour=twa5&step=8' `
`               } , { `
`                       name: '前往〈地球〉的討論頁*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA/Earth', 'Wikipedia:TWA/Earth/Talk/1' , mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=10'); }           `
`               } ],`
`               allowAutomaticOkay: false`
`               `

} , {

`               //10`
`               title: '三種來源',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

看來蓋亞女郎為我們提供了幾個選擇。

〈可靠來源〉告訴我們，我們需要的是已經出版的可靠來源，這些來源應具有事實查證與正確性的聲譽；也就是我們靠得住的來源。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Start' ) + '?tour=twa5&step=9' `
`               } , { `
`                       name: '哪個才是最好的呢？',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/8template2' , mw.util.getUrl( 'Wikipedia:TWA/5/RS' ) + '?tour=twa5&step=11'); }`
`               } ],      `

`               allowAutomaticOkay: false`

}, {

`               //11`
`               title: '問答',`
`               description: '提示：答對也好，答錯也好，學會的知識都是一樣的。答錯了可以再來，多少次也沒關係！',`
`               attachTo:'#contentSub',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false, `
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=10' `
`               }],`

}, {

`               //12`
`               title: '你越來越可靠了',`
`               description: '獲得新工具：`<b>`舉證者獎章`</b>

<center>

[TWA_badge_9.png](https://zh.wikipedia.org/wiki/File:TWA_badge_9.png "fig:TWA_badge_9.png")

</center>


',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/RS' ) + '?tour=twa5&step=11' `
`               } , { `
`                            name: '回覆蓋亞女郎*',`
`                            onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/9template2' , mw.util.getUrl( 'Wikipedia:TWA/5/Start' ) + '?tour=twa5&step=13'); }`
`               } ],    `
`               allowAutomaticOkay: false`

}, {

`               //13`
`               title: '現在又怎樣呢？',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

現在我們有了來源，要怎樣做呢？

首先，我們要在蓋亞女郎的討論頁，告訴她我們的想法。

嗯⋯⋯說甚麼好呢？

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=12' `
`               },{`
`                       name: '回覆蓋亞女郎',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Reply' ) + '?tour=twa5&step=14'`
`                       } ],`
`               allowAutomaticOkay: false`

} , {

`               //14`
`               title: '問答',`
`               description: '提示：答對也好，答錯也好，學會的知識都是一樣的。答錯了可以再來，多少次也沒關係！',`
`               attachTo:'#contentSub',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false, `
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Start' ) + '?tour=twa5&step=13' `
`               }],`

`       },  {`
`               //15`
`               title: '回覆蓋亞女郎',`
`               description: '`
`按「編輯原始碼」，這樣你就可以回覆蓋亞女郎了。`

`',`
`               attachTo: '#ca-edit',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Reply' ) + '?tour=twa5&step=14' `
`               }],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`

`       },  {`
`               //16`
`               title: '抄寫回信',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

:《科學與自然》期刊看來是一項紮實、相關、信譽良好的來源。我認為我們可以依靠這項來源，而不是其他來源來撰寫這篇條目。做得好！\~\~\~\~
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=15' `
`               } , {`
`                       name: '抄完了',`
`                       action: 'next',`
`                       } ],`

} , {

`               //17`
`               title: '寫下編輯摘要和儲存',`
`               description: '`
`不如就寫「對可靠來源的意見」吧？然後，請按`<b>`儲存`</b>`。`

`',`
`               attachTo: '#wpSave',`
`               position: 'bottomRight',`
`               autoFocus: 'yes',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=16&action=edit' `
`               } ], `
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: postEditButtons`

} , {

`               //18`
`               title: '搖滾起來吧！',`
`               description: '獲得新工具：`<b>`建議者獎章`</b>

<center>

[TWA_badge_10.png](https://zh.wikipedia.org/wiki/File:TWA_badge_10.png "fig:TWA_badge_10.png")

</center>



我看了一下〈地球〉的討論頁，蓋亞女郎寫下了一些精彩的內容。一起去看看吧！',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=17&action=edit' `
`               } , {`
`                       name: '繼續上路*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/10template2' , mw.util.getUrl( 'Wikipedia:TWA/5/End' ) + '?tour=twa5&step=19'); }`
`               } ], `
`               allowAutomaticOkay: false`

} , {

`               //19`
`               title: '第五關完成！',`
`               description: '`
[<File:Northern>`   ``mountains``   ``(short).ogg`](https://zh.wikipedia.org/wiki/File:Northern_mountains_\(short\).ogg "fig:File:Northern mountains (short).ogg")
<b>`向第六關進發⋯⋯`</b>`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '恭喜自己！',`
`                       action: 'end'`
`               } ],`
`               allowAutomaticOkay: false`
`                `

}\]

} );

} (window, document, jQuery, mediaWiki, mediaWiki.guidedTour ) ) ;