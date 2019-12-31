> 本文内容由[模块:TDS](https://zh.wikipedia.org/wiki/模块:TDS)转换而来。


\--\[=\[ 用來展示[模块:Template:Delete/data/sandbox](https://zh.wikipedia.org/wiki/模块:Template:Delete/data/sandbox "wikilink") 放在方針的準則比較可以寫在[模块:Template:Delete/data/sandbox](https://zh.wikipedia.org/wiki/模块:Template:Delete/data/sandbox "wikilink")，並使用：  |{{\#invoke:TDS|desc_new|項}} }} 更簡單的方式：  \]=\]-- --local data = require( 'Module:Template:Delete/date' ) local datasb = require( 'Module:Template:Delete/data/sandbox' )

local z = {}

function extractAliases( item )

`   allnames = { item[1] }`
`   for j, alias in ipairs( item[2] ) do`
`       table.insert( allnames, alias )`
`   end`
`   return allnames`

end

function extractShortDesc( item )

`   pieces = {}`
`   for m in mw.text.trim( item[4] ):gmatch( '%!%(.-%)%!' ) do`
`       table.insert( pieces, m:sub( 3, -3 ) )`
`   end`
`   return table.concat( pieces )`

end

function z.desc_old( frame )

`   return require( 'Module:Template:Delete' ).desc( frame , frame.args[1] )`

end

function desc_new( frame, name, short )

`   name = mw.text.trim( name ):upper()`
`   wt = {}`
`   for i, item in ipairs( datasb ) do`
`       if name == '' or #name == 1 and item[1]:sub( 1, 1 ) == name or item[1] == name then`
`           if short then`
`               para = extractShortDesc( item )`
`               if para ~= '' then`
`                   table.insert( wt, para )`
`               end`
`           else`
`               allnames = extractAliases( item )`
`               para = item[4]:gsub( '%!%(.-%)%!', function( m ) return m:sub( 3, -3 ) end )`
`               tinfo = item[5]`
`               if tinfo == nil then`
`                   tusage = {}`
`                   for k, aname in ipairs( allnames ) do`
`                       table.insert( tusage, '``' )`
`                   end`
`                   tinfo = '使用模板' .. mw.text.listToText( tusage, '、', '或' ) .. '。'`
`               end`
`               snippet = ';'.. item[1] .. '. ' .. item[3] .. '\n' .. para .. '\n* ' .. tinfo .. '`

<div style="text-align: right;">

</div>

'

`               table.insert( wt, snippet )`
`           end`
`       end`
`   end`
`   if short then`
`       return table.concat( wt, '\n' )`
`   else`
`       return frame:preprocess( table.concat( wt, '\n' ) )`
`   end`

end

function z.desc_new( frame )

`   return desc_new( frame, frame.args[1] )`

end

return z