/\*

`  本工具可以在編輯段落進行預覽時，把段落的註腳內容在預覽中顯示出來。`

  - /

(function(){

`   var fntagH="<!"+"--", fntagF="--"+">";`

`   $(function(){`
`       var $wpPreview=$("form#editform input#wpPreview");`
`       if($wpPreview.length==0) return;`
`       `
`       $wpPreview.click(function(){`
`           var wpPreview=this,`
`               editform=wpPreview.form;`
`           if(!editform) return;`
`               `
`           var wpTextbox1=editform.wpTextbox1;`
`           if(!wpTextbox1) return;`
`               `
`           var $wpPreview=$(wpPreview),`
`               $editform=$(editform),`
`               $wpTextbox1=$(wpTextbox1);`
`           `
`           //被按下時在表單傳送字串添加fnid參數`
`           var fnid;`
`           do{`
`               fnid=Math.floor(Math.random()*Math.pow(16,10)).toString(16);`
`           }while(wpTextbox1.value.indexOf(fnid)!=-1);`
`           $editform.attr("action", $editform.attr("action").replace(/\&fnid\=[^\&\?\#]*($|\&)/g, "$1").replace(/\?fnid\=[^\&\?\#]*(?:$|\&)/, "?").replace(/\?/,"?fnid="+fnid+"&").replace(/\&$/, "") );`
`           `
`           //判斷時去掉源碼註解`
`           var edittext=wpTextbox1.value;`
`           var cIdxH, cIdxF;`
`           while(edittext.indexOf(fntagH)!=-1){`
`               cIdxH=edittext.indexOf(fntagH);`
`               cIdxF=edittext.substring(cIdxH).indexOf(fntagF);`
`               `
`               if(cIdxF==-1) break;`
`               cIdxF+=cIdxH;`
`               `
`               edittext=edittext.substring(0,cIdxH)+edittext.substring(cIdxF+fntagF.length);`
`           }`
`       `
`           //判斷時去掉nowiki、pre、source、includeonly的內容`
`           var deltags=function(edittext, tagName){`
`               var cIdxH, cIdxF, closetag;`
`               `
`               do{`
`                   cIdxH=edittext.toLowerCase().indexOf("<"+tagName+">");`
`                   if(cIdxH!=-1){`
`                   }else{`
`                       cIdxH=edittext.toLowerCase().indexOf("<"+tagName+" ");`
`                       if(cIdxH!=-1){`
`                       }else{`
`                           break;`
`                       }`
`                   }`
`                   `
`                   if(edittext.substr(edittext.toLowerCase().substring(cIdxH).indexOf(">")-1,2)=="\/>") {`
`                       closetag="\/>";`
`                   }else{`
`                       closetag="<\/"+tagName+">";`
`                   }`
`                   `
`                   cIdxF=edittext.toLowerCase().substring(cIdxH).indexOf(closetag);`
`                   `
`                   if(cIdxF==-1) break;`
`                   cIdxF+=cIdxH;`
`                   `
`                   edittext=edittext.substring(0,cIdxH)+edittext.substring(cIdxF+closetag.length);`
`               }while(true);`
`               `
`               return edittext;`
`           }`
`           `
`           edittext=deltags(edittext, "includeonly");`
`           edittext=deltags(edittext, "nowiki");`
`           edittext=deltags(edittext, "pre");`
`           edittext=deltags(edittext, "source");`
`           `
`           `
`           var refgroups=[];`
`           var addrefgroups=function(groupname){`
`               for(var i=refgroups.length; i-->0; ) if(groupname==refgroups[i]) return;`
`               refgroups[refgroups.length]=groupname;`
`           }`
`           `
`           var delrefgroups=function(groupname){`
`               var temp=[];`
`               for(var i=0; i<refgroups.length; i++){`
`                   if(refgroups[i]!=groupname) temp[temp.length]=refgroups[i];`
`               }`
`               refgroups=temp;`
`           }`
`           `
`           //暫時取走在references裏的註腳`
`           var edittext0=edittext;`
`           edittext=deltags(edittext, "references");`
`           `
`           //擷取各ref的group屬性`
`           var reftag, groupname, ispace, itagend;`
`           `
`           do{`
`               cIdxH=edittext.toLowerCase().indexOf("`<ref>`");`
`               if(cIdxH!=-1){`
`               }else{`
`                   cIdxH=edittext.toLowerCase().indexOf("<ref ");`
`                   if(cIdxH!=-1){`
`                   }else{`
`                       break;`
`                   }`
`               }`
`               `
`               if( (cIdxF=edittext.toLowerCase().substring(cIdxH).indexOf(">")) ==-1) break;`
`               cIdxF+=cIdxH;`
`               `
`               reftag=edittext.substring(cIdxH, cIdxF+1);`
`               `
`               if(reftag.toLowerCase().indexOf("group")==-1){`
`                   addrefgroups(null);`
`               }else{`
`                   if(reftag.toLowerCase().indexOf("group=\"")!=-1){`
`                       groupname=reftag.substring(reftag.toLowerCase().indexOf("group=\"")+7);`
`                       groupname=groupname.substring(0,groupname.indexOf("\""));`
`                   }else if(reftag.toLowerCase().indexOf("group=")!=-1){`
`                       groupname=reftag.substring(reftag.toLowerCase().indexOf("group=")+6);`
`                       ispace=groupname.indexOf(" ");`
`                       itagend=groupname.indexOf(">");`
`                       groupname=groupname.substring(0, (ispace<itagend)?ispace:itagend );`
`                   }else{`
`                       groupname=null;`
`                   }`
`                   `
`                   addrefgroups(groupname);`
`               }`
`               `
`               edittext=edittext.substring(0,cIdxH)+edittext.substring(cIdxF+1);`
`           }while(true);`
`           `
`           var tags=edittext.split("\{\{");`
`           `
`           var i, j;`
`           for(i=tags.length; i-->0; ){`
`               for(j=0; j<tags[i].length; j++){`
`                   if(tags[i].charAt(j)==" " || tags[i].charAt(j)=="\n") continue;`
`                   tags[i]=tags[i].substring(j);`
`                   break;`
`               }`
`           }`
`           `
`           edittext=tags.join("\{\{");`
`           `
`           //擷取各註腳模板`
`           if(edittext.toLowerCase().indexOf("\{\{reftag")!=-1 ) addrefgroups("參");`
`           if(edittext.toLowerCase().indexOf("\{\{notetag")!=-1 ) addrefgroups("註");`
`           `
`           //擷取各\{\{#tag:ref\}\}的group屬性`
`           var delg=0, addg=1;`
`           var useTemplateGroup=function(edittext, tagName, adddel){`
`               var i, j, tags, tlBn;`
`               var ispace, itagend, ipipe, minIdx;`
`               var groupname;`
`               `
`               tags=edittext.split("\{\{"+tagName);`
`               for(i=tags.length; i-->0; ){`
`                   for(j=0; j<tags[i].length; j++){`
`                       if(tags[i].charAt(j)==" " || tags[i].charAt(j)=="\n") continue;`
`                       tags[i]=tags[i].substring(j);`
`                       break;`
`                   }`
`               }`
`               edittext=tags.join("\{\{"+tagName);`
`               `
`               do{`
`                   cIdxH=edittext.toLowerCase().indexOf("\{\{"+tagName+"\}\}");`
`                   if(cIdxH!=-1){`
`                   }else{`
`                       cIdxH=edittext.toLowerCase().indexOf("\{\{"+tagName+"|");`
`                       if(cIdxH!=-1){`
`                       }else{`
`                           break;`
`                       }`
`                   }`
`                   `
`                   tlBn=0;`
`                   groupname=null;`
`                   `
`                   for(var i=cIdxH; i<edittext.length; i++){`
`                       if(edittext.substr(i,2)=="\{\{" ){`
`                           tlBn++;`
`                       }else if(edittext.substr(i,2)=="\}\}" ){`
`                           tlBn--;`
`                           if(tlBn==0) break;`
`                       }`
`                       `
`                       if(tlBn==1 && !groupname){`
`                           if(edittext.toLowerCase().substr(i,6)=="group=" ){`
`                               groupname=edittext.substring(i+6);`
`                               `
`                               ispace=groupname.indexOf(" ");   if(ispace==-1) ispace=Infinity;`
`                               itagend=groupname.indexOf("\}\}"); if(itagend==-1) itagend=Infinity;`
`                               ipipe=groupname.indexOf("|");    if(ipipe==-1) ipipe=Infinity;`
`                               `
`                               minIdx=ispace;`
`                               if(itagend<minIdx) minIdx=itagend;`
`                               if(ipipe<minIdx) minIdx=ipipe;`
`                               `
`                               groupname=groupname.substring(0,minIdx);`
`                           }else if(edittext.toLowerCase().substr(i,2)=="\}\}" ){`
`                               break;`
`                           }`
`                       }`
`                   }`
`                   `
`                   if(adddel==1){`
`                       addrefgroups(groupname);`
`                   }else{`
`                       delrefgroups(groupname);`
`                   }`
`                   `
`                   edittext=edittext.substring(0,cIdxH)+edittext.substring(i+2);`
`               }while(true);`
`               `
`               return edittext;`
`           }`
`           `
`           edittext=useTemplateGroup(edittext, "#tag:ref", addg);`
`           `
`           //擷取各references的group屬性`
`           edittext=deltags(edittext0, "ref");`
`           `
`           do{`
`               cIdxH=edittext.toLowerCase().indexOf("`

<references>

");

`               if( cIdxH!=-1 ){`
`               }else{`
`                   cIdxH=edittext.toLowerCase().indexOf("<references ");`
`                   if(cIdxH!=-1){`
`                   }else{`
`                       break;`
`                   }`
`               }`
`               `
`               if( (cIdxF=edittext.toLowerCase().substring(cIdxH).indexOf(">")) ==-1) break;`
`               cIdxF+=cIdxH;`
`               `
`               reftag=edittext.substring(cIdxH, cIdxF+1);`
`               `
`               if(reftag.toLowerCase().indexOf("group")==-1){`
`                   delrefgroups(null);`
`               }else{`
`                   if(reftag.toLowerCase().indexOf("group=\"")!=-1){`
`                       groupname=reftag.substring(reftag.toLowerCase().indexOf("group=\"")+7);`
`                       groupname=groupname.substring(0,groupname.indexOf("\""));`
`                   }else if(reftag.toLowerCase().indexOf("group=")!=-1){`
`                       groupname=reftag.substring(reftag.toLowerCase().indexOf("group=")+6);`
`                       `
`                       ispace=groupname.indexOf(" ");`
`                       itagend=groupname.indexOf(">");`
`                       groupname=groupname.substring(0, (ispace<itagend)?ispace:itagend );`
`                   }else{`
`                       groupname=null;`
`                   }`
`                   `
`                   delrefgroups(groupname);`
`               }`
`               `
`               edittext=edittext.substring(0,cIdxH)+edittext.substring(cIdxF+1);`
`           }while(true);`
`           `
`           edittext=useTemplateGroup(edittext, "#tag:references", delg);`
`           edittext=useTemplateGroup(edittext, "reflist", delg);`
`           if(edittext.toLowerCase().indexOf("\{\{reffoot")!=-1 ) delrefgroups("參");`
`           if(edittext.toLowerCase().indexOf("\{\{notefoot")!=-1 ) delrefgroups("註");`
`           `
`           //臨時在編輯內容後面加入註腳清單`
`           edittext=wpTextbox1.value;`
`           var footNoteList=function(groupname){`
`               return "\n;以下為"+(groupname===null?"一般":"「"+groupname+"」組")+"的註腳：\n\{\{#tag:references"+(groupname===null?"":"||group="+groupname)+"\}\}";`
`           };`
`           `
`           if(refgroups.length>0){`
`               edittext+=fntagH+fnid+fntagF +fntagH+"\n\/*"+fntagF+"\n`

<div class=\"references-small\" style=\"clear:both\">

\\n=(註腳預覽)=\\n";

`               for(var i=0;i<refgroups.length;i++){`
`                   edittext+=footNoteList(refgroups[i]);`
`               }`
`               edittext+="\n`

</div>

"+fntagH+"\\n\*\\/"+fntagF;

`           }`
`           `
`           var ot=wpTextbox1.value;`
`           var oselst=wpTextbox1.selectionStart;`
`           var oseled=wpTextbox1.selectionEnd;`
`           `
`           $wpTextbox1.css("visibility", "hidden");`
`           wpTextbox1.value=edittext;`
`           `
`           setTimeout(function(){`
`               wpTextbox1.value=ot;`
`               $wpTextbox1.css("visibility", "");`
`               wpTextbox1.selectionStart=oselst;`
`               wpTextbox1.selectionEnd=oseled;`
`           },100);`
`       });`
`   });`
`   `
`   `
`   $(function(){`
`       //預覽後，把臨時註腳清單從源碼中移除`
`       var $wpTextbox1=$("form#editform textarea#wpTextbox1");`
`       if($wpTextbox1.length==0 || !mw.util.getParamValue("fnid")) return;`

`       var wpTextbox1=$wpTextbox1.get(0);`
`       var edittext=wpTextbox1.value;`
`       `
`       if(edittext.indexOf(fntagH+mw.util.getParamValue("fnid")+fntagF)==-1) return;`
`       `
`       wpTextbox1.defaultValue=edittext.substring(0, edittext.indexOf(fntagH+mw.util.getParamValue("fnid")+fntagF));`
`       wpTextbox1.value=wpTextbox1.defaultValue;`
`       `
`   });`
`   `

})();