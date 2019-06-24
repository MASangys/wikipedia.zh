local mHatnote = require('Module:Hatnote') local mHatlist =
require('Module:Hatnote list2') local mArguments --initialize lazily
local p = {}

function p.technicalReasons (frame)

`   mArguments = require('Module:Arguments')`
`   local args = mArguments.getArgs(frame)`
`   return p._technicalReasons(args)`

end

function p._technicalReasons (args)

`   --Return an error if no redirect's provided`
`   if not args[1] then`
`       return mHatnote.makeWikitextError(`
`           'redirect参数缺失',`
`           'Template:Technical reasons',`
`           args.category`
`       )`
`   end`
`   --get maxArg manually because getArgs() and table.maxn aren't friends`
`   local maxArg = 0`
`   for k, v in pairs(args) do`
`       if type(k) == 'number' and k > maxArg then maxArg = k end`
`   end`
`   --If there's only 1–2 arguments, set from to 1 to default things nicely.`
`   --Note that if (not args[2]) this doesn't matter either way.`
`   local from = maxArg > 2 and 2 or 1`
`   --Structure the forSee table`
`   local forSee = mHatlist.forSeeArgsToTable(args, from)`
`   --Suppresses defaulting; for-see table rows that would include defaulting`
`   --are set to nil.`
`   for k, v in pairs(forSee) do`
`       if not v.use or #v.pages == 0 then forSee[k] = nil end`
`   end`
`   --Stringify the forSee table or set it nil`
`   forSee = #forSee ~= 0 and mHatlist.forSeeTableToString(forSee) or nil`
`   local image = '`[`Disambig_gray.svg`](https://zh.wikipedia.org/wiki/File:Disambig_gray.svg "fig:Disambig_gray.svg")`'`
`   local lead = string.format(`
`       '由于`[`技术限制`](https://zh.wikipedia.org/wiki/Wikipedia:命名常规_\(技术限制\)#不接受的字符 "wikilink")`，「\'\'\'%s\'\'\'」-{zh-hans:重定向;zh-hant:重新導向;}-至此。',`
`       args[1]`
`   )`
`   local text = image .. '  ' .. table.concat({lead, forSee})`
`   `
`   local options = {extraclasses = 'plainlinks selfreference noprint', selfref = true}`
`   `
`   return mHatnote._hatnote(text, options)`

end

return p