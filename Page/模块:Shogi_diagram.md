> 本文内容由[模块:Shogi diagram](https://zh.wikipedia.org/wiki/模块:Shogi_diagram)转换而来。


local p = {} function p.board(frame)

`   local args = frame.args`
`   if args[1] == nil then`
`       args = frame:getParent().args`
`   end`
`   local align = string.gsub(args[1] or `*`,'\n',`*`)`
`   if align == '' then`
`       align = 'tright'`
`   end`
`   local header = string.gsub(args[2] or `*`,'\n',`*`)`
`   local footer = string.gsub(args[84] or `*`,'\n',`*`)`

`   local ss = ''`
`   ss = ss .. '`

<div class="' .. align .. '" style="clear:right;width:250px;">

<center>

'

`   ss = ss .. header .. '`

</center>

<div style="position:relative;width:250px;height:250px;">

'

`   ss = ss .. '`

<div style="position:absolute;top:0px;left:0px;width:250px;height:250px;">

[Shogi_board.svg](https://zh.wikipedia.org/wiki/File:Shogi_board.svg "fig:Shogi_board.svg")

</div>

'

`   for i = 0,8 do`
`       for j = 0,8 do`
`           local s = string.gsub(args[i * 9 + j + 3] or `*`,'\n',`*`)`
`           s = string.gsub(s,' ','')`
`           s = string.gsub(s,'_','')`
`           if s ~= '' then`
`               ss = ss .. '`

<div style="position:absolute;top:' .. ((i + 0.5) * 25) .. 'px;left:' .. ((j + 0.5) * 25) .. 'px;width:25px;height:25px;">

[Shogi_'_.._s_.._'1.svg](https://zh.wikipedia.org/wiki/File:Shogi_'_.._s_.._'1.svg "fig:Shogi_'_.._s_.._'1.svg")

</div>

'

`           end`
`       end`
`   end`
`   ss = ss .. '`

</div>

' .. footer .. '

</div>

'

`   return ss`

end

return p