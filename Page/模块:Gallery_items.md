\-- this module implements [template:gallery
items](https://zh.wikipedia.org/wiki/template:gallery_items "wikilink")
local p = {}

function p.main(frame)

`   local getArgs = require('Module:Arguments').getArgs`
`   local args = getArgs(frame)`

`   local width = args.width or '150px'`

`   local items = {}`
`   for k, v in pairs(args) do`
`       if k ~= nil and tonumber(k) and math.fmod(k,2) == 1 then`
`           local i = math.floor(k/2) + 1`
`           local item = mw.html.create('li')`
`               :addClass('gallerybox')`
`               :css('width', args['width' .. k] or width)`
`           item:tag('div')`
`                   :css('width', args['width' .. k] or width)`
`                   :css('text-align', args['itemalign'] or 'center')`
`                   :css('margin', '0 auto')`
`                   :wikitext(args[k])`
`           if args[tonumber(k)+1] then`
`               item`
`                   :tag('div')`
`                   :addClass('gallerytext')`
`                   :css('width', args['width' .. k] or width)`
`                   :css('text-align', args['captionalign'] or 'center')`
`                   :wikitext('`

' .. args\[tonumber(k)+1\] .. '

')

`           end`
`           items[i] = tostring(item) .. ' '`
`       end`
`   end`
`   local root = mw.html.create('ul')`
`       :addClass('gallery mw-gallery-nolines nochecker')`
`       :addClass(args.class)`
`       :cssText(args.style)`
`       :wikitext(table.concat(items))`
`   `
`   return frame:extensionTag{ name = 'gallery' } .. tostring(root)`

end

return p