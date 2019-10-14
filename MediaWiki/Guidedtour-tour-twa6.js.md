// The Wikipedia Adventure Mission 6

( function ( window, document, $, mw, gt ) {

//automatic api:edit function to send yourself messages function sendMessage( targetPage, msgPage, linkTo ) {

`   var api = new mw.Api();`
`   api.post( {`
`       'action' : 'edit',`
`       'title' : targetPage,`
`       'appendtext' : "\n``",`
`       'summary' : '新訊息（`[`維基百科大歷險自動模擬`](https://zh.wikipedia.org/wiki/WP:TWA "wikilink")`6）',`
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
`               name: '按此返回並進行編輯',`
`               onclick: function() {`
`                       window.location.href = window.location.href +`

"\&veaction=edit";

`               }`
`       } );`

}

gt.defineTour( {

`       name: 'twa6',`
`       shouldLog: true,`
`       steps: [ {`

`               //1`
`               title: '開門見山',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

我們到條目的討論頁看看吧。剛才蓋亞女郎在這兒用自己的文字概括《科學與自然》雜誌登載的論文的內容。

',

`               onShow: gt.parseDescription,`
`               overlay: true,`
`               buttons: [ {`
`                       name: '前往〈地球〉的討論頁*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入。" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA/Earth', 'Wikipedia:TWA/Earth/Talk/2' , mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa6&step=2'); }           `
`               } ],`
`               allowAutomaticOkay: false`

`       },  {`
`               //2`
`               title: '酷喔！新資訊',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

我們在條目插入這些內容吧。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/6/Start' ) + '?tour=twa6&step=1'          `
`               } , {`
`                       name: '前往條目〈地球〉',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=3'      `
`               } ],`
`               allowAutomaticOkay: false,`

`       },  {`
`               //3`
`               title: '按「編輯」',`
`               description: '`
`按「編輯」，這樣你就可以加入撮要內容了。`

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
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa6&step=2'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`

`       },  {`

`               //4`
`               title: '加入這個吧！',`
`               description: '`
<small>`科學研究結果顯示，地球大約在45億年前誕生。在地球上生存的生物改變了這裏的空氣結構（大氣層），創造了生物圈。地球表面有71%的面積被海水覆蓋。目前已知地球是太陽系唯一一個含有液態水的星球。其餘29%是由岩石構成的陸地，包括各大洲和島嶼。地球與太陽系內其他物體（特別是太陽和月亮）互為影響。地球環繞太陽公轉，運行一週需時約365.25日。地球自轉的週期稱為`<u>`日`</u>`，公轉的週期稱為`<u>`年`</u>`。這就是一年365天（以及閏年設閏日）的原因了。`</small>

`',`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=3'          `
`               } , {`
`                       name: '已加入',`
`                       action: 'next',`
`               } ],`

`       },  {`
`               //5`
`               title: '寫下編輯摘要和儲存',`
`               description: '`
`告訴大家您「從討論頁增加更可靠，更中立的內容，補充地球的歷史。」`

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
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=4&action=edit'          `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: postEditButtons`

`       },  {`
`               //6`
`               title: '欸，看看⋯⋯',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

系統剛剛通知，您又收到一則新留言了！</br>
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=5&action=edit'          `
`               } , {`
`                       name: '查看訊息*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "請登入" );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/6' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa6&step=7'); }           `
`               } ],`

`       },  {`
`               //7`
`               title: '問得好',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

我的內心感到很刺激呢。您似乎又收到一則新留言了⋯⋯</br>
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
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=6'          `
`               } , {`
`                       name: '重新載入頁面*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/7' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa6&step=8'); }           `
`               } ],`

}, {

`               //8`
`               title: '你問我，腳註是甚麼？',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

</div>

我們到地球看看吧！

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
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa6&step=7'          `
`               } , {`
`                       name: '前往地球*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ) + '/TWA/Earth', 'Wikipedia:TWA/Earth/cleanup' , mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=9'); }           `
`               } ],`

} , {

`               //9`
`               title: '這是甚麼？',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

這個**清理模板**看起來不那麼好。我們過去討論頁看看這是為甚麼吧。',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa6&step=8'`
`               } , {`
`                       name: '前往討論*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA/Earth', 'Wikipedia:TWA/Earth/Talk/3' , mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa6&step=10'); }           `
`               } ],`
`               allowAutomaticOkay: false`
`               `

} , {

`               //10`
`               title: '回答標籤君的質疑',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

好，冷靜一下⋯⋯深呼吸，深—呼吸，深——呼吸。

我們應該怎樣回答標籤君，告訴他自己了解來源方針，會（按照之前所學，）增加那些資訊？

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=9'          `
`               } , {`
`                       name: '回答標籤君吧!',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/6/Civil' ) + '?tour=twa6&step=11'`
`                       } ],`
`               allowAutomaticOkay: false`

`       },  {`
`               //11`
`               title: '問答',`
`               description: '提示：不論是答對還是答錯，您都可以學會同等的知識。而且您可以不斷嘗試！',`
`               attachTo:'#contentSub',`
`               position: 'bottom',`
`               onShow: gt.parseDescription,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa6&step=10'          `
`               } ],`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false`

}, {

`               //12`
`               title: '做得好！',`
`               description: '獲得新工具：`<b>`文明獎章`</b>

<center>

[TWA_badge_11.png](https://zh.wikipedia.org/wiki/File:TWA_badge_11.png "fig:TWA_badge_11.png")

</center>


重新載入〈地球〉的討論頁吧。
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/6/Civil' ) + '?tour=twa6&step=11'  `
`               }, {    `
`                       name: '重新載入*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA/Earth', 'Wikipedia:TWA/Earth/Talk/4' , mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa6&step=13'); }           `
`               } ],`
`               allowAutomaticOkay: false`

}, {

`               //13`
`               title: 'OK，需要來源',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

引用來源就是說，在條目中列出有關資訊的出處。

證明資訊屬實的資料稱為參考-{zh-hans:文献; zh-hant:資料;}-。

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#content.mw-body',`
`               position: 'bottom',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/6/Start' ) + '?tour=twa6&step=12'  `
`               }, {    `
`                       name: '字裏行間的法術*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/11template2' , mw.util.getUrl( 'Wikipedia:TWA/6/Start' ) + '?tour=twa6&step=14'); }`
`               } ],`
`               allowAutomaticOkay: false`

} , {

`               //14`
`               title: '加入腳註的方法和原因',`
`               description: '`
`我要示範一下怎樣在條目加入腳註，以及使用內文腳註完成這個任務。`

`內文腳註在條目文本中以[數目]標示，按一下，就可以在參考資料區找到相應的資料。`

`做做看吧，這樣讀者就可以知道這個來源佐證的內容是甚麼了。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa6&step=13' `
`               } , {        `
`                       name: '做做看吧',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=15'`
`                       } ],`

`       },  {`
`               //15`
`               title: '按「編輯」',`
`               description: '`
`按「編輯」，這樣你就可以加入內文腳註了。`

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
`                       url: mw.util.getUrl( 'Wikipedia:TWA/6/Start' ) + '?tour=twa6&step=14' `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.hasQuery( { action: 'edit' } );`
`               }`

`       },  {`
`             `
`               //16`
`               title: '引用的步驟',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

首先，抄錄參考資料的資訊。

<b>彭學文. 歷史平衡中的地球. 科學與自然. SandNjournal.com/Earthinthebalance. 2013-03-2013 \[\].</b>

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=15' `
`               } , { `
`                       name: '抄完了',`
`                       action: 'next',`
`                       } ],`

} , {

`               //17`
`               title: '引用',`
`               description: '`
`找回剛才加入的內容，把鼠標放在最後一句的句號後面。不要把上面的參考資料直接抄進去。`

`在編輯工具列按下`[<File:Toolbar_insert_reference.png>](https://zh.wikipedia.org/wiki/File:Toolbar_insert_reference.png "fig:File:Toolbar_insert_reference.png")`。在這裏貼上參考資料吧！`

`完成後，按「插入」。`

`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=16&action=edit' `
`               } , { `
`                       name: '已插入',`
`                       action: 'next',`
`                       } ],`

} , {

`               //18`
`               title: '加入參考資料區',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

您得加入參考資料區，這樣參考資料才會現身。

把鼠標放在編輯欄的底部。

請輸入：<b>{{reflist}}</b>

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=17&action=edit' `
`               } , { `
`                       name: '已加入！',`
`                       action: 'next',`
`                       } ],`

} , {

`               //19`
`               title: '刪掉那個模板 :)',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

您解決了這個問題，那麼去刪掉那個清理模板吧！

去吧，刪掉這個：<b>{{Unreferenced}}</b> 走！

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               attachTo: '#wpTextbox1', `
`               position: 'bottomRight',`
`               closeOnClickOutside: false,`
`               allowAutomaticOkay: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=18&action=edit' `
`               } , { `
`                       name: '刪了！',`
`                       action: 'next',`
`                       } ],`

} , {

`               //20`
`               title: '寫下編輯摘要和儲存',`
`               description: '`
`告訴他們，您「增加內文腳註，標註可靠來源，移除清理模板」。`

`準備好的話，按「儲存」。`

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
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=19&action=edit' `
`               } ],`
`               shouldSkip: function() {`
`                       return gt.isPostEdit();`
`               },`
`               buttons: postEditButtons`

} , {

`               //21`
`               title: '做得好！',`
`               description: '獲得新工具：`<b>`引用者獎章`</b>

<center>

[TWA_badge_12.png](https://zh.wikipedia.org/wiki/File:TWA_badge_12.png "fig:TWA_badge_12.png")

</center>


看！又是這樣！我為您感到自豪——我是說您補充來源的善舉。您覺得呢？希望還好。您應該這樣做，因為您還在學習。您變得越來越好喔！您令我印象深刻。您已經掌握編輯⋯⋯方針⋯⋯溝通⋯⋯參考資料⋯⋯導航⋯⋯等各方面的技能⋯⋯.
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyPage/TWA/Earth' ) + '?tour=twa6&step=20&action=edit' `
`               } , { `
`                       name: '然後呢？？*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/12template2' , mw.util.getUrl( 'Wikipedia:TWA/6/End' ) + '?tour=twa6&step=22'); }`
`               } ],`
`               allowAutomaticOkay: false`

} , {

`               //22`
`               title: '第六關完成！',`
`               description: '`
[<File:MacLeod>`,``   ``Kevin``   ``-``   ``Stringed``   ``Disco``   ``(short).ogg`](https://zh.wikipedia.org/wiki/File:MacLeod,_Kevin_-_Stringed_Disco_\(short\).ogg "fig:File:MacLeod, Kevin - Stringed Disco (short).ogg")
<b>`踏入第七關⋯⋯我們需要您的技能！`</b>`',`
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