> 本文内容由[模块:Vgrtbl](https://zh.wikipedia.org/wiki/模块:Vgrtbl)转换而来。


local p = {}

local lang = mw.language.getContentLanguage()

local function looksLikeYear(str)

`   local success, result = pcall(lang.formatDate, lang, 'Y', '1-1-' .. str)`
`   return success and tonumber(result) == tonumber(str)`

end

function p._text(dateText, name, v, s)

`   local retval = '`<span style="white-space:normal;">`'`
`   local success, result = pcall(lang.formatDate, lang, 'c', dateText)`
`   if looksLikeYear(dateText) or not success then`
`       retval = retval .. dateText`
`   else`
`       if s then`
`           retval = retval .. '`<span style="display:none">`' .. lang:formatDate('Ym', dateText) .. '`</span>`'`
`       end`
`       local success2, result2 = pcall(lang.formatDate, lang, 'c', '1 ' .. dateText)`
`       if success2 and result == result2 then`
`           retval = retval .. lang:formatDate(v == '0' and 'Y-m' or 'F Y', dateText)`
`       else`
`           if s then`
`               retval = retval .. '`<span style="display:none">`' .. lang:formatDate('Ymd', dateText) .. '`</span>`'`
`           end`
`           local formatString`
`           if v == '0' then`
`               formatString = 'Y-m-d'`
`           elseif v == '2' then`
`               formatString = 'j F Y'`
`           else`
`               formatString = 'F j, Y'`
`           end`
`           retval = retval .. lang:formatDate(formatString, dateText)`
`       end`
`   end`
`   return retval .. '`<small>` (' .. name .. ')`</small></span>`'`

end

function p.text(frame)

`   local args = frame:getParent().args`
`   return p._text(args[1], args[2], args.v, args.s)`

end

local function tryDate(str)

`   local success, result = pcall(lang.formatDate, lang, 'c', str)`
`   if success then`
`       return result`
`   else`
`       return str`
`   end`

end

function p.main(frame)

`   local args = frame:getParent().args`
`   local v = args.v or 1`
`   if args.c == '0' then`
`       -- If collapse mode is off`
`       local retval = p._text(args[2], args[1], v, 1)`
`       local i = 3`
`       while args[i] and mw.text.trim(args[i]) ~= '' do`
`           retval = retval .. '`
`' .. p._text(args[i + 1], args[i], v)`
`           i = i + 2`
`       end`
`       return retval`
`   else`
`       -- If collapse mode is on`
`       local dates = {}`
`       local dateOrder = {}`
`       local i = 1`
`       while args[i] and mw.text.trim(args[i]) ~= '' do`
`           local d = tryDate(args[i + 1])`
`           if dates[d] then`
`               table.insert(dates[d], args[i])`
`           else`
`               table.insert(dateOrder, d)`
`               dates[d] = { display = args[i + 1], args[i] }`
`           end`
`           i = i + 2`
`       end`
`       local retval = ''`
`       for key, val in ipairs(dateOrder) do`
`           if key == 1 then`
`               retval = p._text(dates[val].display, table.concat(dates[val], '/'), v, 1)`
`           else`
`               retval = retval .. '`
`' .. p._text(dates[val].display, table.concat(dates[val], '/'), v)`
`           end`
`       end`
`       return retval`
`   end`

end

return p