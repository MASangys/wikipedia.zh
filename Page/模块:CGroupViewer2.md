> 本文内容由[模块:CGroupViewer2](https://zh.wikipedia.org/wiki/模块:CGroupViewer2)转换而来。


local z = {} local error = require( 'Module:Error' )

function conversion(frame, args)

`   local name = args[1]`
`   if not name or name == '' then`
`       return ''`
`   end`
`   local data = require( 'Module:CGroup/' .. name )`
`   if type( data ) ~= 'table' or not data.name or data.name == '' then`
`       return error.error{ '指定-{zh-hans:模块;zh-hant:模組};-“' .. name .. '”不是有效的转换组' }`
`   end`
`   local text = string.format([=[`

\]=\], name, name, name, name, name, name, name)

`   for i, v in ipairs( data.content ) do`
`       if v.type == 'text' then`
`           if not v.preprocessed then`
`               text = text .. ' \n'`
`           end`
`       elseif v.type == 'item' then`
`           if v.original then`
`               text = text .. '-{H|' .. v.rule .. '}- \n'`
`           else`
`               text = text .. '-{H|' .. v.rule .. '}-\n'`
`           end`
`       end`
`   end`
`   text = text .. ''`
`   return text`

end

function z.main( frame )

`   local args = {}`
`   for k, v in pairs( frame.args ) do`
`       args[k] = v`
`   end`
`   return  '`

<div style="dispaly:none">

' .. string.gsub(conversion(frame, args), '\\\\n', '----') .. '

</div>

' end

function z.main2( frame )

`   local args = {}`
`   for k, v in pairs( frame.args ) do`
`       args[k] = v`
`   end`
`   local pre = string.format('`

```
%s
```

', conversion(frame, args))

`   pre = string.gsub(pre, '!', '!')`
`   pre = string.gsub(pre, '=', '=')`
`   pre = string.gsub(pre, 'h', 'h')`
`   pre = string.gsub(pre, '%[', '[')`
`   pre = string.gsub(pre, '%]', ']')`
`   pre = string.gsub(pre, '{', '{')`
`   pre = string.gsub(pre, '|', '|')`
`   pre = string.gsub(pre, '}', '}')`
`   pre = string.gsub(pre, '{{', '{{')`
`   pre = string.gsub(pre, '\\n', '----')`
`   return pre`

end

return z