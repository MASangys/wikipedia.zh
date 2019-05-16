local func = {}

local function redtest(text)

`   local test = string.lower(text)`
`   return not (string.find(test, 'category:') == 1 or string.find(test, '分类:') == 1 or `
`          string.find(test, '分類:') == 1 or string.find(test, 'file:') == 1 or`
`          string.find(test, '文件:') == 1 or string.find(test, '檔案:') == 1 or`
`          string.find(test, 'en:') == 1 or string.find(test, 'ja:') == 1)`

end

function func.redlink(frame)

`   local text = frame.args[1] or ''`
`   text = (string.gsub(text, '%[%[([^\n]-)%]%]', function(x)`
`       if redtest(x) then`
`           local target = string.gsub(x, '^(.-)%|.-$', '%1')`
`           local text = string.gsub(x, '^.-%|(.-)$', '%1')`

`           if string.find(target, ':') == 1 then`
`               if text == target then`
`                   text = string.sub(text, 2)`
`               end`
`               return '`<span style="color:#ba0000">`' .. text .. '`</span>`'`
`           else`
`               if (not mw.title.new(target):getContent()) and (not frame.args['nored']) then`
`                   return '`<span style="color:#ba0000;">`' .. text .. '`</span>`'`
`               else`
`                   return '`<span style="color:#ba0000">`' .. text .. '`</span>`'`
`               end`
`           end`
`       else`
`           return '`[`'``   ``..``   ``x``   ``..``
 ``'`](https://zh.wikipedia.org/wiki/'_.._x_.._' "wikilink")`'`
`       end`
`   end))`

`   return text`

end

return func