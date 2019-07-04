local mHatnote = require('Module:Hatnote') local mHatlist =
require('Module:Hatnote list') local mArguments --initialize lazily
local mTableTools --initialize lazily local libraryUtil =
require('libraryUtil') local checkType = libraryUtil.checkType local p =
{}

function p.distinguish(frame)

`   mArguments = require('Module:Arguments')`
`   mTableTools = require('Module:TableTools')`
`   local args = mArguments.getArgs(frame)`
`   local selfref = args.selfref`
`   local text = args.text`
`   args = mTableTools.compressSparseArray(args)`
`   return p._distinguish(args, text, selfref)`

end

function p._distinguish(args, text, selfref)

`   checkType("_distinguish", 1, args, 'table')`
`   if #args == 0 and not text then return '' end`
`   local image = '`[`Confusion_humor.svg`](https://zh.wikipedia.org/wiki/File:Confusion_humor.svg "fig:Confusion_humor.svg")`'`
`   local text = string.format(`
`       "`**`餵雞溫馨提示`**`：各位幽默感缺失的編者，此處有對應的正常版本「`*`%s`*`」以供食用。",`
`       text or mHatlist.orList(args, true, true)`
`   )`
`   text = image .. '  ' .. text`
`   hnOptions = {selfref = selfref}`
`   return mHatnote._hatnote(text, hnOptions)`

end

function p.manylink(frame)

`   mArguments = require('Module:Arguments')`
`   mTableTools = require('Module:TableTools')`
`   local args = mArguments.getArgs(frame)`
`   local selfref = args.selfref`
`   local text = args.text`
`   args = mTableTools.compressSparseArray(args)`
`   return p._manylink(args, text, selfref)`

end

function p._manylink(args, text, selfref)

`   checkType("_distinguish", 1, args, 'table')`
`   if #args == 0 and not text then return '' end`
`   local image = '`[`Confusion_humor.svg`](https://zh.wikipedia.org/wiki/File:Confusion_humor.svg "fig:Confusion_humor.svg")`'`
`   local text = string.format(`
`       "`**[`餵雞`](https://zh.wikipedia.org/wiki/維基百科 "wikilink")[`溫馨`](https://zh.wikipedia.org/wiki/溫馨 "wikilink")[`提示`](https://zh.wikipedia.org/wiki/提示 "wikilink")**[`：`](https://zh.wikipedia.org/wiki/： "wikilink")[`各位`](https://zh.wikipedia.org/wiki/各位 "wikilink")[`幽默`](https://zh.wikipedia.org/wiki/Wikipedia:坏笑话和删除的胡话 "wikilink")[`感`](https://zh.wikipedia.org/wiki/感 "wikilink")[`缺`](https://zh.wikipedia.org/wiki/缺 "wikilink")[`失的`](https://zh.wikipedia.org/wiki/失的 "wikilink")[`編者`](https://zh.wikipedia.org/wiki/編者 "wikilink")[`，`](https://zh.wikipedia.org/wiki/， "wikilink")[`此處`](https://zh.wikipedia.org/wiki/此處 "wikilink")[`有對應`](https://zh.wikipedia.org/wiki/有對應 "wikilink")[`的`](../Page/的.md "wikilink")[`正`](../Page/正.md "wikilink")[`常`](https://zh.wikipedia.org/wiki/常 "wikilink")[`版本`](https://zh.wikipedia.org/wiki/版本 "wikilink")[`「`](https://zh.wikipedia.org/wiki/「 "wikilink")*`%s`*[`」`](https://zh.wikipedia.org/wiki/」 "wikilink")[`以`](https://zh.wikipedia.org/wiki/以 "wikilink")[`供食用`](https://zh.wikipedia.org/wiki/供食用 "wikilink")[`。`](https://zh.wikipedia.org/wiki/。 "wikilink")`",`
`       text or mHatlist.orList(args, true, true)`
`   )`
`   text = image .. '  ' .. text`
`   hnOptions = {selfref = selfref}`
`   return mHatnote._hatnote(text, hnOptions)`

end

function p.humor2(frame)

`   mArguments = require('Module:Arguments')`
`   mTableTools = require('Module:TableTools')`
`   local args = mArguments.getArgs(frame)`
`   local selfref = args.selfref`
`   local text = args.text`
`   args = mTableTools.compressSparseArray(args)`
`   return p._humor2(args, text, selfref)`

end

function p._humor2(args, text, selfref)

`   checkType("_distinguish", 1, args, 'table')`
`   if #args == 0 and not text then return '' end`
`   local image = '`[`Confusion_humor.svg`](https://zh.wikipedia.org/wiki/File:Confusion_humor.svg "fig:Confusion_humor.svg")`'`
`   local text = string.format(`
`       "`**`餵雞溫馨提示`**`：各位幽默感缺失的編者，本"..mw.getCurrentFrame():expandTemplate{title = "NS1",}.."的主题不是`*`%s`*`。",`
`       text or mHatlist.orList(args, true, true)`
`   )`
`   text = image .. '  ' .. text`
`   hnOptions = {selfref = selfref}`
`   return mHatnote._hatnote(text, hnOptions)`

end

function p.rest(frame)

`   mArguments = require('Module:Arguments')`
`   mTableTools = require('Module:TableTools')`
`   local args = mArguments.getArgs(frame)`
`   local selfref = args.selfref`
`   local text = args.text`
`   args = mTableTools.compressSparseArray(args)`
`   return p._rest(args, text, selfref)`

end

function p._rest(args, text, selfref)

`   checkType("_distinguish", 1, args, 'table')`
`   if #args == 0 and not text then return '' end`
`   local image = '`[`Confusion_humor.svg`](https://zh.wikipedia.org/wiki/File:Confusion_humor.svg "fig:Confusion_humor.svg")`'`
`   local text = string.format(`
`       "`**`餵雞溫馨提示`**`：各位幽默感缺失的編者，本"..mw.getCurrentFrame():expandTemplate{title = "NS1",}.."的主题不是"..mw.getCurrentFrame():expandTemplate{title = "kidding", args = {"`*`%s`*`"}}.."。",`
`       text or mHatlist.orList(args, true, true)`
`   )`
`   text = image .. '  ' .. text`
`   hnOptions = {selfref = selfref}`
`   return mHatnote._hatnote(text, hnOptions)`

end

return p