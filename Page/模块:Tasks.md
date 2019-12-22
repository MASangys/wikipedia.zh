list = {

\-- Inner Project

`   {'collaborate', '`[`合作`](../Page/WP:Collaborations.md "wikilink")`'},`
`   {'assess', '`[`评级`](https://zh.wikipedia.org/wiki/Wikipedia:条目质量评级标准 "wikilink")`'},`

\-- Deletion

`   {'deletion', '`[`删除`](../Page/WP:删除.md "wikilink")`'},`
`   {'notability', '`[`关注度`](https://zh.wikipedia.org/wiki/Wikipedia:关注度 "wikilink")`'},`
`   {'merge', '`[`合并`](https://zh.wikipedia.org/wiki/Wikipedia:合并和移动页面 "wikilink")`'},`
`   {'split', '`[`分割`](../Page/WP:分割.md "wikilink")`'},`
`   {'move', '`[`移动`](../Page/WP:移动请求.md "wikilink")`'},`
`   `

\-- Maintain

`   {'category', '`[`分类`](https://zh.wikipedia.org/wiki/Wikipedia:頁面分類 "wikilink")`'},`
`   {'maintain', '`[`维护`](https://zh.wikipedia.org/wiki/Wikipedia:維基百科維護 "wikilink")`'},`
`   {'cleanup', '`[`清理`](https://zh.wikipedia.org/wiki/Wikipedia:清理 "wikilink")`'},`
`   {'wikify', '`[`维基化`](https://zh.wikipedia.org/wiki/Wikipedia:维基化 "wikilink")`'},`
`   {'orphans', '`[`孤立`](https://zh.wikipedia.org/wiki/Wikipedia:孤立页面 "wikilink")`'},`
`   {'disambiguation', '`[`消歧义`](https://zh.wikipedia.org/wiki/Category:消歧义 "wikilink")`'},`

\-- Expand / Improve

`   {'expand', '`[`扩充`](https://zh.wikipedia.org/wiki/Wikipedia:更优秀条目写作指南 "wikilink")`'},`
`   {'stubs', '`[`小作品`](https://zh.wikipedia.org/wiki/Wikipedia:小作品 "wikilink")`'},`
`   {'requests', '`[`条目请求`](https://zh.wikipedia.org/wiki/Wikipedia:条目请求 "wikilink")`'},`
`   {'copyedit', '`[`校订`](https://zh.wikipedia.org/wiki/Wikipedia:如何審核校對 "wikilink")`'},`
`   {'npov', '`[`中立`](https://zh.wikipedia.org/wiki/Wikipedia:中立的观点 "wikilink")`'},`
`   {'update', '`[`更新`](../Page/WP:As_of.md "wikilink")`'},`
`   `

\-- Source

`   {'citations', '`[`来源引用`](https://zh.wikipedia.org/wiki/Wikipedia:列明来源 "wikilink")`'},`
`   {'unreferenced', '`[`补充来源`](https://zh.wikipedia.org/wiki/Category:缺少来源的条目 "wikilink")`'},`
`   {'verify', '`[`查证`](https://zh.wikipedia.org/wiki/Wikipedia:可供查證 "wikilink")`'},`

\-- Other requests

`   {'infobox', '`[`信息框`](https://zh.wikipedia.org/wiki/Wikipedia:格式手册/信息框 "wikilink")`'},`
`   {'photo', '`[`图片`](https://zh.wikipedia.org/wiki/Wikipedia:图片请求 "wikilink")`'},`
`   {'map', '`[`地图`](https://zh.wikipedia.org/wiki/Wikipedia:地图专题 "wikilink")`'},`
`   {'geocoord', '`[`Geographical``
 ``coordinates`](../Page/WP:WikiProject_Geographical_coordinates.md "wikilink")`'},`
`   `

\-- Reviews

`   {'fac', '`[`特色条目评选`](https://zh.wikipedia.org/wiki/Wikipedia:特色条目评选 "wikilink")`'},`
`   {'far', '`[`特色条目重审`](../Page/WP:特色条目重审.md "wikilink")`'},`
`   {'flc', '`[`特色列表评选`](https://zh.wikipedia.org/wiki/Wikipedia:特色列表评选 "wikilink")`'},`

\-- {'fsc', '[Featured sound
candidates](../Page/WP:Featured_sound_candidates.md "wikilink")'},

`   {'gan', '`[`優良條目評選`](https://zh.wikipedia.org/wiki/Wikipedia:優良條目評選 "wikilink")`'},`
`   {'gar', '`[`優良條目重審`](https://zh.wikipedia.org/wiki/Wikipedia:優良條目重審 "wikilink")`'},`
`   {'pr', '`[`同行评审`](https://zh.wikipedia.org/wiki/Wikipedia:同行评审 "wikilink")`'},`
`   `

}

local getArgs = require('Module:Arguments').getArgs

p = {}

local function core(name, value)

`   local ret`
`   `
`   ret = '`

<li>

<b>' .. (name or '') .. '：</b>' .. (value or '') .. '

</li>

'

`   return ret`

end

local function tasklist(args) -- table.insert(list, -1, args.othertext
or '其它')

`   local ret = ''`
`   `
`   for _, v in ipairs(list) do`
`       if args[v[1]] then`
`           ret = ret .. core(v[2], args[v[1]]) `
`       end`
`   end`
`   `
`   return ret`

end

function p.main(frame)

`   local args = getArgs(frame)`
`   navbar0 = frame:expandTemplate{ title = 'navbar', args = { args.name, plain = 'yes', style = 'float: right;'} }`
`   return p._main(args)`

end

function p._main(args)

`   table.insert(list, {'other', args.othertext or '其它'})`
`   `
`   local td1`

`   if args.image ~= 'off' then`
`           `
`       td1 = mw.html.create('td')`
`       td1`
`           :css('vertical-align', 'top')`
`           :css('width', '55px')`
`           :wikitext('`[`Nuvola_apps_korganizer.svg`](https://zh.wikipedia.org/wiki/File:Nuvola_apps_korganizer.svg "fig:Nuvola_apps_korganizer.svg")`')`
`   else`
`       td1 = ''`
`   end`
`   `
`   td2text = '`

<div style="position: relative; left: 0px; margin-right: 0px; z-index: 15;">

下方列出了<b>[需要关注的任务](https://zh.wikipedia.org/wiki/Wikipedia:社群首页/活跃任务 "wikilink")：</b>'

`   if args.navbar == 'yes' then`
`       td2text = td2text .. navbar0`
`   end`
`   td2text = td2text .. '`

'

`   td2text = td2text .. tasklist(args)`
`   td2text = td2text .. '`

</ul>

'

`   td2text = td2text .. '`

</div>

'

`   local td2 = mw.html.create('td')`
`   td2:wikitext(td2text)`
`   `
`   local tr = mw.html.create('tr')`
`   tr:wikitext(tostring(td1) .. tostring(td2))`
`       `
`   local framee = mw.html.create('table')`
`   framee`
`       :css('background', 'none')`
`       :css('width', 'auto')`
`       :wikitext( tostring(tr) )`
`   `
`   return framee`

end

return p