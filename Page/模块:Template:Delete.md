local data = require( 'Module:Template:Delete/data' )

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

function desc( frame, name, short )

`   name = mw.text.trim( name ):upper()`
`   wt = {}`
`   for i, item in ipairs( data ) do`
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
`               snippet = '; `` ' .. item[1] .. '. ' .. item[3]:gsub( '%!%(.-%)%!', function( m ) return m:sub( 3, -3 ) end ) .. '\n' .. para .. '\n* ' .. tinfo`
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

function z.desc( frame )

`   return desc( frame, frame.args[1] )`

end

function z.shortDesc( frame )

`   return desc( frame, frame.args[1], true )`

end

function z.reasons( frame )

`   wt = {}`
`   for i, item in ipairs( data ) do`
`       allnames = extractAliases( item )`
`       table.insert( wt, '`

<tr>

<td>

' .. mw.text.listToText( allnames, '、', '或' ) .. '

<td title="' .. extractShortDesc( item ) .. '">

' .. item\[3\]:gsub( '%\!%(.-%)%\!', function( m ) return m:sub( 3, -3 ) end ) .. '

</td>

' )

`   end`
`   return '`

<table class="wikitable">

' .. table.concat( wt ) .. '

</table>

' end

function z.input( frame )

`   if frame.args.parent then`
`       args = frame:getParent().args`
`   else`
`       args = frame.args`
`   end`
`   -- precache`
`   map = {}`
`   for i, item in ipairs( data ) do`
`       map[item[1]:lower()] = i`
`       for j, alias in ipairs( item[2] ) do`
`           map[alias:lower()] = i`
`       end`
`   end`
`   -- parse`
`   i = 1`
`   rows = {}`
`   pretext = {}`
`   deletelinks = {}`
`   while i < 10 do`
`       arg = args[i]`
`       if arg and map[mw.text.trim( arg:lower() )] then`
`           item = data[map[mw.text.trim( arg:lower() )]]`
`           if frame.args.reasoncode then`
`               return item[1]`
`           end`
`           title = mw.title.getCurrentTitle()`
`           checkfunc = item[6]`
`           if checkfunc then`
`               check = checkfunc( title )`
`           else`
`               check = nil`
`           end`
`           -- special case for F1`
`           rowsuffix2 = ''`
`           deletesuffix = ''`
`           if item[1] == 'F1' or item[1] == 'F5' then`
`               i = i + 1`
`               if args[i] then`
`                   img = mw.text.trim( args[i] )`
`               else`
`                   img = nil`
`               end`
`               if img then`
`                   imgtitle = mw.title.new( img, 'Media' )`
`               else`
`                   imgtitle = nil`
`               end`
`               if imgtitle then`
`                   deletesuffix = '：`[`:File:'``   ``..``   ``imgtitle.text``   ``..``   ``'`](https://zh.wikipedia.org/wiki/:File:'_.._imgtitle.text_.._' "wikilink")`'`
`               else`
`                   if check then`
`                       rowsuffix2 = '`
<span class="error">`為方便管理員檢查，請加上保留檔案的名稱。`</span>`'`
`                   else`
`                       check = '為方便管理員檢查，請加上保留檔案的名稱。'`
`                   end`
`               end`
`           end`
`           if check then`
`               rowsuffix = '`
<span class="error">`' .. check .. '`</span>`' ..`
`                   ( args.cat or args.cate or args.category or '' )`
`           else`
`               if frame.args.deletelink then`
`                   table.insert( deletelinks, '[[WP:CSD#'_.._item[1]_.._'|' .. item[1] .. ']]: ' .. item[3]:gsub( '%!%(.-%)%!', '') .. deletesuffix )`
`               end`
`               rowsuffix = args.cat or args.cate or args.category or ( '[[Category:快速删除候选|' .. ( item[7] or '速' ) .. ']]' )`
`           end`
`           if deletesuffix then`
`            row = '* `<strong><span id="speedy-delete-' .. item[1] .. '" title="' .. extractShortDesc( item ) .. '">`' .. item[3]:gsub( '%!%(.-%)%!', function( m ) return m:sub( 3, -3 ) end ) .. '（[[WP:CSD#'_.._item[1]_.._'|CSD ' .. item[1] .. ']]' .. deletesuffix .. '）' ..  rowsuffix .. rowsuffix2 .. '`</span></strong>`'`
`           else`
`            row = '* `<strong><span id="speedy-delete-' .. item[1] .. '" title="' .. extractShortDesc( item ) .. '">`' .. item[3]:gsub( '%!%(.-%)%!', function( m ) return m:sub( 3, -3 ) end ) .. '（[[WP:CSD#'_.._item[1]_.._'|CSD ' .. item[1] .. ']]）' .. rowsuffix .. rowsuffix2 .. '`</span></strong>`'`
`           end`
`           table.insert( rows, row )`
`       elseif arg and mw.text.trim( arg ) ~= '' then`
`           if frame.args.reasoncode then`
`               return ''`
`           end`
`           -- try to read it as a title`
`           title = mw.title.new( mw.text.trim( arg ) )`
`           cat = args.cat or args.cate or args.category or ''`
`           if title and title.exists then`
`               if frame.args.deletelink then`
`                   table.insert( deletelinks, '`[`CSD`](https://zh.wikipedia.org/wiki/WP:CSD "wikilink")`: `[`:'``   ``..``   ``arg``   ``..``   ``'`](https://zh.wikipedia.org/wiki/:'_.._arg_.._' "wikilink")`' )`
`               end`
`               table.insert( rows, '*`<strong>`' .. cat .. '`[`:'``   ``..``   ``arg``   ``..``   ``'`](https://zh.wikipedia.org/wiki/:'_.._arg_.._' "wikilink")</strong>`' )`
`           else`
`               if frame.args.deletelink then`
`                   table.insert( deletelinks, arg )`
`               end`
`               arg = string.gsub(arg, "^([*:#]*)(.*)", "%1`<strong>`%2`</strong>`")`
`               table.insert( rows, '*' .. cat .. arg )`
`           end`
`       end`

`       arg = args['c' .. i]`
`       if arg and mw.text.trim( arg ) ~= '' then`
`           table.insert( rows, '*' .. arg )`
`       end`

`       i = i + 1`
`   end`
`   -- for use by Twinkle`
`   if frame.args.deletelink then`
`       return mw.text.trim( table.concat( deletelinks, '；' ):gsub( '。；', '；' ):gsub( '。：', '：' ) )`
`   end`
`   if #rows > 0 then`
`       return mw.text.trim( table.concat( pretext ) .. '\n' .. table.concat( rows, '\n' ) )`
`   else`
`       return '`<span style="font-weight:bold;color:red;">`（請填寫理由）`</span>`' .. ( args.cat or args.cate or args.category or '' )`
`   end`

end

return z

[Category:快速删除候选](https://zh.wikipedia.org/wiki/Category:快速删除候选 "wikilink") [Category:快速删除候选](https://zh.wikipedia.org/wiki/Category:快速删除候选 "wikilink") [Category:快速删除候选](https://zh.wikipedia.org/wiki/Category:快速删除候选 "wikilink")