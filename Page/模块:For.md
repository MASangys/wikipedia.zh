local mArguments --initialize lazily local mHatlist = require('Module:Hatnote list') local mHatnote = require('Module:Hatnote') local yesNo = require('Module:Yesno') local p = {}

\--Implements  from the frame --uses capitalized "For" to avoid collision with Lua reserved word "for" function p.For (frame)

`   mArguments = require('Module:Arguments')`
`   return p._For(mArguments.getArgs(frame))`

end

\--Implements  but takes a manual arguments table function p._For (args)

`   local use = args[1]`
`   if (not use) then`
`       return mHatnote.makeWikitextError(`
`           'context参数缺失。请使用``作为「其他情况」的顶注。',`
`           'Template:For#错误',`
`           args.category`
`       )`
`   end`
`   local pages = {}`
`   function two (a, b) return a, b, 1 end --lets us run ipairs from 2`
`   for k, v in two(ipairs(args)) do table.insert(pages, v) end`
`   local image = '`[`Disambig_gray.svg`](https://zh.wikipedia.org/wiki/File:Disambig_gray.svg "fig:Disambig_gray.svg")`'`
`   return mHatnote._hatnote(`
`       image .. '  ' .. mHatlist.forSeeTableToString(``),`
`       {selfref = args.selfref}`
`   ) .. (`
`           (use == 'other uses') and yesNo(args.category) and`
`           '' or ''`
`       )`

end

return p

[Category:使用不寻常参数的顶注模板](https://zh.wikipedia.org/wiki/Category:使用不寻常参数的顶注模板 "wikilink")