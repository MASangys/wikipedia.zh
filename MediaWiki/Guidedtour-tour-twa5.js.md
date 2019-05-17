// The Wikipedia Adventure Mission 5

( function ( window, document, $, mw, gt ) {

//automatic api:edit function to send yourself messages function
sendMessage( targetPage, msgPage, linkTo ) {

`   var api = new mw.Api();`
`   api.post( {`
`       'action' : 'edit',`
`       'title' : targetPage,`
`       'appendtext' : "\n``",`
`       'summary' : '新訊息（`[`維基百科大歷險自動模擬`](https://zh.wikipedia.org/wiki/WP:TWA "wikilink")`5）',`
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

蘇格喇低提出了令我們困惑的問題：我們如何知道維基百科上的信息是否真實？

這是一個特殊的問題——需要一個特殊的地方得到明智的答案。

',

`               overlay: true,`
`               onShow: gt.parseDescription,`
`               buttons: [ {`
`                       name: '查看茶館',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse' ) + '?tour=twa5&step=2'      `
`               } ],`
`       allowAutomaticOkay: false`

`       },  {`
`               //2`
`               title: 'What\'s this Teahouse place?',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

The Teahouse is a social space for asking questions about Wikipedia--and
getting simple, clear answers from smart, welcoming helpers--any time
you need it.

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Start' ) + '?tour=twa5&step=1' `
`               } , { `
`                       name: 'Drink some Tea',`
`                       action:'next',          `
`               } ],`

`               allowAutomaticOkay: false,`
`               `
`       },  {`
`               //3`
`               title: 'Teahouse = Awesome.',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

Asking for help is part of becoming a great editor. There\\'s a lot to
learn here, and lots of people who will lend you a hand.

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
`                      name: 'Share the riddle with Teahouse',`
`                      action: 'next',`
`               } ],     `
`               `
`       },  {`

`               //4`
`               title: 'Ask away!',`
`               description: '`
`Truth and Wikipedia`

`"Hi, I\'m new here and trying to learn more about Wikipedia. I was wondering, how do you know that anything on Wikipedia is *true*?"`

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
`                       name: 'Post it!',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse/1' ) + '?tour=twa5&step=5'`
`                       } ],`

}, {

`               //5`
`               title: 'Asking is Awesome',`
`               description: 'NEW TOOL EARNED:  `<b>`Researcher Badge`</b>

<center>

[TWA_badge_7.png](https://zh.wikipedia.org/wiki/File:TWA_badge_7.png "fig:TWA_badge_7.png")

</center>


Hey, you got a notification that someone replied to your Teahouse
question
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
`                       name: 'Check out the reply',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/Teahouse/2' ) + '?tour=twa5&step=6'`
`                       } ],`
`               allowAutomaticOkay: false,`
`               `
`       },  {`
`               //6`
`               title: 'This is important',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

So, we only write what we can verify in a published source. Not your own
experience, original research, or personal opinions. Just published
info.

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
`                       name: 'Dig into Verifiability*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/7template2' , mw.util.getUrl( 'Wikipedia:TWA/5/V' ) + '?tour=twa5&step=7'); }`
`               } ],      `
`               allowAutomaticOkay: false`

}, {

`               //7`
`               title: 'Challenge yourself BELOW...',`
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
`               title: 'You\'ve got Verifi-ability',`
`               description: 'NEW TOOL EARNED:  `<b>`Verifiability Badge`</b>

<center>

[TWA_badge_8.png](https://zh.wikipedia.org/wiki/File:TWA_badge_8.png "fig:TWA_badge_8.png")

</center>


Let\\'s put this new knowlege to use\!
',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/V' ) + '?tour=twa5&step=7' `
`               } , { `
`                       name: 'Check your messages*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA', 'Wikipedia:TWA/MyTalk/5' , mw.util.getUrl( 'Special:MyTalk/TWA' ) + '?tour=twa5&step=9'); }           `
`               } ],`
`               allowAutomaticOkay: false`

} , {

`               //9`
`               title: 'Seeking sources',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

Let\\'s see what GaiaGirl came up with</br>',

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
`                       name: 'Head to Earth\'s talk page*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User talk:' + mw.config.get( 'wgUserName' ) + '/TWA/Earth', 'Wikipedia:TWA/Earth/Talk/1' , mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=10'); }           `
`               } ],`
`               allowAutomaticOkay: false`
`               `

} , {

`               //10`
`               title: '3 Sources',`
`               description: '`

<div align="left">

[TWA_guide_left_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_left_top.png "fig:TWA_guide_left_top.png")

</div>

It looks like GaiaGirl gave you some options.

Verifiability tells us we want published reliable sources with a
reputation for fact-checking and accuracy. Sources we can rely on.

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
`                       name: 'Which one of these would be best??',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/8template2' , mw.util.getUrl( 'Wikipedia:TWA/5/RS' ) + '?tour=twa5&step=11'); }`
`               } ],      `

`               allowAutomaticOkay: false`

}, {

`               //11`
`               title: 'Challenge yourself BELOW...',`
`               description: 'Hint: you can learn as much from getting it wrong as getting it right.  And you can always try again!',`
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
`               title: 'You\'re getting pretty reliable yourself',`
`               description: 'NEW TOOL EARNED:  `<b>`Sourcer Badge`</b>

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
`                            name: 'Reply to GaiaGirl*',`
`                            onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/9template2' , mw.util.getUrl( 'Wikipedia:TWA/5/Start' ) + '?tour=twa5&step=13'); }`
`               } ],    `
`               allowAutomaticOkay: false`

}, {

`               //13`
`               title: 'What now?',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

Now that we have the source, what do we do with it?

First, let\\'s leave a note on the talk page telling GaiaGirl86 about
our thoughts.

Hmm... what to say?

',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=12' `
`               },{`
`                       name: 'Reply to GaiaGirl',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Wikipedia:TWA/5/Reply' ) + '?tour=twa5&step=14'`
`                       } ],`
`               allowAutomaticOkay: false`

} , {

`               //14`
`               title: 'Challenge yourself BELOW...',`
`               description: 'Hint: you can learn as much from getting it wrong as getting it right.  And you can always try again!',`
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
`               title: 'Reply to GaiaGirl',`
`               description: '`
`Click EDIT SOURCE so you can leave your reply to GaiaGirl`

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
`               title: 'Copy your message at the bottom',`
`               description: '`

<div align="right">

[TWA_guide_right_top.png](https://zh.wikipedia.org/wiki/File:TWA_guide_right_top.png "fig:TWA_guide_right_top.png")

</div>

:Science and Nature Journal looks like a solid and relevant source with
a good reputation. I think we can rely on it more than the others for
this article. Nice research\! \~\~\~\~
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
`                       name: 'Copied',`
`                       action: 'next',`
`                       } ],`

} , {

`               //17`
`               title: 'Edit summary and Save',`
`               description: '`
`How about "Thoughts on a reliable source".  Then click SAVE to make it live.`

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
`               title: 'Rock on!',`
`               description: 'NEW TOOL EARNED:  `<b>`Advisor Badge`</b>

<center>

[TWA_badge_10.png](https://zh.wikipedia.org/wiki/File:TWA_badge_10.png "fig:TWA_badge_10.png")

</center>



I took a look at Earth\\'s talk page and GaiaGirl added some awesome
content. Check it out\!',

`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: '`<big>`←`</big>`',`
`                       action: 'externalLink',`
`                       url: mw.util.getUrl( 'Special:MyTalk/TWA/Earth' ) + '?tour=twa5&step=17&action=edit' `
`               } , {`
`                       name: 'Journey deeper*',`
`                       onclick: function()  {  if(!mw.config.get('wgUserName')){  alert( "Please login." );   return;   } sendMessage( 'User:' + mw.config.get( 'wgUserName' ), 'Wikipedia:TWA/Badge/10template2' , mw.util.getUrl( 'Wikipedia:TWA/5/End' ) + '?tour=twa5&step=19'); }`
`               } ], `
`               allowAutomaticOkay: false`

} , {

`               //19`
`               title: 'Mission 5 complete!',`
`               description: '`
[<File:Northern>`   ``mountains``
 ``(short).ogg`](https://zh.wikipedia.org/wiki/File:Northern_mountains_\(short\).ogg "fig:File:Northern mountains (short).ogg")
<b>`Journey on to mission 6...`</b>`',`
`               onShow: gt.parseDescription,`
`               overlay: false,`
`               closeOnClickOutside: false,`
`               buttons: [ {`
`                       name: 'Congrats me!',`
`                       action: 'end'`
`               } ],`
`               allowAutomaticOkay: false`
`                `

}\]

} );

} (window, document, jQuery, mediaWiki, mediaWiki.guidedTour ) ) ;