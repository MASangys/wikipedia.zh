/\* Generic code \*/ window.customizeToolbar = function( customizer ) {

`       /* Check if we are in edit mode and the required modules are available and then customize the toolbar */`
`       if ( $.inArray( mw.config.get( 'wgAction' ), ['edit', 'submit'] ) !== -1 ) {`
`               if ( mw.user.options.get('usebetatoolbar') ) {`
`                       mw.loader.using( 'ext.wikiEditor', function () {`
`                               $(document).ready( function() {`
`                                       customizer.call( $( '#wpTextbox1' ) );`
`                               } );`
`                       } );`
`               }`
`       }`

}

/\* If the user manually chose this gadget \*/ if ( mw.user.options.get('gadget-Edittools-vector') ) {

`   customizeToolbar( function() {`
`       this.wikiEditor('addToToolbar', {`
`           'section': 'main',`
`           'group': 'insert',`
`           'tools': {`
`               'category': {`
`                   label: '分类',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/0/0c/VisualEditor_-_Icon_-_Tag.svg/24px-VisualEditor_-_Icon_-_Tag.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "[\[Category:",`
`                           post: "]]"`
`                       }`
`                   }`
`               }`
`           }`
`       } );`

`       this.wikiEditor('addToToolbar', {`
`           'section': 'advanced',`
`           'group': 'format',`
`           'tools': {`
`               'bolditalic': {`
`                   label: '粗斜体',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/b/be/Toolbaricon_bolditalic_A.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "'''''",`
`                           periMsg: '粗斜体文字', `
`                           post: "'''''"`
`                       }`
`                   }`
`               },`

`               'strikethrough': {`
`                   label: '删除线',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/7/72/VisualEditor_-_Icon_-_Strikethrough-s.svg/24px-VisualEditor_-_Icon_-_Strikethrough-s.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "`<s>`",`
`                           post: "`</s>`"`
`                       }`
`                   }`
`               },`

`               'underline': {`
`                   label: '下划线',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/a/a9/VisualEditor_-_Icon_-_Underline-u.svg/24px-VisualEditor_-_Icon_-_Underline-u.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "`<u>`",`
`                           post: "`</u>`"`
`                       }`
`                   }`
`               },`
`               'quote': {`
`                   label: '块引用',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/d/d8/VisualEditor_-_Icon_-_Block-quote.svg/24px-VisualEditor_-_Icon_-_Block-quote.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "`

> ",
>
> `                           post: "`

"

`                       }`
`                   }`
`               },`

`               'justify-left': {`
`                   label: '左对齐',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/7/75/OOjs_UI_icon_align-float-left.svg/24px-OOjs_UI_icon_align-float-left.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "<div style=\"text-align: left;\">",`
`                           post: "`

</div>

"

`                       }`
`                   }`
`               },`

`               'justify-center': {`
`                   label: '居中',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/2/29/OOjs_UI_icon_align-center.svg/24px-OOjs_UI_icon_align-center.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "<div style=\"text-align: center;\">",`
`                           post: "`

</div>

"

`                       }`
`                   }`
`               },`

`               'justify-right': {`
`                   label: '右对齐',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/a/a8/OOjs_UI_icon_align-float-right.svg/24px-OOjs_UI_icon_align-float-right.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "<div style=\"text-align: right;\">",`
`                           post: "`

</div>

"

`                       }`
`                   }`
`               },`

`               'source': {`
`                   label: '源代码',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/2/2c/VisualEditor_-_Icon_-_Source.svg/24px-VisualEditor_-_Icon_-_Source.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "`

``` \"text\"
",
                            post: '
```

'

`                       }`
`                   }`
`               }`
`           }`
`       } );`

`       this.wikiEditor('addToToolbar', {`
`           'section': 'advanced',`
`           'group': 'insert',`
`           'tools': {`
`               'math': {`
`                   label: '数学公式',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/3/30/VisualEditor_-_Icon_-_Equation.svg/24px-VisualEditor_-_Icon_-_Equation.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "`\(",
                            periMsg: '插入数学公式',
                            post: "\)`"`
`                       }`
`                   }`
`               },`

`               'hidden': {`
`                   label: '注释或隐藏文字',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/d/d1/VisualEditor_-_Icon_-_Comment.svg/24px-VisualEditor_-_Icon_-_Comment.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: " "`
`                       }`
`                   }`
`               },`

`               'hline': {`
`                   label: '水平线',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/0/0e/VisualEditor_-_Icon_-_Remove-item.svg/24px-VisualEditor_-_Icon_-_Remove-item.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "----",`
`                           ownline: true`
`                       }`
`                   }`
`               },`

`               'hans-hant': {`
`                   label: '繁简转换',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Chinese_conversion_black.svg/24px-Chinese_conversion_black.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "-{",`
`                           periMsg: '转换文字', `
`                           post: "}-"`
`                       }`
`                   }`
`               },`

`               'references': {`
`                   label: '参考文献区',`
`                   type: 'button',`
`                   icon: '//upload.wikimedia.org/wikipedia/commons/thumb/f/f9/VisualEditor_-_Icon_-_References.svg/24px-VisualEditor_-_Icon_-_References.svg.png',`
`                   action: {`
`                       type: 'encapsulate',`
`                       options: {`
`                           pre: "\n==参考文献==\n{\{reflist}}\n",`
`                       }`
`                   }`
`               }`
`           }`
`       } );`
`   } );`

}