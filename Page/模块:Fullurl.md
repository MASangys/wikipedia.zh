> 本文内容由[模块:Fullurl](https://zh.wikipedia.org/wiki/模块:Fullurl)转换而来。


local p = {} local yesno = require('Module:Yesno') local mError = require('Module:Error').error

function p._fullurl(args, frame)

`   local paid = ''`
`   local title = args['title'] or args[1] or args['1'] or tostring(mw.title.getCurrentTitle())`
`   local text = args['text'] or args[2] or args['1'] or title`
`   for k, v in pairs( args ) do`
`       if ((k == 'title')or (k == 1) or (k == '1')  or (k == 'text') or (k == 2) or (k == '2') or (k == 'onlyurl') or (k == 'paid')) then`
`           if (k == 'paid') then`
`               paid = v`
`           end`
`       else`
`           paid = paid .. '&' .. k .. '=' .. v`
`       end`
`   end`
`   local url = tostring(mw.uri.fullUrl(title,paid))`
`   local plainlink = '`<span class="plainlinks">`[' .. url .. ' ' .. text .. ']`</span>`'`
`   if (args['action'] == 'submit') then`
`       return plainlink .. mError{'`[`Module:Fullur錯誤`](https://zh.wikipedia.org/wiki/Module:Fullur "wikilink")`：|action=submin不是有效的值，請使用|action=edit。'}`
`   else`
`       if yesno(args['onlyurl']) then`
`           return url`
`       else`
`           return plainlink`
`       end`
`   end`

end

function p.fullurl(frame)

`   local args = {}`
`   for k, v in pairs( frame.args ) do`
`       args[k] = v`
`   end`
`   for k, v in pairs( frame:getParent().args ) do`
`       args[k] = v`
`   end`
`   return p._fullurl(args, frame)`

end

function p._fullurl2(title ,paid, text)

`   return '`<span class="plainlinks">`[' .. tostring(mw.uri.fullUrl(title,paid)) .. ' ' .. text .. ']`</span>`'`

end --\[=\[ function p.hosturl ()

`   return "//zh.wikipedia.org"`

end

function p.scripturl ()

`   return p.hosturl () .. "/w"`

end

function p.index ()

`   return p.scripturl () .. "/index.php"`

end

function p.articlepath ()

`   return p () .. "/wiki"`

end

p\["index.php"\] = function ()

`   return p.index ()`

end

p\["api.php"\] = function ()

`   return p.scripturl () .. "/api.php"`

end

p\["rest.php"\] = function (frame)

`   return p.scripturl () .. "/rest.php"`

end \]=\]-- return p