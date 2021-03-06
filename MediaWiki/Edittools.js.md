> 本文内容由[MediaWiki:Edittools.js](https://zh.wikipedia.org/wiki/MediaWiki:Edittools.js)转换而来。


//加載本腳本時，請預先判斷/w/skins/common/edit.js已加載。

/\*\*

`mwCustomEditButtons数组对象　包含所有按钮項、下拉工具列表項、相关方法`
`@method indexOf 獲得指定項或指定ID的項在mwCustomEditButtons中的索引`
`@method insert 插入指定項`
`@method remove 刪除指定項或指定ID、index的項`
`@method getInsertAction 返回一个钩子函数 (action可以設成'line'表示默認的行模式插入)`
`*/`

if(mwCustomEditButtons.length\>0){mwCustomEditButtons=\[\];} mwCustomEditButtons.state="normal"; mwCustomEditButtons.indexOf=function(item){

`   var item=typeof item=='string'?mwCustomEditButtons[item]:item;`
`   for(var i=mwCustomEditButtons.length;i>0;i--){`
`       if(mwCustomEditButtons[i-1]==item){return i-1;}`
`   }`
`   return -1;`

} mwCustomEditButtons.insert=function(item,ref,pos){

`   if(!ref){mwCustomEditButtons.push(item);}`
`   else{`
`       ref=typeof ref=='number'?ref:mwCustomEditButtons.indexOf(ref);`
`       if(ref>-1){`
`           ref+=pos=='after'?1:0;`
`           mwCustomEditButtons.splice(ref,0,item);`
`       }`
`   }`
`   if(!mwCustomEditButtons[item.id]){mwCustomEditButtons[item.id]=item;}`

} mwCustomEditButtons.remove=function(index){

`   if(typeof index != 'number'){index=mwCustomEditButtons.indexOf(index);}`
`   if(index>-1){`
`       var id=mwCustomEditButtons[index].id;`
`       delete mwCustomEditButtons[id];`
`       return mwCustomEditButtons.splice(index,1);`
`   }`
`   return null;`

}

function createElement(tag, children, props) {

` var element = document.createElement(tag);`
` if (!(children instanceof Array)) {`
`   children = [children];`
` }`
` applyEach(function (child) {`
`   if (typeof child == 'string') {`
`     child = document.createTextNode(child);`
`   }`
`   if (child) {`
`     element.appendChild(child);`
`   }`
` }, children);`
` if (typeof props == 'object') {`
`   for (var k in props) {`
`     switch (k) {`
`     case 'styles':`
`       var styles = props.styles;`
`       for (var s in styles) {`
`         element.style[s] = styles[s];`
`       }`
`       break;`
`     case 'events':`
`       var events = props.events;`
`       for (var e in events) {`
`         addHandler(element, e, events[e]);`
`       }`
`       break;`
`     case 'class':`
`       element.className = props[k];`
`       break;`
`     default:`
`       element.setAttribute(k, props[k]);`
`     }`
`   }`
` }`
` return element;`

};

/\*\*

`插入光标所在的分段前后`
`sectReg 分段的正则表达式`
`author & maintainer : fdcn@zhwiki`
`*/`

function insertSect(sectReg,pre,post){

`   var txtarea = document.editform.wpTextbox1;`
`   insertTags('`<sectins>`','`</sectins>`','');`
`   var reg=/`<sectins>`<\/sectins>/g;`
`   var scrollTop = txtarea.scrollTop;`
`   var text=txtarea.value;`

`   var index=-1;`
`   text=text.replace(reg,function(m,i){index=i;return '';});`
`   if(index>-1){`
`       sectReg.lastIndex=0;                `
`       var currentIndex=0,startIndex=0,endIndex=0;`
`       while(true){`
`           var item= sectReg.exec(text);`
`           if(!item){`
`               endIndex=text.length;`
`               break;`
`           }`
`           currentIndex=item.index;`
`           if(currentIndex<index){`
`               startIndex=sectReg.lastIndex;`
`               continue;`
`           }else{`
`               endIndex=currentIndex;`
`               break;`
`           }`
`       }`
`       txtarea.value=text.substring(0, startIndex)+pre+text.substring(startIndex,endIndex)+post+text.substr(endIndex);`
`   }else{`
`       txtarea.value=text.replace(/`<sectins>`/g,pre).replace(/<\/sectins>/g,post);`
`   }`
`   txtarea.scrollTop = scrollTop;`

}

/\*\*

`插入光标所在的行前后`
`@para isMultiLine 是否应用于每一行前后`
`* author & maintainer : fdcn@zhwiki`
`*/`

function insertLine(pre,sampletext,post,isMultiLine){

`   var txtarea = document.editform.wpTextbox1;`
`   var scrollTop = txtarea.scrollTop;`
`   insertTags('`<sectins>`','`</sectins>`','');`
`   var text=txtarea.value`
`       .replace(/\r/g,"")`
`       .replace(/^(.*)`<sectins>`/m,'`<sectins>`$1')`
`       .replace(/<\/sectins>(.*)$/m,'$1<\/sectins>')`
`       .replace(/`<sectins>` *<\/sectins>/,'`<sectins>`'+sampletext+'<\/sectins>');`
`   if(/`<sectins>`((?:a|[^a])*)<\/sectins>/.exec(text)){`
`       var leftContext=RegExp.leftContext;`
`       var rightContext =RegExp.rightContext ;`
`       var matchContext=   isMultiLine`
`           ? RegExp.$1.replace(/$/mg,'<endline\/>').replace(/^/mg,pre).replace(/<endline\/>/g,post)`
`           : pre+RegExp.$1+post;`
`   }`
`   txtarea.value=leftContext+matchContext+rightContext;`

`   //IE`
`   if (document.selection) {`
`       var range=txtarea.createTextRange();`
`       var searchText=matchContext.replace(/\n.*/g,'');`
`       range.findText(searchText);`
`       range.select();`
`   // Mozilla`
`   }else if(txtarea.selectionStart || txtarea.selectionStart == '0') {`
`       txtarea.selectionStart = leftContext.length;`
`       txtarea.selectionEnd = txtarea.selectionStart +matchContext.length;`
`       txtarea.scrollTop = scrollTop;`
`   }`
`   // reposition cursor if possible`
`   if (txtarea.createTextRange) {`
`       txtarea.caretPos = document.selection.createRange().duplicate();`
`   }`

}

/\*\*

`取得編輯动作`
`*/`

function getInsertAction(action,tagOpen,sampleText,tagClose){

`   if (action=='lineInsert') {`
`       return function(){insertLine(tagOpen, sampleText, tagClose, true);}`
`   }`
`   if (action=='none') { return function(){}; }`
`   return (typeof action=='function') ? action : function(){insertTags(tagOpen, tagClose ,sampleText);}`

}

/\*\*

`创建一个图像按钮`
`返回一个对象，包含该选单的id、img元素、`
`*/`

function createEditButton(id,attrs){

`   var action = attrs.action || 'defaultAction';`
`   var image = createElement("IMG",null,{`
`       'id'    :id,`
`       'width' :attrs.width||23,`
`       'height':22,`
`       'class' :"mw-toolbar-editbutton",`
`       'src'   :"//upload.wikimedia.org/wikipedia/commons/" + attrs.src,`
`       'border':0,`
`       'alt'   :attrs.speedTip,`
`       'title' :attrs.speedTip,`
`       'styles':{'cursor': "pointer" },`
`       'events':{'click' : getInsertAction(action,attrs.tagOpen,attrs.sampleText,attrs.tagClose) }`
`   });`
`   var button={`
`       'element': image,`
`       'id'     : id,`
`       'type'   : 'button'`
`   };`
`   return button;`

}

/\*\*

`创建一个下拉选单`
`返回一个对象，包含该选单的id、select元素、增加项目方法、删除项目方法`
`*/`

function createDropdownMenu(id,title,attrs){

`   /**`
`    增加一个选单项`
`    参数为该选单项的 （显示文字、值、前缀、示例文字、后缀、摘要文字、是否小修改、选单项动作）`
`    默认动作是insertTags`
`    */`
`   function add(text,value,tagOpen,sampleText,tagClose,summary,minor,action){`
`       jQuery(document).trigger('edittoolsDropdownMenuAdd', [id,title,attrs,text,value,tagOpen,sampleText,tagClose,summary,minor,action]);`
`       var option;`
`       if(typeof value=="string"){`
`           tagOpen=tagOpen||'';`
`           sampleText=sampleText||'';`
`           tagClose=tagClose||'';`
`           dropMenu.actions[value]=getInsertAction(action,tagOpen,sampleText,tagClose);`
`           dropMenu.summary[value]=summary||'';`
`           dropMenu.minor[value]=!!minor;`
`           option=new Option(text,value);`
`       }`
`       else {option=new Option(text,text);}`
`       return menu.options[menu.options.length]=option;`
`   }`

`   attrs=typeof attrs=="object"?attrs:{};`
`   attrs.size=attrs.size||1;`
`   attrs.id=id;`
`   var menu=createElement("select",null,attrs);`
`   add(title);`

`   menu.onchange=function(){`
`       var form = document.getElementById('editform');`
`       var key=menu.options[menu.selectedIndex].value;`
`       var summary=dropMenu.summary[key];`
`       if(summary){form.wpSummary.value += ' '+summary;}`
`       var minor= dropMenu.minor[key];`
`       if(minor){form.wpMinoredit.checked = minor;}`
`       menu.selectedIndex=0;`
`       dropMenu.actions[key]();`
`   }`

`   var dropMenu={`
`       'id':id,`
`       'element':menu,`
`       'type':'dropdown',`
`       'actions':{},`
`       'summary':{},`
`       'minor':{},`
`       'add':add,`
`       'remove':function(value){`
`           if(typeof value=='number'){return menu.remove(value);}`
`           if(typeof value=='string'){`
`               for(var i=0;i<menu.options.length;i++){`
`                   if(menu.options[i].value==value){return menu.remove(i);}`
`               }`
`           }`
`           if(typeof value=='object'){`
`               for(var i=0;i<menu.options.length;i++){`
`                   if(menu.options[i]==value){return menu.remove(i);}`
`               }`
`           }`
`           return false;`
`       }`
`   };`
`   return dropMenu;`

}

function checkExistEditID(id){

`   if(mwCustomEditButtons[id]){`
`       id+="_r";`
`       mwCustomEditButtons.state="rID";`
`   }`
`   return id;`

}

if( window.jQuery ){ //加入按鈕; jQuery(document).on('edittoolsAddEditButton', function(event, id, attrs) {

`   id=checkExistEditID(id);`
`   var button=createEditButton(id,attrs);`
`   mwCustomEditButtons.insert(button);`
`   return button;`

});

//加入下拉菜單 jQuery(document).on('edittoolsAddDropdownMenu', function(event, id, text, options, attrs) {

`   id=checkExistEditID(id);`
`   var menu=createDropdownMenu(id,text,attrs);`
`   var option;`
`   for (var i=0;option=options[i];i++){`
`       menu.add(`
`           option.text,option.id,`
`           option.tagOpen,option.sampleText,option.tagClose,`
`           option.summary,option.minor,`
`           option.action||'defaultAction'`
`       );`
`   }`
`   mwCustomEditButtons.insert(menu);`
`   return menu;`

});

function addDropdownMenu(id, text, options, attrs) {

`   jQuery(document).trigger('edittoolsAddDropdownMenu', [id, text, options, attrs]);`

}

function addEditButton(id, attrs) {

`   jQuery(document).trigger('edittoolsAddEditButton', [id, attrs]);`

}

} else { //加入按鈕; function addEditButton(id,attrs){

`   id=checkExistEditID(id);`
`   var button=createEditButton(id,attrs);`
`   mwCustomEditButtons.insert(button);`
`   return button;`

}

//加入下拉菜單 function addDropdownMenu(id,text,options,attrs){

`   id=checkExistEditID(id);`
`   var menu=createDropdownMenu(id,text,attrs);`
`   var option;`
`   for (var i=0;option=options[i];i++){`
`       menu.add(`
`           option.text,option.id,`
`           option.tagOpen,option.sampleText,option.tagClose,`
`           option.summary,option.minor,`
`           option.action||'defaultAction'`
`       );`
`   }`
`   mwCustomEditButtons.insert(menu);`
`   return menu;`

}}

//根據情況覆蓋mwInsertEditButton函數 if ( typeof mwInsertEditButton \!= 'undefined' ) { var oldInsertEditButton=mwInsertEditButton; function exInsertEditButton(parent,item) {

`   parent.appendChild(item.element);`

} mwInsertEditButton=function (parent,item) {

`   if(mwEditButtons.length==0){`
`       mwInsertEditButton=exInsertEditButton;`
`       return exInsertEditButton(parent,item);`
`   }else{`
`       mwInsertEditButton=oldInsertEditButton;`
`       return oldInsertEditButton(parent,item);`
`   }`

} }