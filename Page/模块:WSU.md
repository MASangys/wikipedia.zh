local WSU = {} --\[=\[ 回傳成員人數 \]=\]-- function WSU.member(frame)

`   local page = frame:expandTemplate{title = "Wikipedia:維基學生會/成員"}`
`   local count = 0`
`   for i in string.gmatch(page, "class=\"wsu_member") do`
`       count = count + 1`
`   end`
`   return count`

end --\[=\[ 回傳委員人數 找不到蛤好用，先用管理員admin了 \]=\]-- function WSU.admin(frame)

`   local page = frame:expandTemplate{title = "Wikipedia:維基學生會/成員"}`
`   local count = 0`
`   for i in string.gmatch(page, "class=\"wsu_member wsu_admin\"") do`
`       count = count + 1`
`   end`
`   return count`

end --\[=\[ 回傳退出成員人數 \]=\]-- function WSU.withdraw_member(frame)

`   local page = frame:expandTemplate{title = "Wikipedia:維基學生會/成員"}`
`   local count = 0`
`   for i in string.gmatch(page, "class=\"withdraw_member\"") do`
`       count = count + 1`
`   end`
`   return count`

end --\[=\[ 警告 此模組函式bulletin_item需搭配[Template:维基学生会/公布栏/styles.css使用](https://zh.wikipedia.org/wiki/Template:维基学生会/公布栏/styles.css "wikilink")！ 使用方式：

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
`   return '`<span class="WSU_bulletin_'..WSU._bulletin_getclass(type)..'"><b><span class="bulletin-type module.bulletin-type WSUb_'..WSU._bulletin_getclass(type)..'">`[' .. type .. ']`</span></b>`' ..`
`       '`<span class="bulletin-prefix">`' .. prefix .. "`</span>`" ..`
`       '`<span class="bulletin-item">`' .. mw.text.listToText(`
`           items,`
`           '`</span><span class="bulletin-separator">`' .. separator .. '`</span><span class="bulletin-item">`',`
`           '`</span><span class="bulletin-conjunction">`' .. conjunction .. '`</span><span class="bulletin-item">`'`
`       ) .. '`</span>`' ..`
`       '`<span class="bulletin-suffix">`' .. suffix .. '`</span></span>`'`

end

function WSU.join_preload(frame)

`   local args = frame.args`
`   local user = args[1] or frame:preprocess('``')`
`   if args[2] ~= '' then`
`       if mw.isSubsting() then`
`           return string.format('=== `[`%s`](https://zh.wikipedia.org/wiki/User:%s "wikilink")` ===', user, user) .. '``'`
`       else`
`           return frame:preprocess(string.format('=== `[`%s`](https://zh.wikipedia.org/wiki/User:%s "wikilink")` ===', user, user) .. '``')`
`       end`
`   else`
`       if mw.isSubsting() then`
`           return string.format('=== `[`%s`](https://zh.wikipedia.org/wiki/User:%s "wikilink")` ===', user, user) .. '``'`
`       else`
`           return frame:preprocess(string.format('=== `[`%s`](https://zh.wikipedia.org/wiki/User:%s "wikilink")` ===', user, user) .. '``')`
`       end`
`   end`

end

local function url(url, text)

`   return '`<span class="plainlinks">`[' .. url .. ' ' .. text .. ']`</span>`'`

end

local function fullurl(title, text, paid)

`   return require('Module:Fullurl')._fullurl2(title ,paid, text)`

end

function WSU.join_template(frame)

`   local args = {}`
`   for k, v in pairs( frame:getParent().args ) do`
`   --  args[k] = v`
`   end`
`   for k, v in pairs( frame.args ) do`
`       args[k] = v`
`   end`
`   local user = args[1] or '???'`
`   local text = ''`
`   text = ':申請加入：`[`'``   ``..``   ``user``   ``..``   ``'`](https://zh.wikipedia.org/wiki/User:'_.._user_.._' "wikilink")`'`
`       .. '`<small>`（'`
`       .. '`[`讨论页`](https://zh.wikipedia.org/wiki/User_talk:'_.._user_.._' "wikilink")`'`
`       .. '·'`
`       .. '`[`贡献`](https://zh.wikipedia.org/wiki/Special:Contributions/'_.._user_.._' "wikilink")`'`
`       .. '·'`
`       .. '`[`已删贡献`](https://zh.wikipedia.org/wiki/Special:DeletedContributions/'_.._user_.._' "wikilink")`'`
`       .. '·'`
`       .. url('`<https://xtools.wmflabs.org/ec/zh.wikipedia.org/>`{{ ``anchorencode:' .. user .. '}}?uselang=``','编辑次数')`
`       .. '·'`
`       .. fullurl('Special:Listusers', '注册日期' , 'limit=1&username={{ ``urlencode:{{ ``ucfirst:' .. user .. '}}}}')`
`       .. '·'`
`       .. fullurl('Special:Log/block', '封禁日志' , 'page=User:{{ ``urlencode:{{ ``ucfirst:' .. user .. '}}}}')`
`       .. '）`</small>`\n'`
`   if args[2] ~= '' then`
`       text = text .. ':理由：' .. args[2] .. '\n'`
`   end`
`   text = text .. ':申請者：' .. (args['sign'] or '')`
`   return frame:preprocess(text)`

end

return WSU