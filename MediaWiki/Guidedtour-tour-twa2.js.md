// The Wikipedia Adventure Mission 2

( function ( window, document, $, mw, gt ) {

//automatic api:edit function to send yourself messages function
sendMessage( targetPage, msgPage, linkTo ) {

`   var api = new mw.Api();`
`   api.post( {`
`       'action' : 'edit',`
`       'title' : targetPage,`
`       'appendtext' : "\n``",`
`       'summary' : '新訊息（`[`維基百科大歷險自動模擬`](../Page/WP:TWA.md "wikilink")`2）',`
`       'token' : mw.user.tokens.get('editToken')`
`   } ).done( function () {`
`       window.location.href = linkTo;`
`   } );`

}

// Fail gracefully post-save but not postedit var postEditButtons =
\[\]; if ( mw.config.get( 'wgAction' ) === 'view' && \!gt.isPostEdit() )
{

`       postEditButtons.push( {`
`               name: '按此返回並進行編輯',`
`               onclick: function() {`
`                       window.location.href = new mw.Uri().extend( { action: 'edit' } ).toString();`
`               }`
`       } );`

}

// Fail gracefully post-save but not postedit for visual editor var
postEditButtonsVisual = \[\]; if ( mw.config.get( 'wgAction' ) ===
'view' && \!gt.isPostEdit() ) {

`       postEditButtonsVisual.push( {`
`               name: '返回',`
`               onclick: function() {`
`                       window.location.href = window.location.href +`

"\&veaction=edit";

`               }`
`       } );`

}

gt.defineTour( {

`       name: 'twa2',`
`       shouldLog: true,`
`       steps: [ {`
`               //1`
`               title: '第二關開始！',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

我們很高興可以再次和你見面。在這一關我們會完成學會和其他編輯溝通的任務。

',

`               onShow: gt.parseDescription,`
`               overlay: true,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '一起探索',`
`                       action: 'next'`
`                        } ],`
`               allowAutomaticOkay: false`

`       },  {`
`               //2`
`               title: '討論頁',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

和用戶頁一樣，每一位編輯都會有自己的討論頁，人們可以在這兒給你留言。

啊，來看看吧⋯⋯有人給你留言了。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/2/Start' ) + '?tour=twa2&step=1'          `
`               } , {`
`                       name: '查看新留言*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/1' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=3'); }`
`               } ],`
`               allowAutomaticOkay: false`

`       },  {`
`               //3`
`               title: '真人服務',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

哇，這樣不錯啊。這裏會有真人做事，就像我一樣。

一起回覆留言的編輯吧。

',

`               onShow: gt.parseDescription,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/2/Start' ) + '?tour=twa2&step=2'          `
`               } , {`
`                        name: '給迎客松回信',`
`                        action: 'externalLink',`
`                        url: mw.util.getUrl( 'Wikipedia:TWA/2/Will' ) + '?tour=twa2&step=4'`
`               } ],`
`               allowAutomaticOkay: false               `

`       },  {`
`               //4`
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
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=3'          `
`               } ],`

`       },  {`
`               //5`
`               title: '撰寫回信',`
`               description: '`
`按「編輯」，之後您就可以給迎客松回信了。`

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
`                       url: mw.util.getUrl( 'Wikipedia:TWA/2/Will' ) + '?tour=twa2&step=4'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`

`       },  {`
`               //6`
`               title: '抄寫回信',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

\-{zh-hans:复制; zh-hant:複製; zh-tw:拷貝;}-最好的回信，然後在迎客松的訊息下面貼上您的回信

:衷心感謝\[\[User:WillKomen|迎客松\]\]君的熱烈歡迎，我等不及要去做第一次編輯了！\~\~\~\~
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=5'          `
`               } , {`
`                       name: '抄完了',`
`                       action: 'next',`
`                        } ],`
`               allowAutomaticOkay: false`

}, {

`               //7`
`               title: '三件便利的事情',`
`               description: '`
`要為您的回覆增加`<b>`縮排`</b>`，就請在行首加一個冒號:，這樣你的回信和頁面的左邊界會隔開一個空位，表示你在回覆上面的留言。`

` 要`<b>`簽名`</b>`，就請輸入代碼~~~~，這樣您就可以在自己的回覆後面留下自己的的用戶名。按下 `[`Signature_icon_april_2018.png`](https://zh.wikipedia.org/wiki/File:Signature_icon_april_2018.png "fig:Signature_icon_april_2018.png")` 簽名按鈕也可以。我們只會在討論頁上簽名，不會在條目簽名。`

`要`<b>`通知`</b>`迎客松您回覆了，就請在您的訊息當中打出他的用戶名（例如[[User:迎客松|User:迎客松]]）。如果您是在他的用戶頁留言的話，那麼系統會自動通知他，甚麼也不用做。',`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=6&action=edit'          `
`               } , {`
`                       name: '知道了',`
`                       action: 'next'`
`               } ],`
`               allowAutomaticOkay: false,`
`               `

} , {

`               //8`
`               title: '寫下編輯摘要和儲存',`
`               description: '`
`寫下一段編輯摘要，內容大概是：「感謝您的盛情邀請。」`

`準備好了以後，就`<b>`儲存`</b>`。`

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
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=7&action=edit'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: postEditButtons`

} , {

`               //9`
`               title: '縮排增加了，名字簽好了，對方也通知了！',`
`               description: '獲得新工具：`<b>`通訊員獎章`</b>

<center>

[TWA_badge_3.png](https://zh.wikipedia.org/wiki/File:TWA_badge_3.png "fig:TWA_badge_3.png")

</center>


',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=8&action=edit'          `
`               } , {`
`                       name: '繼續溝通*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/3template2' , mw.util.getUrl( 'Wikipedia:TWA/2/Start' ) + '?tour=twa2&step=10'); } `
`               } ],`
`              allowAutomaticOkay: false`
`       `

} , {

`               //10`
`               title: '溝通的力量！',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

嘿，如果你一時間要參與多個討論，那麼應該怎麼做呢？怎樣追蹤所有這些討論的最新進展呢？

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=9'          `
`               } , {`
`                       name: '好問題⋯⋯',`
`                       action: 'next'`
`              } ],`

}, {

`               //11`
`               title: '解決辦法',`
`               description: '`
`-{zh-hans:监视列表; zh-hant:監視清單;}-。您可以選擇自己想追蹤的條目和頁面，然後您就可以從這個自己專用的即時動態列表查看這些頁面的變更。`

`要追蹤一個頁面，就請按`[<File:Vector_skin_-_page_not_in_the_watchlist.png>](https://zh.wikipedia.org/wiki/File:Vector_skin_-_page_not_in_the_watchlist.png "fig:File:Vector_skin_-_page_not_in_the_watchlist.png")`頁面上方那一顆星星。星星變成`[<File:Vector_skin_-_page_in_the_watchlist.png>](https://zh.wikipedia.org/wiki/File:Vector_skin_-_page_in_the_watchlist.png "fig:File:Vector_skin_-_page_in_the_watchlist.png")`藍色之後，您就能夠追蹤這個頁面了！（您也可以調整-{zh-hant:偏好設定; zh-hans:参数设置; zh-sg:设置;}-，令系統自動替您追蹤任何您編輯過的頁面。）`

`按「-{zh-hans:监视列表; zh-hant:監視清單;}-」。',`
`               attachTo: '#pt-watchlist',`
`               position: 'bottom', `
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=10'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPage( 'Special:监视列表' );`
`               }`
`               `

} , {

`               //12`
`               title: '檢查監視清單',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

維基百科其中一個<u>非常</u>井井有條的地方是頁面每一項修訂都會被記錄在案。這樣人們就可以檢查其他人的貢獻，因為在幫忙時候我們會處於最佳狀態。

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
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=11'          `
`               } , {`
`                       name: '我們的格言',`
`                       action: 'next'`
`              } ],`

} , {

`               //13`
`               title: '勇於編輯',`
`               description: '在這兒搗亂也是很難的，因為您可以隨時恢復較舊的版本。`

`可以鬆一口氣吧，不是麼？`

`這就是為甚麼我們會說維基百科的格言是`<b>`勇於編輯`</b>`了！`

`',`
`               onShow: gt.parseDescription,`
`               overlay: true,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:Watchlist' ) + '?tour=twa2&step=12'          `
`               } , {`
`                       name: '監視列表之外',`
`                       action: 'next'`
`              } ],`

} , {

`               //14`
`               title: '追蹤您的貢獻',`
`               description: '`
`除了在監視列表中追蹤所有您追蹤的頁面的修訂記錄，您也可以只追蹤自己的編輯記錄。`

`按「貢獻」。',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#pt-mycontris',`
`               position: 'bottomLeft',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:监视列表' ) + '?tour=twa2&step=13'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPage( 'Special:用户贡献/' + mw.config.get( 'wgUserName' ).replace(/ /g, '_') );`
`               }`

} , {

`               //15`
`               title: '您的貢獻',`
`               description: '`
`這就是您到目前為止的貢獻了。您只是編輯過自己的用戶頁和討論頁啊⋯⋯`

`一起來看看我們能做些甚麼吧。`

`啊，等等，您似乎又收到一則新留言了。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:监视列表' ) + '?tour=twa2&step=14'          `
`               } , {`
`                       name: '查看新訊息*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/2' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=16'); }`
`               } ],       `
`               allowAutomaticOkay: false`

} , {

`               //16`
`               title: '邀請信',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

\-{zh-hans:挺; zh-hant:挺; zh-tw:蠻;}-好的，有的事情在等著你去做呢⋯⋯

',

`               onShow: gt.parseDescription,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl ('Special:Contributions/' ) + mw.config.get( 'wgUserName' ) + '?tour=twa2&step=15'          `
`               } , {`
`                        name: '給蓋亞女郎回信',`
`                        action: 'externalLink',`
`                        url: mw.util.getUrl( 'Wikipedia:TWA/2/Gaia' ) + '?tour=twa2&step=17'`
`               } ],`
`               allowAutomaticOkay: false               `

`       },  {`
`               //17`
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
`                       url: mw.util.getUrl ( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=16'          `
`               } ],`
`               `
`       },  {`
`               //18`
`               title: '回覆',`
`               description: '`
`按「編輯」，這樣您就可以給蓋亞女郎寫回信了。`

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
`                       url: mw.util.getUrl ( 'Wikipedia:TWA/2/Gaia' ) + '?tour=twa2&step=17'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`
`               `
`       },  {`
`               //19`
`               title: '寫回信',`
`               description: '`
`-{zh-hans:复制; zh-hant:複製; zh-tw:拷貝;}-您的回信，然後編輯欄蓋亞女郎的訊息下方貼上回信的內容`

`:[[User:GaiaGirl86|User:GaiaGirl86]]您真棒啊，這是我最喜歡的星球啊！我怎樣才能來到這裏呢？~~~~`
`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl ( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=18'          `
`               } , {`
`                       name: '抄好了',`
`                       action: 'next'`
`               } ],`
`               allowAutomaticOkay: false`

}, {

`               //20`
`               title: '寫下編輯摘要和儲存',`
`               description: '`
`寫下一段編輯摘要就可以了。不如就寫「我喜歡幫忙」吧？`

`準備好了，就`<b>`儲存`</b>`。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpSave',`
`               position:  'bottomRight',`
`               autoFocus: 'yes',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl ( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=19&action=edit'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: postEditButtons`

} , {

`               //21`
`               title: '滴答滴答',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

嘿，一起重新載入頁面，看看蓋亞女郎有沒有給你回信吧！',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl ( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=20&action=edit'          `
`               } , {`
`                        name: '翻轉地球*',`
`                        onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/3' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=22'); }`
`               } ],`

} , {

`               //22`
`               title: '怎麼走？',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

我會帶您到這兒。跟着我到<b>地球</b>吧。

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
`                       url: mw.util.getUrl ( 'Special:MyTalk/TWA' ) + '?tour=twa2&step=21'          `
`               } , {`
`                        name: '向地球進發',`
`                        action: 'externalLink',`
`                        url: mw.util.getUrl( 'Wikipedia:TWA/2/End' ) + '?tour=twa2&step=23'`
`               } ],`

} , {

`               //23`
`               title: '第二關完成！',`
`               description: '`
[<File:Ringtone>`
 ``(3).ogg`](https://zh.wikipedia.org/wiki/File:Ringtone_\(3\).ogg "fig:File:Ringtone (3).ogg")
<b>`踏入第三關⋯⋯`</b>`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '恭喜自己！',`
`                       action: 'end'`
`               } ],`

}\]

} );

} (window, document, jQuery, mediaWiki, mediaWiki.guidedTour ) ) ;