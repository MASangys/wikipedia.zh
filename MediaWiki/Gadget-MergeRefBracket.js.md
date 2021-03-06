/\*

` 本小工具可以將連續出現的`<ref>`標籤由分開幾對括號數字組合成一對括號包含多個數字`
` 如： [1][2][4][7] 變成 [1,2,4,7]`

  - /

window.mergeRefBracket=function(){

` // Helper function to move DOM element`
`function elementMoveto( node, refNode, pos ) {`
`   if(node && refNode){`
`       var parent=refNode.parentNode;`
`       if (pos && pos=='after') { refNode=refNode.nextSibling; }`
`       try {`
`           parent.insertBefore( node, refNode );`
`       } catch ( DOMException ) {};`
`   }`
`}`

`var i, j;`

`//擷取所有`<sups>
`var sups=new Array();`
`i=document.getElementById("content").getElementsByTagName("sup").length;`
`while(i-->0){`
` sups.push(document.getElementById("content").getElementsByTagName("sup")[i]);`
`}`

`function isRefSup(suptag){   //判斷是否為`<ref>`所產生的`<sup>
` if(!suptag) return false;`

` if((""+suptag.id).indexOf("cite_ref")==0 && suptag.className=="reference")`
` if(suptag.childNodes.length==1)`
` if((""+suptag.childNodes[0].tagName).toLowerCase()=="a")`
` if((""+suptag.childNodes[0].href).indexOf("#cite_note-")!=-1)`
` if(suptag.childNodes[0].childNodes.length==1)`
` if((""+suptag.childNodes[0].childNodes[0].nodeName).toLowerCase()=="#text")`
` if(suptag.childNodes[0].childNodes[0].nodeValue.indexOf("[")==0)`
`  return true;`

` if((""+suptag.tagName).toLowerCase()=="span")`
` if(suptag.id=="refTag-cite_ref-sup" || suptag.id=="noteTag-cite_ref-sup")`
` if(suptag.childNodes.length==1)`
`  return isRefSup(suptag.childNodes[0]);`

` return false;`
`}`

`function getGroup(suptag){   //擷取`<ref>`的group文字`
` var temp=suptag.childNodes[0].childNodes[0].nodeValue.split(" ");`

` if(temp.length<2) return "";`

` temp.length-=1;`
` return temp.join(" ").substring(1);`
`}`

`function getNumber(suptag){   //擷取`<ref>`的序號`
` var temp=suptag.childNodes[0].childNodes[0].nodeValue.split(" ");`
` var num=temp[temp.length-1];`

` for(var i=0; i<num.length; i++){`
`  if(!isNaN(num.charAt(i))) break;`
` }`

` return num.substring(i, num.length-1);`
`}`

`function compareStr(a,b){   //比較字串`
` a=""+a;`
` b=""+b;`

` if(a==b) return 0;`

` if(a.length>b.length) return 1;`
` if(a.length<b.length) return -1;`

` for(var i=0; i<a.length; i++){`
`  if(a.charCodeAt(i)>b.charCodeAt(i) ) return 1;`
`  if(a.charCodeAt(i)<b.charCodeAt(i) ) return -1;`
` }`

` return 0;`
`}`

`var cursup, curGroup, curNum;`

`var tags=new Array();`
`var groups=new Array();`
`var groupIndex;`

`var posSpan, addpos, nextSibling, moveobj;`

`//開始處理`
`while(sups.length>0){`
` cursup=sups.pop();`

` //把各`<sup>`歸類`
` if(isRefSup(cursup)){`
`  curGroup=(cursup.group_name=getGroup(cursup));`
`  curNum=getNumber(cursup);`

`  for(groupIndex=groups.length; groupIndex-->0; ){`
`   if(curGroup==groups[groupIndex]) break;`
`  }`
`  if(groupIndex<0){`
`   groupIndex=groups.push(curGroup)-1;`
`   tags.push(new Array());`
`  }`

`  for(i=tags[groupIndex].length; i-->0; ){`
`   if(compareStr(curNum, getNumber(tags[groupIndex][i]))>0 ) break;`
`  }`
`  tags[groupIndex].splice(i+1, 0, cursup);`
` }`

` //檢查連串是否已結束`

` //相容`[`Template:RefTag和`](https://zh.wikipedia.org/wiki/Template:RefTag "wikilink")[`Template:noteTag`](https://zh.wikipedia.org/wiki/Template:noteTag "wikilink")
` nextSibling=cursup.nextSibling;`
` if(!nextSibling){`
`  if(cursup.parentNode.tagName.toLowerCase()=="span")`
`  if(cursup.parentNode.childNodes.length==1)`
`  if(cursup.parentNode.id=="refTag-cite_ref-sup" || cursup.parentNode.id=="noteTag-cite_ref-sup"){`
`   nextSibling=cursup.parentNode.nextSibling;`
`  }`
` }`

` if(!isRefSup(nextSibling)){ //如已結束`
`  //開始合併各註標`

`  //決定擺放位置`
`  posSpan=document.createElement("span", "");`
`  addpos=cursup;`

`  if((""+cursup.parentNode.tagName).toLowerCase()=="span")`
`  if(cursup.parentNode.childNodes.length==1)`
`  if(cursup.parentNode.id=="refTag-cite_ref-sup" || cursup.parentNode.id=="noteTag-cite_ref-sup"){`
`   addpos=cursup.parentNode;`
`  }`

`  elementMoveto(posSpan, addpos, "before");`

`  //調整文字`
`  for(i=groups.length; i-->0; ){`
`   for(j=tags[i].length; j-->0; ){`
`    tags[i][j].childNodes[0].childNodes[0].nodeValue=getNumber(tags[i][j]);`

`    if(j==tags[i].length-1){`
`     tags[i][j].childNodes[0].childNodes[0].nodeValue+="]";`
`    }else{`
`     tags[i][j].childNodes[0].childNodes[0].nodeValue+=",";`
`    }`

`    if(j==0){`
`     if(!!groups[i]){`
`      tags[i][j].childNodes[0].childNodes[0].nodeValue=groups[i]+" "+tags[i][j].childNodes[0].childNodes[0].nodeValue;`
`     }`
`     tags[i][j].childNodes[0].childNodes[0].nodeValue="["+tags[i][j].childNodes[0].childNodes[0].nodeValue;`
`    }`

`    //重組各標籤`
`    moveobj=tags[i][j];`

`    if((""+tags[i][j].parentNode.tagName).toLowerCase()=="span")`
`    if(tags[i][j].parentNode.childNodes.length==1)`
`    if(tags[i][j].parentNode.id=="refTag-cite_ref-sup" || tags[i][j].parentNode.id=="noteTag-cite_ref-sup"){`
`     moveobj=tags[i][j].parentNode;`
`    }`

`    elementMoveto(moveobj, posSpan, "after");`
`   }`
`  }`

`  posSpan.parentNode.removeChild(posSpan);`

`  tags=new Array();`
`  groups=new Array();`
` } `
`}`
`//處理完成`

`window.mergeRefBracket=function(){};`

}

window.load_Merge_Simplify=function(){

`if( (""+(typeof window.mergeRefBracket)).toLowerCase()=="function") window.mergeRefBracket();`
`if( (""+(typeof window.simplifyRefNotesTag)).toLowerCase()=="function") window.simplifyRefNotesTag();`

`window.load_Merge_Simplify=function(){};`

}

$( function(){

`if(mw.config.get("wgNamespaceNumber")<0)return;`
`window.load_Merge_Simplify();`

});