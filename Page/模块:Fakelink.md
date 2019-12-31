> 本文内容由[模块:Fakelink](https://zh.wikipedia.org/wiki/模块:Fakelink)转换而来。


local func = {}

local function rfind(s, pattern, init)

`   local x, y`
`   local len = #s`
`   local i = init or len`
`   x, y = string.find(string.reverse(s), string.reverse(pattern), len-i+1, true)`
`   if x then`
`       return len-y+1, len-x+1`
`   end`

end

function func.strrev(frame)

`   local text = frame.args[1] or ''`
`   return string.reverse(text)`

end

function func.strreplace(frame)

`   local text = frame.args[1] or ''`
`   local i=2`
`   local from, to`
`   while frame.args[i] do`
`       from = frame.args[i]`
`       to = frame.args[i+1] or ''`
`       text = string.gsub(text, from, to)`
`       i=i+2`
`   end`
`   return text`

end

function func.nowiki(frame)

`   local text = frame.args[1] or ''`
`   return mw.text.nowiki(text)`

end

function func.nowiki2(frame)

`   local text = mw.title.new(frame.args[1]):getContent()`
`   return mw.text.nowiki(text)`

end

local function islinkeatable(text)

`   local test = string.lower(text)`
`   return not (string.find(test, 'category:') == 1 or string.find(test, '分类:') == 1 or `
`          string.find(test, '分類:') == 1 or string.find(test, 'file:') == 1 or`
`          string.find(test, '文件:') == 1 or string.find(test, '檔案:') == 1 or`
`          string.find(test, 'en:') == 1 or string.find(test, 'ja:') == 1)`

end

function func.eatlinks(frame)

`   local text = frame.args[1] or ''`
`   text = (string.gsub(text, '%[%[([^\n]-)%]%]', function(x)`
`       if islinkeatable(x) then`
`           local target = string.gsub(x, '^(.-)%|.-$', '%1')`
`           local text = string.gsub(x, '^.-%|(.-)$', '%1')`

`           if string.find(target, ':') == 1 then`
`               if text == target then`
`                   text = string.sub(text, 2)`
`               end`
`               return '`<span class="mFakelink_blue2" style="color:#36b;cursor:pointer;">`' .. text .. '`</span>`'`
`           else`
`               if (not mw.title.new(target):getContent()) and (not frame.args['nored']) then`
`                   return '`<span class="mFakelink_red" style="color:#ba0000;cursor:pointer;">`' .. text .. '`</span>`'`
`               else`
`                   return '`<span class="mFakelink_blue" style="color:#0645ad;cursor:pointer;">`' .. text .. '`</span>`'`
`               end`
`           end`
`       else`
`           return '`[`'``   ``..``   ``x``   ``..``   ``'`](https://zh.wikipedia.org/wiki/'_.._x_.._' "wikilink")`'`
`       end`
`   end))`

`   text = (string.gsub(text, '%[https?://[^\n]- ([^\n]-)%]', function(x)`
`       return '`<span class="mFakelink_blue2" style="color:#36b;cursor:pointer;">`' .. x .. '`</span>`'`
`   end))`

`   return text`

end

function func.eatlinks2(frame)

`   local text = frame.args[1] or ''`
`   local badtarget = frame.args['target'] or 'Special:Logout'`
`   text = (string.gsub(text, '%[%[([^\n]-)%]%]', function(x)`
`       if islinkeatable(x) then`
`           local target = string.gsub(x, '^(.-)%|.-$', '%1')`
`           local text = string.gsub(x, '^.-%|(.-)$', '%1')`

`           if string.find(target, ':') == 1 then`
`               if text == target then`
`                   text = string.sub(text, 2)`
`               end`
`               return '`[<span class="mFakelink_blue2" style="color:#36b;cursor:pointer;">`'``   ``..``   ``text``   ``..``   ``'`</span>](https://zh.wikipedia.org/wiki/'_.._badtarget_.._' "wikilink")`'`
`           else`
`               if (not mw.title.new(target):getContent()) and (not frame.args['nored']) then`
`                   return '`[<span class="mFakelink_red" style="color:#ba0000;cursor:pointer;">`'``   ``..``   ``text``   ``..``   ``'`</span>](https://zh.wikipedia.org/wiki/'_.._badtarget_.._' "wikilink")`'`
`               else`
`                   return '`[<span class="mFakelink_blue" style="color:#0645ad;cursor:pointer;">`'``   ``..``   ``text``   ``..``   ``'`</span>](https://zh.wikipedia.org/wiki/'_.._badtarget_.._' "wikilink")`'`
`               end`
`           end`
`       else`
`           return '`[`'``   ``..``   ``x``   ``..``   ``'`](https://zh.wikipedia.org/wiki/'_.._x_.._' "wikilink")`'`
`       end`
`   end))`

`   text = (string.gsub(text, '%[https?://[^\n]- ([^\n]-)%]', function(x)`
`       return '`[<span class="mFakelink_blue2" style="color:#36b;cursor:pointer;">`'``   ``..``   ``x``   ``..``   ``'`</span>](https://zh.wikipedia.org/wiki/'_.._badtarget_.._' "wikilink")`'`
`   end))`

`   return text`

end

return func