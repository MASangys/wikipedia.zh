local getArgs = require('Module:Arguments').getArgs

local p = {}

local function makeInvokeFunction(funcName)

`   -- makes a function that can be returned from #invoke, using`
`   -- `[`Module:Arguments`](https://zh.wikipedia.org/wiki/Module:Arguments "wikilink")`.`
`   return function (frame)`
`       local args = getArgs(frame, {parentOnly = true})`
`       return p[funcName](args)`
`   end`

end

local function colorbox(color,text,link)

`   return '`[<span style="border:1px solid darkgray;background-color:'..color..'" title="'..text..'">`    `</span>](https://zh.wikipedia.org/wiki/'..link..' "wikilink")` '`

end

local t1 = {

`   ['Blue Line'] = { 'blue line', 'blue', 'a line', 'line a', 'a', icon='img_circle', dab=true, },`
`   ['Red Line'] = { 'red line', 'red', 'b line', 'line b', 'b', icon='img_circle', dab=true, },`
`   ['Green Line'] = { 'green line', 'green', 'c line', 'line c', 'c',  icon='img_circle', dab=true, }, `
`   ['Purple Line'] = { 'purple line', 'purple', 'd line', 'line d', 'd', icon='img_circle', dab=true, },`
`   ['Expo Line'] = { 'expo line', 'expo', 'e line', 'line e', 'e', icon='img_circle', dab=true, }, `
`   ['Orange Line'] = { 'orange line', 'orange', 'f line', 'line f', 'f', icon='img_square', dab=true, },   `
`   ['Silver Line'] = { 'silver line', 'silver',  'g line', 'line g', 'g', icon='img_square', dab=true, },  `
`   ['Gold Line'] = { 'gold line', 'gold', 'j line', 'line j', 'j', icon='img_circle', dab=true, }, `
`   ['Crenshaw/LAX Line'] = { 'crenshaw/lax line', 'crenshaw/lax', 'crenshaw line', 'crenshaw',  icon='crenshaw', dab=true,},`
`   ['Harbor Transitway'] = { 'harbor transitway', 'harbor', color='#B8860B', icon='colorbox', },`
`   ['El Monte Busway'] = { 'el monte busway', 'el monte', color='#B8AD93', icon='colorbox', },`
`   ['Regional Connector Transit Corridor'] = { 'regional connector transit corridor', 'regional connector', 'regional', color='#604020', icon='colorbox', },`

}

p.icon = makeInvokeFunction('_icon')

function p._icon(args)

`   local link`
`   local code = args[1] or ''`
`   local text = args[2]`
`   if text then text = '('..text..')' else text = '' end`
`   local showtext = args.showtext`
`   for k, v in pairs(t1) do`
`       for _, name in ipairs(v) do`
`           if mw.ustring.lower(code) == name then`
`               if v.dab == true then`
`                   if k=='Red Line' then CName= '红线'`
`                   elseif k=='Blue Line' then CName= '蓝线'`
`                   elseif k=='Green Line' then CName= '绿线'`
`                   elseif k=='Expo Line' then CName= '博览线'`
`                   elseif k=='Purple Line' then CName= '紫线'`
`                   elseif k=='Gold Line' then CName= '金线'`
`                   elseif k=='Crenshaw/LAX Line' then CName= '克伦肖／洛杉矶国际机场线'`
`                   elseif k=='Orange Line'then `
`                       Mode='快速公交'`
`                       CName= '橙线'`
`                   elseif k=='Silver Line'then `
`                       Mode='快速公交'`
`                       CName= '银线'`
`                   else`
`                       CNAME = k   --  Someone Finish THis`
`                   end`
`               `
`                   if Mode == '快速公交' or Mode == '轻轨' then`
`                       link = '洛杉矶'..Mode..CName`
`                   else`
`                       link = '洛杉矶地铁'..CName`
`                   end`
`                           `
`                   if showtext then showtext = '`[`'..CName..'`](https://zh.wikipedia.org/wiki/'..link..' "wikilink")` ' else showtext = '' end`
`               else`
`                   link = k`
`                   if showtext then showtext = '`[`'..k..'`](https://zh.wikipedia.org/wiki/'..k..' "wikilink")` ' else showtext = '' end`
`               end`
`               if v.icon == 'colorbox' then`
`                   return colorbox(v.color,k,k)..showtext..text`
`               elseif v.icon == 'crenshaw' then`
`                   return '`[`'..(args.size``   ``or``   ``17)..'px`](https://zh.wikipedia.org/wiki/File:LACMTA_Circle_Crenshaw_Line.svg "fig:'..(args.size or 17)..'px")` '..showtext..text`
`               elseif v.icon == 'img_circle' then`
`                   return '`[`'..(args.size``   ``or``   ``17)..'px`](https://zh.wikipedia.org/wiki/File:LACMTA_Circle_'..k..'.svg "fig:'..(args.size or 17)..'px")` '..showtext..text`
`               elseif v.icon == 'img_square' then`
`                   return '`[`'..(args.size``   ``or``   ``17)..'px`](https://zh.wikipedia.org/wiki/File:LACMTA_Square_'..k..'.svg "fig:'..(args.size or 17)..'px")` '..showtext..text`
`               end`
`           end`
`       end`
`   end`
`   return colorbox('#fff',code..' Line',code..' Line (Los Angeles Metro)')..text`

end

return p