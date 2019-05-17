//

``` javascript
/*global $:false, catALot:false, mw:false */
/*jshint */

//DO NOT CHANGE THE NEXT LINE
if (mw.config.get('wgUserLanguage').split(/[-_]/)[0] === 'zh')
//DO NOT CHANGE THE PREVIOUS LINE
    mw.messages.set({
        // Preferences
        // new: added 2012-09-19. Please translate.
        // Use user language for i18n
        'cat-a-lot-watchlistpref': "Cat-A-Lot监视列表设置",
        'cat-a-lot-watch_pref': "根据您的参数设置",
        'cat-a-lot-watch_nochange': "监视状态不变",
        'cat-a-lot-watch_watch': "将Cat-A-Lot修改过的页面添加到监视列表",
        'cat-a-lot-watch_unwatch': "将Cat-A-Lot修改过的页面从监视列表中移除",
        'cat-a-lot-minorpref': "标记为小修改",
        'cat-a-lot-editpagespref': "允许Cat-A-Lot修改非文件的页面（包括一般的条目和子分类）",
        'cat-a-lot-docleanuppref': "移除{{Check categories}}和其它小清理",
        'cat-a-lot-subcatcountpref': "最多显示的子分类数",
        'cat-a-lot-config-settings': "参数设置",

        //Progress
        'cat-a-lot-loading': '载入中……',
        'cat-a-lot-editing': '编辑页面',
        'cat-a-lot-editing-of': ' 页面，总共 ',
        'cat-a-lot-editing-end': ' 页面。',
        'cat-a-lot-skipped-already': '以下 $1 页面已经在分类中，所以自动跳过：',
        'cat-a-lot-skipped-not-found': '以下 $1 页面源代码中未找到原来的分类，所以自动跳过：',
        'cat-a-lot-skipped-server': '连接服务器时出错，所以未更改以下 $1 页面：',
        'cat-a-lot-all-done': '全部页面处理完成',
        'cat-a-lot-done': '完成',
        'cat-a-lot-added-cat': '添加到分类 $1',
        'cat-a-lot-copied-cat': '复制到分类 $1',
        'cat-a-lot-moved-cat': '移动到分类 $1',
        'cat-a-lot-removed-cat': '从分类中删除 $1',
        'cat-a-lot-return-to-page': '返回页面',
        'cat-a-lot-cat-not-found': '没有找到分类',


        //as in 17 files selected
        'cat-a-lot-files-selected': '$1 页面已选择',

        //Actions
        'cat-a-lot-copy': '复制',
        'cat-a-lot-move': '移动',
        'cat-a-lot-add': '添加',
        'cat-a-lot-remove-from-cat': '删除此分类',
        'cat-a-lot-enter-name': '输入分类名称',
        'cat-a-lot-select': '选择',
        'cat-a-lot-all': '全部',
        'cat-a-lot-none': '无',

        'cat-a-lot-none-selected': '没有选择文件',
    });
}
//DO NOT CHANGE THE NEXT LINE
if (mw.config.get('wgContentLanguage').split(/[-_]/)[0] === 'zh') {
//DO NOT CHANGE THE PREVIOUS LINE
    mw.messages.set({
        'cat-a-lot-pref-save-summary': "[[Help:Gadget-Cat-a-lot|Cat-a-lot]]正在更新用户设置",
        'cat-a-lot-summary-add': '用[[Help:Cat-a-lot|Cat-a-lot]]添加至[[分类:$1|分类:$1]]',
        'cat-a-lot-summary-copy': '用[[Help:Cat-a-lot|Cat-a-lot]]将页面由[[分类:$1|分类:$1]]复制至[[分类:$2|分类:$2]]中',
        'cat-a-lot-summary-move': '用[[Help:Cat-a-lot|Cat-a-lot]]将页面由[[分类:$1|分类:$1]]移动至[[分类:$2|分类:$2]]中',
        'cat-a-lot-summary-remove': '用[[Help:Cat-a-lot|Cat-a-lot]]删除[[分类:$1|分类:$1]]'
    });
}
//
```