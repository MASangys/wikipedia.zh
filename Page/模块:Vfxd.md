local vfxd = {} local yesno = require('Module:Yesno') local mError = require("Module:Error")

local function redtest(text)

`   local test = string.lower(text)`
`   return not (string.find(test,'模块:Vfxd')== 1)`

end

function vfxd.redlink(frame)

`   local link = frame.args[1] or ''`
`   local text = frame.args[2] or ''`
`   if link == '' then`
`       return mError.error({[1]="錯誤：-{`[`模块:Vfxd`](../Page/模块:Vfxd.md "wikilink")`}-函數redlink之參數1不得為空"})`
`   else`
`       if text == '' then`
`           text = '`<span style="color:#ba0000">`' .. link .. '`</span>`'`
`       else`
`           text = (string.gsub(text, '%[%[([^\n]-)%]%]', function(x)`
`               if redtest(x) then`
`                   local text = string.gsub(x, '^.-%|(.-)$', '%1')`
`                   if redtext == '' then`
`                       return text`
`                   else`
`                       return '`<span style="color:#ba0000">`' .. text .. '`</span>`'`
`                   end`
`               else`
`                   return  x`
`               end`
`           end))`
`       end`
`       return "`[`"``   ``..``   ``text``   ``.."`](https://zh.wikipedia.org/wiki/"_.._link_.._" "wikilink")`"`
`   end`
`   `

end

return vfxd