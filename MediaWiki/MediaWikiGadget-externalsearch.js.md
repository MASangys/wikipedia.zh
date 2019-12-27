/\*

## [Special:Search其他搜尋引擎連結表單](../Page/Special:Search.md "wikilink")

  - /

/\*\* Change Special:Search to use a drop-down menu
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

` *`
` *  Description: Change Special:Search to use a drop-down menu, with the default being`
` *               the internal MediaWiki engine`
` *  Created and maintained by: `[`en:User:Gracenotes`](../Page/en:User:Gracenotes.md "wikilink")
` */`

function SpecialSearchEnhanced() {

`   var createOption = function(site, action, mainQ, addQ, addV) {`
`       var opt = document.createElement('option');`
`       opt.appendChild(document.createTextNode(site));`
`       window.searchEngines.push([action, mainQ, addQ, addV]);`
`       return opt;`
`   }`

`   if (document.forms.powersearch)`
`       var searchForm = document.forms.powersearch;`
`   if (document.forms.search)`
`       var searchForm = document.forms.search;`

`   if (searchForm.lsearchbox) {`
`       var searchBox = searchForm.lsearchbox;`
`   } else {`
`       var searchBox = searchForm.search;`
`   }`
`   var selectBox = document.createElement('select');`
`   selectBox.id = 'searchEngine';`
`   searchForm.onsubmit = function() {`
`       var optSelected = window.searchEngines[document.getElementById('searchEngine').selectedIndex];`
`       searchForm.action = optSelected[0];`
`       searchBox.name = optSelected[1];`
`       searchForm.title.value = optSelected[3];`
`       searchForm.title.name = optSelected[2];`
`   }`
`   selectBox.appendChild(createOption(wgULS("中文维基百科", "中文維基百科"), mw.config.get( 'wgScript' ), 'search', 'title', 'Special:Search'));`
`   selectBox.appendChild(createOption('Google', '`<http://www.google.com/search>`', 'q', 'sitesearch', 'zh.wikipedia.org'));`
`   selectBox.appendChild(createOption('Yahoo', '`<http://search.yahoo.com/search>`', 'p', 'vs', 'zh.wikipedia.org'));`
`   selectBox.appendChild(createOption('Yahoo香港', '`<http://hk.search.yahoo.com/search>`', 'p', 'vs', 'zh.wikipedia.org'));`
`   selectBox.appendChild(createOption('Yahoo奇摩', '`<http://tw.search.yahoo.com/search>`', 'p', 'vs', 'zh.wikipedia.org'));`
`   selectBox.appendChild(createOption('Yahoo Singapore', '`<http://sg.search.yahoo.com/search>`', 'p', 'vs', 'zh.wikipedia.org'));`
`   selectBox.appendChild(createOption('Bing', '`<http://www.bing.com/search>`', 'q', 'q1', 'site:`<http://zh.wikipedia.org>`'));`
`   selectBox.appendChild(createOption('Wikiwix', '`<http://www.wikiwix.com/>`', 'action', 'lang', 'zh'));`
`   selectBox.appendChild(createOption(wgULS("中文系维基跨项目搜索", "中文系維基跨計劃搜尋"), '`<http://www.google.com/cse>`', 'q', 'cx', '009212467671870524522:mw9ug06rtl4'));`
`   selectBox.appendChild(createOption(wgULS("中文维基媒体搜索", "中文維基媒體搜尋"), '`<http://www.google.com/cse>`', 'q', 'cx', '012948615710733534834:sce7kigca9g'));`
`   searchBox.style.marginLeft = '0px';`
`   if (document.getElementById('loadStatus')) {`
`       var lStat = document.getElementById('loadStatus');`
`   } else {`
`       var lStat = searchForm.title;`
`       if( typeof lStat === 'object'  && typeof lStat.length === 'number' ) lStat = lStat[0];`
`   }`
`   lStat.parentNode.insertBefore(selectBox, lStat);`

}

window.searchEngines = \[\];

// Script is specific to Special:Search if ( mw.config.get(
'wgCanonicalSpecialPageName' ) === 'Search'){

` $(SpecialSearchEnhanced);`

}