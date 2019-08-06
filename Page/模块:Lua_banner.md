\--\[=\[

这个模块由[Template:Lua调用](https://zh.wikipedia.org/wiki/Template:Lua "wikilink") 暂无模块调用 /\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*/ 這個模組由[Template:Lua調用](https://zh.wikipedia.org/wiki/Template:Lua "wikilink") 暫無模組調用 \]=\]-- local yesno = require('Module:Yesno') local mList = require('Module:List') local mTableTools = require('Module:TableTools') local mMessageBox = require('Module:Message box')

local p = {}

function p.main(frame)

`   local origArgs = frame:getParent().args`
`   local args = {}`
`   for k, v in pairs(origArgs) do`
`       v = v:match('^%s*(.-)%s*$')`
`       if v ~= '' then`
`           args[k] = v`
`       end`
`   end`
`   return p._main(args)`

end

function p._main(args)

`   local modules = mTableTools.compressSparseArray(args)`
`   local box = p.renderBox(modules)`
`   local trackingCategories = p.renderTrackingCategories(args, modules)`
`   return box .. trackingCategories`

end

function p.renderBox(modules)

`   local boxArgs = {}`
`   if #modules < 1 then`
`       boxArgs.text = '`<strong class="error">`错误：没有指定-{zh-hans:模块; zh-hant:模組;}-`</strong>`'`
`   else`
`       local moduleLinks = {}`
`       for i, module in ipairs(modules) do`
`           moduleLinks[i] = string.format('`[`:%s`](https://zh.wikipedia.org/wiki/:%s "wikilink")`', module)`
`       end`
`       local moduleList = mList.makeList('bulleted', moduleLinks)`
`       boxArgs.text = '本' .. `
`           (mw.title.getCurrentTitle():inNamespaces(828,829) and '-{zh-hans:模块; zh-hant:模組;}-' or '模板') ..`
`           '使用`[`Lua语言`](https://zh.wikipedia.org/wiki/Wikipedia:Lua "wikilink")`：\n' .. moduleList`
`   end`
`   boxArgs.type = 'notice'`
`   boxArgs.small = true`
`   boxArgs.image = '`[`Lua-logo-nolabel.svg`](https://zh.wikipedia.org/wiki/File:Lua-logo-nolabel.svg "fig:Lua-logo-nolabel.svg")`'`
`   return mMessageBox.main('mbox', boxArgs)`

end

function p.renderTrackingCategories(args, modules, titleObj)

`   if yesno(args.nocat) then`
`       return ''`
`   end`
`   `
`   local cats = {}`
`   `
`   -- 错误分类`
`   if #modules < 1 then`
`       cats[#cats + 1] = '有错误的Lua模板'`
`   end`
`   `
`   -- Lua templates category`
`   titleObj = titleObj or mw.title.getCurrentTitle()`
`   local subpageBlacklist = {`
`       doc = true,`
`       sandbox = true,`
`       sandbox2 = true,`
`       testcases = true`
`   }`
`   if titleObj.namespace == 10 `
`       and not subpageBlacklist[titleObj.subpageText]`
`   then`
`       local category = args.category`
`       if not category then`
`           local categories = {`
`               ['Module:String'] = '使用LuaString的模板',`
`               ['Module:Math'] = '使用LuaMath的模板',`
`               ['Module:BaseConvert'] = '使用LuaBaseConvert的模板',`
`               ['Module:Citation'] = '使用LuaCitation的模板'`
`           }`
`           categories['Module:Citation/CS1'] = categories['Module:Citation']`
`           category = modules[1] and categories[modules[1]]`
`           category = category or 'Lua模板'`
`       end`
`       cats[#cats + 1] = category`
`       local protLevels = {`
`           autoconfirmed = 1,`
`           extendedconfirmed = 2,`
`           templateeditor = 3,`
`           sysop = 4`
`       }`
`       local currentProt = titleObj.protectionLevels["edit"][1]`
`       if currentProt == nil then currentProt = 0 else currentProt = protLevels[currentProt] end`
`       for i, module in ipairs(modules) do`
`           local moduleProt = mw.title.new(module).protectionLevels["edit"][1]`
`           if moduleProt == nil then moduleProt = 0 else moduleProt = protLevels[moduleProt] end`
`           if moduleProt < currentProt then`
`               cats[#cats + 1] = "使用受保护Lua模块的模板"`
`               break`
`           end`
`       end`
`   end`
`   `
`   for i, cat in ipairs(cats) do`
`       cats[i] = string.format('', cat)`
`   end`
`   return table.concat(cats)`

end

return p

[Category:%s](https://zh.wikipedia.org/wiki/Category:%s "wikilink")