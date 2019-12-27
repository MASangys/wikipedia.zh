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
`* @see: `[`MediaWiki:RefToolbar.js`](../Page/MediaWiki:RefToolbar.js.md "wikilink")
`* @see: `[`MediaWiki:RefToolbarConfig.js`](../Page/MediaWiki:RefToolbarConfig.js.md "wikilink")
`* @see: `[`MediaWiki:RefToolbarLegacy.js`](../Page/MediaWiki:RefToolbarLegacy.js.md "wikilink")
`* @see: `[`MediaWiki:RefToolbarMessages-en.js`](../Page/MediaWiki:RefToolbarMessages-en.js.md "wikilink")
`* @see: `[`MediaWiki:RefToolbarMessages-de.js`](../Page/MediaWiki:RefToolbarMessages-de.js.md "wikilink")
`* @see: `[`MediaWiki:Gadget-refToolbarBase.js`](../Page/MediaWiki:Gadget-refToolbarBase.js.md "wikilink")
`* @author: `[`User:Mr.Z-man`](../Page/User:Mr.Z-man.md "wikilink")
`* @author: `[`User:Kaldari`](../Page/User:Kaldari.md "wikilink")
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