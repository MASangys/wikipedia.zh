/\*\*

`* DYK Tool`
`* Developer & maintainer: `[`User:PhiLiP`](../Page/User:PhiLiP.md "wikilink")
`*/`

jQuery( document ).ready( function() {

`   var mytitle = 'Wikipedia:新条目推荐/候选';`
`   if (`
`       mw.config.get('wgPageName') != mytitle`
`       || mw.config.get('wgUserGroups').indexOf( 'sysop' ) == -1`
`       || !!mw.util.getParamValue("diff")`
`       || !!mw.util.getParamValue("oldid")`
`   ) {`
`       return false;`
`   }`
`   var $ = jQuery;`
`   $( 'dl.dykentry' ).each( function() {`
`       var hashobj = $( '.dykentry_hash', this );`
`       var hash = hashobj.text();`

`       var img = $( 'dd:first img', this );`
`       if ( hash ) {`
`           $( '`<a class="dykentry_accept" href="#">`' + wgUVS( '通过', '通過' ) + '`</a>` \`
`                `<a class="dykentry_quickpass" href="#">`' + wgUVS( '优先通过', '優先通過' ) + '`</a>`\`
`                `<a class="dykentry_deny" href="#">`' + wgUVS( '拒绝', '拒絕' ) + '`</a>`\`
`                `<a class="dykentry_remove" href="#">`' + wgUVS( '尽快移除', '盡快移除' ) + '`</a>`\`
`                `<a class="dykentry_holdon" href="#">`' + wgUVS( '机器忽略', '機器忽略' ) + '`</a>`' ).insertAfter( hashobj );`
`           $( 'a[class^=dykentry_]', $( this ) ).each( function() {`
`               $( this ).click( function() {`
`                   var me = $( this );`
`                   var classname = me.attr( 'class' );`

`                   var reason = '';`
`                   if ( classname == 'dykentry_deny' || classname == 'dykentry_remove' ) {`
`                       var defaultreason = '7天仍不足4票支持';`
`                       reason = window.prompt( wgUVS( '拒绝原因', '拒絕原因' ) , defaultreason );`
`                       if ( reason==null ) return false;`
`                       if ( reason==defaultreason ) reason='';`
`                   }`

`                   var hash = $( '.dykentry_hash', me.parent() ).text();`
`                   var dd = $( 'dd:first', me.parentsUntil( 'li' ) );`
`                   var loading = $( '`<img src="data:image/gif;base64,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"/>`' ).prependTo( dd );`
`                   var resulthash = function(){`
`                       switch(classname){`
`                           case 'dykentry_accept':`
`                               return '+';`
`                           case 'dykentry_deny':`
`                               return '-';`
`                           case 'dykentry_holdon':`
`                               return '-';`
`                           case 'dykentry_quickpass':`
`                               return '*';`
`                           case 'dykentry_remove':`
`                               return '!';`
`                       }`
`                   };`
`                   resulthash = resulthash() + '\|' + hash;`
`                   var comment = resulthash + '\|' + ( (classname=='dykentry_holdon') ? '0' : ('\{\{subst' + ':#time:U\}\}') ) ;`
`                   $( 'a[class^=dykentry_]' ).css("visibility", "hidden");`
`                   $.post( '/w/api.php',`
`                       {action : 'query', prop : 'revisions', format: 'json',`
`                        titles: mytitle, rvprop : 'content|timestamp'},`
`                       function( data ) {`
`                           var content = '';`
`                           var timestamp = '';`
`                           var startts = '';`
`                           var edittoken = '';`
`                           var pageid = '';`
`                           var articlename='';`
`                           for ( pageid in data.query.pages ) {`
`                               timestamp = data.query.pages[pageid].revisions[0].timestamp;`
`                               content = data.query.pages[pageid].revisions[0]['*'];`
`                               break;`
`                           }`
`                           var parts = content.split( /\{\{\s*DYKEntry/i );`
`                           for ( var i = 0; i < parts.length; i ++ ) {`
`                               if ( parts[i].indexOf( hash ) != -1 ) {`
`                                   articlename = parts[i].replace( /(?:\n|.)*\|\s*article\s*\= *([\S ]*)(?:\n|.)*/m , '$1');`
`                                   parts[i] = parts[i]`
`                                       .replace( /\s*?\|\s*x\-approved\-by\s*\=.*?\n/, "\n")`
`                                       .replace( /(\|\s*result\s*\=).*\n/, '$1 ' + comment + '\n');`

`                                   if( reason.length>0 ) parts[i] = parts[i].replace( /\s*((\={4} *\={4}\s*\{\{\s*DYKCsplit\s*\}\}\s*)*(\={3} *\d{1,2}月\d{1,2}日 *\={3}\s*)?(\={4} *\={4}\s*)?)?$/ , '\n*:\{\{已取消\}\}，' + reason + ( reason.charAt(reason.length-1)=='。'?'':'。' ) + '--~~\~~\n\n$1' );`

`                                   break;`
`                               }`
`                           }`
`                           var content = parts.join( '\{\{ DYKEntry' );`
`                           `
`                           $.post( '/w/api.php',`
`                               {action : 'query', prop : 'info', titles : mytitle,`
`                                intoken : 'edit', format : 'json'},`
`                               function( data ) {`
`                                   startts = data.query.pages[pageid].starttimestamp;`
`                                   edittoken = data.query.pages[pageid].edittoken;`
`                                   `
`                                   $.post ( '/w/api.php',`
`                                       {action : 'edit', title : mytitle, text : content,`
`                                        token : edittoken, summary : resulthash + ' \/'+'*'+articlename+'*'+'\/(dyktool)', format : 'json',`
`                                        basetimestamp : timestamp, starttimestamp : startts},`
`                                       function( data ) {`
`                                           loading.remove();`
`                                           $( 'a[class^=dykentry_]' ).css("visibility", "");`
`                                           if ( classname == 'dykentry_accept' || classname == 'dykentry_quickpass' ) {`
`                                               dd.prepend( $( '`<a href="/wiki/File:Yes_check.svg" class="image" title="是"><img alt="是" src="//upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Yes_check.svg/15px-Yes_check.svg.png" height="15" width="15"></a>`' ) );`
`                                           } else {`
`                                               dd.prepend( $( '`<a href="/wiki/File:X_mark.svg" class="image" title="否"><img alt="否" src="//upload.wikimedia.org/wikipedia/commons/thumb/a/a2/X_mark.svg/15px-X_mark.svg.png" height="17" width="15"></a>`' ) );`
`                                           }`
`                                       }, 'json' );`
`                               }, 'json' );`
`                           `
`                       }, 'json' );`
`                   return false;`
`               } );`
`           } );`
`       }`
`   } );`

} );