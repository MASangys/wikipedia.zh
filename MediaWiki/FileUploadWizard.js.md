/\*

  - \===============================================================
  - FileUploadWizard.js
  - Zh-localized project-led by AlexanderMisel
  - Script for uploading files through a dynamic questionnaire.
  - This is the code to accompany [Wikipedia:File Upload Wizard](https://zh.wikipedia.org/wiki/Wikipedia:File_Upload_Wizard "wikilink").
  - \===============================================================
  - /

var fuwTesting = false; var fuwDefaultTextboxLength = 60; var fuwDefaultTextareaWidth = '90%'; var fuwDefaultTextareaLines = 3;

// ================================================================ // Constructor function of global fuw (= File Upload Wizard) object // ================================================================ function fuwGlobal() {

`  // Loading the accompanying .css`
`  mw.loader.load( mw.config.get('wgServer') + mw.config.get('wgScriptPath') +`
`     '/index.php?title=MediaWiki:FileUploadWizard.css&action=raw&ctype=text/css', `
`     'text/css'  );`

`  // see if user is logged in, autoconfirmed, experienced etc.`
`  this.getUserStatus();`

`  fuwSetVisible('warningLoggedOut', (this.userStatus == 'anon'));`
`  fuwSetVisible('warningNotConfirmed', (this.userStatus == 'notAutoconfirmed'));`
`  if ((this.userStatus == 'anon') || (this.userStatus == 'notAutoconfirmed')) {`
`     return;`
`  }`
`  fuwSetVisible('fuwStartScriptLink', false);`

`  // create the form element to wrap the main ScriptForm area`
`  // containing input elements of Step2 and Step3`
`  var frm = fuwGet('fuwScriptForm');`
`  if (! frm) {`
`     frm = document.createElement('form');`
`     frm.id = "fuwScriptForm";`
`     var area = fuwGet('placeholderScriptForm');`
`     var parent = area.parentNode;`
`     parent.insertBefore(frm, area);`
`     parent.removeChild(area);`
`     frm.appendChild(area);`
`  }`
`  this.ScriptForm = frm;`

`  // create the TargetForm element that contains the filename`
`  // input box, together with hidden input controls.`
`  // This is the form that is actually submitted to the api.php.`
`  frm = fuwGet('TargetForm');`
`  if (! frm) {`
`     frm = document.createElement('form');`
`     frm.id = "TargetForm";`
`     frm.method = "post";`
`     frm.enctype = "multipart/form-data";`
`     // "enctype" doesn't work properly on IE; need "encoding" instead:`
`     frm.encoding = "multipart/form-data"; `
`     // we'll submit via api.php, not index.php, mainly because that`
`     // allows us to use a proper edit summary different from the page content`
`     frm.action = mw.config.get('wgServer') + mw.config.get('wgScriptPath') + '/api.php';`

`     // However, since api.php sends back a response page that humans won't want to read,`
`     // we'll have to channel that response away and discard it. We'll use a hidden iframe`
`     // for that purpose.`
`     // Unfortunately, it doesn't seem possible to submit file upload content through an `
`     // Xmlhtml object via Ajax.`

`     frm.target = "TargetIFrame";`
`     //testing:`
`     //frm.target = "_blank";`
`     var area = fuwGet('placeholderTargetForm');`
`     var parent = area.parentNode;`
`     parent.insertBefore(frm, area);`
`     parent.removeChild(area);`
`     frm.appendChild(area);`
`  }`
`  this.TargetForm = frm;`

`  // For the testing version, create a third form that will display`
`  // the contents to be submitted, at the bottom of the page`
`  if (fuwTesting) {`
`     frm = fuwGet('fuwTestForm');`
`     if (! frm) {`
`        frm = document.createElement('form');`
`        frm.id = "fuwTestForm";`
`        var area = fuwGet('placeholderTestForm');`
`        var parent = area.parentNode;`
`        parent.insertBefore(frm, area);`
`        parent.removeChild(area);`
`        frm.appendChild(area);`
`     }`
`     this.TestForm = frm;`
`  }`

`  // objects to hold cached results during validation and processing`
`  this.opts = { };`
`  this.warn = { };`

`  // create the input filename box`
`  var filebox  = document.createElement('input');`
`  filebox.id   = 'file';`
`  filebox.name = 'file';`
`  filebox.type = 'file';`
`  filebox.size = fuwDefaultTextboxLength;`
`  filebox.onchange = fuwValidateFile;`
`  filebox.accept = 'image/png,image/jpeg,image/gif,image/svg+xml,image/tiff,image/x-xcf,application/pdf,image/vnd.djvu,audio/ogg,video/ogg,audio/rtp-midi';`
`  fuwAppendInput('file', filebox);`

`  // create hidden controls for sending the remaining API parameters:`
`  fuwMakeHiddenfield('action', 'upload', 'apiAction');`
`  fuwMakeHiddenfield('format', 'xml', 'apiFormat');`
`  fuwMakeHiddenfield('filename', '', 'apiFilename');`
`  fuwMakeHiddenfield('text', '', 'apiText');`
`  fuwMakeHiddenfield('comment', '', 'apiComment');`
`  fuwMakeHiddenfield('token', mw.user.tokens.get('csrfToken'), 'apiToken');`
`  fuwMakeHiddenfield('ignorewarnings', 1, 'apiIgnorewarnings');`
`  fuwMakeHiddenfield('watch', 1, 'apiWatch');`

`  if (fuwTesting) {`
`     fuwMakeHiddenfield('title', mw.config.get('wgPageName') + "/sandbox", 'SandboxTitle');`
`     fuwMakeHiddenfield('token', mw.user.tokens.get('csrfToken'), 'SandboxToken');`
`     fuwMakeHiddenfield('recreate', 1, 'SandboxRecreate');`
`  }`

`  // create a hidden IFrame to send the api.php response to`
`  var ifr = document.createElement('iframe');`
`  ifr.id   = "TargetIFrame";`
`  ifr.name = "TargetIFrame";`
`  //ifr.setAttribute('style', 'float:right;width:150px;height:150px;');`
`  ifr.style.display = "none";`
`  ifr.src = "";`

`  fuwAppendInput('TargetIFrame', ifr);`

`  if (fuwTesting) {`

`     // create the sandbox submit button`
`     btn = document.createElement('input');`
`     btn.id = 'SandboxButton';`
`     btn.value = '沙盒';`
`     btn.name  = 'Sandbox';`
`     btn.disabled = true;`
`     btn.type = 'button';`
`     btn.style.width = '12em';`
`     btn.onclick = fuwSubmitSandbox;`
`     fuwAppendInput('SandboxButton', btn);`

`  }`

`  // create the real submit button`
`  btn = document.createElement('input');`
`  btn.id = "SubmitButton";`
`  btn.value = wgULS("上传", "上傳");`
`  btn.name = "Upload";`
`  btn.disabled = true;`
`  btn.type = "button";`
`  btn.onclick = fuwSubmitUpload;`
`  btn.style.width = '12em';`
`  fuwAppendInput('SubmitButton', btn);`

`  // create the Commons submit button`
`  btn = document.createElement('input');`
`  btn.id = "CommonsButton";`
`  btn.value = wgULS("在共享资源上传", "在共享資源上傳" );`
`  btn.name  = "Upload_on_Commons";`
`  btn.disabled = true;`
`  btn.type = "button";`
`  btn.onclick = fuwSubmitCommons;`
`  btn.style.width = '12em';`
`  fuwAppendInput('CommonsButton', btn);`

`  // create reset buttons`
`  for (i = 1; i<=2; i++) {`
`     btn = document.createElement('input');`
`     btn.id = 'ResetButton' + i;`
`     btn.value = wgULS("重置表单", "重設表單" );`
`     btn.name  = "Reset form";`
`     btn.type  = "button";`
`     btn.onclick = fuwReset;`
`     btn.style.width = '12em';`
`     fuwAppendInput('ResetButton' + i, btn);`
`  }`

`  // names of radio button fields`
`  var optionRadioButtons = {`
`     // top-level copyright status choice`
`     'FreeOrNonFree' : ['OptionFree','OptionNonFree','OptionNoGood'],`
`     // main subsections under OptionFree`
`     'FreeOptions'   : ['OptionOwnWork', 'OptionThirdParty', 'OptionFreeWebsite',`
`                        'OptionPDOld', 'OptionPDOther'],`
`     // main subsections under OptionNonFree`
`     'NonFreeOptions': ['OptionNFSubject','OptionNF3D','OptionNFExcerpt',`
`                        'OptionNFCover','OptionNFLogo','OptionNFPortrait',`
`                        'OptionNFMisc'],`
`     // response options inside warningFileExists`
`     'FileExistsOptions': `
`                       ['NoOverwrite','OverwriteSame','OverwriteDifferent'],`
`     // choice of evidence in OptionThirdParty subsection`
`     'ThirdPartyEvidenceOptions' : `
`                       ['ThirdPartyEvidenceOptionLink',`
`                        'ThirdPartyEvidenceOptionOTRS',`
`                        'ThirdPartyEvidenceOptionOTRSForthcoming',`
`                        'ThirdPartyEvidenceOptionNone'],`
`     // choice of PD status in OptionPDOld subsection`
`     'PDOldOptions'  : ['PDUS1923','PDURAA','PDFormality','PDOldOther'],`
`     // choice of PD status in OptionPDOther subsection`
`     'PDOtherOptions': ['PDOtherUSGov','PDOtherOfficial','PDOtherSimple',`
`                        'PDOtherOther'],`
`     // whether target article is wholly or only partly dedicated to discussing non-free work:`
`     'NFSubjectCheck': ['NFSubjectCheckDedicated','NFSubjectCheckDiscussed'],`
`     'NF3DCheck'     : ['NF3DCheckDedicated','NF3DCheckDiscussed'],`
`     // choice about copyright status of photograph in OptionNF3D`
`     'NF3DOptions'   : ['NF3DOptionFree','NF3DOptionSame']`
`  };`
`  for (var group in optionRadioButtons) {`
`     var op = optionRadioButtons[group];`
`     for (i=0; i<op.length; i++) {`
`        fuwMakeRadiobutton(group, op[i]);`
`     }`
`  }`
`  this.ScriptForm.NoOverwrite.checked = true;`
`  `
`  // input fields that trigger special`
`  // onchange() event handlers for validation:`
`  fuwMakeTextfield('InputName', fuwValidateFilename);`
`  fuwMakeTextfield('NFArticle', fuwValidateNFArticle);`

`  // names of input fields that trigger normal`
`  // validation event handler`
`  var activeTextfields = [`
`     'Artist3D','Country3D',`
`     'Date','OwnWorkCreation','OwnWorkPublication',`
`     'Author','Source',`
`     'Permission','ThirdPartyOtherLicense',`
`     'ThirdPartyEvidenceLink','ThirdPartyOTRSTicket',`
`     'FreeWebsiteOtherLicense',`
`     'PDOldAuthorLifetime','Publication',`
`     'PDOldCountry','PDOldPermission',`
`     'PDOfficialPermission','PDOtherPermission',`
`     'NFSubjectPurpose', 'NF3DOrigDate', 'NF3DPurpose',`
`     'NF3DCreator',`
`     'NFPortraitDeceased',`
`     'EditSummary'`
`  ];`
`  for (i=0; i<activeTextfields.length; i++) {`
`     fuwMakeTextfield(activeTextfields[i]);`
`  }`

`  // names of multiline textareas`
`  var activeTextareas = [`
`     'InputDesc','NF3DPermission',`
`     'NFCommercial','NFPurpose','NFReplaceableText',`
`     'NFReplaceable','NFCommercial','NFMinimality','AnyOther'`
`  ];`
`  for (i=0; i<activeTextareas.length; i++) {`
`     fuwMakeTextarea(activeTextareas[i]);`
`  };`

`  var checkboxes = [`
`     'NFCoverCheckDedicated','NFLogoCheckDedicated','NFPortraitCheckDedicated'`
`  ];`
`  for (i=0; i<checkboxes.length; i++) {`
`     fuwMakeCheckbox(checkboxes[i]);`
`  };`

`  var licenseLists = {`
`     'OwnWorkLicense' : `
`       // array structure as expected for input to fuwMakeSelection() function.`
`       // any entry that is a two-element array will be turned into an option`
`       // (first element is the value, second element is the display string).`
`       // Entries that are one-element arrays will be the label of an option group.`
`       // Zero-element arrays mark the end of an option group.`
`       [`
`       [wgULS("允许任何对你署名，并以相同方式共享的人使用", "允許任何對你標示姓名，並以相同方式分享的人使用" )],`
`       ['self|GFDL|cc-by-sa-4.0|migration=redundant', `
`        wgULS("知识共享 署名-相同方式共享 4.0 + GFDL（推荐）", "創用CC 姓名標示-相同方式分享 4.0 + GFDL（推薦）" ),`
`        true],`
`       ['self|cc-by-sa-4.0',`
`         wgULS("知识共享 署名-相同方式共享 4.0", "創用CC 姓名標示-相同方式分享 4.0")],`
`       [],`
`       [wgULS("允许任何对你署名的人使用", "允許任何對你標示姓名的人使用")],`
`       ['self|cc-by-4.0',`
`        wgULS("知识共享 署名 4.0", "創用CC 姓名標示 4.0")],`
`       [],`
`       [wgULS("不保留权利", "不保留權利")],`
`       ['cc-zero',`
`         wgULS("CC0 通用公有领域贡献", "CC0 通用公有領域貢獻")],`
`       []`
`       ],   `
`     'ThirdPartyLicense' :`
`       [`
`       ['', wgULS("请选择正确的许可协议...", "請選擇正確的授權條款...")],`
`       [wgULS("自由许可：", "自由授權：")],`
`       ['cc-by-sa-4.0', wgULS("知识共享 署名-相同方式共享 4.0", "創用CC 姓名標示-相同方式分享 4.0")],`
`       ['cc-by-4.0', wgULS("知识共享 署名 4.0", "創用CC 姓名標示 4.0")],`
`       ['GFDL', wgULS("GNU 自由文件许可协议", "GNU 自由文件授權條款")],`
`       [],`
`       [wgULS("不保留权利：", "不保留權利：")],`
`       ['PD-author', wgULS("公有领域", "公有領域")],`
`       [],`
`       [wgULS("其他（见下）", "其他（見下）")],`
`       []`
`       ],   `
`     'FreeWebsiteLicense' :`
`       [`
`       ['', wgULS("请选择正确的许可协议...", "請選擇正確的授權條款...")],`
`       [wgULS("自由许可：", "自由授權：")],`
`       ['cc-by-sa-4.0', wgULS("知识共享 署名-相同方式共享 4.0", "創用CC 姓名標示-相同方式分享 4.0")],`
`       ['cc-by-4.0', wgULS("知识共享 署名 4.0", "創用CC 姓名標示 4.0")],`
`       ['GFDL', wgULS("GNU 自由文件许可协议", "GNU 自由文件授權條款")],`
`       [],`
`       [wgULS("不保留权利：", "不保留權利：")],`
`       ['PD-author', wgULS("公有领域", "公有領域")],`
`       [],`
`       [wgULS("其他（见下）", "其他（見下）")],`
`       []`
`       ],   `
`     'USGovLicense' :`
`      [`
`      ['PD-USGov', wgULS("美国联邦政府", "美國聯邦政府")],`
`      ['PD-USGov-NASA','NASA'],`
`      ['PD-USGov-Military-Navy',wgULS("美国海军", "美國海軍")],`
`      ['PD-USGov-NOAA',wgULS("美国国家海洋及大气管理局", "美國國家海洋及大氣管理局")],`
`      ['PD-USGov-Military-Air_Force',wgULS("美国空军", "美國空軍")],`
`      ['PD-USGov-Military-Army',wgULS("美国陆军", "美國陸軍")],`
`      ['PD-USGov-CIA-WF',wgULS("美国中央情报局世界概况", "美國中央情報局世界概況")],`
`      ['PD-USGov-USGS',wgULS("美国地质调查局", "美國地質調查局")]`
`      ],`
`     'IneligibleLicense' :`
`      [`
`      ['', wgULS("请选择一个...", "請選擇一個...")],`
`      ['PD-shape',wgULS("文件仅由简单的几何图形组成", "檔案僅由簡單的幾何圖形組成")],`
`      ['PD-simple',wgULS("文件仅由几个单独的单词或字母组成", "檔案僅由幾個單獨的單詞和字母組成")],`
`      ['PD-textlogo',wgULS("仅由字母和简单几何图形组成的标志或类似文件", "僅由字母和簡單幾何圖形組成的標誌或類似檔案")],`
`     // ['PD-chem','化学结构式'],  英文维基使用极少`
`      ['PD-ineligible',wgULS("其他类型的没有原始作者信息的文件", "其他類型的沒有原始作者訊息的檔案")]`
`      ],`
`     'NFSubjectLicense' :`
`      [`
`      ['', wgULS("请选择一个...", "請選擇一個...")],`
`      ['Non-free 2D art', wgULS("平面艺术作品（绘画、素描等）", "平面藝術作品（繪畫、素描等）")], `
`      ['Non-free historic image', wgULS("独特历史图像", "獨特歷史圖像")], `
`      ['Non-free fair use in', wgULS("其他事物（请在描述栏上进行描述）", "其他事物（請在描述欄上進行描述）")]`
`      ],`
`     'NF3DLicense' :`
`      [`
`      ['', wgULS("请选择一个...", "請選擇一個...")],`
`      ['Non-free architectural work', wgULS("建筑工程", "建築工程")], `
`      ['Non-free 3D art', wgULS("其他立体艺术品（雕塑等）", "其他立體藝術品（雕塑等）")]`
`      ],`
`     'NFCoverLicense' :`
`        [`
`        ['', wgULS("请选择一个...", "請選擇一個...")],`
`        ['Non-free book cover', wgULS("书籍封面", "書籍封面")], `
`        ['Non-free album cover', wgULS("音乐作品（专辑、单曲、歌曲、CD）的封面", "音樂作品（專輯、單曲、歌曲、CD）的封面")], `
`        ['Non-free game cover', wgULS("电子游戏的封面", "電子遊戲的封面")], `
`        ['Non-free magazine cover', wgULS("杂志封面", "雜誌封面")], `
`        ['Non-free newspaper image', wgULS("报纸页面", "報紙頁面")], `
`        ['Non-free video cover', wgULS("录像带或光碟封面", "錄像帶或光碟封面")], `
`        ['Non-free software cover', wgULS("软件产品的封面", "軟體產品的封面")], `
`        ['Non-free product cover', wgULS("一些商品的封面", "一些商品的封面")], `
`        ['Non-free title-card', wgULS("电视节目的标题画面", "電視節目的標題畫面")], `
`        ['Non-free movie poster', wgULS("电影海报", "電影海報")], `
`        ['Non-free poster', wgULS("活动的官方海报", "活動的官方海報")], `
`        ['Non-free fair use in', wgULS("其他事物（请在描述栏上进行描述）", "其他事物（請在描述欄上進行描述）")]`
`        ],`
`     'NFExcerptLicense' :`
`        [`
`        ['', wgULS("请选择一个...", "請選擇一個...")],`
`        ['Non-free television screenshot', wgULS("电视屏幕截图", "電視螢幕截圖")], `
`        ['Non-free film screenshot', wgULS("电影画面截图", "電影畫面截圖")], `
`        ['Non-free game screenshot', wgULS("游戏截图", "遊戲截圖")], `
`        ['Non-free video screenshot', wgULS("视频截图", "影音截圖")], `
`        ['Non-free music video screenshot', wgULS("MV截图", "MV截圖")], `
`        ['Non-free software screenshot', wgULS("软件截图", "軟體截圖")], `
`        ['Non-free web screenshot', wgULS("网页截图", "網頁截圖")], `
`       // ['Non-free speech', '语音片段'],  英文维基使用极少`
`        ['Non-free audio sample', wgULS("音频样本", "音頻樣本")], `
`        ['Non-free video sample', wgULS("视频样本", "影音樣本")], `
`        ['Non-free sheet music', wgULS("代表音乐作品的乐谱", "代表音樂作品的樂譜")], `
`        ['Non-free comic', wgULS("连环画、漫画书的单页", "連環畫、漫畫書的單頁")], `
`        ['Non-free character', wgULS("漫画书、电子游戏或电视、电影动画角色", "漫畫書、電子遊戲或電視、電影動畫角色")], `
`        ['Non-free computer icon', wgULS("电脑图标", "電腦圖示")], `
`        ['Non-free newspaper image', wgULS("报纸页面", "報紙頁面")], `
`        ['Non-free fair use in', wgULS("其他事物（请在描述栏上进行描述）", "其他事物（請在描述欄上進行描述）")]`
`        ],      `
`     'NFLogoLicense' :`
`        [`
`        ['Non-free logo', wgULS("公司、组织等的标志", "公司、組織等的標誌")], `
`        ['Non-free seal', wgULS("官方印章、徽章等", "官方印章、徽章等")], `
`        ['Non-free symbol', wgULS("其他官方标志", "其他官方標誌")]`
`        ],`
`     'NFMiscLicense' :`
`        [`
`        ['Non-free fair use in', wgULS("其他事物（请在描述栏上进行描述）", "其他事物（請在描述欄上進行描述）")], `
`        ['Non-free historic image', wgULS("历史图像", "歷史圖像")], `
`        ['Non-free 2D art', wgULS("平面艺术作品（绘画、素描等）", "平面藝術作品（繪畫、素描等）")], `
`        ['Non-free currency', wgULS("描述货币（纸币、硬币等）", "描述貨幣（紙幣、硬幣等）")], `
`        ['Non-free architectural work', wgULS("建筑工程", "建築工程")], `
`        ['Non-free 3D art',  wgULS("其他立体艺术品（雕塑等）", "其他立體藝術品（雕塑等）")], `
`        ['Non-free book cover', wgULS("书籍封面", "書籍封面")], `
`        ['Non-free album cover', wgULS("音乐作品（专辑、单曲、歌曲、CD）的封面", "音樂作品（專輯、單曲、歌曲、CD）的封面")], `
`        ['Non-free game cover', wgULS("电子游戏的封面", "電子遊戲的封面")], `
`        ['Non-free magazine cover', wgULS("杂志封面", "雜誌封面")], `
`        ['Non-free video cover', wgULS("录像带或光碟封面", "錄像帶或光碟封面")], `
`        ['Non-free software cover',  wgULS("软件产品的封面", "軟體產品的封面")], `
`        ['Non-free product cover', wgULS("一些商品的封面", "一些商品的封面")], `
`        ['Non-free title-card', wgULS("电视节目的标题画面", "電視節目的標題畫面")], `
`        ['Non-free movie poster', wgULS("电影海报", "電影海報")], `
`        ['Non-free poster', wgULS("活动的官方海报", "活動的官方海報")], `
`        ['Non-free television screenshot', wgULS("电视屏幕截图", "電視螢幕截圖")], `
`        ['Non-free film screenshot', wgULS("电影画面截图", "電影畫面截圖")], `
`        ['Non-free game screenshot', wgULS("游戏截图", "遊戲截圖")], `
`        ['Non-free video screenshot', wgULS("视频截图", "影音截圖")], `
`        ['Non-free music video screenshot', wgULS("MV截图", "MV截圖")], `
`        ['Non-free software screenshot', wgULS("软件截图", "軟體截圖")], `
`        ['Non-free web screenshot', wgULS("网页截图", "網頁截圖")], `
`       // ['Non-free speech', '语音片段'], 英文维基使用极少`
`        ['Non-free audio sample',wgULS("音频样本", "音頻樣本")], `
`        ['Non-free video sample', wgULS("视频样本", "影音樣本")], `
`        ['Non-free sheet music', wgULS("代表音乐作品的乐谱", "代表音樂作品的樂譜")], `
`        ['Non-free comic', wgULS("连环画、漫画书的单页", "連環畫、漫畫書的單頁")], `
`        ['Non-free computer icon', wgULS("电脑图标", "電腦圖示")], `
`        ['Non-free character', wgULS("漫画书、电子游戏或电视、电影动画角色", "漫畫書、電子遊戲或電視、電影動畫角色")], `
`        ['Non-free newspaper image', wgULS("报纸页面", "報紙頁面")], `
`        ['Non-free logo', wgULS("公司、组织等的标志", "公司、組織等的標誌")], `
`        ['Non-free seal',  wgULS("官方印章、徽章等", "官方印章、徽章等")], `
`        ['Non-free symbol', wgULS("其他官方标志", "其他官方標誌")], `
`        ['Non-free sports uniform', wgULS("体育队伍的制服", "體育隊伍的制服")], `
`        ['Non-free stamp', wgULS("邮票", "郵票")] `
`        ],`
`     'NFExtraLicense' :`
`        [`
`        ['', wgULS("无", "無")],`
`        [wgULS("皇家版权和其他政府来源", "皇家著作權和其他政府來源")],`
`        ['Non-free Crown copyright', wgULS("英国皇家版权", "英國皇家著作權")],`
`        ['Non-free New Zealand Crown Copyright', wgULS("新西兰皇家版权", "紐西蘭皇家著作權")],`
`        ['Non-free Canadian Crown Copyright', wgULS("加拿大皇家版权", "加拿大皇家著作權")],`
`       // ['Non-free AUSPIC', 'AUSPIC（澳大利亚议会图像数据库）'], 英文维基使用量极少`
`        ['Non-free Philippines government', wgULS("菲律宾政府", "菲律賓政府")],`
`       // ['Non-free Finnish Defence Forces', '芬兰国防军'], 英文维基使用量极少`
`       // [],`
`       // ['其他单独来源'],`
`       // ['Non-free Denver Public Library image', '丹佛公共图书馆'], 英文维基使用量极少`
`       // ['Non-free ESA media', 'ESA（欧洲太空总署）'], 英文维基使用量极少`
`        [],`
`        [wgULS("在其他国家可能属于公有领域", "在其他國家可能屬於公有領域")],`
`        ['Non-free Old-50', wgULS("作者去世超过50年了", "作者去世超過50年了")],`
`        ['Non-free Old-70', wgULS("作者去世超过70年了", "作者去世超過70年了")],`
`        [],`
`        [wgULS("允许一些权限，但不是完全自由", "允許一些權限，但不是完全自由")],`
`        ['Non-free with NC', wgULS("仅允许用于教育和非商业用途（请提供相应证据，否则请勿选择此项）", "僅允許用於教育和非商業用途（請提供相應證據，否則請勿選擇此項）")],`
`        ['Non-free with ND', wgULS("不允许衍生作品（请提供相应证据，否则请勿选择此项）", "不允許衍生作品（請提供相應證據，否則請勿選擇此項）")],`
`        ['Non-free with permission', wgULS("仅允许用于维基百科（请提供相应证据，否则请勿选择此项）", "僅允許用於維基百科（請提供相應證據，否則請勿選擇此項）")],`
`        []`
`        ]`
`  };`
`  for (var group in licenseLists) {`
`     fuwMakeSelection(group, licenseLists[group]);`
`  }`

`  this.knownCommonsLicenses = {`
`     'self|GFDL|cc-by-sa-all|migration=redundant' : 1,`
`     'self|Cc-zero' : 1,`
`     'PD-self' : 1,`
`     'self|GFDL|cc-by-sa-4.0|migration=redundant' : 1,`
`     'self|GFDL|cc-by-4.0|migration=redundant' : 1,`
`     'self|GFDL|cc-by-sa-3.0|migration=redundant' : 1,`
`     'self|GFDL|cc-by-3.0|migration=redundant' : 1,`
`     'self|cc-by-sa-4.0' : 1,`
`     'self|cc-by-sa-3.0' : 1,`
`     'cc-by-sa-4.0' : 1,`
`     'cc-by-sa-3.0' : 1,`
`     'cc-by-sa-2.5' : 1,`
`     'cc-by-4.0' : 1,`
`     'cc-by-3.0' : 1,`
`     'cc-by-2.5' : 1,`
`     'FAL' : 1,`
`     'PD-old-100' : 1,`
`     'PD-old' : 1,`
`     'PD-Art' : 1,`
`     'PD-US' : 1,`
`     'PD-USGov' : 1,`
`     'PD-USGov-NASA' : 1,`
`     'PD-USGov-Military-Navy' : 1,`
`     'PD-ineligible' : 1,`
`     'Attribution' : 1,`
`     'Copyrighted free use' : 1`
`  };`

`  // textfields that don't react directly`
`  // to user input and are used only for assembling stuff:`
`  if (fuwTesting) {`
`     fuwMakeTextfield('SandboxSummary', function(){void(0);});`
`     fuwMakeTextarea('SandboxText', function(){void(0);});`
`     fuwGet('SandboxSummary').disabled="disabled";`
`     fuwGet('SandboxText').disabled="disabled";`
`     fuwGet('SandboxText').rows = 12;`
`  }`

`  // set links to "_blank" target, so we don't accidentally leave the page,`
`  // because on some browsers that would destroy all the input the user has already entered`
`  $('.fuwOutLink a').each(function() {`
`     this.target = '_blank';`
`  });`

`  // make main area visible`
`  fuwSetVisible('UploadScriptArea', true);`

} // ====================================== // end of fuwGlobal constructor function // ======================================

function fuwRadioClick(e) {

`  var ev = e || event;`
`  var src = ev.target || ev.srcElement;`
`  //alert('onclick event from ' + src + ' (' + src.value + ')');`
`  fuwUpdateOptions();`
`  return true;`

}

/\*

  - \=============================================================
  - function fuwUpdateOptions
  - \=============================================================
  - This is the onchange event handler for most of the input
  - elements in the main form. It changes visibility and disabled
  - status for the various sections of the input form in response
  - to which options are chosen.
  - /

function fuwUpdateOptions() {

`  var fuw = window.fuw;`
`  var warn = fuw.warn;`
`  var opts = fuw.opts = { };`
`  opts.InputFilename = $('#TargetForm input#file').val();`

`  var widgets = fuw.ScriptForm.elements;`
`  for (i = 0; i < widgets.length; i++) {`
`     var w = widgets[i];`
`     if (w.type == "radio") {`
`        var nm = w.name;`
`        var id = w.id;`
`        var vl = w.checked && !w.disabled && fuwIsVisible(w);`
`        opts[id] = vl;`
`        if (vl) opts[nm] = id;`
`     }`
`     else {`
`        var id = w.id;`
`        var active = !w.disabled && fuwIsVisible(w);`
`        if (active) {`
`           var value = ((type == 'checkbox') ? w.checked : w.value);`
`           opts[id] = value;         `
`        }`
`     }`
`  }`
`  opts.MainOption = opts.FreeOptions || opts.NonFreeOptions;`
`  `
`  // some parts of the input form are re-used across sections`
`  // and must be moved into the currently active input section:`

`  // minimality section is shared between all NF sections`
`  fuwMove('NFMinimalitySection', 'detailsNFSubject', (opts.OptionNFSubject)) ||`
`  fuwMove('NFMinimalitySection', 'detailsNF3D', (opts.OptionNF3D)) ||`
`  fuwMove('NFMinimalitySection', 'detailsNFExcerpt', (opts.OptionNFExcerpt)) ||`
`  fuwMove('NFMinimalitySection', 'detailsNFCover', (opts.OptionNFCover)) ||`
`  fuwMove('NFMinimalitySection', 'detailsNFLogo', (opts.OptionNFLogo)) ||`
`  fuwMove('NFMinimalitySection', 'detailsNFPortrait', (opts.OptionNFPortrait)) ||`
`  fuwMove('NFMinimalitySection', 'detailsNFMisc', true);`

`  // AnyOtherInfo section is shared between all`
`  fuwMove('AnyOtherInfo', 'detailsOwnWork', opts.OptionOwnWork) ||`
`  fuwMove('AnyOtherInfo', 'detailsThirdParty', opts.OptionThirdParty) ||`
`  fuwMove('AnyOtherInfo', 'detailsFreeWebsite', opts.OptionFreeWebsite) ||`
`  fuwMove('AnyOtherInfo', 'detailsPDOld', opts.OptionPDOld) ||`
`  fuwMove('AnyOtherInfo', 'detailsPDOther', opts.OptionPDOther) ||`
`  fuwMove('AnyOtherInfo', 'detailsNFSubject', opts.OptionNFSubject) ||`
`  fuwMove('AnyOtherInfo', 'detailsNF3D', opts.OptionNF3D) ||`
`  fuwMove('AnyOtherInfo', 'detailsNFExcerpt', opts.OptionNFExcerpt) ||`
`  fuwMove('AnyOtherInfo', 'detailsNFCover', opts.OptionNFCover) ||`
`  fuwMove('AnyOtherInfo', 'detailsNFLogo', opts.OptionNFLogo) ||`
`  fuwMove('AnyOtherInfo', 'detailsNFPortrait', opts.OptionNFPortrait) ||`
`  fuwMove('AnyOtherInfo', 'detailsNFMisc', opts.OptionNFMisc);`

`  // author input field is shared between all sections except "Own Work".`
`  // (will serve for the immediate/photographic author, in those cases where there`
`  // are two author fields)`
`  fuwMove('Author', 'placeholderFreeWebsiteAuthor', (opts.OptionFreeWebsite)) ||`
`  fuwMove('Author', 'placeholderPDOldAuthor', (opts.OptionPDOld)) ||`
`  fuwMove('Author', 'placeholderPDOtherAuthor', (opts.OptionPDOther)) ||`
`  fuwMove('Author', 'placeholderNFSubjectAuthor', (opts.OptionNFSubject)) ||`
`  fuwMove('Author', 'placeholderNF3DAuthor', (opts.OptionNF3D)) ||`
`  fuwMove('Author', 'placeholderNFExcerptAuthor', (opts.OptionNFExcerpt)) ||`
`  fuwMove('Author', 'placeholderNFCoverAuthor', (opts.OptionNFCover)) ||`
`  fuwMove('Author', 'placeholderNFPortraitAuthor', (opts.OptionNFPortrait)) ||`
`  fuwMove('Author', 'placeholderNFMiscAuthor', (opts.OptionNFMisc)) ||`
`  fuwMove('Author', 'placeholderAuthor', true);`

`  // source input field is shared between all sections except "Own Work".`
`  // (will serve for immediate/web source, in those cases where there are two`
`  // source fields involved)`
`  fuwMove('Source', 'placeholderFreeWebsiteSource', (opts.OptionFreeWebsite)) ||`
`  fuwMove('Source', 'placeholderPDOldSource', (opts.OptionPDOld)) ||`
`  fuwMove('Source', 'placeholderPDOtherSource', (opts.OptionPDOther)) ||`
`  fuwMove('Source', 'placeholderNFSubjectSource', (opts.OptionNFSubject)) ||`
`  fuwMove('Source', 'placeholderNF3DSource', (opts.OptionNF3D)) ||`
`  fuwMove('Source', 'placeholderNFExcerptSource', (opts.OptionNFExcerpt)) ||`
`  fuwMove('Source', 'placeholderNFCoverSource', (opts.OptionNFCover)) ||`
`  fuwMove('Source', 'placeholderNFLogoSource', (opts.OptionNFLogo)) ||`
`  fuwMove('Source', 'placeholderNFPortraitSource', (opts.OptionNFPortrait)) ||`
`  fuwMove('Source', 'placeholderNFMiscSource', (opts.OptionNFMisc)) ||`
`  fuwMove('Source', 'placeholderSource', true);`

`  // date input field is shared between all sections except "Logo", which doesn't need it.`
`  // will serve for derived/photographic date in the case of 3D items`
`  fuwMove('Date', 'placeholderFreeWebsiteDate', (opts.OptionFreeWebsite)) ||`
`  fuwMove('Date', 'placeholderThirdPartyDate', (opts.OptionThirdParty)) ||`
`  fuwMove('Date', 'placeholderPDOldDate', (opts.OptionPDOld)) ||`
`  fuwMove('Date', 'placeholderPDOtherDate', (opts.OptionPDOther)) ||`
`  fuwMove('Date', 'placeholderNFSubjectDate', (opts.OptionNFSubject)) ||`
`  fuwMove('Date', 'placeholderNF3DDate', (opts.OptionNF3D)) ||`
`  fuwMove('Date', 'placeholderNFExcerptDate', (opts.OptionNFExcerpt)) ||`
`  fuwMove('Date', 'placeholderNFCoverDate', (opts.OptionNFCover)) ||`
`  fuwMove('Date', 'placeholderNFPortraitDate', (opts.OptionNFPortrait)) ||`
`  fuwMove('Date', 'placeholderNFMiscDate', (opts.OptionNFMisc)) ||`
`  fuwMove('Date', 'placeholderDate', true);`
`  `
`  // permission field is shared between ThirdParty and FreeWebsite sections`
`  fuwMove('Permission', 'placeholderFreeWebsitePermission', (opts.OptionFreeWebsite)) ||`
`  fuwMove('Permission', 'placeholderPermission', true);`

`  // publication field is shared between PDOld, NFPortrait and NFMisc`
`  fuwMove('Publication', 'placeholderNFPortraitPublication', (opts.OptionNFPortrait)) ||`
`  fuwMove('Publication', 'placeholderNFMiscPublication', (opts.OptionNFMisc)) ||`
`  fuwMove('Publication', 'placeholderPublication', true);`

`  // Purpose, Commercial, Replaceable and ReplaceableText FUR fields are shared`
`  // between some but not all of the non-free sections`
`  fuwMove('NFPurpose', 'placeholderNFExcerptPurpose', (opts.OptionNFExcerpt)) ||`
`  fuwMove('NFPurpose', 'placeholderNFPurpose');`
`  fuwMove('NFCommercial', 'placeholderNFPortraitCommercial', (opts.OptionNFPortrait)) ||`
`  fuwMove('NFCommercial', 'placeholderNFCommercial');`
`  fuwMove('NFReplaceable', 'placeholderNFPortraitReplaceable', (opts.OptionNFPortrait)) ||`
`  fuwMove('NFReplaceable', 'placeholderNFReplaceable');`
`  fuwMove('NFReplaceableText', 'placeholderNFExcerptReplaceable', (opts.OptionNFExcerpt)) ||`
`  fuwMove('NFReplaceableText', 'placeholderNFReplaceableText', true);`

`  // submit button goes to Step1 if user has chosen a plain overwrite of an existing file,`
`  // and to the active section of Step3 if otherwise`
`  fuwMove('fuwSubmit', 'UploadScriptStep1', (warn.ImageExists && opts.OverwriteSame)) ||`
`  fuwMove('fuwSubmit', 'detailsOwnWork', opts.OptionOwnWork) ||`
`  fuwMove('fuwSubmit', 'detailsThirdParty', opts.OptionThirdParty) ||`
`  fuwMove('fuwSubmit', 'detailsFreeWebsite', opts.OptionFreeWebsite) ||`
`  fuwMove('fuwSubmit', 'detailsPDOld', opts.OptionPDOld) ||`
`  fuwMove('fuwSubmit', 'detailsPDOther', opts.OptionPDOther) ||`
`  fuwMove('fuwSubmit', 'detailsNFSubject', opts.OptionNFSubject) ||`
`  fuwMove('fuwSubmit', 'detailsNF3D', opts.OptionNF3D) ||`
`  fuwMove('fuwSubmit', 'detailsNFExcerpt', opts.OptionNFExcerpt) ||`
`  fuwMove('fuwSubmit', 'detailsNFCover', opts.OptionNFCover) ||`
`  fuwMove('fuwSubmit', 'detailsNFLogo', opts.OptionNFLogo) ||`
`  fuwMove('fuwSubmit', 'detailsNFPortrait', opts.OptionNFPortrait) ||`
`  fuwMove('fuwSubmit', 'fuwSubmitHost', true);`

`  // Show and hide warnings:`

`  // filename-related warnings:`
`  fuwSetVisible('warningIllegalChars', warn.IllegalChars);`
`  fuwSetVisible('warningBadFilename',  warn.BadFilename);`
`  fuwSetVisible('warningImageOnCommons', warn.ImageOnCommons);`
`  fuwSetVisible('warningImageExists', warn.ImageExists);`
`  fuwMove('warningImageThumb', 'warningImageOnCommons', warn.ImageOnCommons, true) ||`
`  fuwMove('warningImageThumb', 'warningImageExists', true, true);`

`  // notices related to the top-level options:`
`  fuwSetVisible('warningWhyNotCommons', opts.OptionFree);`
`  fuwSetVisible('warningNF', opts.OptionNonFree);`
`  fuwSetVisible('warningNoGood', opts.OptionNoGood);`

`  // warnings related to non-free "used in" article`
`  fuwSetVisible('warningNFArticleNotFound', warn.NFArticleNotFound);`
`  fuwSetVisible('warningNFArticleNotMainspace', warn.NFArticleNotMainspace);`
`  fuwSetVisible('warningUserspaceDraft', warn.UserspaceDraft);`
`  fuwSetVisible('warningNFArticleDab', warn.NFArticleDab);`
`  fuwSetVisible('NFArticleOK', warn.NFArticleOK);`

`  // warnings depending on user status:`
`  //if (fuw.userStatus.match(/problem|newbie|notAutoconfirmed/)) {`
`     fuwSetVisible('warningFreeWebsite', opts.OptionFreeWebsite);`
`     fuwSetVisible('warningOwnWork', opts.OptionOwnWork);`
`     fuwSetVisible('warningPDOther', opts.OptionPDOther);`
`     fuwSetVisible('warningNFSubject', opts.OptionNFSubject);`
`  //}`

`  // hide main sections in case of intended plain overwrite:   `
`  fuwSetVisible('UploadScriptStep2', !(warn.ImageExists && opts.OverwriteSame));`
`  fuwSetVisible('UploadScriptStep3', !(warn.ImageExists && opts.OverwriteSame));`

`  // show/hide top-level options`
`  fuwSetVisible('detailsFreeStatus', opts.OptionFree);`
`  fuwSetVisible('sendToCommons', opts.OptionFree);`

`  // show/hide details sections`
`  fuwSetVisible('detailsNFArticle', opts.OptionNonFree);`
`  fuwSetVisible('detailsNFWorkType', opts.OptionNonFree);`
`  fuwSetVisible('detailsOwnWork', opts.OptionOwnWork);`
`  fuwSetVisible('detailsThirdParty', opts.OptionThirdParty);`
`  fuwSetVisible('detailsFreeWebsite', opts.OptionFreeWebsite);`
`  fuwSetVisible('detailsPDOld', opts.OptionPDOld);`
`  fuwSetVisible('detailsPDOther', opts.OptionPDOther);`
`  fuwSetVisible('detailsNFSubject', opts.OptionNFSubject);`
`  fuwSetVisible('detailsNF3D', opts.OptionNF3D);`
`  fuwSetVisible('detailsNFExcerpt', opts.OptionNFExcerpt);`
`  fuwSetVisible('detailsNFCover', opts.OptionNFCover);`
`  fuwSetVisible('detailsNFLogo', opts.OptionNFLogo);`
`  fuwSetVisible('detailsNFPortrait', opts.OptionNFPortrait);`
`  fuwSetVisible('detailsNFMisc', opts.OptionNFMisc);`

`  fuwSetVisible('EditSummaryDiv', opts.OverwriteSame || opts.OverwriteDifferent);`

`  // set enabled/disabled`
`  // It might be useful to adapt this to be more liberal about`
`  // the order of input, at least for experienced users.`

`  //fuwSetEnabled('Artist3D', opts.PD3D);`
`  //fuwSetEnabled('Country3D', opts.FOP3D);`
`  fuwSetEnabled('ThirdPartyEvidenceLink', opts.ThirdPartyEvidenceOptionLink);`
`  fuwSetEnabled('ThirdPartyOTRSTicket', opts.ThirdPartyEvidenceOptionOTRS);`
`  fuwSetEnabled('NFSubjectPurpose', opts.NFSubjectCheckDiscussed);`
`  fuwSetEnabled('NF3DPurpose', opts.NF3DCheckDiscussed);`
`  fuwSetEnabled('NF3DPermission', opts.NF3DOptionFree);`
`  fuwSetEnabled('USGovLicense', opts.PDOtherUSGov);`
`  fuwSetEnabled('PDOfficialPermission', opts.PDOtherOfficial);`
`  fuwSetEnabled('IneligibleLicense', opts.PDOtherSimple);`
`  fuwSetEnabled('PDOtherPermission', opts.PDOtherOther);`
`  fuwSetEnabled('AnyOther', true);`

`  // need to re-collect the remaining (non-radiobutton) input into the opts object again,`
`  // preparing for validation:`
`  for (i = 0; i < widgets.length; i++) {`
`     var w = widgets[i];`
`     var type = w.type;`

`     if (type != "radio") {`
`        var id = w.id;`
`        var active = !w.disabled && fuwIsVisible(w);`
`        if (active) {`
`           var value = ((type == 'checkbox') ? w.checked : w.value);`
`           opts[id] = value;         `
`        }`
`     }`
`  }`

`  // final step of validation: check if input is sufficient for`
`  // setting the submit buttons active`
`  var valid = fuw.validateInput();`
`  var validForCommons = valid && opts.OptionFree && !(opts.OverwriteSame || opts.OverwriteDifferent)`
`        && !opts.ThirdPartyEvidenceOptionNone;`
`  fuwSetVisible('sendToCommons', opts.OptionFree);`
`  fuwSetEnabled('CommonsButton', validForCommons);`
`  fuwGet('fuwSubmitText').innerHTML = opts.OptionFree ? `
`        (wgULS("`<b>`不`</b>`，我希望在本地上传此文件。`
`", "`<b>`不`</b>`，我希望在本地上傳此文件。") + `
`         wgULS("`<small>`这样它只能用在中文维基百科上。但是，其他人仍然可能會決定", "`<small>`這樣它只能用在中文維基百科上。但是，其他人仍然可能會決定") +`
`         wgULS("將其转移到`<a href='/wiki/WP:COMMONS' target='_blank'>`维基共享资源`</a>`、", "將其轉移到`<a href='/wiki/WP:COMMONS' target='_blank'>`維基共享資源`</a>`、") +`
`         wgULS("或在其他地方使用它。如果您不希望您的文件被转移到共享资源，", "或在其他地方使用它。如果您不希望您的文件被轉移到維基共享資源，") +`
`         wgULS("请考虑添加``（仅用于用户页的文件）或", "請考慮添加``（僅用於用戶頁的文件）或") +`
`         wgULS("``（仅用于非条目及相关模板等的文件）标签。`</small>`", "``（僅用於非條目及相關模板等的文件）標籤。`</small>`")) :`
`        wgULS("上传此文件。", "上傳此檔案。");`
`  fuwGet('SubmitButton').value = validForCommons ? wgULS("上传至本地", "上傳至本地") : wgULS("上传", "上傳");   `
`  fuwSetEnabled('EditSummary', true);`
`  fuwSetEnabled('SubmitButton', valid && (fuw.userStatus != 'notAutoconfirmed'));`
`  if (fuwTesting) {`
`     fuwSetEnabled('SandboxButton', valid);`
`  }`

`  // if we're in testing mode, update the Sandbox display fields`
`  // after each input change. In normal mode, collectInput() will`
`  // only be needed on submit.`
`  if (fuwTesting) {`
`     fuw.collectInput();`
`     fuw.formatOutput(false);`
`     fuwSetVisible('placeholderTestForm', true);`
`  }  `

}

// ============================================================ // methods of the global fuw object // ============================================================

// ============================================================ // report validation status of filename information // ============================================================ // This is called from within fuw.validateInput(), i.e. every // time anything in the whole form is changed. It only reports // results that have previously been cached in the opts and warn // objects. The actual checking is done in the event handler // of the file input boxes. fuwGlobal.prototype.hasValidFilename = function() {

`  var opts = this.opts;`
`  var warn = this.warn;`
`  var valid =   `
`     opts.InputName &&`
`     opts.InputFilename &&`
`     !warn.BadFilename &&`
`     !warn.ImageOnCommons &&`
`     // if image exists on zhwiki, accept only if user has confirmed overwrite:`
`     !(warn.ImageExists && !(opts.OverwriteSame || opts.OverwriteDifferent));`
`  //alert("HasValidFilename: " + valid);`
`  return valid;`

};

// ============================================================ // validation status for common input elements for all free // options // ============================================================ fuwGlobal.prototype.hasValidCommonFreeInput = function() {

`  var opts = this.opts;`
`  var warn = this.warn;`
`  var valid = opts.InputDesc;`
`  //alert("HasValidCommonFreeInput: " + valid);`
`  return valid;`

}; // ============================================================ // validation status for common input elements for all non-free // options // ============================================================ fuwGlobal.prototype.hasValidCommonNFInput = function() {

`  var opts = this.opts;`
`  var warn = this.warn;`
`  var valid =`
`     opts.OptionNonFree &&`
`     opts.InputDesc && `
`     opts.NFArticle &&`
`     opts.Source &&`
`     opts.NFMinimality &&`
`     !warn.NFArticleNotFound &&`
`     !warn.NFArticleNotMainspace &&`
`     !warn.NFArticleDab;`
`  //alert("hasValidCommonNFInput: " + valid);`
`  return valid;`

}; // ============================================================ // Main validation routine. Modify this to tweak which fields // are to be considered obligatory for each case group // ============================================================ fuwGlobal.prototype.validateInput = function() {

`  var opts = this.opts;`
`  var warn = this.warn;`
`  var valid = (`
`     this.hasValidFilename()`
`     &&`
`     (! (opts.OverwriteDifferent && ! opts.EditSummary))`
`     &&`
`     (`
`      ( // overwriting is okay if there is an edit summary`
`       opts.OverwriteSame && opts.EditSummary`
`      )`
`      ||`
`      ( // free options`
`        this.hasValidCommonFreeInput() &&`
`        (`
`         (opts.OptionOwnWork &&`
`          opts.Date &&`
`          opts.OwnWorkLicense)`
`         ||`
`         (opts.OptionThirdParty &&`
`          opts.Author &&`
`          opts.Source &&`
`          opts.Permission &&`
`          (opts.ThirdPartyOtherLicense || opts.ThirdPartyLicense) &&`
`          ((opts.ThirdPartyEvidenceOptionLink && opts.ThirdPartyEvidenceLink) ||`
`           opts.ThirdPartyEvidenceOptionOTRS ||`
`           opts.ThirdPartyEvidenceOptionOTRSForthcoming ||`
`           opts.ThirdPartyEvidenceOptionNone))`
`         ||`
`         (opts.OptionFreeWebsite &&`
`          opts.Author &&`
`          opts.Source &&`
`          (opts.FreeWebsiteOtherLicense || opts.FreeWebsiteLicense) &&`
`          opts.Permission)`
`         ||`
`         (opts.OptionPDOld &&`
`          opts.Author &&`
`          opts.PDOldAuthorLifetime &&`
`          opts.Publication &&`
`          opts.Date &&`
`          opts.Source &&`
`          opts.PDOldOptions && `
`          (! (opts.PDOldOther && ! opts.PDOldPermission)))`
`         ||`
`         (opts.OptionPDOther &&`
`          opts.Author &&`
`          opts.Source &&`
`          ((opts.PDOtherUSGov && opts.USGovLicense) ||`
`           (opts.PDOtherOfficial && opts.PDOfficialPermission) ||`
`           (opts.PDOtherSimple && opts.IneligibleLicense) ||`
`           (opts.PDOtherOther && opts.PDOtherPermission)))`
`       )`
`      ) // end of free options`
`      ||`
`      ( // non-free options`
`        this.hasValidCommonNFInput() &&`
`        (`
`         (opts.OptionNFSubject &&`
`          opts.NFSubjectLicense &&`
`          opts.Author &&`
`          (opts.NFSubjectCheckDedicated ||`
`          (opts.NFSubjectCheckDiscussed && opts.NFSubjectPurpose)))`
`         ||`
`         (opts.OptionNF3D &&`
`          opts.NF3DLicense &&`
`          opts.NF3DCreator &&`
`          opts.Author &&`
`          (opts.NF3DOptionSame ||`
`          (opts.NF3DOptionFree || opts.NF3DPermission)) && `
`          (opts.NF3DCheckDedicated ||`
`           (opts.NF3DCheckDiscussed && opts.NF3DPurpose)))`
`         ||`
`         (opts.OptionNFExcerpt &&`
`          opts.NFExcerptLicense &&`
`          opts.Author &&`
`          opts.NFPurpose)`
`         ||`
`         (opts.OptionNFCover &&`
`          opts.NFCoverLicense &&`
`          opts.Author &&`
`          opts.NFCoverCheckDedicated `
`         )`
`         ||`
`         (opts.OptionNFLogo &&`
`          opts.NFLogoLicense &&`
`          opts.NFLogoCheckDedicated`
`         )`
`         ||`
`         (opts.OptionNFPortrait &&`
`          opts.Publication &&`
`          opts.NFPortraitDeceased &&`
`          opts.Author &&`
`          opts.NFPortraitCheckDedicated &&`
`          opts.NFReplaceable &&`
`          opts.NFCommercial)`
`         ||`
`         (opts.OptionNFMisc &&`
`          opts.NFMiscLicense &&`
`          opts.Author &&`
`          opts.Publication &&`
`          opts.NFPurpose &&`
`          opts.NFReplaceableText &&`
`          opts.NFReplaceable &&`
`          opts.NFCommercial)`
`        )`
`      ) // end of non-free options`
`     )`
`  );`
`  return valid;`

};

// ============================================================= // return which template name will be used as the main // description template // ============================================================= fuwGlobal.prototype.getDescriptionTemplateName = function() {

`  // standard "Information" template for free files:`
`  if (this.opts.OptionFree) return "Information";`
`  // experimental new version of fair-use rationale template,`
`  // designed to fit the fields used in the wizard`
`  else if (this.opts.OptionNonFree) return "Non-free use rationale 2";`
`  return undefined;`

};

// ============================================================= // get the license tag code from the appropriate input element // =============================================================

fuwGlobal.prototype.getStandardLicense = function() {

`  var opts = this.opts;`
`  `

}

fuwGlobal.prototype.getLicense = function() {

`  var opts = this.opts;`
`     // ThirdParty and FreeWebsite have alternative input fields`
`     // for manual entry of other licenses:`
`  var license = {};`
`  if (opts.PDOtherOther || opts.PDOldOther) {`
`     license.special = opts.PDOtherOther ? opts.PDOtherPermission : opts.PDOldPermission;`
`     if (! (license.special.match(/^\s*\{\{.+\}\}\s*$/))) {`
`        license.special = '``';`
`     }`
`  }`
`  else {`
`     license.special = `
`        opts.ThirdPartyOtherLicense || `
`        opts.FreeWebsiteOtherLicense ||`
`        (opts.PDOtherOfficial ? (wgULS("``", "``")) : null) ||`
`        (opts.OptionNFPortrait ? ('``') : null);`
`  }   `
`  if (! license.special) {`
`     // standard, non-parametrized tag licenses from dropdownbox.`
`     var simpleLicense = (opts.OptionOwnWork ? opts.OwnWorkLicense : null) ||`
`         (opts.OptionThirdParty ? opts.ThirdPartyLicense : null) ||`
`         (opts.OptionFreeWebsite ? opts.FreeWebsiteLicense : null) ||`
`         (opts.OptionNFSubject ? opts.NFSubjectLicense : null) ||`
`         (opts.OptionNF3D ? opts.NF3DLicense : null) ||`
`         (opts.OptionNFExcerpt ? opts.NFExcerptLicense : null) ||`
`         (opts.OptionNFCover ? opts.NFCoverLicense : null) ||`
`         (opts.OptionNFLogo ? opts.NFLogoLicense : null) ||`
`         (opts.OptionNFMisc ? opts.NFMiscLicense : null) ||`
`         (opts.PDOtherUSGov ? opts.USGovLicense : null) ||`
`         (opts.PDOtherSimple ? opts.IneligibleLicense : null) ||`
`         (opts.PDUS1923 ? 'PD-US-1923' : null) ||`
`         (opts.PDURAA   ? 'PD-URAA' : null) ||`
`         (opts.PDFormality ? 'PD-US' : null);`

`      // "PD-author" needs parameter, at least on Commons`
`      if (simpleLicense == 'PD-author') {`
`         license.special = '``';`
`      }`
`      else if (this.knownCommonsLicenses[simpleLicense]) {`
`      // make sure we send only those licenses as "standard" licenses`
`      // that exist in the Commons license dropdown box`
`         license.standard = simpleLicense;`
`      }`
`      else {`
`         license.special = '\{\{' + simpleLicense + '\}\}';`
`      }`
`  }`
`  return license;`

};

function fuwSubst(template) {

`  return '``';`

}

// =================================================================== // Produce code for local tracking categories // =================================================================== fuwGlobal.prototype.getTrackingCategory = function() {

`  var opts = this.opts;`
`  var cat = "";`
`  if (opts.OptionFreeWebsite) { cat = wgULS("来自自由授权的外部来源的文件", "來自自由授權的外部來源的檔案"); }`
`  else if (opts.OptionThirdParty) { cat = wgULS("由第三方许可的文件", "由第三方授權的檔案"); }`
`  else if (opts.PDOtherOther || opts.PDOldOther) { cat = wgULS("非标准公有领域声明的文件", "非標準公有領域聲明的檔案"); }`
`  else if (opts.OptionNFSubject || opts.OptionNF3D) { cat = wgULS("作为注解对象上传的非自由文件", "作為註解對象上傳的非自由檔案"); }`
`  if (cat) {`
`     cat = "\n\{\{Category ordered by date|" + cat + "|" + `
`     fuwSubst("CURRENTYEAR") + "|" + fuwSubst("CURRENTMONTH") + "|" + fuwSubst("CURRENTDAY2") + "\}\}";`
`  }`
`  return cat;`

};

// =================================================================== // Get or create an edit summary for the upload // =================================================================== // Note: if we work with the api.php interface, we can have separate // data for the edit summary and the description page, which is far // better than the way the index.php interface does it. // TO DO: need to actually define an input element for a manually // entered edit summary. Must be obligatory when overwriting files. // In other cases we'll use an automatic edit ummary. // =================================================================== fuwGlobal.prototype.getEditSummary = function() {

`  var opts = this.opts;`
`  return (`
`     (opts.EditSummary ? (opts.EditSummary + ' (`[`文件上传向导上传`](https://zh.wikipedia.org/wiki/'_+_mw.config.get\('wgPageName'\)_+_wgULS\(" "wikilink")`)", "|檔案上傳精靈]]上傳)")) : null)||`
`     ("使用`[`文件上传向导上传`](https://zh.wikipedia.org/wiki/"_+_mw.config.get\('wgPageName'\)_+_wgULS\(" "wikilink")`", "|檔案上傳精靈]]上傳") +`
`      (`
`       (opts.OptionOwnWork ? wgULS("自制文件", "自製檔案") : false) ||`
`       (opts.OptionThirdParty ? wgULS("来自其他人的自由版权文件", "來自其他人的自由著作權檔案") : false) ||`
`       (opts.OptionFreeWebsite ? wgULS("来自自由出版来源的文件", "來自自由出版來源的檔案") : false) ||`
`       (opts.OptionPDOld       ? wgULS("以前的公有领域作品", "以前的公有領域作品") : false) ||`
`       (opts.OptionPDOther     ? wgULS("公有领域作品", "公有領域作品") : false) ||`
`       (opts.OptionNFSubject   ? wgULS("作为评论对象的非自由版权作品", "作為評論對象的非自由著作權作品") : false) ||`
`       (opts.OptionNF3D        ? wgULS("非自由版权3D艺术作品描摹", "非自由著作權3D藝術作品描摹") : false) ||`
`       (opts.OptionNFExcerpt   ? wgULS("非自由版权作品摘录", "非自由著作權作品摘錄") : false) ||`
`       (opts.OptionNFCover     ? wgULS("非自由版权封面艺术", "非自由著作權封面藝術") : false) ||`
`       (opts.OptionNFLogo      ? wgULS("非自由版权标志", "非自由著作權標誌") : false) ||`
`       (opts.OptionNFPortrait    ? wgULS("非自由版权历史画像", "非自由著作權歷史畫像") : false) ||`
`       (opts.OptionNFMisc      ? wgULS("非自由版权文件", "非自由著作權檔案") : "")`
`      )`
`     ));`

};

function fuwPackInfo(text, forCommons) {

`  if (forCommons) {`
`     // reformat wikilinks embedded in description fields to adapt them for Commons`
`     text = text.replace(/`\[\[([^\]`]+)\]\]/g, `
`        function(str, p1, offset, s) {`

`           // mark File links as local`
`           if (p1.match(/^:(File|Image):/)) {`
`              return "`[`:zh"``   ``+``   ``p1``   ``+``   ``"`](https://zh.wikipedia.org/wiki/:zh"_+_p1_+_" "wikilink")`";`
`           }      `
`           // leave prefixed links unchanged:`
`           else if (p1.match(/^:[\w\-]+:/)) {`
`              return str;`
`           }`
`           // if the link is piped, add a prefix only`
`           else if (p1.match(/.+\|/)) {`
`              return "`[`:zh:"``   ``+``   ``p1``   ``+``   ``"`](https://zh.wikipedia.org/wiki/:zh:"_+_p1_+_" "wikilink")`";`
`           }`
`           // introduce a pipe`
`           else {`
`              return "`[`"``   ``+``   ``p1``   ``+``   ``"`](https://zh.wikipedia.org/wiki/:zh:"_+_p1_+_" "wikilink")`";`
`           }`
`        }`
`     );`
`     return "``";`
`  } else return text;`

}

// ================================================================ // This is the main method called by the event handler for the // (experimental) submit button. Its main task is to collect the // input into a single string of wikitext for the description page. // ================================================================ fuwGlobal.prototype.collectInput = function() {

`  var opts = this.opts;`

`  // object representing template fields for filling in`
`  // the description template. Pre-loaded with some`
`  // standard settings:`
`  var descFields = this.descFields = { `
`     'Description' : opts.InputDesc,`
`     'Author'      : opts.Author,`
`     'Date'        : opts.Date,`
`     'Source'      : opts.Source`
`  };`
`  // "other information" (outside the template)`
`  this.otherInfo = null;`
`  `
`  if (opts.OptionNonFree) {`
`     descFields.Article = opts.NFArticle;`
`  }`
`  `
`  // add/modify option-specific fields:`
`  switch (opts.MainOption) {`
`     case 'OptionOwnWork':`
`     `
`        // use standard "source" field for optional "how created?" and `
`        // "previously published" input fields.`
`        descFields.Source = fuwAppendLines([`
`           (opts.OwnWorkCreation || "``"), `
`           "`
`\n", `
`           fuwSurroundString(wgULS("`**`先前发布`**`：", "`**`先前釋出`**`："), opts.OwnWorkPublication)]);`
`        var username = mw.user.getName();`
`        descFields.Author = '`[`'``   ``+``   ``username``   ``+``   ``'`](https://zh.wikipedia.org/wiki/User:'_+_username_+_' "wikilink")`';`
`        break;`

`     case 'OptionThirdParty':`
`     `
`        // use standard "permission" field for a compilation of the`
`        // "permission" input field and the various "evidence" options`
`        var evidence = (`
`           opts.ThirdPartyEvidenceOptionLink ? `
`              (wgULS("授权声明所在网址：", "授權聲明所在網址") + opts.ThirdPartyEvidenceLink) :`
`              (opts.ThirdPartyEvidenceOptionOTRS ? `
`              (wgULS("授权协议已转交给OTRS", "授權協議已轉交給OTRS") + `
`                 fuwSurroundString(" Ticket: ", opts.ThirdPartyOTRSTicket) + "\{\{subst:OTRS pending/auto\}\}") :`
`              (opts.ThirdPartyEvidenceOptionOTRSForthcoming ? `
`              wgULS("许可协议将很快转交给OTRS\{\{subst:OTRS pending/auto", "授權條款將很快轉交給OTRS\{\{subst:OTRS pending/auto") + "\}\}" :`
`              (opts.ThirdPartyEvidenceOptionNone ?`
`              wgULS("将按要求提供", "將按要求提供") : null))));`
`        descFields.Permission = fuwAppendLines([`
`           opts.ThirdPartyPermission,`
`           "`
`\n",`
`           fuwSurroundString(wgULS("`**`证据`**`：", "`**`證據`**`："), evidence)]);`
`        break;`
`        `
`     case 'OptionFreeWebsite':`
`        descFields.Permission = opts.Permission;`
`        break;`
`        `
`     case 'OptionPDOld':`
`        // add "lifetime" input to "author" field`
`        descFields.Author = fuwAppendLines([`
`           opts.Author,`
`           "`
`\n",`
`           fuwSurroundString(wgULS("（存活时间：", "（存活時間："), opts.PDOldAuthorLifetime, "）")`
`        ]);`
`        `
`        // combine original and direct source into standard "source" field: `
`        descFields.Source = fuwAppendLines([`
`           fuwSurroundString("`**`原始出版物`**`：", opts.Publication),`
`           "`
`\n",`
`           fuwSurroundString(wgULS("`**`直接来源`**`：", "`**`直接來源`**`："), opts.Source)`
`        ]);`
`        `
`        // no standard tag available for "lack-of-registration" PD-US. Need`
`        // to put this into the "permission" field`
`        if (opts.PDFormality) `
`           descFields.Permission = `
`              wgULS("因为该作品未经版权声明发布", "因為該作品未經著作權聲明釋出") +`
`              wgULS("或没有必要的版权注册，所以版权过期。", "或沒有必要的著作權註冊，所以著作權過期。");`
`     `
`        // add optional "explanation" input to "permission" field`
`        if (opts.PDOldPermission) {`
`           descFields.Permission = fuwAppendLines([`
`              descFields.Permission,`
`              "\n\n",`
`              opts.PDOldPermission`
`           ]);`
`        }`
`        break;`
`        `
`     case 'OptionPDOther':`
`        // Need "permission" field in case of "official item" option`
`        if (opts.PDOtherOfficial) `
`           descFields.Permission = opts.PDOfficialPermission;`
`        break; `

`     case 'OptionNFSubject':`
`        // most FUR elements can be automatically provided:`
`        descFields.Purpose = (`
`           opts.NFSubjectCheckDedicated ? `
`            (wgULS("这张图片是条目描述的主题。", "這張圖片是條目描述的主題。") +`
`             wgULS("整篇条目就是在讨论此作品。", "整篇條目就是在討論此作品")) :`
`           (opts.NFSubjectCheckDiscussed ?`
`            (wgULS("在本条目中支撑百科全书讨论此作品。", "在本條目中支撐百科全書討論此作品。") +`
`             wgULS("该图是为了支撑以下几点：", "該圖是為了支撐以下幾點：") +`
`             "`
`\n" + opts.NFSubjectPurpose) : null)`
`        );`
`        // I hate FURs filled with trivial/predictable/redundant verbiage,`
`        // so we'll just cut it short. And don't anybody dare complain that`
`        // that's not a valid FUR.`
`        descFields.Replaceability = "n.a.";`
`        descFields.Commercial     = "n.a.";`
`        break;`

`     case 'OptionNF3D':`
`        // complex case: we need to assemble attribution and FUR both for the `
`        // original 3D work and for the photographic depiction. Both might be `
`        // non-free.`
`        descFields.Author = fuwAppendLines([`
`           fuwSurroundString(wgULS("`**`原创作品`**`：", "`**`原創作品`**`："), opts.NF3DCreator),`
`           "`
`\n",`
`           fuwSurroundString("`**`作品描述`**`： ", opts.Author)`
`        ]);`
`        descFields.Date = fuwAppendLines([`
`           fuwSurroundString(wgULS("`**`原创作品`**`：", "`**`原創作品`**`："), opts.NF3DOrigDate),`
`           "`
`\n",`
`           fuwSurroundString("`**`作品描述`**`： ", opts.Date)`
`        ]);`
`        descFields.Purpose = (`
`           opts.NF3DCheckDedicated ? `
`            (wgULS("这张图片是条目描述的主题。", "這張圖片是條目描述的主題。") +`
`             wgULS("整篇条目就是在讨论此作品。", "整篇條目就是在討論此作品。")) :`
`           (opts.NF3DCheckDiscussed ? `
`            (wgULS("在本条目中支撑百科全书讨论此作品。", "在本條目中支撐百科全書討論此作品") +`
`             wgULS("该图是为了支撑以下几点：", "該圖是為了支撐以下幾點：") +`
`             "`
`\n" + opts.NF3DPurpose) : null)`
`        );`
`        descFields.Replaceability = "n.a.";`
`        descFields.Commercial    = "n.a.";`
`        descFields["Other information"] = (`
`           opts.NF3DOptionSame ?`
`           (wgULS("该图像由同一作者创建并发布，", "該圖像由同一作者創建並釋出，") +`
`            wgULS("作者亦拥有原作的权利，", "作者亦擁有原作的權利，") +`
`            wgULS("但不能适当地创建替代描述。", "但不能適當地創建替代描述。")) :`
`           (wgULS("该图象的作者已经根据自由许可协议发布摄影作品，", "該圖像的作者已經根據自由授權條款釋出攝影作品，") +`
`            wgULS("或者图象属于公有领域：", "或者圖像屬於公有領域：") + opts.NF3DPermission)`
`        );`
`        break; `
`        `
`     case 'OptionNFExcerpt':`
`        // FURs for screenshots etc. don't normally need to bother`
`        // about replaceability (with free images) and with commercial role,`
`        // but do need to bother about purpose and about replaceability with text.`
`        descFields.Purpose        = opts.NFPurpose;`
`        descFields.Replaceability_text = opts.NFReplaceableText;`
`        descFields.Replaceability = "n.a.";`
`        descFields.Commercial     = "n.a.";`
`        break;`
`        `
`     case 'OptionNFCover':`
`        // cover art gets standard rationales.`
`        descFields.Purpose = `
`           wgULS("在条目顶部作为视觉辨识", "在條目頂部作為視覺辨識") +`
`           wgULS("有关作品的主要途径。", "有關作品的主要途徑。");`
`        descFields.Replaceability = "n.a.";`
`        descFields.Commercial     = "n.a.";`
`        break;`

`     case 'OptionNFLogo':`
`        // logos get standard rationales.`
`        descFields.Purpose = `
`           wgULS("在条目顶部作为视觉辨识", "在條目頂部作為視覺辨識") +`
`           wgULS("有关实体的主要途径。", "有關實體的主要途徑。");`
`        descFields.Replaceability = "n.a.";`
`        descFields.Commercial     = "n.a.";`
`        break;`

`     case 'OptionNFPortrait':`
`        // as with other historic photographs, it is useful to have both`
`        // original publication and direct source`
`        descFields.Source = fuwAppendLines([`
`           fuwSurroundString("`**`原始出版物`**`：", opts.Publication),`
`           "`
`\n",`
`           fuwSurroundString(wgULS("`**`直接来源`**`：", "`**`直接來源`**`："), opts.Source)`
`        ]);   `
`        descFields.Purpose = `
`           wgULS("在人物传记条目顶部作为视觉辨识", "在人物傳記條目頂部作為視覺辨識") +`
`           wgULS("有关人物的主要途径。", "有關人物的主要途徑。");`
`        descFields.Replaceability = opts.NFReplaceable;`
`        descFields.Commercial = opts.NFCommercial;`
`        descFields['Other information'] = `
`           wgULS("照片中人物已于", "照片中人物已於") + opts.NFPortraitDeceased + "去世";`
`        break;`
`        `
`     case 'OptionNFMisc':`
`        descFields.Source = fuwAppendLines([`
`           fuwSurroundString(`
`              "`**`原始出版物`**`：", `
`              opts.Publication,`
`              wgULS("`
`\n`**`直接来源`**`：", "`
`\n`**`直接來源`**`：")),`
`           "",`
`           opts.Source`
`        ]);   `
`        descFields.Purpose = opts.NFPurpose;`
`        descFields.Replaceability = opts.NFReplaceable;`
`        descFields.Replaceability_text = opts.NFReplaceable_text;`
`        descFields.Commercial = opts.NFCommercial; `
`        break;     `
`  }`

`  if (opts.OptionNonFree) {`
`     // common stuff for all non-free files:`
`     `
`     // Minimality field (same for all NF options):`
`     descFields.Minimality = opts.NFMinimality;`
`     `
`     // append optional "extra license" selector and "AnyOther" fields`
`     // to "Other information" field:`
`     descFields['Other information'] = fuwAppendLines([`
`        descFields['Other information'],`
`        "`
`\n",`
`        fuwSurroundString('\{\{', opts.NFExtraLicense, '\}\}'),`
`        "`
`\n",`
`        opts.AnyOther`
`     ]);`
`  }`
`  else {`
`     // common stuff for all free files:`
`     descFields.Other_versions = '';`
`     this.otherInfo = fuwAppendLines([this.otherInfo, "\n\n", opts.AnyOther]);`
`  `
`  }`

};

fuwGlobal.prototype.formatOutput = function(forCommons) {

`  var baseForm = this.ScriptForm;`
`  var targetForm = this.TargetForm;`
`  if (fuwTesting) {`
`     var testForm   = this.TestForm;`
`  }`
`  var opts = this.opts;`
`  var otherInfo = this.otherInfo;`
`  var descFields = this.descFields;`

`  var summary = "{{" + this.getDescriptionTemplateName();`

`  // assemble all fields into the wikitext of the description page:`
`  var fieldOrder = [`
`     'Source', 'Date', 'Author', 'Permission', 'Other_versions',`
`     'Article', 'Purpose', 'Replaceability', 'Replaceability_text', `
`     'Minimality', 'Commercial', 'Other information'`
`  ];`
`  summary += "\n|Description = " + fuwPackInfo(descFields['Description'], forCommons);`
`  for (var i = 0; i < fieldOrder.length; i++) {`
`     if (descFields[fieldOrder[i]]) {`
`        summary += "\n|" + fieldOrder[i] + " = " + descFields[fieldOrder[i]];`
`     }`
`  }`
`  summary += "\n}}\n";`
`  if (otherInfo) {`
`     summary += wgULS("\n;其他信息：\n", "\n;其他訊息：\n") + fuwPackInfo(otherInfo, forCommons) + "\n";`
`  }`

`  var editSummary = this.getEditSummary();`
`  `
`  var license = this.getLicense();`
`  `
`  if (forCommons) {`
`     // pack our description info into an url pointing to the `
`     // standard Commons Special:Upload`
`     // with pre-loaded description fields`

`     summary = summary.replace(/\{\{OTRS pending\}\}/g, fuwSubst("OP"));`

`     if (license.special) {`
`        // manually format the whole description page including the license tag, if it`
`        // isn't one of the bare standard licenses in the dropdown box. Otherwise,`
`        // submit description summary and license as two separate url parameters.`
`        summary = summary + "\n\n" + license.special;`
`     }`
`     return (fuwGetCommonsURL() +`
`        "?title=Special:Upload" +`
`        "&wpUploadDescription=" +`
`        encodeURIComponent(summary) +`
`        (license.standard ? `
`         ("&wpLicense=" + encodeURIComponent(license.standard)) : '') +`
`        "&wpDestFile=" + `
`        encodeURIComponent(opts.InputName));`
`  }`
`  else {`
`     // pack all description into a single "text" parameter to be submitted`
`     // to the local api.php upload.`
`     summary = "==摘要==\n" + `
`        summary + `
`        wgULS("\n==授权协议==\n", "\n==授權協議==\n") + `
`        (license.standard ? ("\{\{" + license.standard + "\}\}") : license.special) +`
`        this.getTrackingCategory();`
`        `
`     if (fuwTesting) {`
`        // Testing mode: show our data in the dummy form`
`        // at the bottom of the page.`
`        fuwGet('placeholderSandboxFilename').innerHTML = opts.InputName;`
`        this.TestForm.SandboxSummary.value = editSummary;`
`        this.TestForm.SandboxText.value = summary;`
`        fuwSetVisible('placeholderTestForm', true);`
`     }`
`     // write output parameters into target form`
`     // I can't believe IE7 is too stupid to simply understand "this.TargetForm.filename.value".`
`     ($('#TargetForm [name="filename"]')[0]).value = opts.InputName;`
`     ($('#TargetForm [name="text"]'    )[0]).value = summary;`
`     ($('#TargetForm [name="comment"]' )[0]).value = editSummary;`
`     ($('#TargetForm [name="token"]'   )[0]).value = mw.user.tokens.get('csrfToken');`

`  }`
`  `

};

function fuwHasUserGroup(group) {

`  // workaround because old IE versions don't have array.indexOf :-(`
`  for (i = 0; i < mw.config.get('wgUserGroups').length; i++) {`
`     if (mw.config.get('wgUserGroups')[i] == group) {`
`        return true;`
`     }`
`  }`
`  return false;`

}

fuwGlobal.prototype.getUserStatus = function() {

`  // function to determine the experience status and userrights of the current user:`
`  // 'anon': not logged in; can't use script.`
`  // 'notAutoconfirmed': can't use local upload, but may use script to prepare upload for Commons`
`  // 'newbie': autoconfirmed but editcount < 100 `
`  //    (may be used in future to adapt instructions more to newbie needs)`
`  // 'problem': 自动确认用户但最近的用户讨论记录中有3次或更多图片相关的警告或存废讨论`
`  //    (may be used in future to produce more strongly worded instructions)`
`  // 'autoconfirmed': regular user`
`  // 'sysop'`

`  if (mw.config.get('wgUserName')) {`
`     if (fuwHasUserGroup('sysop')) {`
`        this.userStatus = 'sysop';`
`     }`
`     else if (fuwHasUserGroup('autoconfirmed') || fuwHasUserGroup('confirmed') || fuwHasUserGroup('eventparticipant')) {`
`        this.userStatus = 'autoconfirmed';`
`        $.ajax({`
`           url     : mw.util.wikiScript( 'api' ),`
`           type    : 'GET',`
`           dataType: 'xml',`
`           traditional : true,`
`           data:   {`
`                    format: 'xml',`
`                    action: 'query',`
`                    meta  : 'userinfo',`
`                    uiprop: 'editcount',`
`                    prop  : 'revisions',`
`                    titles: 'User talk' + mw.config.get('wgUserName'),`
`                    rvprop: 'comment|user',`
`                    rvlimit: 30`
`                   },      `
`           success: function(data) {`
`           // callback func     `
`              var fuw = window.fuw;`
`              if (data) {`
`                 var ui = data.getElementsByTagName('userinfo');`
`                 if (ui) {`
`                    var editcount = ui[0].getAttribute('editcount');`
`                    if (editcount < 100) {`
`                       fuw.userStatus = 'newbie';`
`                    }`
`                 }`
`                 var revs = data.getElementsByTagName('rev');`
`                 var countWarn = 0;`
`                 for (i = 0; i < revs.length; i++) {`
`                    var rev = revs[i];`
`                    var usr = rev.getAttribute('user');`
`                    var cmt = rev.getAttribute('comment');`
`                    if ((usr == 'ImageTaggingBot') ||`
`                        (cmt.search(/(tagging for deletion of `\[\[File)|(Uploading files missing)|(File (source and )?copyright licensing problem)|(Speedy deletion nomination of \[\[File)|(Notification: listing at \[\[possibly unfree files)/) >= 0)) {
                        countWarn += 1;   //这里的search需要改成中文的匹配
                     } //注意：中文维基没ImageTaggingBot这个机器人
                  }
                  if (countWarn >= 3) {
                     fuw.userStatus = 'problem';
                  }
               }
            }
         });
      }
      else {
         this.userStatus = 'notAutoconfirmed';
      }
   }
   else {
      this.userStatus = 'anon';
   }
};

// =================================================================
// Convenience function for getting the regular index.php
// interface of Commons. Not very elegant.
// =================================================================
function fuwGetCommonsURL() {
   if (document.URL.match(/^https:/))
      return "https://commons.wikimedia.org/w/index.php";
   else
      return "http://commons.wikimedia.org/w/index.php";
}

// ==================================================================
// functions for building form elements
// ==================================================================
fuwMakeRadiobutton = function(group, option, checked, event) {
   // Stupid IE7 doesn't get "value" attribute unless it's created in this convoluted way.
   // Annoying.
   var node = $('<input type="radio" id="' + option + '" name="' + group + '" value="' + option + '"></input>')[0];
   if (checked) node.checked = true;
   node.onclick = event || fuwRadioClick;
   node.onclick = event || fuwRadioClick;
   fuwAppendInput(option, node);
};
fuwMakeTextfield = function(label, event) {
   var node  = document.createElement('input');
   node.type = 'text';
   node.name = label;
   node.size = fuwDefaultTextboxLength;
   node.onchange = event || fuwUpdateOptions;
   // only for testing:
   //node.value = label;
   fuwAppendInput(label, node);
};
fuwMakeTextarea = function(label, event) {
   var node  = document.createElement('textarea');
   node.name = label;
   node.rows = fuwDefaultTextareaLines;
   node.style.width = fuwDefaultTextareaWidth;
   node.onchange = event || fuwUpdateOptions;
   //only for testing:
   //node.innerHTML = label;
   fuwAppendInput(label, node);
};
fuwMakeCheckbox = function(label, checked, event) {
   var node  = document.createElement('input');
   node.name = label;
   node.type = 'checkbox';
   //only for testing:
   //node.title= label;
   node.checked = checked;
   node.onchange = event || fuwUpdateOptions;
   fuwAppendInput(label, node);
};
fuwMakeHiddenfield = function(name, value, id) {
   var node   = document.createElement('input');
   node.name  = name;
   node.type  = 'hidden';
   node.value = value;
   fuwAppendInput((id || name), node);
};
fuwMakeAnchor = function(label, href, content) {
   var node   = document.createElement('a');
   node.name  = label;
   node.target= "_blank";
   node.href  = href;
   node.innerHTML = content;
   fuwAppendInput(label, node);
};
fuwMakeSelection = function(name, values) {
   var root = document.createElement('select');
   var current = root;
   try {
      for (i=0; i<values.length; i++) {
         var line = values[i];
         var entry;
         if (line.length === 0) {
            current = root;
         }
         else if (line.length === 1) {
            entry = document.createElement('optgroup');
            entry.setAttribute('label', line[0]);
            root.appendChild(entry);
            current = entry;
         }
         else {
            entry = document.createElement('option');
            entry.setAttribute('value', line[0]);
            entry.setAttribute('title', '{{' + line[0] + '}}');
            entry.innerHTML = line[1];
            if (line.length > 2) {
               entry.setAttribute('selected', 'selected');
            }
            current.appendChild(entry);
         }
      }
   } catch (e) { alert("Name: " + name + ", i=" + i); }
   root.name = name;
   root.onchange = fuwUpdateOptions;
   fuwAppendInput(name, root);
};
function fuwMakeWikilink(place, target, redlink, display) {

   place = fuwGet(place);
   var id = place.id;
   var anchor;
   if (place.tagName == 'A') {
      anchor = place;
   }
   else {
      anchor = document.createElement('a');
      place.appendChild(anchor);
   }
   anchor.href = mw.util.getUrl(target);
   anchor.title = target;
   anchor.innerHTML = target;
   anchor.className = (redlink ? 'new' : null);
}

function fuwAppendInput(label, content) {
   // append a newly created input element to an existing
   // span element marked as id="placeholderXYZ"
   var node = fuwGet('placeholder' + label);
   var old  = fuwGet(label);
   if (old) {
      old.parentNode.removeChild(old);
   }
   content.id = content.id || label;
   if (node) {
      while (node.hasChildNodes()) {
         node.removeChild(node.firstChild);
      }
      node.appendChild(content);
   }
}

// ======================================================
// move an element away from its current position
// and append it to a target element if condition is true
// ======================================================
function fuwMove(mv, tg, condition, toStart) {
   if (condition) {
      move   = fuwGet(mv);
      target = fuwGet(tg);
      if (move && target) {
         var parent = move.parentNode;
         if (target!==parent) {
            parent.removeChild(move);
            if (toStart) {
               target.insertBefore(move, target.firstChild);
            }
            else {
               target.appendChild(move);
            }
         }
      }
      else {
         alert("找不到元素：move=" + mv + "(" + move + "), target=" + tg + "(" + target + ")");
      }
   }
   return condition;
}

// ===================================================
// make an element visible/invisible
// ===================================================
function fuwSetVisible(tg, condition) {
   target = fuwGet(tg);
   if (target) {
      if (condition) {
         $(target).show();
      }
      else {
         $(target).hide();
      }
   }
   else {
      alert("找不到元素：" +  (tg.nodeType ? tg.id : tg));
   }
}

// ===================================================
// set enabled/disabled status for an element and/or
// all input controls contained in it.
// ===================================================
function fuwSetEnabled(tg, condition) {
   target = fuwGet(tg);
   try {
      var elements = (target.tagName.match(/^(input|textarea|select|button|a)$/i) ?
         [target] :
         $('#' + target.id + ' *'));
      for (i = 0; i<elements.length; i++) {
         if (elements[i].tagName.match(/^(input|textarea|select|button|a)$/i)) {
            elements[i].disabled = (condition ? null : "disabled");
         }
      }
   } catch (e) { alert("Element not found: " +  (tg.nodeType ? tg.id : tg)); }
}

// ===================================================
// convenience function to check whether a given
// element is currenly visible. Needs to check display
// property of the element and its ancestors
// ===================================================
function fuwIsVisible(el) {
   element = fuwGet(el);
   if (!element) return false;
   el = element.id;

   var visible = true;
   while (element !== document.body) {
      if (element.style.display == "none") {
         visible = false;
         break;
      }
      element = element.parentNode;
   }
   return visible;
}

// ===================================================
// cleanup filename
// ===================================================
function fuwCleanFilename() {
   var nameBox = window.fuw.ScriptForm.InputName;
   var oldname = name = $.trim(nameBox.value);

   if (name) {
      // strip accidentally added [[|]] or [[:|:]] brackets
      name = name.replace(/(^\[\[:?)|(\]`\]$)/g, "");`
`     // strip accidentally added "File:" prefix`
`     name = name.replace(/^(File|Image):/, "");`
`     // replace underscores with spaces`
`     name = name.replace(/_/g, " ");`
`     // uppercase first letter`
`     name = name.charAt( 0 ).toUpperCase() + name.slice(1);`
`  }`
`  if (oldname != name) {`
`     nameBox.value = name;`
`  }`
`  // always return true so the next validation step will proceed:`
`  return true;`

}

// ================================================== // check filename for technically illegal // characters, trying to fix them automatically // ================================================== function fuwCheckLegalFilename() {

`  var nameBox = window.fuw.ScriptForm.InputName;`
`  var oldname = name = $.trim(nameBox.value);`

`  if (name) {`
`     // resolve accidentally entered html entities and URI-encoded %XX character codes`
`     name = name.replace(/\&[a-z]+;/g, fuwHtmlEntityDecode);`
`     name = name.replace(/(\%[A-F0-9]{2,2})/g, decodeURI);`
`     // remove illegal characters # < > [ ] | { } /:`
`     // using a best guess for an acceptable replacement`
`     name = name.replace(/[<`\[\{]/g, "(");
      name = name.replace(/[>\]`\}]/g, ")");`
`     name = name.replace(/[#:\|]/g,  ",");`
`     name = name.replace(/\//g, "-");`
`     // remove sequences of tildes`
`     name = name.replace(/\~{3,}/g, "---");`
`     // remove initial slash`
`     name = name.replace(/^\//, "");`
`  }`
`  `
`  if (oldname != name) {`
`     window.fuw.warn.IllegalChars = true;`
`     nameBox.value = name;`
`     return false;`
`  }`
`  else {`
`     window.fuw.warn.IllegalChars = false;`
`     return true;`
`  }`

} function fuwHtmlEntityDecode(str) {

`  // hack to translate accidentally entered html entity code`
`  // into actual characters`
`  var ta=document.createElement('textarea');`
`  ta.innerHTML=str.replace(/</g,'<').replace(/>/g,'>');`
`  return ta.value;`

}

// ======================================================= // Check against various common patterns of poorly chosen // filenames (too short / too generic) // ======================================================= function fuwCheckPoorFilename() {

`  var nameBox = window.fuw.ScriptForm.InputName;`
`  var name = $.trim(nameBox.value);`
`   name = name.replace(/\.(png|gif|jpg|jpeg|xcf|pdf|mid|ogg|ogv|svg|djvu|tiff|tif|oga)$/i, "");`

`  // name should be at least 10 characters long, excluding file type extension`
`  var tooShort = (name.length < 5);`
`  `
`  // common generic filename patterns: `
`  // IMG......jpg`
`  // Image....jpg`
`  // DSC......jpg`
`  // Picture......jpg`
`  // Pic..........jpg`
`  // anything that has fewer than 3 alphabetic letters and then just numbers`
`  var pattern = /^(img|image|dsc|picture|pic)?(\\s*|\_*|[a-z]{,3})?\\d+$/i;`
`  var auto = name.match(pattern);`

`  window.fuw.warn.BadFilename = (tooShort || auto);`
`  return !tooShort && !auto;`

}

// ======================================================= // check if file extensions match between local filename // and target filename input box. Automatically append // appropriate extension to target filename if they don't. // ======================================================= function fuwCheckFileExtension() {

`  var nameBox = window.fuw.ScriptForm.InputName;`
`  var name = $.trim(nameBox.value);`
`  var fileBox = window.fuw.TargetForm.file;`
`  var file = fileBox.value;`
`  `
`  // cancel check if no filename has been provided yet`
`  if (!file || !name) return true;`
`  `
`  var extensions = /.+\.(png|gif|jpg|jpeg|xcf|pdf|mid|ogg|ogv|svg|djvu|tiff|tif|oga)$/i;`
`  var mimetypes = {`
`     "png"  : "image/png",`
`     "gif"  : "image/gif",`
`     "jpg"  : "image/jpeg",`
`     "jpeg" : "image/jpeg",`
`     "xcf"  : "image/x-xcf",`
`     "pdf"  : "application/pdf",`
`     "mid"  : "audio/rtp-midi",`
`     "ogg"  : "audio/ogg",`
`     "ogv"  : "video/ogg",`
`     "svg"  : "image/svg+xml",`
`     "djvu" : "image/vnd.djvu",`
`     "tiff" : "image/tiff",`
`     "tif"  : "image/tiff",`
`     "oga"  : "video/ogg"`
`  };   `

`  var found = extensions.exec(file);`
`  var fileExt = found ? found[1].toLowerCase() : "";`
`  found = extensions.exec(name);`
`  var nameExt = found ? found[1].toLowerCase() : "";`
`  var mime = mimetypes[fileExt]; `
`  `
`  if (fileExt && mime && (mimetypes[nameExt] != mime)) {`
`     nameBox.value = name.replace(/\.?$/, ('.' + fileExt));`
`  }`
`  return true;`

}

// ============================================================ // Check if a file under the chosen name already exists, // either locally or on Commons. // Store results in the fuw.warn object, so warnings will // be displayed on the next fuwUpdateOptions() call // ============================================================ function fuwCheckFileExists() {

`  // this is an asynchronous AJAX function.`
`  // results won't yet be present when this function returns.`

`  var nameBox = window.fuw.ScriptForm.InputName;`
`  var name = $.trim(nameBox.value);`

`  // using the jQuery wrapper for the Ajax functionality:`
`  $.ajax({`
`     url     : mw.util.wikiScript( 'api' ),`
`     type    : 'GET',`
`     dataType: 'xml',`
`     traditional : true,`
`     data:   {`
`              format: 'xml',`
`              action: 'query',`
`              titles: 'File:' + name,`
`              prop  : 'imageinfo',`
`              iiprop: 'url|user',`
`              iiurlwidth: 120`
`             },      `
`     success: function(resp) {`
`     // callback function, called when API query has succeeded:`
`        // see if the request has returned info from an existing image:`
`        var foundlist = resp.getElementsByTagName('ii');`
`        var exists = (foundlist.length >= 1);`
`        var isCommons = false;`
`        if (exists) {`

`           // extract description data from http response.`
`           // see `<https://www.mediawiki.org/wiki/API:Properties#imageinfo_.2F_ii>` `
`           // for structure of API response`
`           var foundImg = foundlist[0];`
`           isCommons = (foundImg.parentNode.parentNode.getAttribute('imagerepository')=='shared');`

`           // need this data for creating our own image thumb link`
`           var width = foundImg.getAttribute('thumbwidth');`
`           var height = foundImg.getAttribute('thumbheight');`
`           var thumbURL = foundImg.getAttribute('thumburl');`
`           var lastUser = foundImg.getAttribute('user');`
`           var descURL = foundImg.getAttribute('descriptionurl');`

`           // API returns link to local description page even for Commons images.`
`           // However, we want a direct link to Commons.`
`           if (isCommons) {`
`              descURL = descURL.replace(/zh\.wikipedia\.org/, "commons.wikimedia.org");`
`              descURL = descURL.replace(/\/\/secure\.wikimedia\.org\/wikipedia\/en/, "commons.wikimedia.org");`
`           }`

`           // build the image info into the warning section of our page:`
`           thumbDiv = fuwGet('warningImageThumb');`
`           if (thumbDiv) {`
`           `
`              // make all links point to description page:`
`              var thumbA = thumbDiv.getElementsByTagName('a');`
`              for (i = 0; i<thumbA.length; i++) {`
`                 thumbA[i].setAttribute('href', descURL);`
`              }`
`              // insert the image itself:`
`              var thumbImg = thumbDiv.getElementsByTagName('img');`
`              if (thumbImg.length > 0) {`
`                 thumbImg = thumbImg[0];`
`                 thumbImg.setAttribute('src', thumbURL);`
`                 thumbImg.setAttribute('width', width);`
`                 thumbImg.setAttribute('height', height);`
`              }`
`              // insert the name of the last uploader:`
`              var thumbSpan = fuwGet('existingImageUploader');`
`              // TO DO: turn this into a proper link`
`              if (thumbSpan) thumbSpan.innerHTML = lastUser;`
`           }`

`        }`
`        warn = window.fuw.warn;`
`        warn.ImageOnCommons = exists && isCommons;`
`        warn.ImageExists    = exists && !isCommons;`

`        fuwUpdateOptions();`
`     }`
`  });`

}

// =========================================================== // onchange event handler for the local filename box // =========================================================== fuwValidateFile = function() {

`  fuwCheckFileExtension();`
`  fuwUpdateOptions();`

};

// =========================================================== // onchange event handler for the name input box // =========================================================== fuwValidateFilename = function() {

`  fuwCleanFilename();`
`  if (`
`     fuwCheckLegalFilename() &&`
`     fuwCheckPoorFilename() &&`
`     fuwCheckFileExtension()) {`
`     // after fuwCheckFileExists(),`
`     // fuwUpdateOptions will be triggered`
`     // by the callback function after Ajax completion`
`     fuwCheckFileExists();`
`  }`
`  else {`
`     // if there's been no Ajax call.`
`     fuwUpdateOptions();`
`  }`

};

// ========================================================== // function fuwValidateNFArticle() // ========================================================== // This is the validation routine for the obligatory // article-to-be-used-in field for non-free files. It queries // api.php about the target article through an Ajax call. // It will store error info in the fuw.warn object, // triggering the following error on the next updateOptions(): // \* warningNFArticleNotFound : target page doesn't exist. // \* warningNFArticleNotMainspace : target is not an article. // \* warningNFArticleDab : target is a disambiguation page. // Redirects will automatically be substituted. // ========================================================== fuwValidateNFArticle = function() {

`  var nameBox = window.fuw.ScriptForm.NFArticle;`
`  oldname = name = nameBox.value;`
`  `
`  // cleanup article name:`
`  // automatically fix accidentally added `[`...`](https://zh.wikipedia.org/wiki/... "wikilink")` and`
`  // regularize underscores`
`  name = $.trim(name);`
`  name = name.replace(/(^`\[\[)|(\]`\]$)/g, "");`
`  // automatically fix article names entered as full urls:`
`  name = name.replace(/^https?:\/\/zh\.wikipedia\.org\/wiki\//, "");`
`  name = name.replace(/^https?:\/\/zh\.wikipedia\.org\/w\/index\.php\?title=/, "");`
`  name = name.replace(/_/g, " ");`
`  if (name != oldname) nameBox.value = name;`
`  `
`  // do nothing more if field was blank`
`  if (!name) return;`

`  // using the jQuery wrapper for the Ajax functionality:`
`  $.ajax({`
`     url     : mw.util.wikiScript( 'api' ),`
`     type    : 'GET',`
`     dataType: 'xml',`
`     traditional : true,`
`     data:   {`
`              format: 'xml',`
`              action: 'query',`
`              titles: name,`
`              prop  : 'info|categories|links'`
`             },      `
`     success: function(resp) {`
`     // callback function, called when API query has succeeded:`
`        var errorType = 0;`
`        var pg = resp.getElementsByTagName('page')[0];`
`        var title = pg.getAttribute('title');`
`        var target = title;`
`        if (pg.getAttribute('missing') != null) {`
`           // no page found under this title.`
`           errorType = 1;`
`        }           `
`        else {`
`           var userspace = false;`
`           var ns = pg.getAttribute('ns');`
`           var rd = pg.getAttribute('redirect');`
`           if (ns != 0) {`
`              // not a mainspace page!`
`              errorType = 2;`

`              // try to detect if the target might be a user space draft:               `
`              if (title.match(new RegExp("User( talk)?:" + mw.config.get('wgUserName')))) {`
`                 userspace = true;`
`              }`
`           }`
`           else if (rd != null) {`
`              // redirect page`
`              // API returns an empty redirect="" attribute if`
`              // the page is a redirect`
`              var targets = pg.getElementsByTagName('pl');`
`              for (i=0; i<targets.length; i++) {`
`                 var link = targets[i];`
`                 if (link.getAttribute('ns')==0) {`
`                    target = link.getAttribute('title');`
`                    errorType = 3;`
`                    break;`
`                 }`
`              }`
`           }`
`           else {`
`              // check for disambiguation categories`
`              var cats = pg.getElementsByTagName('cl');`
`              for (i=0; i<cats.length; i++) {`
`                 var cat = cats[i];`
`                 if (cat.getAttribute('title') == wgULS("Category:全部消歧义页面", "Category:全部消歧义页面")) {`
`                    errorType = 4;`
`                    break;`
`                 }`
`              }  `
`           }`
`        }`
`        warn = window.fuw.warn;`
`        warn.NFArticleNotFound = (errorType==1);`
`        warn.NFArticleNotMainspace = (errorType==2);`
`        warn.UserspaceDraft = ((errorType==2) && userspace);`
`        warn.NFArticleDab = (errorType==4);`
`        warn.NFArticleOK  = (errorType==0);`

`        // fix links in error messages:`
`        if (warn.NFArticleNotFound) {`
`           fuwMakeWikilink(fuwGet('warningNFArticleNotFound').getElementsByTagName('A')[0], target, true);`
`        }`
`        else if (warn.NFArticleNotMainspace) {`
`           fuwMakeWikilink(fuwGet('warningNFArticleNotMainspace').getElementsByTagName('A')[0], target);`
`        }`
`        else if (warn.NFArticleDab) {`
`           fuwMakeWikilink(fuwGet('warningNFArticleDab').getElementsByTagName('A')[0], target);`
`        }`
`        else if (warn.NFArticleOK) {`
`           fuwMakeWikilink(fuwGet('NFArticleOK').getElementsByTagName('A')[0], target);`
`        }`
`                      `
`        if (errorType==3) {`
`           // automatically replace title with redirect target`
`           window.fuw.ScriptForm.NFArticle.value = target;`
`           // need to recursively call validation again now`
`           //if (confirm(name + " is a redirect. Follow it to " + target + "?")) {`
`              fuwValidateNFArticle();`
`           //}`
`        }`
`        else {`
`           fuwUpdateOptions();`
`        }          `
`     }`
`  });`

};

// ================================================ // manually reload script (just for testing) // ================================================ function fuwReload() {

`  mw.loader.load( '`<http://localhost/script/uploadscript.js>`' );`
`  fuwReset();`

}

// ================================================ // reset forms // TO DO: add a button that actually triggers this. // ================================================ function fuwReset() {

`  var forms = mw.util.$content[0].getElementsByTagName('form');`
`  for (i = 0; i < forms.length; i++) {`
`     forms[i].reset();`
`     window.fuw.warn = { };`
`     window.fuw.opts = { };`
`  }`
`  fuwSetVisible('UploadScriptArea', true);`
`  fuwSetVisible('fuwSuccess', false);`
`  fuwSetVisible('fuwWaiting', false);`
`  fuwUpdateOptions();`

}

// =============================================== // convenience functions for string handling // =============================================== function fuwAppendLines(parts) {

`  // assemble a string from an array of strings.`
`  // treat every second element as a conditional`
`  // separator that will be included only if `
`  // surrounding elements are non-empty.`
`  var build = "";`
`  for (var i = 0; i < parts.length; i += 2) {`
`     if (parts[i]) {`
`        if (build) build += parts[i - 1];`
`        build += parts[i];`
`     }`
`  }`
`  return build;`

} function fuwSurroundString(prefix, content, suffix) {

`  // put a prefix and a suffix on a string, `
`  // if the input string is non-empty.`
`  if (content) `
`     return (prefix ? prefix : "") + content + (suffix ? suffix : ""); `
`  else return "";`

}

// ======================================================== // convenience function for accessing the contents of the // dummy TargetIFrame // ======================================================== function fuwGetDocumentFromIFrame(iframe) {

`  var doc = (iframe.contentDocument ? iframe.contentDocument : iframe.contentWindow.document);`
`  if (doc.XMLDocument) {`
`     doc = doc.XMLDocument;`
`  }`
`  return doc;`

} // ======================================================== // event handler for the dummy TargetIFrame's onload event. // TO DO: expand stub to add real notification of success, // link to new file page, instructions about how to include // file in articles, etc. // ======================================================== function fuwUploadCompleted() {

`  var doc = fuwGetDocumentFromIFrame(fuwGet('TargetIFrame'));`
`  if (doc) {`
`     //alert(doc);`
`     fuwSetVisible('successThumb', false);`

`     var fuw = window.fuw;`
`     var name = fuw.opts.InputName;`

`     var uploads = doc.getElementsByTagName('upload');`
`     var success = false;`
`     for (i = uploads.length-1; i>=0; i--) {`
`        if (uploads[i].getAttribute('result') == 'Success') {`
`           success = true;`
`           // need to get the real resulting filename here; might be different from the requested one in some cases.`
`           name = uploads[i].getAttribute('filename');`
`           break;`
`        }`
`     }`
`     if (success) {`

`        // need another ajax call to check the file is actually there,`
`        // and to retrieve its direct thumb img url:`
`        $.ajax({`
`           url     : mw.util.wikiScript( 'api' ),`
`           type    : 'GET',`
`           dataType: 'xml',`
`           traditional : true,`
`           data:   {`
`                    format: 'xml',`
`                    action: 'query',`
`                    titles: 'File:' + name,`
`                    prop  : 'imageinfo',`
`                    iiprop: 'url',`
`                    iiurlwidth: 120`
`                   },      `
`           success: function(resp) {`
`              // callback function, called when API query has succeeded:`
`              // see if the request has returned info from an existing image:`

`              var foundImg = resp.getElementsByTagName('ii')[0];`
`              if (foundImg) {`

`                 // need this data for creating our own image thumb link`
`                 var width = foundImg.getAttribute('thumbwidth');`
`                 var height = foundImg.getAttribute('thumbheight');`
`                 var thumbURL = foundImg.getAttribute('thumburl');`
`                 var lastUser = foundImg.getAttribute('user');`
`                 var descURL = foundImg.getAttribute('descriptionurl');`

`                 // build the thumbnail in the success message:`
`                 thumbDiv = fuwGet('successThumb');`
`                 `
`                 // make link point to description page:`
`                 var thumbA = thumbDiv.getElementsByTagName('a')[0];`
`                 thumbA.href = descURL;`

`                 // insert the image itself:`
`                 var thumbImg = thumbDiv.getElementsByTagName('img')[0];`
`                 thumbImg.setAttribute('src', thumbURL);`
`                 thumbImg.setAttribute('width', width);`
`                 thumbImg.setAttribute('height', height);`
`                 `
`                 fuwSetVisible(thumbDiv, true);`
`              }`
`           }`
`        });`
`        fuwMakeWikilink(`
`           fuwGet('fuwSuccessLink2').getElementsByTagName('a')[0],`
`           'File:' + name);`
`        fuwGet('placeholderExFilename1').innerHTML = name;`
`        fuwGet('placeholderExFilename2').innerHTML = name;`
`        fuwSetVisible('fuwSuccess', true);`
`        fuwSetVisible('fuwWaiting', false);`
`     }`
`     else {`
`        var err = doc.getElementsByTagName('error');`
`        if (err) {`
`           var info = err[0].getAttribute('info');`
`           var details = err[0].getElementsByTagName('detail');`
`           var add = "";`
`           for (i = 0; i < details.length; i++) {`
`              if (add.length > 0) add += ", ";`
`              add += details[i].textContent;`
`           }`
`           if (add) {`
`              info = info + " (" + add + ")";`
`           }`
`           alert(wgULS("上传失败：", "上傳失敗：") + info);`
`        }`
`        else {`
`           alert(wgULS("未知错误：上传可能失败。", "未知錯誤：上傳可能失敗。"));`
`        }`
`     }`
`  }`

}

// ======================================================== // clean out dummy IFrame before submitting a request // ======================================================== function fuwResetTargetIFrame() {

`  var doc = fuwGetDocumentFromIFrame(fuwGet('TargetIFrame'));`
`  if (doc) {`
`     while (doc.hasChildNodes()) {`
`        doc.removeChild(doc.firstChild);`
`     }`
`  }`

}

// ======================================================== // Event handler for the real submit button // ======================================================== function fuwSubmitUpload() {

`  var fuw = window.fuw;`
`  var frm = fuw.TargetForm;`

`  fuw.collectInput();`
`  fuw.formatOutput(false);`

`  // we will use the iframe's onload event to trigger a function that`
`  // adds success notification etc.`
`  fuwResetTargetIFrame();`
`  var ifr = fuwGet('TargetIFrame');`
`  if (ifr.attachEvent) {`
`     // workaround for IE, according to `
`     // `<http://www.nczonline.net/blog/2009/09/15/iframes-onload-and-documentdomain/>
`     ifr.attachEvent("onload", fuwUploadCompleted);`
`  }`
`  else {`
`     // all other browsers`
`     ifr.onload = fuwUploadCompleted;`
`  }`

`  if (fuwTesting) {`
`     fuwSetVisible('placeholderTestForm', false);`
`  }`
`  fuwSetVisible('UploadScriptArea', false);`

`  fuwMakeWikilink(`
`    fuwGet('fuwSuccessLink').getElementsByTagName('a')[0], 'File:' + fuw.opts.InputName);`
`  fuwSetVisible('fuwWaiting', true);`

`  frm.submit();`
`  var opts = window.fuw.opts;`
`  // the API won't overwrite the description page text while overwriting`
`  // a file, which is really, really, really annoying and stupid.`
`  // So in the opts.OverwriteDifferent scenario, we need to edit`
`  // the description page through a separate ajax call. Dang.`
`  if (opts.OverwriteDifferent) {`
`     $.ajax({`
`        url   : mw.util.wikiScript('api'),`
`        type  : 'POST',`
`        dataType : 'xml',`
`        data  : {`
`                 format : 'xml',`
`                 action : 'edit',`
`                 title  : 'File:' + opts.InputName,`
`                 token  : mw.user.tokens.get('csrfToken'),`
`                 summary : opts.EditSummary,`
`                 text   : ($('#TargetForm .[name="text"]')[0]).value`

`                }`
`     });`
`  }`

}

// ======================================================= // Event handler for the Commons submit button // ======================================================= function fuwSubmitCommons() {

`  var fuw = window.fuw;`
`  fuw.collectInput();`
`  var url = fuw.formatOutput(true);`
`  alert(wgULS("您现在将跳转到共享资源。\n请使用共享资源上传表单为文件描述添加类别，然后完成上传。", "你現在將跳轉到共享資源。\n請使用共享資源上傳表單位檔案描述添加類別，然後完成上傳。"));`
`  window.location = url;`

}

// ======================================================= // Event handler for the test submit button // (write description string to sandbox only) // ======================================================= function fuwSubmitSandbox() {

`  var frm = window.fuw.TestForm;`
`  $.ajax({`
`     url     : mw.util.wikiScript( 'api' ),`
`     type    : 'POST',`
`     dataType: 'xml',`
`     data:   {`
`              format: 'xml',`
`              action: 'edit',`
`              title : mw.config.get('wgPageName') + "/sandbox",`
`              token : mw.user.tokens.get('csrfToken'),`
`              recreate : 1,`
`              summary  : frm.SandboxSummary.value,`
`              text     : frm.SandboxText.value`
`             },      `
`     success: function(resp) {`
`        alert("Sandbox page edited!");`
`     }`
`  });`

}

// ======================================================== // convenience wrapper function to replace calls to // document.getElementById() // to avoid browser incompatibility // ======================================================== function fuwGet(target) {

`  if (target && target.nodeType) return target;`
`  else {`
`     var found = $('#' + target);`
`     if (found) return found[0];`
`  }`
`  return undefined;`

}

// ======================================================== // onload hook function, loading this script // ======================================================== $(function() {

`  if (fuwGet('UploadScriptArea')) {`
`     window.fuw = new fuwGlobal();`
`     fuwUpdateOptions();`
`  }`

});