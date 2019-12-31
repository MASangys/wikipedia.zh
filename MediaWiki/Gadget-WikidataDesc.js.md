> 本文内容由[MediaWiki:Gadget-WikidataDesc.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-WikidataDesc.js)转换而来。


/\*\*

`* WikidataDesc`
`*`
`* 在条目顶端显示/编辑维基数据描述`
`*`
`* 原作者：User:Alexander Misel （`[`Special:Permalink/45559457`](https://zh.wikipedia.org/wiki/Special:Permalink/45559457 "wikilink")`）`
`* 改进  ：User:逆襲的天邪鬼`
`*/`

mw.loader.using('mediawiki.ForeignApi').done(function () {

`   'use strict';`

`   var UI = ['zh-hk','zh-mo','zh-tw'].indexOf(mw.config.get('wgUserLanguage'))!==-1 ? {`
`       SAVING: '正在儲存',`
`       EDIT: '編輯',`
`       SAVE: '儲存',`
`       CANCEL: '取消',`
`       PLACEHOLDER: '維基數據描述',`
`       EMPTY: '無描述',`
`       SUCCESS: '儲存成功',`
`       ERROR: '發生错误',`
`   } : {`
`       SAVING: '正在保存',`
`       EDIT: '编辑',`
`       SAVE: '保存',`
`       CANCEL: '取消',`
`       PLACEHOLDER: '维基数据描述',`
`       EMPTY: '无描述',`
`       SUCCESS: '保存成功',`
`       ERROR: '发生错误',`
`   };`

`   var $desc = $('`

<div id="wikidatadesc" class="noprint">

');

`   var $saving = $('`<span id="wikidatadesc_loading" class="text option" style="display:none;">`（' + UI.SAVING + '）`</span>`');`
`   var $text = $('`<span id="wikidatadesc_text" class="text">`');`
`   var $editlink = $('`<a href="#" class="option">`[' + UI.EDIT + ']`</a>`');`
`   var $descbox = $('`

<div id="wikidatadesc_descbox">

')

`                       .append($text)`
`                       .append(' ')`
`                       .append($saving)`
`                       .append($editlink);`
`   var $input = $('`<input class="editbox" type="text" placeHolder="' + UI.PLACEHOLDER + '">`');`
`   var $save = $('`<a href="#" class="option" id="wikidatadesc_save">`[' + UI.SAVE + ']`</a>`');`
`   var $cancel = $('`<a href="#" class="option" id="wikidatadesc_cancel">`[' + UI.CANCEL + ']`</a>`');`
`   var $editbox = $('`

<div id="wikidatadesc_editbox" style="display:none;">

')

`                       .append($input)`
`                       .append('`
`')`
`                       .append($save)`
`                       .append($cancel);`
`   var CSS = '#wikidatadesc .text { color: #54595d; font-size: medium; } #wikidatadesc .editbox { width: 100%; padding: 4px; border: none; border-bottom: 1px solid #ccc; box-sizing: border-box; } #wikidatadesc .editbox:focus { border-bottom: 1px solid #0645ad; } #wikidatadesc .option { font-size: smaller; }';`

`   var status = 0;         // 0 显示，1 编辑`
`   var loaded = false;`
`   var saving = false;`
`   var id = '';`
`   var label = '';`
`   var lastdesc = '';`
`   var pagename = mw.config.get('wgPageName');`

`   var loadCtl = function () {`
`       $('body').append($('`

<style>

').text(CSS));

`       $desc.append($descbox).append($editbox);`
`       $("#siteSub").hide().before($desc);`

`       $editlink.click(function () {`
`           if (status !== 0 || saving) {`
`               return;`
`           }`
`           status = 1;`

`           $descbox.hide();`
`           $editbox.show();`
`           $input.focus();`
`       });`

`       $save.click(function () {`
`           if (status !== 1) {`
`               return;`
`           }`
`           status = 0;`
`           saving = true;`

`           var newdesc = $input.val();`

`           $text.text(newdesc);`
`           $saving.show();`
`           $editlink.hide();`
`           $descbox.show();`
`           $editbox.hide();`

`           save(newdesc, function (success, error) {`
`               saving = false;`
`               $saving.hide();`
`               $editlink.show();`
`               if (success) {`
`                   lastdesc = newdesc;`
`                   mw.notify(UI.SUCCESS);`
`               } else {`
`                   $text.text(lastdesc);`
`                   mw.notify(UI.ERROR);`
`               }`
`           });`
`       });`

`       $cancel.click(function () {`
`           if (status !== 1) {`
`               return;`
`           }`
`           status = 0;`
`           $input.val(lastdesc);`
`           $descbox.show();`
`           $editbox.hide();`
`       });`

`       $input.keydown(function (e) {`
`           if (e.which === 13) {`
`               $save.click();`
`           } else if (e.which === 27) {`
`               $cancel.click();`
`           }`
`       });`

`       loaded = true;`
`   };`

`   var show = function (desc) {`
`       if (!loaded) {`
`           loadCtl();`
`       }`

`       if (desc !== null) {`
`           $text.text(desc);`
`           $input.val(desc);`
`           lastdesc = desc;`
`       } else {`
`           $text.text('（' + UI.EMPTY + '）');`
`           $input.val('');`
`           lastdesc = '';`
`       }`
`   };`

`   var load = function (callback) {`
`       var ns = mw.config.get('wgNamespaceNumber');`
`       if (ns === 0) {`
`           var api = new mw.ForeignApi('`<https://www.wikidata.org/w/api.php>`');`
`           var res = '';`
`           api.get( {`
`               action: 'wbgetentities',`
`               props:  'labels|descriptions',`
`               sites:  'zhwiki',`
`               titles: pagename,`
`               languages: 'zh'`
`           }).done(function(data){`
`               $.each( data.entities, function( i, item ) {`
`                   if (i == '-1') {`
`                       id = 'NE';`
`                       callback(null);`
`                   } else {`
`                       id = item.id;`
`                       var labels = item.labels;`
`                       if (labels.zh) {`
`                           label = labels.zh.value;`
`                       } else {`
`                           label = '';`
`                       }`

`                       var desc = item.descriptions;`
`                       if (desc.zh) {`
`                           res = desc.zh.value;`
`                           callback(res);`
`                       } else {`
`                           callback(null);`
`                       }`
`                   }`
`               });`
`           });`
`       }`
`   };`

`   var save = function (newdesc, callback) {`
`       var api = new mw.ForeignApi('`<https://www.wikidata.org/w/api.php>`');`

`       api.get( {`
`           action: 'query',`
`           meta:   'tokens'`
`       }).done(function (data) {`
`           if (id == 'NE') {`
`               var jdata = JSON.Stringify({`
`                   labels: {zh: {language: 'zh', value: pagename}},`
`                   descriptions: {zh: {language: 'zh', value: newdesc}},`
`                   sitelinks: {zhwiki: {site: 'zhwiki', title: pagename}},`
`               });`
`               api.post({`
`                   action: 'wbeditentity',`
`                   'new':    'item',`
`                   token:  data.query.tokens.csrftoken,`
`                   data:   jdata`
`               }).done(function () {`
`                   callback(true);`
`               }).fail(function () {`
`                   callback(false);`
`               });`
`           } else {`
`               api.post({`
`                   action: 'wbsetdescription',`
`                   id: id,`
`                   token: data.query.tokens.csrftoken,`
`                   language: 'zh',`
`                   value: newdesc,`
`               }).done(function () {`
`                   if (label === '') {`
`                       api.post({`
`                           action: 'wbsetlabel',`
`                           id: id,`
`                           token: data.query.tokens.csrftoken,`
`                           language: 'zh',`
`                           value: pagename,`
`                       }).always(function () {`
`                           callback(true);`
`                       });`
`                   } else {`
`                       callback(true);`
`                   }`
`               }).fail(function () {`
`                   callback(false);`
`               });`
`           }`
`       }).fail(function () {`
`           callback(false);`
`       });`
`   };`

`   load(show);`

});