local mHatnote = require('Module:Hatnote') local mHatlist =
require('Module:Hatnote list2') local mArguments --initialize lazily
local mTableTools = require('Module:TableTools') local p = {}

function p.redirectDistinguish (frame)

`   mArguments = require('Module:Arguments')`
`   local args = mArguments.getArgs(frame)`
`   return p._redirectDistinguish(args)`

end

function p._redirectDistinguish(args)

`   if not args[1] then`
`       return mHatnote.makeWikitextError(`
`           '未指定重定向',`
`           'Template:Redirect-distinguish',`
`           args.category`
`       )`
`   end`
`   local redirectTitle = mw.title.new(args[1])`
`   if redirectTitle and redirectTitle.exists then`
`       if not redirectTitle.isRedirect then`
`           args[1] = args[1] .. ''`
`       end`
`   elseif not string.match(args[1], 'REDIRECT%d+') and not args[1] == 'TERM' then`
`       args[1] = args[1] .. ''`
`   end`
`   if not args[2] then`
`       return mHatnote.makeWikitextError(`
`           '未指定要区分的页面',`
`           'Template:Redirect-distinguish',`
`           args.category`
`       )`
`   end`
`   args = mTableTools.compressSparseArray(args)`
`   --Assignment by removal here makes for convenient concatenation later`
`   local redirect = table.remove(args, 1)`
`   local image = '`[`Disambig_gray.svg`](https://zh.wikipedia.org/wiki/File:Disambig_gray.svg "fig:Disambig_gray.svg")`'`
`   local text = string.format(`
`       '「\'\'\'-{zh;zh-hans;zh-hant;|%s}-\'\'\'」-{zh-hans:重定向;zh-hant:重新導向;}-至此。它不应与%s相混淆。',`
`       redirect,`
`       mHatlist.orList(args, true, true)`
`   )`
`   text = image .. '  ' .. text`
`   return mHatnote._hatnote(text)`

end

return p

[Category:顶注重定向需要审阅的条目](https://zh.wikipedia.org/wiki/Category:顶注重定向需要审阅的条目 "wikilink")
[Category:无效重定向](https://zh.wikipedia.org/wiki/Category:无效重定向 "wikilink")