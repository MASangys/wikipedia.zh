> 本文内容由[MediaWiki:Edittool-plus.js](https://zh.wikipedia.org/wiki/MediaWiki:Edittool-plus.js)转换而来。


// //define buttons　定義按鈕與下拉式選單 定义按钮和下拉菜单 addEditButton('btnInterLink',{ src : 'c/c0/Button_link.png', tagOpen : '\[\[', sampleText : wgULS("链接标题","連結標題"), tagClose : '\]\]', speedTip : wgULS("内部链接","內部連結") }); addEditButton('btnInterHashLink',{ src : "9/93/Button_sub_link.png", tagOpen : wgULS("\[\[条目\#","\[\[條目\#"), sampleText : wgULS("章节|文本","章節|文字"), tagClose : "\]\]", speedTip : wgULS("内部段落链接","內部段落連結") }); addEditButton('btnCategoryLink',{ src : "b/b0/Button_category02.png", tagOpen : "\[\[:Category:", sampleText : wgULS("分类名","分類名稱"), tagClose : "\]\]", speedTip : wgULS("分类链接","分類連結") }); addEditButton('btnMediaLink',{ src : '9/9d/Media_icon.png', tagOpen : '\[\[Media:', sampleText : 'Example.ogg', tagClose : '\]\]', speedTip : wgULS('媒体文件链接','媒體文件連結') }); addEditButton('btnExtraLink',{ src : '7/73/External_link_icon.png', tagOpen : '\[', sampleText : wgULS('http://www.example.com 链接标题','http://www.example.com 連結標題'), tagClose : '\]', speedTip : wgULS('外部链接（加前缀 http://）',"外部連結（加首碼 http://）") }); addEditButton('btnTemplateLink',{ src : "9/97/Template_button.png", tagOpen : "{{", sampleText : wgULS('模板名','模板名稱'), tagClose : "}}", speedTip : "模板" }); addEditButton('btnCategory',{ src : "b/b4/Button_category03.png", tagOpen : "\[\[Category:", sampleText : wgULS("分类名","分類名稱"), tagClose : "\]\]", speedTip : wgULS("分类","分類") }); addEditButton('btnRedirect',{ src : "4/47/Button_redir.png", tagOpen : "\#REDIRECT \[\[", sampleText : wgULS("目标条目名","目標條目名稱"), tagClose : "\]\]", speedTip : wgULS("重定向","重新導向") }); addEditButton('btnImage',{ src : 'f/f0/Image_icon.png', tagOpen : '\[\[File:', sampleText : 'Example.jpg', tagClose : '\]\]', speedTip : wgULS('嵌入图像','內嵌圖片') }); addEditButton('btnAdvImage',{ src : "1/1c/Button_advanced_image.png", tagOpen : "\<imagemap\>\\n", sampleText : wgULS("File:图像名 | 100px | 描述\\nrect 0 0 50 50 \[\[链接|链接\]\]\\ncircle 50 50 20 \[\[链接B|链接B\]\]\\ndesc bottom-left\\n","File:圖片名稱 | 100px | 說明\\nrect 0 0 50 50 \[\[連結|連結\]\]\\ncircle 50 50 20 \[\[連結B|連結B\]\]\\ndesc bottom-left\\n"), tagClose : "\</imagemap\>", speedTip : wgULS("高级图像", "進階圖片") }); var __temp="\\nFile:PictureFileName.jpg|"+wgULS("图像题注","圖片題注"); addEditButton('btnGallery',{ src : "9/9e/Btn_toolbar_gallery.png", tagOpen : "\<gallery\>\\n", sampleText : __temp+__temp, tagClose : "\\n\</gallery\>", speedTip : wgULS("画廊", "畫廊") }); addEditButton('btnMath',{ src : '5/5b/Math_icon.png', tagOpen : '\<math\>', sampleText : wgULS("插入数学公式","插入數學公式"), tagClose : '\</math\>', speedTip : wgULS('插入数学公式(LaTeX)',"插入數學公式（LaTeX）") }); addEditButton('btnNowiki',{ src : '8/82/Nowiki_icon.png', tagOpen : '\<nowiki\>', sampleText : wgULS('插入非格式文本','插入非格式文字'), tagClose : '',

`   speedTip   : wgULS('插入非格式文本','非維基格式文字')`

}); addEditButton('btnSigOnly',{

`   src        : 'd/d8/Button_sig_zh.png',`
`   tagOpen    : '~~\~',`
`   sampleText : '',`
`   tagClose   : '',`
`   speedTip   : wgULS('签名（无日期）','簽名（無日期）'),`
`   width      : 12`

}); addEditButton('btnSignature',{

`   src        : '6/6d/Button_sig.png',`
`   tagOpen    : '—~~\~~',`
`   sampleText : '',`
`   tagClose   : '',`
`   speedTip   : wgULS('签名','簽名')`

}); addEditButton('btnHeadline2',{

`   src        : 'e/e9/Button_headline2.png',`
`   tagOpen    : '== ',`
`   sampleText : wgULS('标题文本','標題文字'),`
`   tagClose   : ' ==',`
`   speedTip   : wgULS('二级标题',"二級標題"), `
`   action     : 'lineInsert'`

}); addEditButton('btnHeadline3',{

`   src        : "3/3a/Button_headline3.png",`
`   tagOpen    : "=== ",`
`   sampleText : wgULS("标题文本","標題文字"),`
`   tagClose   : " ===",`
`   speedTip   : wgULS("三级子标题","三級副標題"),`
`   action     : 'lineInsert'`

}); addEditButton('btnHr',{

`   src        : 'a/a4/H-line_icon.png',`
`   tagOpen    : '\n----\n',`
`   sampleText : '',`
`   tagClose   : '',`
`   speedTip   : wgULS('水平线','水平線')`

}); addEditButton('btnBr',{

`   src        : "1/13/Button_enter.png",`
`   tagOpen    : "`
`",`
`   sampleText : "",`
`   tagClose   : "",`
`   speedTip   : wgULS("换行","分行")`

}); addEditButton('btnBold',{

`   src        : '6/6f/Bold_icon.png',`
`   tagOpen    : '\'\'\'',`
`   sampleText : wgULS('粗体',"粗體"),`
`   tagClose   : '\'\'\'',`
`   speedTip   : wgULS('粗体',"粗體")`

}); addEditButton('btnItalic',{

`   src        : 'd/d7/Italic_icon.png',`
`   tagOpen    : '\'\'',`
`   sampleText : wgULS('斜体',"斜體"),`
`   tagClose   : '\'\'',`
`   speedTip   : wgULS('斜体',"斜體")`

}); addEditButton('btnUnderline',{

`   src        : 'f/fd/Button_underline.png',`
`   tagOpen    : '`<span style="text-decoration: underline;">`',`
`   sampleText : wgULS("下划线","底線"),`
`   tagClose   : '`</span>`',`
`   speedTip   : wgULS("下划线","底線")`

}); addEditButton('btnStrike',{

`   src        : "c/c9/Button_strike.png",`
`   tagOpen    : "`<del>`",`
`   sampleText : wgULS("删除线","刪除線"),`
`   tagClose   : "`</del>`",`
`   speedTip   : wgULS("删除线","刪除線")`

}); addEditButton('btnAlignLeft',{

`   src        : "e/ea/Button_align_left.png",`
`   tagOpen    : '`

<div style="text-align: left;">

\\n',

`   sampleText : wgULS("左对齐","靠左對齊"),`
`   tagClose   : "\n`

</div>

",

`   speedTip   : wgULS("左对齐","靠左對齊"),`
`   action     : 'lineInsert'`

}); addEditButton('btnAlignCenter',{

`   src        : "5/5f/Button_center.png",`
`   tagOpen    : '`

<div style="text-align: center;">

\\n',

`   sampleText : wgULS("居中","置中"),`
`   tagClose   : "\n`

</div>

",

`   speedTip   : wgULS("居中","置中"),`
`   action     : 'lineInsert'`

}); addEditButton('btnAlignRight',{

`   src        : "a/a5/Button_align_right.png",`
`   tagOpen    : '`

<div style="text-align: right;">

\\n',

`   sampleText : wgULS("右对齐","靠右對齊"),`
`   tagClose   : "\n`

</div>

",

`   speedTip   : wgULS("右对齐","靠右對齊"),`
`   action     : 'lineInsert'`

}); addEditButton('btnSup',{

`   src        : "6/6a/Button_sup_letter.png",`
`   tagOpen    : "`<sup>`",`
`   sampleText : wgULS("上标","上標"),`
`   tagClose   : "`</sup>`",`
`   speedTip   : wgULS("上标","上標")`

}); addEditButton('btnSub',{

`   src        : "a/aa/Button_sub_letter.png",`
`   tagOpen    : "`<sub>`",`
`   sampleText : wgULS("下标","下標"),`
`   tagClose   : "`</sub>`",`
`   speedTip   : wgULS("下标","下標")`

}); addEditButton('btnBig',{

`   src        : "5/56/Button_big.png",`
`   tagOpen    : '`<span style="font-size:larger;">`',`
`   sampleText : "放大",`
`   tagClose   : "`</span>`",`
`   speedTip   : "放大"`

}); addEditButton('btnSmall',{

`   src        : "5/58/Button_small.png",`
`   tagOpen    : '`<span style="font-size:smaller;">`',`
`   sampleText : wgULS("缩小","縮小"),`
`   tagClose   : "`</span>`",`
`   speedTip   : wgULS("缩小","縮小")`

}); addEditButton('btnShift',{

`   src        : "8/8e/Button_shifting.png",`
`   tagOpen    : ":",`
`   sampleText : "",`
`   tagClose   : "",`
`   speedTip   : wgULS("缩进","縮排"),`
`   action     : 'lineInsert'`

}); addEditButton('btnEnum',{

`   src        : "8/88/Btn_toolbar_enum.png",`
`   tagOpen    : "#",`
`   sampleText : "",`
`   tagClose   : "",`
`   speedTip   : wgULS("数字列表","數字清單"),`
`   action     : 'lineInsert'`

}); addEditButton('btnList',{

`   src        : "1/11/Btn_toolbar_liste.png",`
`   tagOpen    : "*",`
`   sampleText : "",`
`   tagClose   : "",`
`   speedTip   : wgULS("符号列表","符號清單"),`
`   action     : 'lineInsert'`

}); addEditButton('btnDefine',{

`   src        : "d/d3/Button_definition_list.png",`
`   tagOpen    : "; ",`
`   sampleText : wgULS("释义","釋義"),`
`   tagClose   : " : ",`
`   speedTip   : wgULS("定义文本","定義文字"),`
`   action     : 'lineInsert'`

}); addEditButton('btnColor',{

`   src        : "1/1e/Button_font_color.png",`
`   tagOpen    : '`<span style="color: ColorName;">`',`
`   sampleText : wgULS("彩色文本","彩色文字"),`
`   tagClose   : "`</span>`",`
`   speedTip   : wgULS("彩色文本","彩色文字")`

}); addEditButton('btnQuote',{

`   src        : "f/fd/Button_blockquote.png",`
`   tagOpen    : '{\{quote|\n',`
`   sampleText : "引文",`
`   tagClose   : "\n}\}",`
`   speedTip   : wgULS("块引用","塊引用")`

}); addEditButton('btnCode',{

`   src        : "2/23/Button_code.png",`
`   tagOpen    : "`<code>`",`
`   sampleText : wgULS("代码","程式碼"),`
`   tagClose   : "`</code>`",`
`   speedTip   : wgULS("代码文本","程式碼文字")`

}); addEditButton('btnSource',{

`   src        : "d/d2/Button_source.png",`
`   tagOpen    : '`

``` text
',
    sampleText : wgULS("源代码","原始碼"),
    tagClose   : "
```

",

`   speedTip   : wgULS("高亮代码","反白程式碼")`

}); addEditButton('btnComment',{

`   src        : "3/34/Button_hide_comment.png",`
`   tagOpen    : " ",`
`   speedTip   : wgULS("注释或隐藏文字","注釋或隱藏文字")`

}); addEditButton('btnTable',{

`   src        : "0/04/Button_array.png",`
`   tagOpen    : '\n{| border="1" \n|- \n| 第一部分 || 第二部分 \n|- \n| 第三部分 || 第四部分',`
`   sampleText : "",`
`   tagClose   : "\n|}\n",`
`   speedTip   : "插入表格"`

}); addEditButton('btnRef',{

`   src        : "c/c4/Button_ref.png",`
`   tagOpen    : "`<ref>`",`
`   sampleText : wgULS("参考","參考"),`
`   tagClose   : "`</ref>`",`
`   speedTip   : wgULS("参考","參考")`

}); addEditButton('btnRef2',{

`   src        : "c/cf/Button_ref_adv.png",`
`   tagOpen    : '`<ref name="">`',`
`   sampleText : wgULS("同项参考","同項參考"),`
`   tagClose   : '`</ref>`',`
`   speedTip   : wgULS("同项参考","同項參考"),`
`   width      : 12`

}); addEditButton('btnReferences',{

`   src        : "f/fe/Button_refs.png",`
`   tagOpen    : '\n==' + wgULS('参考文献','參考文獻') + '==\n`

<div class=\"references-small\">

\\n

<references>

</references>

\\n

</div>

',

`   sampleText : '',`
`   tagClose   : '',`
`   speedTip   : wgULS("参考文献区","參考文獻區")`

}); delete __temp;

addDropdownMenu("articleEdit",wgULS('条目编辑','條目編輯'),\[

`   {`
`       id         : "elink",`
`       text       : wgULS("外部链接章节","外部連結章節"),`
`       tagOpen    : "\n==外部链接==\n* [" ,`
`       sampleText : wgULS("网页地址 网页说明","網頁位址 網頁說明"),`
`       tagClose   : "]\n"`
`   },`
`   { `
`       id         : "image",`
`       text       : wgULS("地区语言图像","地區語言圖片"),`
`       tagOpen    : "{\{Image\n" ,`
`       sampleText : "\t|zh=無轉換圖像名稱\n\t|zh-hans=简体图像名\n\t|zh-hant= 繁体圖像名稱\n\t|zh-cn=大陆图像名\n\t|zh-tw=臺灣圖像名稱\n\t|zh-hk=香港圖像名稱\n\t|zh=马新图像名\n\t|图像属性\n" ,`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "seealso",`
`       text       : wgULS("参见章节","參見章節"),`
`       tagOpen    : "\n==参见==\n* `[`"``   ``,``   ``sampleText``   ``:``   ``"参见地址"``   ``,``   ``tagClose``   ``:``   ``"`](https://zh.wikipedia.org/wiki/"_,_sampleText_:_"参见地址"_,_tagClose_:_" "wikilink")`\n"`
`   },`
`   { `
`       id         : "Disambig",`
`       text       : wgULS("消歧义","消歧義"),`
`       tagOpen    : "\n`****`可以指：\n" ,`
`       sampleText : wgULS("* `[`歧义1`](https://zh.wikipedia.org/wiki/歧义1 "wikilink")`，描述1\n* `[`歧义2`](https://zh.wikipedia.org/wiki/歧义2 "wikilink")`，描述2","* `[`歧義1`](https://zh.wikipedia.org/wiki/歧義1 "wikilink")`，說明1\n* `[`歧義2`](https://zh.wikipedia.org/wiki/歧義2 "wikilink")`，說明2"),`
`       tagClose   : "\n{\{disambig}\}"`
`   },`
`   { `
`       id         : "otheruses",`
`       text       : wgULS("条目消歧义","條目消歧義"),`
`       tagOpen    : "{\{Otheruses|",`
`       sampleText : "条目名称|subject=本页主題描述|other=同名或類似名的其它條目描述",`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "Current",`
`       text       : wgULS("正在发生","正在發生"),`
`       tagOpen    : "{\{Current}\}",`
`       sampleText : "",`
`       tagClose   : ""`
`   },`
`   { `
`       id         : "noconv",`
`       text       : wgULS("取消繁简转换","取消繁簡轉換"),`
`       tagOpen    : "-\{" ,`
`       sampleText : "",`
`       tagClose   : "}\-"`
`   },`
`   { `
`       id         : "title",`
`       text       : wgULS("标题错误","標題錯誤"),`
`       tagOpen    : "-\{T|",`
`       sampleText : wgULS("正确标题名","正確標題名稱"),`
`       tagClose   : "}\-"`
`   },`
`   { `
`       id         : "noteTA",`
`       text       : wgULS("标题全文转换","標題全文轉換"),`
`       tagOpen    : '{\{noteTA\n',`
`       sampleText : wgULS("|G1=公共组名\n|1=zh-cn:大陆;zh-tw:台湾;zh-hk:香港;zh-sg:新马;\n|2=zh-cn:大陆;zh-tw:台湾;zh-hk:香港;zh-sg:新马;\n","|G1=公共轉換組名稱\n|1=zh-cn:中國大陸;zh-tw:臺灣;zh-hk:香港;zh-sg:新馬;\n|2=zh-cn:中國大陸;zh-tw:臺灣;zh-hk:香港;zh-sg:新馬;\n"),`
`       tagClose   : "}\}"`
`   }`

\]);

addDropdownMenu("articleMaintenance",wgULS('页面维护','頁面維護'),\[

`   { `
`       id         : "stub",`
`       text       : "小作品",`
`       tagOpen    : "\n{\{" ,`
`       sampleText : "" ,`
`       tagClose   : "小作品}\}"`
`   },`
`   {`
`       id         : "inuse",`
`       text       : wgULS("正在编辑","正在編輯"),`
`       tagOpen    : "{\{Inuse}\}",`
`       sampleText : "",`
`       tagClose   : ""`
`   },`
`   {             `
`       id         : "Unreferenced",`
`       text       : wgULS("缺少参考文献","缺少參考文獻"),`
`       tagOpen    : "{\{subst:Unreferenced/auto}\}",`
`       sampleText : "",`
`       tagClose   : ""`
`   },`
`   {             `
`       id         : "Substub",`
`       text       : wgULS("小小条目","小小條目"),`
`       tagOpen    : "{\{subst:Substub/auto}\}",`
`       sampleText : "",`
`       tagClose   : ''`
`   },`
`   {             `
`       id         : "vfd",`
`       text       : wgULS("标示删除","標示刪除"),`
`       tagOpen    : "{\{subst:vfd/auto|",`
`       sampleText : "理由",`
`       tagClose   : "}\}"`
`   },`
`   {             `
`       id         : "sd",`
`       text       : wgULS("标示快速删除","標示快速刪除"),`
`       tagOpen    : "{\{Delete|",`
`       sampleText : "理由",`
`       tagClose   : "}\}"`
`   },`
`   {             `
`       id         : "Copyvio",`
`       text       : wgULS("标示侵权","標示侵權"),`
`       tagOpen    : "\n{\{subst:Copyvio/auto|url=",`
`       sampleText : "*`<http://url1\n*http://url2\n*http://url3>`",`
`       tagClose   : "}\}\n"`
`   },`
`   { `
`       id         : "mergeto",`
`       text       : wgULS("合并本条目到","合併此條目到"),`
`       tagOpen    : "{\{mergeto|",`
`       sampleText : wgULS("合并本条目到的条目名","合併此條目至的條目名稱"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "mergefrom",`
`       text       : wgULS("合并到本条目","合併至此條目"),`
`       tagOpen    : "{\{mergefrom|",`
`       sampleText : wgULS("需要合并到本条目的条目名","需要合併至此條目的條目名稱"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "split",`
`       text       : wgULS("分拆条目","分拆條目"),`
`       tagOpen    : "{\{Split}\}",`
`       sampleText : "",`
`       tagClose   : ""`
`   },`
`   { `
`       id         : "translation",`
`       text       : wgULS("正在翻译","正在翻譯"),`
`       tagOpen    : "{\{subst:Translating/auto|tfrom=",`
`       sampleText : wgULS("在此填入来源","在此填入來源"),`
`       tagClose   : "|tpercent=翻譯進度百分數}\}"`
`   }`

\]);

addDropdownMenu("langTags",wgULS('非中文标明','非中文標明'),\[

`   { `
`       id         : "en",`
`       text       : wgULS("英语","英語"),`
`       tagOpen    : "{\{lang|en|",`
`       sampleText : wgULS("英语","英語"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "de",`
`       text       : wgULS("德语","德語"),`
`       tagOpen    : "{\{lang|de|",`
`       sampleText : wgULS("德语","德語"),`
`       tagClose   : "}\}"`
`   },`
`   {                `
`       id         : "fr",`
`       text       : wgULS("法语","法語"),`
`       tagOpen    : "{\{lang|fr|",`
`       sampleText : wgULS("法语","法語"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "ja",`
`       text       : wgULS("日语","日語"),`
`       tagOpen    : "{\{lang|ja|",`
`       sampleText : wgULS("日语","日語"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "es",`
`       text       : wgULS("西班牙语","西班牙語"),`
`       tagOpen    : "{\{lang|es|",`
`       sampleText : wgULS("西班牙语","西班牙語"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "ar",`
`       text       : wgULS("阿拉伯语","阿拉伯語"),`
`       tagOpen    : "{\{lang|ar|",`
`       sampleText : wgULS("阿拉伯语","阿拉伯語"),`
`       tagClose   : "|\u200E}\}"`
`   },`
`   { `
`       id         : "ru",`
`       text       : wgULS("俄语","俄語"),`
`       tagOpen    : "{\{lang|ru|",`
`       sampleText : wgULS("俄语","俄語"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "he",`
`       text       : wgULS("希伯来语","希伯來語"),`
`       tagOpen    : "{\{lang|he|",`
`       sampleText : wgULS("希伯来语","希伯來語"),`
`       tagClose   : "|\u200E}\}"`
`   },`
`   { `
`       id         : "el",`
`       text       : wgULS("希腊语","希臘語"),`
`       tagOpen    : "{\{lang|el|",`
`       sampleText : wgULS("希腊语","希臘語"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "pt",`
`       text       : wgULS("葡萄牙语","葡萄牙語"),`
`       tagOpen    : "{\{lang|pt|",`
`       sampleText : wgULS("葡萄牙语","葡萄牙語"),`
`       tagClose   : "}\}"`
`   },`
`   { `
`       id         : "langcode",`
`       text       : wgULS("其他语言","其他語言"),`
`       tagOpen    : "{\{lang|"+wgULS("在此填上语言代码|","在此填上語言代碼|"),`
`       sampleText : wgULS("其他语言","其他語言"),`
`       tagClose   : "}\}"`
`   },`
`   {`
`       id         : 'nochineseRedirect',`
`       text       : '非中文重定向',`
`       tagOpen    : '{\{非中文重定向}\}',`
`       sampleText : '',`
`       tagClose   : ''`
`   }`

\]); // </nowiki>