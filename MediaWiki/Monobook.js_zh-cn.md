/\* 请与[MediaWiki:Common.js保持协调一致](https://zh.wikipedia.org/wiki/MediaWiki:Common.js "wikilink")

### 語言地區下拉菜單

  - /

/\*\*

`*語言改為下拉菜單`
`*`
`* @author: zh:user:fdcn`
`*`
`*/`

JSConfig.toggleAdjustLan=true;//設置開關 onloadFuncts.push(function(){

`   if(!JSConfig.toggleAdjustLan||is_safari||is_opera){return;}`
`   var title=wgULS('点选此标签，可以不影响原始文件，自动转换成你所熟悉的中文语系。',`
`               '點選此標籤，可以不影響原始文件，自動轉換成您所熟悉的中文語系。');`

`   var varitab=document.getElementById('p-cactions').getElementsByTagName("li");`
`   var ul=varitab[0].parentNode;`
`   var lans=[];`
`   var lanli,currLanText;`
`   for(var i = 0; lanli=varitab[i]; i++){`
`       if(lanli.id.substr(0,11)!='ca-varlang-'){continue;}//測量ca-varlang `
`       if (lanli.className=="selected") {`
`           lanli.className=null;`
`           currLanText=lanli.firstChild.firstChild.data;`
`       }`
`       lans.push(lanli);`
`   }`
`   var menu=createElement("ul",lans);`
`   var varlang=createElement("li", [currLanText+"▼",menu], {'id':"ca-varlang",'title':title} );`
`   ul.appendChild(varlang);`
`   if( !window.XMLHttpRequest && document.all ){//ie6及以下的补丁`
`       menu.style.marginLeft="1.6em";`
`       varlang.onmouseover=function(){varlang.style.zIndex=3;menu.style.display="block";}`
`       varlang.onmouseout=function(){varlang.style.zIndex=0;menu.style.display="none";}`
`   }`

});