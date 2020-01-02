> 本文内容由[模块:Babel](https://zh.wikipedia.org/wiki/模块:Babel)转换而来。


local p = {}

local getArgs

function p.main(frame)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   local args = getArgs(frame, {wrappers = 'Template:Babel'})`

`   local ret = mw.html.create('table')`
`               :addClass('userboxes')`
`               :css( {`
`                       float = args.align or 'right',`
`                       ['margin-left'] = (args.left or '1') .. 'em',`
`                       ['margin-bottom'] = (args.bottom or '0') .. 'em',`
`                       width = (args.width or '248') .. 'px',`
`                       clear = args.align or 'right',`
`                       color = args.textcolor or '#000000',`
`                       border = (bordercolor or '#99B3FF') .. ' solid ' .. (args.solid or 1)..'px'`
`                   } )`

`   if args.shadow and string.lower(args.shadow) == 'yes' then`
`       ret:css({ ['box-shadow'] = '0 2px 4px rgb(0,0,0,0.2)',`
`                       ['-mox-box-shadow'] = '0 2px 4px rgb(0,0,0,0.2)',`
`                       ['-webkit-box-shadow'] = '0 2px 4px rgb(0,0,0,0.2)' })`
`   end`

`   ret:cssText( args['extra-css'] or '' )`

`   local color = args.color or 'inherit'`
`   local row1 = ret:tag('tr')`
`   local row2 = ret:tag('tr')`
`   local row3 = ret:tag('tr')`

`   local body_cells = row2:tag('td')`
`               :css('vertical-align', 'middle !important')`

`   local userboxes`
`   -- Special message for when first argument is blank; otherwise treat it as normal`
`   if args[1] and args[1]:find('%S') then`
`       userboxes = frame:preprocess('``')`
`   else`
`       userboxes = args.noboxestext or "`

<center>

您未设置任何语言。
请参阅[本模板文档](https://zh.wikipedia.org/wiki/Template:Babel/doc "wikilink")。

</center>

"

`   end`

`   body_cells:wikitext(userboxes)`

`   -- "remove" args[1] so it isn't looked at in the loop`
`   -- table.remove(args,1) doesn't produce desired result`
`   args[1] = ''`

`   -- Keep track of how many columns are in this table`
`   local col_span = 1`
`   for _, v in ipairs( args ) do`
`       -- ! indicates a new cell should be created`
`       if v:find('%S') and v ~= '!' then`
`           body_cells:wikitext( frame:preprocess('``') )`
`       -- Recycling body_cells for `

<td>

`       elseif v and v == '!' then`
`           col_span = col_span + 1`
`           body_cells:done()`
`           body_cells = row2:tag('td')`
`       end`
`   end`

`   row1:tag('th')`
`           :css({ ['background-color'] = color,`
`                   ['text-align'] = 'center' })`
`           :attr('colspan',col_span)`
`           :wikitext( args.header or '`[`维基百科:巴别`](https://zh.wikipedia.org/wiki/维基百科:巴别 "wikilink")`' )`
`           :done()`

`   row3:tag('td')`
`           :css({ ['background-color'] = color,`
`                   ['text-align'] = 'center' })`
`           :attr('colspan',col_span)`
`           :wikitext( args.footer or '`[`查阅所有用戶語言`](https://zh.wikipedia.org/wiki/Category:用户语言 "wikilink")`' )`
`           :done()`

`   if args['special-boxes'] then`
`       body_cells:wikitext(args['special-boxes'])`
`   end`

`   body_cells:done()`

`   return tostring(ret)`

end

return p