> 本文内容由[模块:Infobox VG awards](https://zh.wikipedia.org/wiki/模块:Infobox_VG_awards)转换而来。


require('Module:No globals')

local getArgs = require('Module:Arguments').getArgs local p = {}

local function award(builder, text)

`   builder:tag('td')`
`       :attr('class', 'dt')`
`       :css('font-weight', 'bold')`
`       :css('vertical-align', 'middle')`
`       :css('text-align', 'center')`
`       :wikitext(text)`

end

local function won(builder, text)

`   builder:tag('td')`
`       :css('vertical-align', 'middle')`
`       :css('text-align', 'center')`
`       :css('background-color', '#9F9')`
`       :wikitext(text)`

end

local function nom(builder, text)

`   builder:tag('td')`
`       :css('vertical-align', 'middle')`
`       :css('text-align', 'center')`
`       :css('background-color', '#FDD')`
`       :wikitext(text)`

end

local function row(builder, args, i)

`   builder = builder:tag('tr')`
`       :css('background-color', '#DDF')`
`   award(builder, args['award' .. i])`
`   won(builder, args['award' .. i ..'W'] or 0)`
`   nom(builder, args['award' .. i ..'N'] or 0)`

end

function p.main(frame)

`   local args = getArgs(frame)`
`   return p._main(args)`

end

function p._main(args)

`   -- Main module code goes here.`
`   local ret, temp`
`   local totalW, totalN = 0, 0`
`   `

\-- Award list begin

`   for i = 1, 99 do`
`       if args['award' ..i] then`
`           temp = ''`
`           break`
`       end`
`   end`
`   `
`   if temp then`
`       temp = mw.html.create('table')`
`           :attr('class', 'collapsible collapsed')`
`           :css('width', '100%')`
`           `
`       temp:tag('tr'):tag('th')`
`           :attr('colspan', '3')`
`           :css('background-color', '#D9E8FF')`
`           :css('text-align', 'center')`
`           :wikitext('荣誉')`
`           `
`       temp:tag('tr')`
`           :css('background-color', '#D9E8FF')`
`               :tag('th')`
`               :wikitext('奖项')`
`               :css('text-align', 'center')`
`               :done()`
`           :tag('th')`
`               :css('background-color', '#cec')`
`               :css('text-size', '0.9em')`
`               :css('width', '2.4em')  `
`               :css('text-align', 'center')`
`               :wikitext('获奖')`
`               :done()`
`           :tag('th')`
`               :css('background-color', '#fcd')`
`               :css('text-size', '0.9em')`
`               :css('width', '2.4em')`
`               :css('text-align', 'center')`
`               :wikitext('提名')`
`               :done()`
`               `
`       for i = 1, 99 do`
`           if args['award' .. i] then`
`               row(temp, args, i)`
`               totalW = totalW + (args['award' .. i ..'W'] or 0)`
`               totalN = totalN + (args['award' .. i ..'N'] or 0)`
`           end`
`       end`
`   end`

\-- Award list end

`   ret = mw.html.create('table')`
`       :attr('class', 'infobox')`
`       :css('width', '264px')`
`       :css('font-size', '90%')`
`       :css('vertical-align', 'align')`
`       `
`   ret:tag('caption')`
`       :css('font-weight', 'bold')`
`       :wikitext((args.name and (args.name .. '所获') or '') .. '奖项列表')`

`   if args.image then`
`       ret:tag('tr'):tag('td')`
`           :attr('colspan', '3')`
`           :css('text-align', 'center')`
`           :wikitext(string.format('%s%s',`
`               require('Module:InfoboxImage').InfoboxImage{args = {`
`                   image = args.image,`
`                   sizedefault = 'frameless',`
`                   size = args['image_size'],`
`                   alt = args.alt,`
`               }},`
`               args.caption and ('`

<div style="display: block;">

</div>

' .. args.caption) or ''

`           ))`
`   end`

`   if temp then`
`       ret:tag('tr'):tag('td')`
`           :attr('colspan', '3')`
`           :wikitext(tostring(temp))`

`   end`
`       `
`   if args.totals ~= 'no' then`
`       local totalW = args.awards or totalW`
`       local totalN = args.nominations or totalN`
`       `
`       ret:tag('tr')`
`           :css('background-color', '#d9e8ff')`
`           :css('border-spacing', '4px 2px 2px')`
`           :css('font-weight', 'bold')`
`           :attr('class', 'dt')`
`           :tag('td')`
`               :attr('colspan', '3')`
`               :css('text-align', 'center')`
`               :wikitext('所获奖项与提名总计')`
`           `
`       ret:tag('tr')`
`           :css('font-weight', 'bold')`
`           :tag('td')`
`               :css('vertical-align', 'middle')`
`               :css('text-align', 'center')`
`               :css('background-color', '#DDF')`
`               :wikitext('总计')`
`               :done()`
`           :tag('td')`
`               :css('vertical-align', 'middle')`
`               :css('text-align', 'center')`
`               :css('background-color', '#9F9')`
`               :css('width', '2.4em')`
`               :wikitext(totalW)`
`               :done()`
`           :tag('td')`
`               :css('vertical-align', 'middle')`
`               :css('text-align', 'center')`
`               :css('background-color', '#FDD')`
`               :css('width', '2.4em')`
`               :wikitext(totalN)`
`               :done()`
`   end`
`   `
`   return ret`
`   `

end

return p