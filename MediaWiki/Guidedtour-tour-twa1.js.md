> 本文内容由[MediaWiki:Guidedtour-tour-twa1.js](https://zh.wikipedia.org/wiki/MediaWiki:Guidedtour-tour-twa1.js)转换而来。


// The Wikipedia Adventure Mission 1

( function ( window, document, $, mw, gt ) {

//automatic api:edit function to send yourself messages function sendMessage( targetPage, msgPage, linkTo ) {

`   var api = new mw.Api();`
`   api.post( {`
`       'action' : 'edit',`
`       'title' : targetPage,`
`       'appendtext' : "\n``",`
`       'summary' : '新訊息（`[`維基百科大歷險自動模擬`](https://zh.wikipedia.org/wiki/WP:TWA "wikilink")`1）',`
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

`       name: 'twa1',`
`       shouldLog: true,`
`       steps: [ {`
`               //1`
`               title: '歡迎來到維基百科！',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

維基百科是一個<b>人人都能編輯</b>的自由百科全書。我要在這兒帶您踏上這段互動旅程，探索我們的宇宙。

這段旅程分為7關，每一關都有要帶給您的技能和驚喜，這都是為您而設的，目的是令您成為維基百科的優秀編輯。

',

`               onShow: gt.parseDescription,`
`               overlay: true,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '為旅程裝備好',`
`                       action: 'next',`
`               } ],`
`               allowAutomaticOkay: false   `

`       },  {`
`               //2`
`               title: '行前準備',`
`               description: '`
<b>`不要按[x]`</b>
`這個對話方塊就是您的太空衣，如果您在完成一關之前關閉了它，您就會離開這段旅程，而且要重新開始。`

<b>`自動訊息`</b>
` 您會在玩這個遊戲的時候向您的維基百科個人專頁發送訊息。如果您在藍色按鈕中看到星號（`<big><b>`*`</b></big>`），那麼您在下一步就要這樣做了。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: true,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=1'          `
`               } , {`
`                       name: '跟我上路',`
`                       action: 'next',`
`                        } ],`
`               allowAutomaticOkay: false       `

`       },  {`
`               //3`
`               title: '為甚麼參加維基百科？',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

我們的確有個厲害的目標。

<b>試想像世界上每一個人，都能自由存取全人類知識的總集。</b>

最神奇的是⋯⋯

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=2'          `
`               } , {`
`                        name: 'It is happening',`
`                        action: 'next',`
`                        } ],`
`               allowAutomaticOkay: false               `

`       },  {`
`               //4`
`               title: '這些事情在發生',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

維基百科每秒的瀏覽量超過8000次。我們是世界上第五大的網站。而且，我們只有15年多的歷史！

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=3'          `
`               } , {`
`                       name: '維基百科是誰寫的？',`
`                       action: 'next',`
`                        } ],`
`               allowAutomaticOkay: false`
`       },  {`
`               //5`
`               title: '維基百科是誰寫的？',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

不就是您嗎？ :) 目前維基百科差不多有6000萬名註冊用戶。最重要的是，你就算不是專家，也可以向維基百科貢獻。我們絕大多數的編輯都是-{zh-hans:志愿者; zh-hant:義工; zh-tw:志工;}-。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=4'          `
`               } , {`
`                       name: '人們為甚麼編輯？',`
`                       action: 'next',`
`                        } ],`
`               allowAutomaticOkay: false`
`       },  {`

`               //6`
`               title: '發現我們的特別作用',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

維基百科最神奇的地方是你會在參加過程當中發現你自己的路途和目的。不過每個人的付出都足以形成巨大的改變，您的影響可以改變世界。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=5'          `
`               } , {`
`                       name: '準備好了嗎？',`
`                       action: 'next',`
`                        } ],`
`               allowAutomaticOkay: false,`

}, {

`               //7`
`               title: '登入或建立帳號',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

建立帳號會為您帶來很多好處。去吧！

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=6'  `
`               } , {`
`                   name: '我登入了',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=8'`
`                       `
`               } , {`
`                   name: '我要登入',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:UserLogin' ) + '?tour=twa1&step=7'`
`                    `
`               } , {`
`                   name: '註冊',`
`                   action: 'externalLink',`
`                   url: mw.config.get('wgServer') + mw.config.get('wgScriptPath') + '/index.php?title=Special:UserLogin&returnto=Wikipedia:TWA/1/Start&returntoquery=tour%3Dtwa1%26step%3D8%26showGettingStarted%3Dfalse&type=signup'`
`                       `
`               } ],`
`               allowAutomaticOkay: false,`
`               shouldSkip: function () {`
`               return mw.config.get( 'wgUserId' )  !== null;`
`               }`
`               `

} , {

`               //8`
`               title: '跟維基百科問好',`
`               description: '`
`不如先向社群介紹自己吧。`

`載入宇宙只需要幾秒的時間——光速旅遊就是這麼快。`

`（您必須在行程餘下的所有部分保持登入。）`

`',`
`               overlay: true,`
`               onShow: gt.parseDescription,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=6'          `
`               } , {`
`                        name: '說聲好*',`
`                        onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Welcome' , mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=9'); } `
`               } ],    `
`               allowAutomaticOkay: false`
`               `

} , {

`               //9`
`               title: '您的用戶頁',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

您的用戶頁是和其他編輯說說自己如何的地方。你可以談到您的背景、興趣，還有您希望貢獻給這個計劃的內容——多多益善，少少無拘。

<i>要記住這是一個非常公開的自述，所以您的個人私隱最好還是要保密。</i>

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Start' ) + '?tour=twa1&step=8'          `
`               } , {`
`                       name: '好的用戶頁是怎樣的？',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/1/Bio' ) + '?tour=twa1&step=10'`
`               } ],`
`       allowAutomaticOkay: false`
`       `

} , {

`               //10`
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
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=9'          `
`               } ],`
`              `

} , {

`               //11`
`               title: '到您來了！',`
`               description: '`
`只要編輯一下，您就能夠在維基百科創建自己的用戶頁了，就是這麼簡單。`

`請在上面按下名為`<b>`建立`</b>`或`<b>`編輯`</b>`的連結。`

`（在這次歷險中，我們會一直使用源代碼編輯器。）`

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
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=9'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`

}, {

`               //12`
`               title: '編輯界面',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

這就是奇蹟發生的地方。

請在左上方的大型文字方塊中寫下您的用戶名，出身國家／地區和城市、教育程度、技能和興趣。您對在這兒<u>做事</u>有甚麼感到興奮的地方？多多益善，少少無拘，不過請做出至少<b>一項</b>編輯。

如果您已經設立用戶頁的話，就請您對此做出至少<b>一項</b>改善。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=11'          `
`               } , {`
`                       name: 'Typed it',`
`                       action: 'next'`
`              } ],`
`              `

} , {

`               //13`
`               title: '編輯摘要和儲存',`
`               description: '`
`-{zh-hans:挺; zh-hant:挺; zh-tw:蠻;}-好的！在按儲存按鈕之前，請略略紀錄一下您的編輯，這項紀錄就叫做編輯摘要。其他人可以由此知道您的編輯大要。`

`不如寫「介紹自己」吧。`

`現在您只要儲存就行。編輯會在儲存之後上線和公開發佈。準備好的話，按「儲存」。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo:  '#wpSave', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=12&action=edit'          `
`               } ],`
`               buttons: postEditButtons`

} , {

`               //14`
`               title: '恭喜！',`
`               description: '獲得新工具：  `<b>`編輯獎章`</b>

<center>

[TWA_badge_1.png](https://zh.wikipedia.org/wiki/File:TWA_badge_1.png "fig:TWA_badge_1.png")

</center>


您已經是維基百科的編輯了！覺得如何？您已經學會怎樣介紹自己了，那真棒。
',

`               overlay: false,`
`               onShow: gt.parseDescription,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=13&action=edit'          `
`               } , {`
`                       name: '做得更好*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/1template2' , mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=15'); } `
`               } ],`

} , {

`               //15`
`               title: '做得更好',`
`               description: '`
`一起回去對文本做出一些修改吧。按`<b>`「編輯」`</b>`。`

`',`
`               overlay: false,`
`               attachTo: '#ca-edit',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=14'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`

} , {

`               //16`
`               title: '加粗',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

在編輯欄當中用滑鼠把自己的用戶名（或者其他關鍵詞）加亮。

接著在編輯欄上面的編輯工具列按下[<File:Toolbaricon_bold_B-1.png>](https://zh.wikipedia.org/wiki/File:Toolbaricon_bold_B-1.png "fig:File:Toolbaricon_bold_B-1.png")按鈕。

編輯工具列會大大方便了維基百科的操作，因為它可以為您加入適當的格式。',

`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=15'          `
`               } , {`
`                       name: '已加粗',`
`                       action: 'next'`
`               } ],`

} , {

`               //17`
`               title: '改為斜體',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

現在把您的興趣加亮。

接着在編輯工具列按下[<File:Toolbaricon_italics_I.png>](https://zh.wikipedia.org/wiki/File:Toolbaricon_italics_I.png "fig:File:Toolbaricon_italics_I.png")，把這些字詞改為斜體。

',

`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false   ,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=16&action=edit'          `
`               } , {`
`                       name: '已改為斜體',`
`                       action: 'next'`
`               } ],`

} , {

`               //18`
`               title: '加入維基連結',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

您可以鏈入維基百科其他頁面，這樣做對「構築網絡」是有幫助的，而且可以令您完成任何作品，並穿梭於各條目之間。 ;)

把自己的出身國家／地區和城市加亮。

接着在編輯工具列按下[<File:Toolbar_Insert_link.png>](https://zh.wikipedia.org/wiki/File:Toolbar_Insert_link.png "fig:File:Toolbar_Insert_link.png")（這看來很像鎖鏈的一部分）。

最後請加入連結。

',

`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=17&action=edit'          `
`               } , {`
`                       name: '已加入連結',`
`                       action: 'next'`
`               } ],`

} , {

`               //19`
`               title: '編輯摘要和儲存',`
`               description: '`
`您「把字詞加粗、改為斜體，並加入維基連結」。按「儲存」，之後您的編輯就會上線。`

`',`
`               attachTo: '#wpSave',`
`               position: 'bottomRight',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=18&action=edit'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: postEditButtons`

} , {

`               //20`
`               title: '您做到了 :)',`
`               description: '獲得新工具：`<b>`格式審查員獎章`</b>

<center>

[TWA_badge_2.png](https://zh.wikipedia.org/wiki/File:TWA_badge_2.png "fig:TWA_badge_2.png")

</center>


您學得很快。您很了不起。我們只是剛剛開始，不過您卻已經練好基本功，方便繼續歷險。請您在不斷提升實力之際留意頁底的能力值報表。
',

`               overlay: true,`
`               onShow: gt.parseDescription,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage' ) + '?tour=twa1&step=19&action=edit'          `
`               } , {`
`                       name: '然後呢？？*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/2template2' , mw.util.getUrl( 'Wikipedia:TWA/1/End' ) + '?tour=twa1&step=21'); } `
`               } ],`
`               allowAutomaticOkay: false`

} , {

`               //21`
`               title: '第一關完成！',`
`               description: '`
[<File:Carl>`   ``Czerny``   ``-``   ``Duo``   ``Concertante``   ``-``   ``1.``   ``Allegro``   ``(short).ogg`](https://zh.wikipedia.org/wiki/File:Carl_Czerny_-_Duo_Concertante_-_1._Allegro_\(short\).ogg "fig:File:Carl Czerny - Duo Concertante - 1. Allegro (short).ogg")
<b>`踏入第二關⋯⋯`</b>`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '恭喜自己！',`
`                       action: 'end'      `
`               } ],`

}\]

} );

} (window, document, jQuery, mediaWiki, mediaWiki.guidedTour ) ) ;