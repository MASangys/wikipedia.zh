(function($, mw) { mw.loader.using(\[

`   'mediawiki.user', 'mediawiki.util'`

\], function() { jQuery(function() {

`   if (mw.config.get('wgAction') !== 'view') {`
`       return;`
`   }`
`   if (!mw.config.get('wgIsMainPage')) {`
`       return;`
`   }`
`   if (mw.config.get('wgDiffNewId') !== null) { // 差異模式下停用`
`       return;`
`   }`
`   if (mw.config.get('wgRevisionId') !== mw.config.get('wgCurRevisionId')) { // 檢視舊版本停用`
`       return;`
`   }`
`   var timecorrection = mw.user.options.get('timecorrection');`
`   if (timecorrection) {`
`       timecorrection = timecorrection.split('|')[1];`
`   } else {`
`       timecorrection = -(new Date().getTimezoneOffset());`
`   }`
`   timecorrection = parseInt(timecorrection);`
`   if (timecorrection > 0) {`
`       timecorrection = '+' + timecorrection;`
`   } else if (timecorrection == 0) {`
`       return;`
`   }`
`   var content = $('#mw-content-text', mw.util.$content);`
`   var text = '``';`
`   // content.text(text);`
`   $.post(`
`       mw.util.wikiScript('api'),`
`       {`
`           'action': 'parse',`
`           'title': mw.config.get('wgPageName'),`
`           'text': text,`
`           'prop': 'text',`
`           'disablepp': '',`
`           'format': 'json'`
`       },`
`       function(data) {`
`           content.html(data.parse.text['*']);`
`       }`
`   );`

}); }); })(jQuery, mediaWiki);