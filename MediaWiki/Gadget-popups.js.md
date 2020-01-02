> 本文内容由[MediaWiki:Gadget-popups.js](https://zh.wikipedia.org/wiki/MediaWiki:Gadget-popups.js)转换而来。


(function($, mw) {

//

    <nowiki>
    //////////////////////////////////////////////////
    // Translatable strings
    //////////////////////////////////////////////////
    //
    // See instructions at
    // http://en.wikipedia.org/wiki/Wikipedia:Tools/Navigation_popups/Translation

    window.popupStrings = {
      /////////////////////////////////////
      // summary data, searching etc.
      /////////////////////////////////////
      'article': wgULS('条目', '條目'),
      'category': wgULS('分类', '分類'),
      'categories': wgULS('分类', '分類'),
      'image': wgULS('文件', '檔案'),
      'images': wgULS('文件', '檔案'),
      'stub': wgULS('小作品', '小作品'),
      'section stub': wgULS('小章节', '小章節'),
      'Empty page': wgULS('空页面', '空頁面'),
      'kB': wgULS('千字节', '千位元組'),
      'bytes': wgULS('字节', '位元組'),
      'day': wgULS('日', '日'),
      'days': wgULS('日', '日'),
      'hour': wgULS('时', '時'),
      'hours': wgULS('时', '時'),
      'minute': wgULS('分', '分'),
      'minutes': wgULS('分', '分'),
      'second': wgULS('秒', '秒'),
      'seconds': wgULS('秒', '秒'),
      'week': wgULS('周', '周'),
      'weeks': wgULS('周', '周'),
      'search': wgULS('搜索', '搜尋'),
      'SearchHint': wgULS('搜索包含 %s 的页面', '搜尋包含 %s 的頁面'),
      'web': wgULS('站点', '站點'),
      'global': wgULS('全域', '全域'),
      'globalSearchHint': wgULS('在所有维基媒体项目中搜索 %s', '在所有維基媒體項目中搜尋 %s'),
      'googleSearchHint': wgULS('用 Google 搜索 %s', '用 Google 搜尋 %s'),
      'more...': wgULS('更多...', '更多...'),
      /////////////////////////////////////
      // article-related actions and info
      // (some actions also apply to user pages)
      /////////////////////////////////////
      'actions': wgULS('动作', '動作'),         ///// view articles and view talk
      'popupsMenu': wgULS('Popups', 'Popups'),
      'disable previews': wgULS('禁用预览', '禁用預覽'),
      'togglePreviewsHint': wgULS('切换本页 Popups 的预览开关', '切換本頁 Popups 的預覽開關'),
      'toggle previews': wgULS('切换预览开关', '切換預覽開關'),
      'reset': wgULS('复位', '複位'),
      'disable': wgULS('禁用 Popups', '禁用 Popups'),
      'disablePopupsHint': wgULS('在本页禁用 Popups，刷新页面以重新启用。', '在本頁禁用 Popups，重新整理頁面以重新啟用。'),
      'purgePopupsHint': wgULS('复位 Popups，清除所有缓存数据。', '複位 Popups，清除所有快取資料。'),
      'PopupsHint': wgULS('复位 Popups，清除所有缓存数据。', '複位 Popups，清除所有快取資料。'),
      'spacebar': wgULS('空格', '空格'),
      'view': wgULS('查看', '檢視'),
      'view article': wgULS('查看条目', '檢視條目'),
      'viewHint': wgULS('前往 %s', '前往 %s'),
      'talk': wgULS('讨论', '討論'),
      'talk page': wgULS('讨论页', '討論頁'),
      'this revision': wgULS('此修订版本', '此修訂版本'),
      'revision %s of %s': wgULS('页面 $2 的修订版本 $1', '頁面 $2 的修訂版本 $1'),
      'Revision %s of %s': wgULS('页面 $2 的修订版本 $1', '頁面 $2 的修訂版本 $1'),
      'the revision prior to revision %s of %s': wgULS('页面 $2 的修订版本 $1 之前的修订版本', '頁面 $2 的修訂版本 $1 之前的修訂版本'),
      'Toggle image size': wgULS('点击切换图片大小', '點擊切換圖片大小'),
      'del': wgULS('删除', '删除'),                 ///// delete, protect, move
      'delete': wgULS('删除', '删除'),
      'deleteHint': wgULS('删除 %s', '删除 %s'),
      'undeleteShort': wgULS('反', '反'),
      'UndeleteHint': wgULS('恢复 %s', '恢復 %s'),
      'protect': wgULS('保护', '保護'),
      'protectHint': wgULS('保护 %s', '保護 %s'),
      'unprotectShort': wgULS('解除', '解除'),
      'unprotectHint': wgULS('解除对 %s 的保护', '解除對 %s 的保護'),
      'move': wgULS('移动', '移動'),
      'move page': wgULS('移动页面', '移動頁面'),
      'MovepageHint': wgULS('修改 %s 的标题', '修改 %s 的標題'),
      'edit': wgULS('编辑', '編輯'),               ///// edit articles and talk
      'edit article': wgULS('编辑条目', '編輯條目'),
      'editHint': wgULS('修改 %s 的内容', '修改 %s 的內容'),
      'edit talk': wgULS('编辑讨论页', '編輯討論頁'),
      'new': wgULS('新', '新'),
      'new topic': wgULS('新主题', '新主题'),
      'newSectionHint': wgULS('在 %s 增加新的评论主题', '在 %s 增加新的評論主題'),
      'null edit': wgULS('空编辑', '空編輯'),
      'nullEditHint': wgULS('制造一次对 %s 的空编辑', '製造一次對 %s 的空編輯'),
      'hist': wgULS('历史', '歷史'),               ///// history, diffs, editors, related
      'history': wgULS('历史', '歷史'),
      'historyHint': wgULS('%s 的修订历史', '%s 的修訂歷史'),
      'last': wgULS('最近', '最近'),
      'lastEdit': wgULS('最近更改', '最近更改'),
      'show last edit': wgULS('最近一次更改', '最近一次更改'),
      'Show the last edit': wgULS('显示最近一次更改的差异', '顯示最近一次更改的差異'),
      'lastContrib': wgULS('最近编辑', '最近編輯'),
      'last set of edits': wgULS('最近编辑', '最近編輯'),
      'lastContribHint': wgULS('显示由最后一位编辑者制造的差异', '顯示由最後一位編輯者製造的差異'),
      'cur': wgULS('当前', '當前'),
      'diffCur': wgULS('与当前版本的差异', '與目前版本的差異'),
      'Show changes since revision %s': wgULS('显示自修订版本 %s 的差异', '顯示自修訂版本 %s 的差異'),
      '%s old': wgULS('%s 前', '%s 前'), // as in 4 weeks old
      'oldEdit': wgULS('旧编辑', '舊編輯'),
      'purge': wgULS('清除缓存', '清除快取'),
      'purgeHint': wgULS('清除服务器中 %s 的缓存', '清除伺服器中 %s 的快取'),
      'raw': wgULS('源代码', '原始碼'),
      'rawHint': wgULS('查看 %s 的源代码', '檢視 %s 的原始碼'),
      'render': wgULS('简单', '簡單'),
      'renderHint': wgULS('显示 %s 的纯HTML解析', '顯示 %s 的純HTML解析'),
      'Show the edit made to get revision': wgULS('显示编辑以得到修订版本', '顯示編輯以得到修訂版本'),
      'sinceMe': wgULS('自我', '自我'),
      'changes since mine': wgULS('自我修订的差异', '自我修訂的差異'),
      'sinceMeHint': wgULS('显示自我上次修改以来的差异', '顯示自我上次修改以來的差異'),
      'Couldn\'t find an edit by %s\nin the last %s edits to\n%s': wgULS('在 $3 最近 $2 次编辑中找不到 $1 做出的修改', '在 $3 最近 $2 次編輯中找不到 $1 做出的修改'),
      'eds': wgULS('编辑', '編輯'),
      'editors': wgULS('编辑者', '編輯者'),
      'editorListHint': wgULS('列出编辑过 %s 的用户', '列出編輯過 %s 的用戶'),
      'related': wgULS('相关', '相關'),
      'relatedChanges': wgULS('相关更改', '相關更改'),
      'related changes': wgULS('相关更改', '相關更改'),
      'RecentchangeslinkedHint': wgULS('显示相关 %s 的修改', '顯示相關 %s 的修改'),
      'editOld': wgULS('编辑旧版', '編輯舊版'),          ///// edit old version, or revert
      'rv': wgULS('回退', '回退'),
      'revert': wgULS('回退', '回退'),
      'revertHint': wgULS('回退到 %s', '回退到 %s'),
      'undo': wgULS('撤销', '撤銷'),
      'undoHint': wgULS('撤销这次编辑', '撤銷這次編輯'),
      'defaultpopupRedlinkSummary': wgULS('取消到空页面[[%s|%s]]的链接，通过[[WP:POP|popups]]', '取消到空頁面[[%s|%s]]的連結，透過[[WP:POP|popups]]'),
      'defaultpopupFixDabsSummary': wgULS('消歧义[[%s|%s]]到[[%s|%s]]，通过[[WP:POP|popups]]', '消歧義[[%s|%s]]到[[%s|%s]]，透過[[WP:POP|popups]]'),
      'defaultpopupFixRedirsSummary': wgULS('忽略从[[%s|%s]]到[[%s|%s]]的重定向，通过[[WP:POP|popups]]', '忽略從[[%s|%s]]到[[%s|%s]]的重定向，透過[[WP:POP|popups]]'),
      'defaultpopupExtendedRevertSummary': wgULS('回退到$2在$1时制作的修订版本$3，通过[[WP:POP|popups]]', '回退到$2在$1時製作的修訂版本$3，透過[[WP:POP|popups]]'),
      'defaultpopupRevertToPreviousSummary': wgULS('回退到修订版本%s的上一个版本，通过[[WP:POP|popups]]', '回退到修訂版本%s的上一個版本，透過[[WP:POP|popups]]'),
      'defaultpopupRevertSummary': wgULS('回退到修订版本%s，通过[[WP:POP|popups]]', '回退到修訂版本%s，透過[[WP:POP|popups]]'),
      'defaultpopupQueriedRevertToPreviousSummary': wgULS('回退到修订$1（由$3在$2时制作）的上一个修订版本，通过[[WP:POP|popups]]', '回退到修訂$1（由$3在$2時製作）的上一個修訂版本，透過[[WP:POP|popups]]'),
      'defaultpopupQueriedRevertSummary': wgULS('回退到$3在$2时制作的修订版本$1，通过[[WP:POP|popups]]', '回退到$3在$2時製作的修訂版本$1，透過[[WP:POP|popups]]'),
      'defaultpopupRmDabLinkSummary': wgULS('移除到消歧义页[[%s|%s]]的链接，通过[[WP:POP|popups]]', '移除到消歧義頁[[%s|%s]]的連結，透過[[WP:POP|popups]]'),
      'Redirects': wgULS('重定向', '重定向'), // as in Redirects to ...
      ' to ': wgULS('到', '到'),           // as in Redirects to ...
      'Bypass redirect': wgULS('忽略重定向', '忽略重定向'),
      'Fix this redirect': wgULS('修复重定向', '修復重定向'),
      'disambig': wgULS('消歧义', '消歧義'),          ///// add or remove dab etc.
      'disambigHint': wgULS('消歧义这个链接到 [[%s|%s]]', '消歧義這個連結到 [[%s|%s]]'),
      'Click to disambiguate this link to:': wgULS('点击以消歧义这个链接到：', '點擊以消歧義這個連結到：'),
      'remove this link': wgULS('移除链接', '移除連結'),
      'remove all links to this page from this article': wgULS('移除此条目到这页的所有链接', '移除此條目到這頁的所有連結'),
      'remove all links to this disambig page from this article': wgULS('移除此条目到这消歧义的所有链接', '移除此條目到這消歧義的所有連結'),
      'mainlink': wgULS('主链接', '主連結'),          ///// links, watch, unwatch
      'wikiLink': wgULS('内部链接', '內部連結'),
      'wikiLinks': wgULS('内部链接', '內部連結'),
      'links here': wgULS('链入', '鏈入'),
      'whatLinksHere': wgULS('链入页面', '鏈入頁面'),
      'what links here': wgULS('链入页面', '鏈入頁面'),
      'WhatlinkshereHint': wgULS('显示链接到 %s 的页面', '顯示連結到 %s 的頁面'),
      'unwatchShort': wgULS('取消', '取消'),
      'watchThingy': wgULS('监视', '監視'),  // called watchThingy because {}.watch is a function
      'watchHint': wgULS('加入 %s 到我的监视列表', '加入 %s 到我的監視列表'),
      'unwatchHint': wgULS('从我的监视列表移除 %s', '從我的監視列表移除 %s'),
      'Only found one editor: %s made %s edits': wgULS('仅找到一位编者：%s 制造了 %s 次编辑', '僅找到一位編者：%s 製造了 %s 次編輯'),
      '%s seems to be the last editor to the page %s': wgULS('%s 看上去是 %s 这页的最后一位编者', '%s 看上去是 %s 這頁的最後一位編者'),
      'rss': wgULS('RSS', 'RSS'),
      /////////////////////////////////////
      // diff previews
      /////////////////////////////////////
      'Diff truncated for performance reasons': wgULS('差异已被截断', '差異已被截斷'),
      'Old revision': wgULS('旧版本', '舊版本'),
      'New revision': wgULS('新版本', '新版本'),
      'Something went wrong :-(': wgULS('出问题了 :-(', '出問題了 :-('),
      'Empty revision, maybe non-existent': wgULS('空的修订，可能并不存在', '空的修訂，可能並不存在'),
      'Unknown date': wgULS('未知日期', '未知日期'),
      /////////////////////////////////////
      // other special previews
      /////////////////////////////////////
      'Empty category': wgULS('空的分类', '空的分類'),
      'Category members (%s shown)': wgULS('分类成员（%s 显示）', '分類成員（%s 顯示）'),
      'No image links found': wgULS('未找到文件链接', '未找到檔案連結'),
      'File links': wgULS('文件链接', '檔案連結'),
      'not commons': wgULS('维基共享中无此名称的文件。', '維基共享中無此名稱的檔案。'),
      'commons only': wgULS('此文件来自维基共享。', '此檔案來自維基共享。'),
      'No image found': wgULS('找不到文件', '找不到檔案'),
      'commons dupe': wgULS('维基共享中存在此文件的副本。', '維基共享中存在此檔案的副本。'),
      'commons conflict': wgULS('维基共享中存在此文件名称不同的副本。', '維基共享中存在此檔名稱不同的副本。'),
      /////////////////////////////////////
      // user-related actions and info
      /////////////////////////////////////
      'user': wgULS('用户', '用戶'),               ///// user page, talk, email, space
      'user page': wgULS('用户页', '用戶頁'),
      'user talk': wgULS('用户讨论', '用戶討論'),
      'edit user talk': wgULS('编辑用户讨论', '編輯用戶討論'),
      'leave comment': wgULS('留言', '留言'),
      'email': wgULS('电邮', '電郵'),
      'email user': wgULS('电邮用户', '電郵用戶'),
      'EmailuserHint': wgULS('给 %s 发送电子邮件', '給 %s 發送電子郵件'),
      'space': wgULS('空间', '空間'), // short form for userSpace link
      'PrefixindexHint': wgULS('显示 %s 的用户空间', '顯示 %s 的用戶空間'),
      'count': wgULS('统计', '統計'),             ///// contributions, tree, log
      'edit counter': wgULS('编辑次数', '編輯次數'),
      'katelinkHint': wgULS('%s 的编辑次数', '%s 的編輯次數'),
      'contribs': wgULS('贡献', '貢獻'),
      'contributions': wgULS('贡献', '貢獻'),
      'deletedContribs': wgULS('已删除的贡献', '已刪除的貢獻'),
      'ContributionsHint': wgULS('%s 的用户贡献', '%s 的用戶貢獻'),
      'tree': wgULS('树', '樹'),
      'contribsTreeHint': wgULS('根据名字空间查看 %s 的贡献', '根據名字空間檢視 %s 的貢獻'),
      'log': wgULS('日志', '日誌'),
      'user log': wgULS('用户日志', '用戶日誌'),
      'userLogHint': wgULS('显示 %s 的用户日志', '顯示 %s 的用戶日誌'),
      'arin': wgULS('ARIN 查询', 'ARIN 查詢'),             ///// ARIN lookup, block user or IP
      'Look up %s in ARIN whois database': wgULS('在 ARIN Whois 数据库中查询 %s', '在 ARIN Whois 數據庫中查詢 %s'),
      'unblockShort': wgULS('解除', '解除'),
      'block': wgULS('封禁', '封禁'),
      'block user': wgULS('封禁用户', '封禁用戶'),
      'IpblocklistHint': wgULS('解封 %s', '解封 %s'),
      'BlockipHint': wgULS('封禁 %s', '封禁 %s'),
      'block log': wgULS('封禁日志', '封禁日誌'),
      'blockLogHint': wgULS('显示 %s 的封禁日志', '顯示 %s 的封禁日誌'),
      'protectLogHint': wgULS('显示 %s 的保护日志', '顯示 %s 的保護日誌'),
      'pageLogHint': wgULS('显示 %s 的日志', '顯示 %s 的日誌'),
      'deleteLogHint': wgULS('显示 %s 的删除日志', '顯示 %s 的刪除日誌'),
      'Invalid %s %s': wgULS('选项 %s 不可用：%s', '選項 %s 不可用：%s'),
      /////////////////////////////////////
      // Autoediting
      /////////////////////////////////////
      'Enter a non-empty edit summary or press cancel to abort': wgULS('输入编辑摘要，或按取消中止操作', '輸入編輯摘要，或按取消中止操作'),
      'Failed to get revision information, please edit manually.\n\n': wgULS('获取修订版本信息失败，请手动修改。\n\n', '獲取修訂版本資訊失敗，請手動修改。\n\n'),
      'The %s button has been automatically clicked. Please wait for the next page to load.': wgULS('按钮 %s 已被自动点击，请等待下一个页面加载。', '按鈕 %s 已被自動點擊，請等待下一個頁面載入。'),
      'Could not find button %s. Please check the settings in your javascript file.': wgULS('找不到按钮 %s，请检查您 JavaScript 文件中的设置。', '找不到按鈕 %s，請檢查您 JavaScript 檔案中的設定。'),
      /////////////////////////////////////
      // Popups setup
      /////////////////////////////////////
      'Open full-size image': wgULS('查看全尺寸图像', '檢視全尺寸影像'),
      'zxy': wgULS('zxy', 'zxy')
    };
    //</nowiki>

`   mw.loader.load('//en.wikipedia.org/w/index.php?title=MediaWiki:Gadget-popups.js&action=raw&ctype=text/javascript');`

})(jQuery, mediaWiki);