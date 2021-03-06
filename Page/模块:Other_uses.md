> 本文内容由[模块:Other uses](https://zh.wikipedia.org/wiki/模块:Other_uses)转换而来。


local mHatnote = require('Module:Hatnote') local mHatlist = require('Module:Hatnote list') local mArguments --initialize lazily local mTableTools --initialize lazily local libraryUtil = require('libraryUtil') local checkType = libraryUtil.checkType local p = {}

\-- Produces standard  implementation function p.otheruses(frame)

`   mArguments = require('Module:Arguments')`
`   mTableTools = require('Module:TableTools')`
`   local args = mTableTools.compressSparseArray(mArguments.getArgs(frame))`
`   local title = mw.title.getCurrentTitle().prefixedText`
`   return p._otheruses(args, {title=title})`

end

\--Implements "other \[x\]" templates with otherText supplied at invocation function p.otherX(frame)

`   mArguments = require('Module:Arguments')`
`   mTableTools = require('Module:TableTools')`
`   local x = frame.args[1]`
`   local args = mTableTools.compressSparseArray(`
`       mArguments.getArgs(frame, {parentOnly = true})`
`   )`
`   local options = {`
`       title = mw.title.getCurrentTitle().prefixedText,`
`       otherText = x`
`   }`
`   return p._otheruses(args, options)`

end

\-- Main generator function p._otheruses(args, options)

`   --Type-checks and defaults`
`   checkType('_otheruses', 1, args, 'table', true)`
`   args = args or {}`
`   checkType('_otheruses', 2, options, 'table')`
`   if not (options.defaultPage or options.title) then`
`       error('"_otheruses"选项表中未提供默认标题数据', 2)`
`   end`
`   local emptyArgs = true`
`   for k, v in pairs(args) do`
`       if type(k) == 'number' then emptyArgs = false break end`
`   end`
`   if emptyArgs then`
`       args = {`
`           options.defaultPage or`
`           mHatnote.disambiguate(options.title, options.disambiguator)`
`       }`
`   end`
`   --Generate and return hatnote`
`   local image = '`[`Disambig_gray.svg`](https://zh.wikipedia.org/wiki/File:Disambig_gray.svg "fig:Disambig_gray.svg")`'`
`   local text = mHatlist.forSeeTableToString({{`
`       use = options.otherText and "其他" .. options.otherText or nil,`
`       pages = args`
`   }})`
`   text = image .. '  ' .. text`
`   return mHatnote._hatnote(text)`

end

return p