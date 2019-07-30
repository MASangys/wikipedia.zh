if(\!("bluedeck" in window)) bluedeck = {};

if(\!("external_config" in bluedeck)) bluedeck.external_config = {};

if(\!("easy_archive" in bluedeck.external_config)) bluedeck.external_config.easy_archive = {};

bluedeck.external_config.easy_archive.never_enable_on_these_pages_regex = \[

`               /^Wikipedia:首页$/,`
`               /^Wikipedia:頁面存廢討論.*$/,`
`               /^Wikipedia:檔案存廢討論.*$/,`
`               /^Help:目录$/,`
`               /^Wikipedia:分類索引$/,`
`               /^Portal:特色內容$/,`
`               /^Portal:新聞動態$/,`
`               /^Wikipedia:社群首页$/,`
`               /^Wikipedia:方針與指引$/,`
`               /^Wikipedia:互助客栈$/,`
`               /^Wikipedia:IRC聊天频道\/IRC$/,`
`               /^Wikipedia:联络我们$/,`
`               /^Wikipedia:关于$/,`
`               /^Draft:.*$/,`
`               /^Wikipedia:五大支柱$/`
`           ];`

bluedeck.external_config.easy_archive.never_enable_on_these_namespaces_int = \[0\];

mw.loader.load("//meta.wikimedia.org/w/index.php?title=user:bluedeck/source/easy-archive.js\&action=raw\&ctype=text/javascript");