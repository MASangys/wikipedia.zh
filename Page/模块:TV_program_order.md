> 本文内容由[模块:TV program order](https://zh.wikipedia.org/wiki/模块:TV_program_order)转换而来。


local p = {}

local yesno = require('Module:Yesno')

local firstitem = false

local function union(t1, t2, t3)

`   local vals = {}`
`   for k, v in pairs(t1) do`
`       vals[v] = true`
`   end`
`   for k, v in pairs(t2) do`
`       vals[v] = true`
`   end`
`   for k, v in pairs(t3) do`
`       vals[v] = true`
`   end`
`   local ret = {}`
`   for k, v in pairs(vals) do`
`       table.insert(ret, k)`
`   end`
`   return ret`

end

local function getArgNums(args, suffix)

`   local nums = {}`
`   for k, v in pairs(args) do`
`       local num = mw.ustring.match(tostring(k), '^' .. '([1-9]%d*)' .. suffix .. '$')`
`       if num then table.insert(nums, tonumber(num)) end`
`   end`
`   table.sort(nums)`
`   return nums`

end

local function makeTitle(rowArgs)

`   if not rowArgs.title then return end`
`   local row = mw.html.create('tr')`
`   row:tag('th')`
`       :attr('colspan', 3)`
`       :wikitext(rowArgs.title)`
`   return row`

end

local function makeNote(notes)

`   if not notes.notea then return end`
`   local noteCell = mw.html.create('ul')`
`   noteCell`
`       :css('font-size', 'smaller')`
`       :css('font-weight', 'normal')`
`       :css('text-align', 'left')`
`       :tag('li')`
`           :wikitext(notes.notea)`
`       if notes.noteb then`
`           noteCell`
`               :tag('li')`
`                   :wikitext(notes.noteb)`
`       end`
`   return noteCell`

end

local function makeSimpleCell(cells)

`   local dataCell = mw.html.create('td')`
`   if firstitem == true then`
`       dataCell`
`           :attr('rowspan', 2)`
`           :css('width', '33.33%')`
`           :css('font-weight', 'bold')`
`   end`
`   dataCell`
`       :cssText(cells.datastyle)`
`       :wikitext(cells.data)`
`       :node(makeNote({`
`           notea = cells.notea,`
`           noteb = cells.noteb`
`       }))`
`   return dataCell`

end

local function makeContentRow(contents)

`   local row = mw.html.create('tr')`
`   row:node(makeSimpleCell({`
`       data = contents.dataa,`
`       notea = contents.notea1,`
`       noteb = contents.noteb1`
`   }))`
`   row:node(makeSimpleCell({`
`       data = contents.datab,`
`       datastyle = 'font-weight:bold;',`
`       notea = contents.notea2,`
`       noteb = contents.noteb2`
`   }))`
`   row:node(makeSimpleCell({`
`       data = contents.datac,`
`       notea = contents.notea3,`
`       noteb = contents.noteb3`
`   }))`
`   return row`

end

function p._main(args)

`   local root = mw.html.create()`

`   if args["hide"] then`
`       args["隱藏"] = args["hide"]`
`   elseif args["摺疊"] then`
`       args["隱藏"] = args["摺疊"]`
`   elseif args["折叠"] then`
`       args["隱藏"] = args["折叠"]`
`   elseif args["隐藏"] then`
`       args["隱藏"] = args["隐藏"]`
`   end`
`   if args["宽度"] then`
`       args["寬度"] = args["宽度"]`
`   end`
`   if args["電視臺"] then`
`       args["電視台"] = args["電視臺"]`
`   elseif args["电视台"] then`
`       args["電視台"] = args["电视台"]`
`   end`
`   if args["播放档次"] then`
`       args["播放檔次"] = args["播放档次"]`
`   end`
`   if args["节目名称"] then`
`       args["節目名稱"] = args["节目名称"]`
`   end`
`   if args["上一节目"] then`
`       args["上一節目"] = args["上一节目"]`
`   end`
`   if args["下一节目"] then`
`       args["下一節目"] = args["下一节目"]`
`   end`
`   if args["节目名称备注A"] then`
`       args["節目名稱備註A"] = args["节目名称备注A"]`
`   end`
`   if args["节目名称备注B"] then`
`       args["節目名稱備註B"] = args["节目名称备注B"]`
`   end`
`   if args["上一节目备注A"] then`
`       args["上一節目備註A"] = args["上一节目备注A"]`
`   end`
`   if args["上一节目备注B"] then`
`       args["上一節目備註B"] = args["上一节目备注B"]`
`   end`
`   if args["下一节目备注A"] then`
`       args["下一節目備註A"] = args["下一节目备注A"]`
`   end`
`   if args["下一节目备注B"] then`
`       args["下一節目備註B"] = args["下一节目备注B"]`
`   end`

`   args["隱藏"] = yesno(args["隱藏"], false)`

`   local tableRoot = root:tag('table')`
`   tableRoot`
`       :addClass('wikitable')`
`       :addClass(args["隱藏"] and 'mw-collapsible mw-collapsed' or nil)`
`       :css('margin', '1em auto')`
`       :css('font-size', '90%')`
`       :css('table-layout', 'fixed')`
`       :css('width', args["寬度"] or '598pt')`
`       :css('text-align', 'center')`

`   local s = ''`

`   if args["播放檔次"] then`
`       s = args["播放檔次"]`
`   else`
`       s = '``'`
`   end`
`   if args["電視台"] then`
`       s = args["電視台"] .. ' ' .. s`
`   end`

`   tableRoot:node(makeTitle({`
`       title = s`
`   }))`

`   local headerRow = tableRoot:tag('tr')`
`   local contentRow = tableRoot:tag('tr')`

`   firstitem = true`

`   headerRow`
`       :tag('th')`
`           :css('width', '33.33%')`
`           :wikitext('-{zh-hans:接档;zh-hant:上一節目;}-')`

`   headerRow:node(makeSimpleCell({`
`       data = (args["節目名稱"] or mw.title.getCurrentTitle().text),`
`       notea = args["節目名稱備註A"],`
`       noteb = args["節目名稱備註B"]`
`   }))`

`   headerRow`
`       :tag('th')`
`           :css('width', '33.33%')`
`           :wikitext('-{zh-hans:被接档;zh-hant:下一節目;}-')`

`   firstitem = false`

`   contentRow:node(makeSimpleCell({`
`       data = (args["上一節目"] or '—'),`
`       notea = args["上一節目備註A"],`
`       noteb = args["上一節目備註B"]`
`   }))`

`   contentRow:node(makeSimpleCell({`
`       data = (args["下一節目"] or '—'),`
`       notea = args["下一節目備註A"],`
`       noteb = args["下一節目備註B"]`
`   }))`

`   local nums = union(getArgNums(args, '播放[檔档]次'), getArgNums(args, '上一[節节]目'), getArgNums(args, '下一[節节]目'))`
`   table.sort(nums)`

`   for _, num in ipairs(nums) do`
`       if tonumber(num) >=2 then`
`           if args[tostring(num) .. "電視臺"] then`
`               args[tostring(num) .. "電視台"] = args[tostring(num) .. "電視臺"]`
`           elseif args[tostring(num) .. "电视台"] then`
`               args[tostring(num) .. "電視台"] = args[tostring(num) .. "电视台"]`
`           end`
`           if args[tostring(num) .. "播放档次"] then`
`               args[tostring(num) .. "播放檔次"] = args[tostring(num) .. "播放档次"]`
`           end`
`           if args[tostring(num) .. "节目名称"] then`
`               args[tostring(num) .. "節目名稱"] = args[tostring(num) .. "节目名称"]`
`           end`
`           if args[tostring(num) .. "上一节目"] then`
`               args[tostring(num) .. "上一節目"] = args[tostring(num) .. "上一节目"]`
`           end`
`           if args[tostring(num) .. "下一节目"] then`
`               args[tostring(num) .. "下一節目"] = args[tostring(num) .. "下一节目"]`
`           end`
`           if args[tostring(num) .. "节目名称备注A"] then`
`               args[tostring(num) .. "節目名稱備註A"] = args[tostring(num) .. "节目名称备注A"]`
`           end`
`           if args[tostring(num) .. "节目名称备注B"] then`
`               args[tostring(num) .. "節目名稱備註B"] = args[tostring(num) .. "节目名称备注B"]`
`           end`
`           if args[tostring(num) .. "上一节目备注A"] then`
`               args[tostring(num) .. "上一節目備註A"] = args[tostring(num) .. "上一节目备注A"]`
`           end`
`           if args[tostring(num) .. "上一节目备注B"] then`
`               args[tostring(num) .. "上一節目備註B"] = args[tostring(num) .. "上一节目备注B"]`
`           end`
`           if args[tostring(num) .. "下一节目备注A"] then`
`               args[tostring(num) .. "下一節目備註A"] = args[tostring(num) .. "下一节目备注A"]`
`           end`
`           if args[tostring(num) .. "下一节目备注B"] then`
`               args[tostring(num) .. "下一節目備註B"] = args[tostring(num) .. "下一节目备注B"]`
`           end`

`           local sn = nil`
`           if args[tostring(num) .. '播放檔次'] then`
`               sn = args[tostring(num) .. '播放檔次']`
`               if args[tostring(num) .. '電視台'] then`
`                   sn = args[tostring(num) .. '電視台'] .. ' ' .. sn`
`               end`
`           end`

`           tableRoot:node(makeTitle({`
`               title = sn`
`           }))`

`           tableRoot:node(makeContentRow({`
`               dataa = (args[tostring(num) .. '上一節目'] or '—'),`
`               datab = (args[tostring(num) .. '節目名稱'] or '第' .. tostring(num) .. '季'),`
`               datac = (args[tostring(num) .. '下一節目'] or '—'),`
`               notea1 = args[tostring(num) .. '上一節目備註A'],`
`               noteb1 = args[tostring(num) .. '上一節目備註B'],`
`               notea2 = args[tostring(num) .. '節目名稱備註A'],`
`               noteb2 = args[tostring(num) .. '節目名稱備註B'],`
`               notea3 = args[tostring(num) .. '下一節目備註A'],`
`               noteb3 = args[tostring(num) .. '下一節目備註B']`
`           }))`
`       end`
`   end`

`   return tostring(root)`

end

function p.main(frame)

`   local args = require('Module:Arguments').getArgs(frame, {`
`       wrappers = 'Template:電視節目的變遷'`
`   })`
`   return p._main(args)`

end

return p