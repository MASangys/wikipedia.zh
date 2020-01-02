> 本文内容由[MediaWiki:Gadget-Edittools-delh.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-Edittools-delh.js)转换而来。


if (/^Wikipedia:(?:頁面|檔案)存廢討論\\//i.test(mw.config.get('wgPageName'))) {

` function getVfdText(code, comment) {`
`   return {`
`     label: comment,`
`     action: {`
`       type: 'encapsulate',`
`       options: {`
`         pre: '{' + '{delh|' + code + '}}\n',`
`         post: '\n----\n: ' + comment + '。--~~' + '~~\n{' + '{delf}}'`
`       }`
`     }`
`   };`
` }`

` function getList(list) {`
`   obj = {}`
`   for (var item in list) {`
`     obj[item] = getVfdText(item, list[item]);`
`   }`
`   return obj;`
` }`

` customizeToolbar(function () {`
`   this.wikiEditor('addToToolbar', {`
`     'sections': {`
`       'delh': {`
`         'type': 'toolbar',`
`         'label': wgULS('结束讨论', '結束討論')`
`       }`
`     }`
`   });`
`   this.wikiEditor('addToToolbar', {`
`     'section': 'delh',`
`     'groups': {`
`       'vfd': {}`
`     }`
`   });`
`   this.wikiEditor('addToToolbar', {`
`     'section': 'delh',`
`     'group': 'vfd',`
`     'tools': {`
`       '请求无效': {`
`         label: wgULS('请求无效', '請求無效'),`
`         type: 'select',`
`         list: getList({`
`           'ir': wgULS('请求无效', '請求無效'),`
`           'rep': wgULS('重复提出，无效', '重複提出，無效'),`
`           'commons': wgULS('应在维基共享资源提请', '應在維基共享資源提請'),`
`           'ne': wgULS('目标页面或档案不存在，无效', '目標頁面或檔案不存在，無效'),`
`           'nq': wgULS('提删者未取得提删资格，无效', '提刪者未取得提刪資格，無效')`
`         })`
`       },`
`       '保留': {`
`         label: wgULS('保留', '保留'),`
`         type: 'select',`
`         list: getList({`
`           'k': wgULS('保留', '保留'),`
`           'sk': wgULS('快速保留', '快速保留'),`
`           'tk': wgULS('暂时保留', '暫時保留'),`
`           'rr': wgULS('请求理由消失', '請求理由消失'),`
`           'dan': wgULS('删后重建', '刪後重建')`
`         })`
`       },`
`       '删除': {`
`         label: wgULS('删除', '刪除'),`
`         type: 'select',`
`         list: getList({`
`           'd': wgULS('删除', '刪除'),`
`           'ifd': wgULS('图像因侵权被删', '圖像因侵權被刪')`
`         })`
`       },`
`       '快速删除': {`
`         label: wgULS('快速删除', '快速刪除'),`
`         type: 'select',`
`         list: getList({`
`           'sd': wgULS('快速删除', '快速刪除'),`
`           'lssd': wgULS('无来源或版权资讯，快速删除', '無來源或版權資訊，快速刪除'),`
`           'svg': wgULS('已改用SVG图形，快速删除', '已改用SVG圖形，快速刪除'),`
`           'nowcommons': wgULS('维基共享资源已提供，快速删除', '維基共享資源已提供，快速刪除'),`
`           'drep': wgULS('多次被删除，条目锁定', '多次被刪除，條目鎖定')`
`         })`
`       },`
`       '转移至其他维基计划': {`
`         label: wgULS('转移至其他维基计划', '轉移至其他維基計劃'),`
`         type: 'select',`
`         list: getList({`
`           'twc': wgULS('转移至维基共享资源', '轉移至維基共享資源'),`
`           'tws': wgULS('转移至维基文库', '轉移至維基文庫'),`
`           'twb': wgULS('转移至维基教科书', '轉移至維基教科書'),`
`           'twq': wgULS('转移至维基语录', '轉移至維基語錄'),`
`           'twt': wgULS('转移至维基词典', '轉移至維基詞典'),`
`           'twt': wgULS('转移至维基词典', '轉移至維基詞典'),`
`           'twvoy': wgULS('转移至维基导游', '轉移至維基導遊'),`
`           'two': wgULS('转移至其他维基计划', '轉移至其他維基計劃')`
`         })`
`       },`
`       '其他处理方法': {`
`         label: wgULS('其他处理方法', '其他處理方法'),`
`         type: 'select',`
`         list: getList({`
`           'c': wgULS('转交侵权', '轉交侵權'),`
`           'm2pfd': wgULS('转送页面存废讨论', '轉送頁面存廢討論'),`
`           'm2ifd': wgULS('转送文件存废讨论', '轉送檔案存廢討論'),`
`           'r': wgULS('重定向', '重定向'),`
`           'cr': wgULS('分类重定向', '分類重定向'),`
`           'm': wgULS('移动', '移動'),`
`           'merge': wgULS('并入', '併入'),`
`           'nc': wgULS('无共识', '無共識')`
`         })`
`       }`
`     }`
`   });`
` });`

}