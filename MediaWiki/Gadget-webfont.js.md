> 本文内容由[MediaWiki:Gadget-webfont.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-webfont.js)转换而来。


//使用方法参考 <http://glyphwiki.org/wiki/GlyphWiki:%E3%81%A9%E3%81%86%E3%82%84%E3%81%A3%E3%81%A6%E4%BD%BF%E3%81%86%E3%81%AE%E3%81%8B> //2012-09-11

if ($('div\#content').find('span\#glyphwebfont').length || $('div\#content').find('span\#glyphwebfont-one').length){

`   var glyphwikiurls = $.map( $('span#glyphwebfont'), function (elem) {`
`       if ($(elem).attr("class") !== undefined) {`
`           return '`<https://tools.wmflabs.org/zhnotofu/webfont.php?wf=>`' + $(elem).attr("class");`
`       } `
`   });`
`   var glyphwikiurl = $.map( $('span#glyphwebfont-one'), function (elem) {`
`       if ($(elem).attr("class") !== undefined) {`
`           return '`<https://tools.wmflabs.org/zhnotofu/webfont.php?wf1=>`' + $(elem).attr("class");`
`       } `
`   });`
`//console.log( glyphwikiurl );`

`   if (glyphwikiurl.length || glyphwikiurls.length) {`
`       total = glyphwikiurls.concat(glyphwikiurl);`
`//console.log( total );`
`       window.WebFontConfig = {`
`           custom: {`
`               urls: total`
`           }`
`       };`
`       // importScript('MediaWiki:Gadget-webfontloader.js');`
`  mw.loader.load('`<https://tools-static.wmflabs.org/cdnjs/ajax/libs/webfont/1.6.24/webfontloader.js>`');`
`   }`
`  //去重 `
`   var glyphmap = {};`
`   $("span#glyphwebfont").each(function(){`
`       var value = $(this).attr("class");`
`       if (!glyphmap[value]){`
`           glyphmap[value] = true;`
`   //  } else {`
`   //      $(this).remove();`
`       }`
`   });`
`   `
`   //支持标题`
`   mw.util.addCSS( '.mw-body h1, .mw-body-content h1, .mw-body-content h2 { font-family: "Linux Libertine", Georgia, Times, serif, ' + Object.keys(glyphmap).join(",") + '; }' );`
`   //支持全页`
`   mw.util.addCSS( 'html, body { font-family: sans-serif,' + Object.keys(glyphmap).join(",") + '; }' );`
`   `
`   //移动版标题`
`   if (mw.config.get( 'skin' ) === "minerva"){`
`       mw.util.addCSS( '.pre-content h1, .content h1, .content h2 { font-family: "Linux Libertine", Georgia, Times, serif, ' + Object.keys(glyphmap).join(",") + '; }' );`
`   }`
`   `

}