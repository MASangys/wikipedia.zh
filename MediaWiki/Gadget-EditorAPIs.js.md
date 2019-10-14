/\*\*

`* 取自 oldid=45922557`
`* 用RJ-45大屌插進維基百科所有編輯器！`
`*`
`* 用法：`
`* mw.hook('editorapi.ready').add(function (editor) {`
`*     // 指令...使用editor或window.wikitextEditor`
`* });`
`* mw.loader.load('`<https://zh.wikipedia.org/w/index.php?title=User:逆襲的天邪鬼/js/EditorAPIs.js&action=raw&ctype=text/javascript>`');`
`*`
`* 注意事項：`
`* 1. 這是個構件，直接拿去importScript沒有任何意義。`
`* 2. 建議不要直接copy內容。請注意原始碼中的TODO，並且根據實際需要來fork。`
`* 3. 不支援IE<10，不支援AceEditor和Wikiplus。`
`* 4. 不支援VisualEditor的視覺化模式。請注意檢查 wikitextEditor.mode`
`* 5. 透過 wikitextEditor.mode 可以檢查目前的編輯器模式。mode值包括：none（不是編輯器，各介面不可用）、wikitext（經典）、wikEd（wikEd編輯器）、wikitext2017（2017原始碼編輯）、codemirror（CodeMirror编辑器）、view（處於「閱讀」模式，實際上沒有編輯器，需要手動開啟）、visual（可識別但不支援，注意！）。`
`* 6. 注意VisualEditor的問題：`
`*    (1) 因為VisualEditor不會立刻載入，因此使用者使用VE的話 editorapi.ready 會觸發兩遍。`
`*    (2) 在使用者切換視覺化編輯與原始碼2017編輯模式時，VE的ready會被再次觸發，因此editorapi.ready也會跟著觸發。`
`* 7. window.editorapi = { useViewMode: true };    // 開啟view模式`
`*/`

$(function () {

`   'use strict';`

`   if (window.wikitextEditor) {`
`       return;`
`   }`
`   window.wikitextEditor = { mode: 'none' };`

`   if (['submit', 'edit'].indexOf(mw.config.get('wgAction')) !== -1) {`
`       // CodeMirror`
`       if ($('#wpTextbox1 + .CodeMirror').length > 0) {`
`           window.wikitextEditor = {`
`               get mode() {`
`                   return 'codemirror';`
`               },`
`               get text() {`
`                   return $('#wpTextbox1').val();`
`               },`
`               set text(t) {`
`                   $('#wpTextbox1').val(t);`
`               },`
`               get summary() {`
`                   return $('#wpSummary').val();`
`               },`
`               set summary(text) {`
`                   $('#wpSummary').val(text);`
`               },`
`               get minorEdit() {`
`                   return $('#wpMinoredit').prop('checked');`
`               },`
`               set minorEdit(v) {`
`                   $('#wpMinoredit').prop('checked', v);`
`               },`
`               submit: function () {`
`                   $('#wpSave').click();`
`               },`
`               showPreview: function () {`
`                   $('#wpPreview').click();`
`               },`
`               showDiff: function () {`
`                   $('#wpDiff').click();`
`               },`
`               get selectionStart() {`
`                   return $('#wpTextbox1').textSelection('getCaretPosition');`
`               },`
`               set selectionStart(pos) {`
`                   var end = $('#wpTextbox1').textSelection('getCaretPosition', {startAndEnd:true})[1];`
`                   $('#wpTextbox1').textSelection('setSelection', {`
`                       start: pos,`
`                       end: end`
`                   });`
`               },`
`               get selectionEnd() {`
`                   return $('#wpTextbox1').textSelection('getCaretPosition', {startAndEnd:true})[1];`
`               },`
`               set selectionEnd(pos) {`
`                   var start = $('#wpTextbox1').textSelection('getCaretPosition');`
`                   $('#wpTextbox1').textSelection('setSelection', {`
`                       start: start,`
`                       end: pos`
`                   });`
`               },`
`               get selectionText() {`
`                   return $('#wpTextbox1').textSelection('getSelection');`
`               },`
`               set selectionText(text) {`
`                   $('#wpTextbox1').textSelection('encapsulateSelection', {`
`                       replace: true,`
`                       peri: text,`
`                   });`
`               },`
`           };`
`           mw.hook('editorapi.ready').fire(window.wikitextEditor);`
`       } else {`
`           // 傳統原始碼編輯器`
`           var textbox = document.getElementById('wpTextbox1');`
`           window.wikitextEditor = {`
`               get mode() {`
`                   if (window.wikEd && wikEd.useWikEd) {`
`                       return 'wikEd';`
`                   } else {`
`                       return 'wikitext';`
`                   }`
`               },`
`               get text() {`
`                   if (window.wikEd && wikEd.useWikEd) {`
`                       wikEd.UpdateTextarea();`
`                   }`
`                   return $('#wpTextbox1').val();`
`               },`
`               set text(t) {`
`                   $('#wpTextbox1').val(t);`
`                   if (window.wikEd && wikEd.useWikEd) {`
`                       wikEd.UpdateFrame();`
`                   }`
`               },`
`               get summary() {`
`                   return $('#wpSummary').val();`
`               },`
`               set summary(text) {`
`                   $('#wpSummary').val(text);`
`               },`
`               get minorEdit() {`
`                   return $('#wpMinoredit').prop('checked');`
`               },`
`               set minorEdit(v) {`
`                   $('#wpMinoredit').prop('checked', v);`
`               },`
`               submit: function () {`
`                   $('#wpSave').click();`
`               },`
`               showPreview: function () {`
`                   $('#wpPreview').click();`
`               },`
`               showDiff: function () {`
`                   $('#wpDiff').click();`
`               },`
`               get selectionStart() {`
`                   // TODO: WikEd支援。後面selectionEnd同。`
`                   return textbox.selectionStart;`
`               },`
`               set selectionStart(pos) {`
`                   textbox.selectionStart = pos;`
`               },`
`               get selectionEnd() {`
`                   return textbox.selectionEnd;`
`               },`
`               set selectionEnd(pos) {`
`                   textbox.selectionEnd = pos;`
`               },`
`               get selectionText() {`
`                   if (window.wikEd && wikEd.useWikEd) {`
`                       var obj = {};`
`                       wikEd.GetText(obj, 'selection, cursor');`
`                       return obj.selection.plain || '';`
`                   } else {`
`                       return textbox.value.substring(textbox.selectionStart, textbox.selectionEnd);`
`                   }`
`               },`
`               set selectionText(text) {`
`                   if (window.wikEd && wikEd.useWikEd) {`
`                       wikEd.EditButton(null, null, null, function (obj) {`
`                           wikEd.GetText(obj, 'selection, cursor');`
`                           if (obj.selection.plain !== '') {`
`                               obj.changed = obj.selection;`
`                           } else {`
`                               obj.changed = obj.cursor;`
`                           }`
`                           obj.changed.plain = text;`
`                           obj.changed.keepSel = true;`
`                           return;`
`                       });`
`                   } else {`
`                       textbox.setRangeText(text);`
`                   }`
`               },`
`           };`
`           mw.hook('editorapi.ready').fire(window.wikitextEditor);`
`       }`
`   } else if (window.editorapi && window.editorapi.useViewMode) {`
`       // 直接在頁面上提交。頁面名稱為目前頁面。`
`       var submitForm = function (options) {`
`           $('`

<form method="post" style="display:none;">

')

`               .attr('action', mw.util.getUrl(mw.config.get('wgPageName'), {action: 'submit'}))`
`               .attr('enctype', 'multipart/form-data')`
`               .append($('`

<textarea name="wpTextbox1">

').val(options.text || ''),

`                   $('`<input name="wpSummary">`').val(options.summary || ''),`
`                   '<input name="wpMinoredit" type="checkbox" value="1"' + (options.minorEdit ? ' checked="checked"' : '') + '>',`
`                   '`<input name="format" value="text/x-wiki">`',`
`                   '`<input name="wpAutoSummary" value="hashhashhashhash">`',    // 防止「未填寫摘要」的提示`
`                   '`<input name="model" value="wikitext">`',`
`                   '`<input name="wpEditToken" value="' + mw.user.tokens.get('csrfToken') + '">`',`
`                   '`<input name="wpUltimateParam" value="1">`',`
`                   '`<input name="' + (options.button || 'wpSave') + '" type="submit" value="1">`',`
`                   '`<input name="mode" value="text">`')`
`               .appendTo('body').submit();`
`       };`

`       var e = {`
`           mode: 'view',`
`           text: null,    // 稍後會嘗試取得目前頁面的原始碼`
`           summary: '',`
`           minorEdit: false,`
`           submit: function () {`
`               submitForm({`
`                   text: this.text,`
`                   summary: this.summary,`
`                   minorEdit: this.minorEdit,`
`                   button: 'wpSave',`
`               });`
`           },`
`           showPreview: function () {`
`               submitForm({`
`                   text: this.text,`
`                   summary: this.summary,`
`                   minorEdit: this.minorEdit,`
`                   button: 'wpPreview',`
`               });`
`           },`
`           showDiff: function () {`
`               submitForm({`
`                   text: this.text,`
`                   summary: this.summary,`
`                   minorEdit: this.minorEdit,`
`                   button: 'wpDiff',`
`               });`
`           },`
`           selectionStart: 0,`
`           selectionEnd: 0,`
`           get selectionText() {`
`               return this.text.substring(this.selectionStart, this.selectionEnd);`
`           },`
`           set selectionText(text) {`
`               this.text = this.text.substring(0, this.selectionStart) + text + this.text.substring(this.selectionEnd);`
`           },`
`       };`

`       // 取得頁面內容`
`       $.ajax({`
`           url: mw.util.wikiScript('api'),`
`           data: {`
`               action: 'query',`
`               prop: 'revisions',`
`               rvprop: 'content',`
`               titles: mw.config.get('wgPageName'),`
`               format: 'json',`
`           },`
`           dataType: 'json',`
`           type: 'POST',`
`           success: function (data) {`
`               if (data.query) {`
`                   var pages = data.query.pages;`
`                   for (var pageid in pages) {`
`                       var page = pages[pageid];`
`                       if (e.text === null && !('missing' in page)) {`
`                           e.text = page.revisions[0]['*'];`
`                       }`
`                   }`
`               }`
`           }`
`       });`

`       window.wikitextEditor = e;`
`       mw.hook('editorapi.ready').fire(window.wikitextEditor);`
`   }`

`   (function () {`
`       var data2text = function (data) {`
`           var r = [];`
`           if (data) {`
`               for (var i=0; i<data.length; i++) {`
`                   if (typeof data[i] === 'string') {`
`                       r.push(data[i]);`
`                   } else if (data[i] && data[i].type === '/paragraph') {`
`                       r.push('\n');`
`                   }`
`               }`
`               return r.join('');`
`           } else {`
`               return '';`
`           }`
`       };`

`       var pendingSummary = '';`
`       var pendingMinoredit = false;`
`       var pendingAction = '';`
`       var addedHook = false;`

`       mw.hook('ve.activationComplete').add(function () {`
`           // 視覺化編輯器。注意，切換視覺化與原始碼2017模式也會執行`
`           var surface = ve.init.target.getSurface();`
`           var surfaceModel = surface.getModel();`

`           var processed = false;`
`           var addHook = function () {`
`               if (!addedHook) {`
`                   mw.hook('ve.saveDialog.stateChanged').add(function() {`
`                       if (ve.init.target.saveDialog && !processed) {`
`                           var dialog = ve.init.target.saveDialog;`
`                           dialog.setEditSummary(pendingSummary || '');`
`                           dialog.checkboxesByName.wpMinoredit.setSelected(pendingMinoredit && true);`
`                           // 另一個叫做wpWatchthis`

`                           setTimeout(function () {`
`                               if (!ve.init.target.saveDialog) { return; }`
`                               switch (pendingAction) {`
`                                   case 'submit':`
`                                       dialog.executeAction('save');`
`                                       break;`
`                                   case 'diff':`
`                                       dialog.executeAction('review');`
`                                       break;`
`                                   case 'preview':`
`                                       dialog.executeAction('preview');`
`                                       break;`
`                               }`
`                           }, 500);`
`                           processed = true;`
`                       }`
`                   });`
`                   addedHook = true;`
`               }`
`           };`

`           // FIXME: HACK`
`           var keepSel = false;`
`           var lastSel;`

`           window.wikitextEditor = {`
`               get mode() {`
`                   if (surface.getMode() === 'visual') {`
`                       return 'visual';`
`                   } else {`
`                       return 'wikitext2017';`
`                   }`
`               },`
`               get text() {`
`                   // TODO: 視覺化模式支援`
`                   if (surface.getMode() === 'visual') {`
`                       return null;`
`                   }`
`                   var data = surfaceModel.documentModel.data;`
`                   if (data && data.data) {`
`                       return data2text(data.data);`
`                   } else {`
`                       return '';`
`                   }`
`               },`
`               set text(text) {`
`                   if (surface.getMode() === 'visual') {`
`                       return;`
`                   }`
`                   var rangeToRemove = new ve.Range(0, surfaceModel.documentModel.getLength());`
`                   var fragment = surfaceModel.getLinearFragment(rangeToRemove);`
`                   fragment.insertContent(text);`
`               },`
`               get summary() {`
`                   if (ve.init.target.saveDialog) {`
`                       return ve.init.target.saveDialog.editSummaryInput.$input.val();`
`                   } else {`
`                       return pendingSummary || '';`
`                   }`
`               },`
`               set summary(text) {`
`                   if (ve.init.target.saveDialog) {`
`                       ve.init.target.saveDialog.setEditSummary(text);`
`                   } else {`
`                       pendingSummary = text;`
`                       addHook();`
`                   }`
`               },`
`               get minorEdit() {`
`                   if (ve.init.target.saveDialog) {`
`                       return ve.init.target.saveDialog.checkboxesByName.wpMinoredit.selected;`
`                   } else {`
`                       return pendingMinoredit && true;`
`                   }`
`               },`
`               set minorEdit(v) {`
`                   if (ve.init.target.saveDialog) {`
`                       ve.init.target.saveDialog.checkboxesByName.wpMinoredit.setSelected(v && true);`
`                   } else {`
`                       pendingMinoredit = v && true;`
`                       addHook();`
`                   }`
`               },`
`               submit: function () {`
`                   // TODO：改成聰明的做法`
`                   // TODO：如果沒對文字做過修改，對話方塊是叫不出來的`
`                   if (ve.init.target.saveDialog) {`
`                       if (!ve.init.target.saveDialog.visible) {`
`                           ve.init.target.saveDialog.open().then(function() {`
`                               ve.init.target.saveDialog.executeAction('save');`
`                           });`
`                       } else {`
`                           ve.init.target.saveDialog.executeAction('save');`
`                       }`
`                   } else {`
`                       pendingAction = 'submit';`
`                       addHook();`
`                       ve.init.target.toolbarSaveButton.emit('click');`
`                   }`
`               },`
`               showPreview: function () {`
`                   if (ve.init.target.saveDialog) {`
`                       if (!ve.init.target.saveDialog.visible) {`
`                           ve.init.target.saveDialog.open().then(function() {`
`                               ve.init.target.saveDialog.executeAction('preview');`
`                           });`
`                       } else {`
`                           ve.init.target.saveDialog.executeAction('preview');`
`                       }`
`                   } else {`
`                       pendingAction = 'preview';`
`                       addHook();`
`                       ve.init.target.toolbarSaveButton.emit('click');`
`                   }`
`               },`
`               showDiff: function () {`
`                   if (ve.init.target.saveDialog) {`
`                       if (!ve.init.target.saveDialog.visible) {`
`                           ve.init.target.saveDialog.open().then(function() {`
`                               ve.init.target.saveDialog.executeAction('review');`
`                           });`
`                       } else {`
`                           ve.init.target.saveDialog.executeAction('review');`
`                       }`
`                   } else {`
`                       pendingAction = 'diff';`
`                       addHook();`
`                       ve.init.target.toolbarSaveButton.emit('click');`
`                   }`
`               },`
`               get selectionStart() {`
`                   // 注意：`
`                   // 1. 此位置是編輯框的位置，而非文字位置。後面selectionEnd同。`
`                   // 2. 編輯器失去焦點時，選中區域會變為NullSelection！`
`                   var selection = surfaceModel.getSelection();`
`                   if (selection instanceof ve.dm.LinearSelection) {`
`                       return selection.getRange().start;`
`                   } else {`
`                       return null;`
`                   }`
`               },`
`               set selectionStart(pos) {`
`                   var selection = surfaceModel.getSelection();`
`                   if (selection instanceof ve.dm.LinearSelection) {`
`                       surfaceModel.setLinearSelection(new ve.Range(pos, selection.getRange().end));`
`                   }`
`               },`
`               get selectionEnd() {`
`                   var selection = surfaceModel.getSelection();`
`                   if (selection instanceof ve.dm.LinearSelection) {`
`                       return selection.getRange().end;`
`                   } else {`
`                       return null;`
`                   }`
`               },`
`               set selectionEnd(pos) {`
`                   var selection = keepSel ? lastSel : surfaceModel.getSelection();`
`                   if (selection instanceof ve.dm.LinearSelection) {`
`                       surfaceModel.setLinearSelection(new ve.Range(selection.getRange().start, pos));`
`                   }`
`               },`
`               get selectionText() {`
`                   // 注意：編輯器失去焦點時，選中區域會變為NullSelection！`
`                   var selection = surfaceModel.getSelection();`
`                   if (selection instanceof ve.dm.LinearSelection) {`
`                       var fragment = surfaceModel.getLinearFragment(selection.getRange());`
`                       return data2text(fragment.getData());`
`                   } else {`
`                       return '';`
`                   }`
`               },`
`               set selectionText(text) {`
`                   var selection = keepSel ? lastSel : surfaceModel.getSelection();`
`                   if (selection instanceof ve.dm.LinearSelection) {`
`                       var fragment = surfaceModel.getLinearFragment(selection.getRange());`
`                       fragment.insertContent(text);`
`                   }`
`               },`
`               set keepSelection(v) {`
`                   // FIXME: 這裡是Hack，因為編輯器失去焦點時會同時失去選區，`
`                   // 不處理的話在$.dialog()之後會無法取得選區內容`
`                   if (v) {`
`                       keepSel = true;`
`                       lastSel = surfaceModel.getSelection();`
`                   } else {`
`                       keepSel = false;`
`                   }`
`               }`
`           };`
`           mw.hook('editorapi.ready').fire(window.wikitextEditor);`
`       });`
`   })();`

});