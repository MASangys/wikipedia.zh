local WSU = {} --\[=\[ 回傳成員人數 \]=\]-- function WSU.member(frame)

`   local page = frame:expandTemplate{title = "Wikipedia:維基學生會/成員"}`
`   local count = 0`
`   for i in string.gmatch(page, "%*") do`
`       count = count + 1`
`   end`
`   return count`

end --\[=\[ 回傳委員人數 找不到蛤好用，先用管理員admin了 \]=\]-- function WSU.admin(frame)

`   local page = frame:expandTemplate{title = "Wikipedia:維基學生會/成員"}`
`   local count = 0`
`   for i in string.gmatch(page, "class=\"wsu_admin\"") do`
`       count = count + 1`
`   end`
`   return count`

end

\--\[=\[ 警告 此模組函式bulletin_item需搭配[Template:维基学生会/公布栏/styles.css使用](https://zh.wikipedia.org/wiki/Template:维基学生会/公布栏/styles.css "wikilink")！ 使用方式：

    <templatestyles src="Template:维基学生会/公布栏/styles.css" />
    {{维基学生会/公布栏/公告/item|公告|文字}}

\]=\]--

function WSU._bulletin_getclass(class)

`   local classlist = {`
`       ["公告"] = "post",`
`       ["通知"] = "notice",`
`       ["投票"] = "vote",`
`       ["評選"] = "selection",`
`       ["评选"] = "selection",`
`       ["人事"] = "personnel",`
`       ["討論"] = "talk",`
`       ["讨论"] = "talk",`
`   }`
`   if classlist[class] == nil then`
`       return "transparent"`
`   end`
`   return classlist[class]`

end

function WSU.bulletin_item( frame )

`   local args = frame:getParent().args`
`   prefix = args["prefix"]`
`   if prefix == nil then`
`       prefix = ""`
`   end`
`       `
`   suffix = args["suffix"]`
`   if suffix == nil then`
`       suffix = ""`
`   end`
`       `
`   separator = args["separator"]`
`   if separator == nil then`
`       separator = "、"`
`   end`
`   `
`   conjunction = args["conjunction"]`
`   if conjunction == nil then`
`       conjunction = "及"`
`   end`
`   `
`   type = args[1]`
`   if type == nil then`
`       type = "公告"`
`   end`
`   `
`   local items = {}`
`   local i = 2`
`   local value`
`   while args[i] ~= nil do`
`       value = mw.text.trim( args[i] )`
`       if value ~= "" then`
`           table.insert( items, value )`
`       end`
`       i = i + 1`
`   end`
`   return '`<span class="WSU_bulletin_'..WSU._bulletin_getclass(type)..'">`\'\'\'`<span class="bulletin-type module.bulletin-type WSUb_'..WSU._bulletin_getclass(type)..'">`[' .. type .. ']`</span>`\'\'\' ' ..`
`       '`<span class="bulletin-prefix">`' .. prefix .. "`</span>`" ..`
`       '`<span class="bulletin-item">`' .. mw.text.listToText(`
`           items,`
`           '`</span><span class="bulletin-separator">`' .. separator .. '`</span><span class="bulletin-item">`',`
`           '`</span><span class="bulletin-conjunction">`' .. conjunction .. '`</span><span class="bulletin-item">`'`
`       ) .. '`</span>`' ..`
`       '`<span class="bulletin-suffix">`' .. suffix .. '`</span></span>`'`

end

return WSU