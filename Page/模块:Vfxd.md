local vfxd = {} local mError = require("Module:Error")

function vfxd.redlink(frame)

`   local link = frame.args[1] or ''`
`   local text = frame.args[2] or ''`
`   if link == '' then`
`       return mError.error({[1]="錯誤：-{`[`模块:Vfxd`](../Page/模块:Vfxd.md "wikilink")`}-函數redlink之參數1不得為空"})`
`   else`
`       if text == '' then`
`            text = '`<span style="color:#ba0000">`' .. link .. '`</span>`'`
`       else`
`           --先刪掉惱人的各個標籤上的格式（class title id）`
`           text = (string.gsub(text, '(.-)', function(x)`
`               -- 刪掉class`
`               local delformat = string.gsub(x, 'class=(\'|")(.-)(\'|")', '')`
`               -- 刪掉title`
`               delformat = string.gsub(delformat, 'title=(\'|")(.-)(\'|")', '')`
`               -- 刪掉id`
`               delformat = string.gsub(delformat, 'id=(\'|")(.-)(\'|")', '')`
`               -- 刪掉`<big>`，干擾`
`               delformat = string.gsub(delformat, '<%/?big(.-)>', '')`
`               -- 刪掉`<templatestyles>`，干擾，class都刪掉這也沒用了`
`               delformat = string.gsub(delformat, '<templatestyles(.-)>', '')`
`               -- 刪掉`<mark>`，干擾，不要在標題中隱藏文字`
`               delformat = string.gsub(delformat, '<%/?mark(.-)>', '')`
`               return delformat`
`           end))`
`           --處理紅鏈`
`           text = (string.gsub(text, '%[%[([^\n]-)%]%]', function(y)`
`               local text = string.gsub(y, '^.-%|(.-)$', '%1')`
`               return '`<span style="color:#ba0000">`' .. text .. '`</span>`'`
`           end))`
`       end`
`       return "`[`"``   ``..``   ``text``   ``.."`](https://zh.wikipedia.org/wiki/"_.._link_.._" "wikilink")`"`
`   end`
`   `

end

return vfxd