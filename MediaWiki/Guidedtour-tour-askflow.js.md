> 本文内容由[MediaWiki:Guidedtour-tour-askflow.js](https://zh.wikipedia.org/wiki/MediaWiki:Guidedtour-tour-askflow.js)转换而来。


`   ( function ( window, document, $, mw, gt ) {`

`   // Declare a variable for use later`
`   var pageName = 'Wikipedia:知识问答',`
`       tour;`

`   tour = new gt.TourBuilder( {`
`       /*`
`        * This is the name of the tour.  It must be lowercase, without any hyphen (-) or`
`        * period (.) characters.`
`        *`
`        * The page where you save an on-wiki tour must be named`
`        * MediaWiki:Guidedtour-tour-{name}.js , in this example MediaWiki:Guidedtour-tour-mytest.js`
`        */`
`       name: 'askflow',`
`       shouldLog: true`
`   } );`

`   // Information defining each tour step`

`   // This tour shows a central overlay at the start of the tour.`
`   // Guiders appear in the center if another position is not specified.`
`   // To specify the first step of the tour, use .firstStep instead of .step`
`   if(gt.isPage('Wikipedia:知识问答')){`
`   tour.firstStep( {`
`       name: 'overlay',`
`       // Note that for on-wiki tours, we use title and description with the actual text.`
`       // The title appears in the title bar of the guider.`
`       title: '新版启用！',`

`       // The description appears in the body`
`       description: '`

<div class="floatleft">

<img src="//upload.wikimedia.org/wikipedia/commons/thumb/0/02/Flow_logo_1.svg/32px-Flow_logo_1.svg.png">

</div>

<b>知识问答</b>现已启用了<a href="//zh.wikipedia.org/wiki/Help:Flow">Flow</a>新版，欢迎试用！',

`       // This specifies that there is an overlay behind the guider.`
`       overlay: true,`
`       buttons: [  { action: 'end' , `
`       name: ' 我知道了',`
`       type: 'neutral' },`
`       {`
`           // This makes a button which acts like a wikilink to 'Help:Guided tours/guider'`
`           action: 'wikiLink',`
`           page: 'Wikipedia:知识问答/flow',`
`           name: '试用新版 >>',`
`           // This specifies that the button takes you to the next step of a process,`
`           // which affects its appearance.`
`           type: 'progressive'`
`       }]`
`   } );`
`   }`

// The following should be the last line of your tour. } ( window, document, jQuery, mediaWiki, mediaWiki.guidedTour ) );