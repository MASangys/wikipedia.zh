/\*\*

`* from //en.wikipedia.org/wiki/Wikipedia:RefToolbar/2.0`
`* RefToolbar`
`*`
`* Adds tools for citing references to the edit toolbar.`
`* See `[`Wikipedia:RefToolbar`](https://zh.wikipedia.org/wiki/Wikipedia:RefToolbar "wikilink")` for further documentation. One of two`
`* possible versions will load (Reftoolbar 1.0 or Reftoolbar 1.0)`
`* depending on the user preferences (the usebetatoolbar preference).`
`*`
`* @see: `[`Wikipedia:RefToolbar`](https://zh.wikipedia.org/wiki/Wikipedia:RefToolbar "wikilink")
`* @see: `[`MediaWiki:RefToolbar.js`](https://zh.wikipedia.org/wiki/MediaWiki:RefToolbar.js "wikilink")
`* @see: `[`MediaWiki:RefToolbarConfig.js`](https://zh.wikipedia.org/wiki/MediaWiki:RefToolbarConfig.js "wikilink")
`* @see: `[`MediaWiki:RefToolbarLegacy.js`](https://zh.wikipedia.org/wiki/MediaWiki:RefToolbarLegacy.js "wikilink")
`* @see: `[`MediaWiki:RefToolbarMessages-en.js`](https://zh.wikipedia.org/wiki/MediaWiki:RefToolbarMessages-en.js "wikilink")
`* @see: `[`MediaWiki:RefToolbarMessages-de.js`](https://zh.wikipedia.org/wiki/MediaWiki:RefToolbarMessages-de.js "wikilink")
`* @see: `[`MediaWiki:Gadget-refToolbarBase.js`](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-refToolbarBase.js "wikilink")
`* @author: `[`User:Mr.Z-man`](https://zh.wikipedia.org/wiki/User:Mr.Z-man "wikilink")
`* @author: `[`User:Kaldari`](https://zh.wikipedia.org/wiki/User:Kaldari "wikilink")
`*/`

/\*jshint browser: true, camelcase: true, curly: true, eqeqeq: true \*/
/\*global jQuery, mediaWiki, importScript \*/ ( function ( mw, $ ) {
'use strict'; function initializeRefTools() {

`   if( window.refToolbarInstalled || $( '#wpTextbox1[readonly]' ).length ){`
`       return;`
`   }`
`   if ( mw.user.options.get( 'usebetatoolbar' ) ) {`
`       // Enhanced editing toolbar is on. Going to load RefToolbar 2.0.`
`           $.getScript( '//en.wikipedia.org/w/index.php?title=MediaWiki:Gadget-refToolbarBase.js&action=raw&ctype=text/javascript', function() {`
`               mw.loader.using( [ 'ext.wikiEditor' ], function () {`
`                   mw.loader.load( '//en.wikipedia.org/w/index.php?title=MediaWiki:RefToolbar.js&action=raw&ctype=text/javascript' );`
`               } );`
`           } );`
`   } else if ( mw.user.options.get( 'showtoolbar' ) ) {`
`       // Enhanced editing toolbar is off. Loading RefToolbar 1.0. (legacy)`
`       mw.loader.load( '//en.wikipedia.org/w/index.php?title=MediaWiki:RefToolbarLegacy.js&action=raw&ctype=text/javascript&smaxage=21600&maxage=86400' );`
`   } else {`
`       return;`
`   }`
`   window.refToolbarInstalled = true;`

}

if ( $.inArray( mw.config.get( 'wgAction' ), \[ 'edit', 'submit' \] )
\!== -1 ) {

`   // Double check if user.options is loaded, to prevent errors when copy pasted accross installations`
`   $.when( mw.loader.using( ['user.options'] ), $.ready ).done( initializeRefTools );`

}

}( mediaWiki, jQuery ) );