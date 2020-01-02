> 本文内容由[MediaWiki:Gadget-removeAccessKeys.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-removeAccessKeys.js)转换而来。


// \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* // \*\* \*\*\*WARNING GLOBAL GADGET FILE\*\*\* \*\* // \*\* changes to this file affect many users. \*\* // \*\* please discuss on the talk page before editing \*\* // \*\* \*\* // \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* // Imported from version as of: 2007-04-17T22:22:27 // Deactivating access keys, see [talk page](https://zh.wikipedia.org/wiki/Wikipedia_talk:WikiProject_User_scripts/Scripts/removeAccessKeys "wikilink")

jQuery( document ).ready( function( $ ) {

`if (mw.config.get('skin') == 'vector') {`
` var head = document.getElementById('mw-head');`
` if(head) removeKeys(head.getElementsByTagName('a'));`
` var panel = document.getElementById('mw-panel');`
` if(panel) removeKeys(panel.getElementsByTagName('a'));`
`} else {`
` var columnOne = document.getElementById('column-one');`
` if (!columnOne) columnOne = document.getElementById('mw_portlets');`
` if (!columnOne) return;`
` removeKeys(columnOne.getElementsByTagName('a'));`
` var cactions = document.getElementById('p-cactions');`
` if(cactions) removeKeys(cactions.getElementsByTagName('a'));`
` var personal = document.getElementById('p-personal');`
` if(personal) removeKeys(personal.getElementsByTagName('a'));`
`}`
`removeKeys(document.getElementsByTagName('input'));`
`removeKeys(document.getElementsByTagName('label'));`

} );

function removeKeys(nodeList){

` var el;`
`   for (var i = 0; i < nodeList.length; i++) {`
`       el = nodeList[i];`
`   if (!el.accessKey) continue;`
`   if (!window.removeAccessKeys || removeAccessKeys.indexOf(el.accessKey) >= 0) {`
`     el.accessKey = ''; // el.setAttribute('accessKey', ''); `
`     $(el).updateTooltipAccessKeys();`
`   }`
` }`

}