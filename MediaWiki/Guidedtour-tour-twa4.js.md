> 本文内容由[MediaWiki:Guidedtour-tour-twa4.js](https://zh.wikipedia.org/wiki/MediaWiki:Guidedtour-tour-twa4.js)转换而来。


// The Wikipedia Adventure Mission 4

( function ( window, document, $, mw, gt ) {

//automatic api:edit function to send yourself messages function sendMessage( targetPage, msgPage, linkTo ) {

`   var api = new mw.Api();`
`   api.post( {`
`       'action' : 'edit',`
`       'title' : targetPage,`
`       'appendtext' : "\n``",`
`       'summary' : '新訊息（`[`維基百科大歷險自動模擬`](https://zh.wikipedia.org/wiki/WP:TWA "wikilink")`4）',`
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
`               name: '返回',`
`               onclick: function() {`
`                       window.location.href = window.location.href +`

"\&veaction=edit";

`               }`
`       } );`

}

gt.defineTour( {

`       name: 'twa4',`
`       shouldLog: true,`
`       steps: [ {`
`            `
`               //1`
`               title: '第四關開始',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

還記得蓋亞女郎說她給條目加入了些內容，我們還沒看。現在讓我們看看加入了什麼新內容吧。

',

`               overlay: true,`
`               onShow: gt.parseDescription,`
`               buttons: [ {`
`                       name: '返回地球？*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ) + '/TWA/Earth', 'Wikipedia:TWA/Earth/2' , mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=2'); }`
`               } ],`
`               allowAutomaticOkay: false`

`       },  {`
`               //2`
`               title: '有什麼新內容呢？',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

想知道自你上次來之後頁面發生了什麼更改的一個簡單方法是檢視條目的<b>歷史</b>。

歷史就像是單個頁面上發生的所有事情的監視清單。

條目的每一次更改都在那裡。怎麼樣呢？

',

`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Start' ) + '?tour=twa4&step=1' `
`               } , { `
`                       name: '成為維基歷史學家',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Earth/History/1' ) + '?tour=twa4&step=3'`
`                       } ],`
`               allowAutomaticOkay: false   `

`       },  {`
`               //3`
`               title: '這看起來很熟悉！',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

每一行都是一次更改——編輯時間，添加或刪除了多少信息以及編輯摘要。這就是編輯摘要很酷的原因。

',

`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=2' `
`               } , { `
`                       name: '掌握此工具',`
`                       action: 'next'`
`               } ],`

`       },  {`
`               //4`
`               title: '與之前版本相比',`
`               description: '`

<div align="right">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

如果你想比較一個版本與之前的版本，你可以點擊該行中的「先前」連結。（為了銀河系的安全，此頁中的「先前」連結已被禁用）。

',

`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Earth/History/1' ) + '?tour=twa4&step=3' `
`               } , {`
`                       name: '另一個技巧',`
`                       action: 'next'`
`               } ],`

`       },  {`
`               //5`
`               title: '比較兩個舊版本',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

你也可以比較兩個舊版本，當你跟踪更長的時間段的變化時會很方便。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Earth/History/1' ) + '?tour=twa4&step=4' `
`               } , {`
`                       name: '有什麼新內容？',`
`                       action: 'next'`
`               } ],`
`               allowAutomaticOkay: false,`

}, {

`               //6`
`               title: '什麼是「差異」呢？',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

我們把兩個版本之間的對比稱作「差異」，

',

`               onShow: gt.parseDescription,`
`               attachTo: '#footer-info-copyright',`
`               position: 'bottom',`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Earth/History/1' ) + '?tour=twa4&step=5' `
`               } , {`
`                       name: '查看蓋亞女郎最近一次更改的差異',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Earth/4/Diff' ) + '?tour=twa4&step=7'`
`                       } ],`
`               allowAutomaticOkay: false`

} , {

`                //7`
`               title: '看看有什麼改變',`
`               description: '`
`左邊是舊版本。右邊是新版本。更改會突出顯示。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Earth/History/1' ) + '?tour=twa4&step=6' `
`               } , {`
`                       name: '你有什麼感想？',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=8'`
`                       } ],`
`               allowAutomaticOkay: false`
`               `

} , {

`               //8`
`               title: '啊，她加入的內容帶有一些偏見...',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

好吧，看起來蓋亞女郎加入了一些可能含有偏見的-{zh-hans:信息; zh-hant:資訊}-。

我們怎樣選擇呈現何種信息呢？

維基百科編者按照<b>「中立的觀點」</b>這個理念判斷事實。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Earth/4/Diff' ) + '?tour=twa4&step=7' `
`               } , {`
`                       name: '了解[中立的]觀點',`
`                       action: 'next',`
`               } ],`

} , {

`               //9`
`               title: '中立的觀點',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

中立的觀點是說維基百科本身不持任何觀點，也不依賴其編者的觀點。

相反，我們要做的是平衡地總結優良來源上有關某個主題的敘述。

',

`               onShow: gt.parseDescription,`
`               overlay: true,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=8' `
`               } , {`
`                       name: '閱讀方針',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Start' ) + '?tour=twa4&step=10'`
`                       } ],`
`               allowAutomaticOkay: false`

} , {

`               //10`
`               title: '方針是我們實作的慣例',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

方針描述了社群的慣例。對於你能想像到的每一種情況，都會有對應的方針，不過有幾個方針是格外重要的。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=9' `
`               } , {`
`                       name: '中立方針',`
`                       action: 'next',`
`                       } ],`
`               `

}, {

`               //11`
`               title: '中立方針',`
`               description: '`
<b>`條目不可以偏頗，而應該公正無私地闡述各個觀點。這條方針規定了您應該說甚麼、您應該怎樣說。`</b>

`請仔細體會這一點，並銘記於心。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Start' ) + '?tour=twa4&step=10' `
`               } , {`
`                       name: '明白了嗎？',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/NPOV' ) + '?tour=twa4&step=12'`
`                       } ],`
`               allowAutomaticOkay: false`

} , {

`               //12`
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
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Start' ) + '?tour=twa4&step=11' `
`               } ],`

} , {

`               //13`
`               title: '搖滾起來吧！',`
`               description: '獲得新工具： `<b>`中立獎章`</b>

<center>

[TWA_badge_5.png](https://zh.wikipedia.org/wiki/File:TWA_badge_5.png "fig:TWA_badge_5.png")

</center>


',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/NPOV' ) + '?tour=twa4&step=12' `
`               }, {`
`                       name: '繼續歷險*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/5template2' , mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=14'); } `
`               } ],`

} , {

`               //14`
`               title: '運用中立的觀點吧',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

讓我們再來看看她對〈地球〉的變更。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Start' ) + '?tour=twa4&step=13' `
`               } , {`
`                       name: '你發現什麼問題了嗎',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=15'`
`               } ],`

} , {

`               //15`
`               title: '移除偏見',`
`               description: '`
<b>

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

地球是整個星系中最好和最酷的行星。地球是人類生活的完美場所。</b>

新加入的文字試圖敘述一些相關內容，但不夠平衡、中立。聽起來像是編者的意見。

',

`               onShow: gt.parseDescription,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=14' `
`               } , {`
`                       name: '說好一點',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Rephrase' ) + '?tour=twa4&step=16'`
`               } ],`

} , {

`               //16`
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
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=15' `
`               } ],`

`       },  {`
`               //17`
`               title: '改寫的時間到了',`
`               description: '`
`按「編輯」，然後重新編寫文本`

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
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Rephrase' ) + '?tour=twa4&step=16' `
`               }],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`

`       },  {`
`               //18`
`               title: '修正並替換',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

\-{zh-hans:复制; zh-hant:複製; zh-tw:拷貝;}-下面的中立敘述，替換有偏見的文字：

<b>地球是銀河系唯一一個有生物生存的行星。雖然地球某些地區可能是危險的，不適合人類居住，不過還有許多適合人類居住的地方。</b>

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=17' `
`               } , {`
`                       name: '完成',`
`                       action: 'next'`
`              } ], `
`               `
`       },  {`
`               //19`
`               title: '撰寫編輯摘要和儲存',`
`               description: '`
`讓他們知道你“將文本改得更中立、無偏見”。`

`準備好了以後，就`<b>`儲存`</b>`。',`
`               attachTo: '#wpSave',`
`               position: 'bottomRight',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=18&action=edit' `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: postEditButtons`

`       },  {`
`               //20`
`               title: '幫個忙！',`
`               description: '獲得新工具：合作者獎章 `

<center>

[TWA_badge_6.png](https://zh.wikipedia.org/wiki/File:TWA_badge_6.png "fig:TWA_badge_6.png")

</center>


',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=19&action=edit' `
`               } , {`
`                       name: '繼續幫忙*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/6template2' , mw.util.getUrl( 'Wikipedia:TWA/4/Start' ) + '?tour=twa4&step=21'); } `
`               } ],`
`               allowAutomaticOkay: false       `

}, {

`               //21`
`               title: '太棒了',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

重要的是，維基百科讀起來像一本真正的百科全書，而不是任何編者的個人-{zh-hans:博客; zh-hant:部落格; zh-hk:網誌}-。

我們都在這里以一種平衡的方式分享資訊。

這個過程可能是困難的，但我們為了分享知識這個目標而團結在一起。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=20' `
`               } , {`
`                       name: '中立大法好',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/Start' ) + '?tour=twa4&step=22'`
`               } ],                    `

} , {

`               //22`
`               title: '哦，新訊息！',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

看看是什麼訊息吧。</br>
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=21' `
`               } , {`
`                       name: '查看你的討論頁*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/4' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa4&step=23'); }`
`               } ],                       `

} , {

`               //23`
`               title: '有趣的問題...',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

這是什麼意思？',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa4&step=22' `
`               } , {`
`                       name: '揭開可供查證的面紗',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/4/End' ) + '?tour=twa4&step=24'`
`               } ],`

} , {

`               //24`
`               title: '第四關完成！',`
`               description: '`
[<File:02>`   ``Taiko2.ogg``   ``(short).ogg`](https://zh.wikipedia.org/wiki/File:02_Taiko2.ogg_\(short\).ogg "fig:File:02 Taiko2.ogg (short).ogg")
<b>`踏上第五關⋯⋯`</b>`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '恭喜自己！',`
`                       action: 'end'`
`               } ],`
`               allowAutomaticOkay: false`

}\]

} );

} (window, document, jQuery, mediaWiki, mediaWiki.guidedTour ) ) ;