\-- This module implements [Template:Infobox tennis tournament
event/events](../Page/Template:Infobox_tennis_tournament_event/events.md "wikilink").
-- \[SublimeLinter luacheck-globals:mw\]

local p = {} local getBuffer, print, _ =
require('Module:OutputBuffer')()

local STYLES = {

`   ["singlesdoubles"] = {[=[|-`

| [單打](../Page/{prefix}_{year}年{tournament}單打比賽.md "wikilink") |
[雙打](../Page/{prefix}_{year}年{tournamentd}雙打比賽.md "wikilink")\]=\]},

`       ["1"] = "singlesdoubles",`
`       ["men"] = "singlesdoubles",`
`       ["mens"] = "singlesdoubles",`
`       ["women"] = "singlesdoubles",`
`       ["womens"] = "singlesdoubles",`
`   ["risingstarsinvitational"] = {[=[|-`

| [單打](../Page/{prefix}_{year}年{tournament}單打比賽.md "wikilink") |
[雙打](../Page/{prefix}_{year}年{tournamentd}雙打比賽.md "wikilink") |- |
colspan="2" |
[新星](../Page/{prefix}_{year}年{tournament}新星邀請賽.md "wikilink")\]=\]},

`   ["boysgirlssingles"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{prefix}_{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子單打比賽.md "wikilink") |
[青少男](../Page/{prefix}_{year}年{tournament}青少年男子單打比賽.md "wikilink")
| [青少女](../Page/{prefix}_{year}年{tournament}青少年女子單打比賽.md "wikilink") |-
\! scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{prefix}_{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子雙打比賽.md "wikilink")\]=\]},

`       ["邁阿密大師賽"] = "boysgirlssingles",`
`   ["混合雙打"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{prefix}_{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{prefix}_{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子雙打比賽.md "wikilink") |
[混合](../Page/{prefix}_{year}年{tournament}混合雙打比賽.md "wikilink")=\]},

`       ["混合"] = "mixeddoubles",`
`       ["大滿貫"] = "mixeddoubles",`
`   ["mixedandteam"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{prefix}_{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{prefix}_{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子雙打比賽.md "wikilink") |
[混合](../Page/{prefix}_{year}年{tournament}混合雙打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 團隊 |
[男子](../Page/{prefix}_{year}年{tournament}男子團隊比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子團隊比賽.md "wikilink")\]=\]},

`   ["澳洲網球公開賽"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子單打比賽.md "wikilink") | |
[青少男](../Page/{year}年{tournament}青少年男子單打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子雙打比賽.md "wikilink") |
[混合](../Page/{year}年{tournament}混合雙打比賽.md "wikilink") |
[青少男](../Page/{year}年{tournament}青少年男子雙打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子雙打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 傳奇 |
[男子](../Page/{year}年{tournament}男子傳奇雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子傳奇雙打比賽.md "wikilink") |
[混合](../Page/{year}年{tournament}傳奇混合雙打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 輪椅單打 |
[男子](../Page/{year}年{tournament}輪椅男子單打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}輪椅女子單打比賽.md "wikilink") |
[四輪](../Page/{year}年{tournament}四輪椅單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 輪椅雙打 |
[男子](../Page/{year}年{tournament}輪椅男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}輪椅女子雙打比賽.md "wikilink") |
[四輪](../Page/{year}年{tournament}四輪椅雙打比賽.md "wikilink") \]=\]},

`   ["法國網球公開賽"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子單打比賽.md "wikilink") | |
[青少男](../Page/{year}年{tournament}青少年男子單打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子雙打比賽.md "wikilink") |
[混合](../Page/{year}年{tournament}混合雙打比賽.md "wikilink") |
[青少男](../Page/{year}年{tournament}青少年男子雙打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子雙打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 傳奇 |
[-45](../Page/{year}年{tournament}45歲以下傳奇雙打比賽.md "wikilink") |
[45+](../Page/{year}年{tournament}45歲及以上傳奇雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子傳奇雙打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 輪椅單打 |
[男子](../Page/{year}年{tournament}輪椅男子單打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}輪椅女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 輪椅雙打 |
[男子](../Page/{year}年{tournament}輪椅男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}輪椅女子雙打比賽.md "wikilink") \]=\]},

`   ["溫布頓網球錦標賽"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子單打比賽.md "wikilink") | |
[青少男](../Page/{year}年{tournament}青少年男子單打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子雙打比賽.md "wikilink") |
[混合](../Page/{year}年{tournament}混合雙打比賽.md "wikilink") |
[青少男](../Page/{year}年{tournament}青少年男子雙打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子雙打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 傳奇 |
[男子](../Page/{year}年{tournament}男子雙打邀請賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子雙打邀請賽.md "wikilink") |
[45+](../Page/{year}年{tournament}45歲及以上男子雙打邀請賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 輪椅雙打 |
[男子](../Page/{year}年{tournament}輪椅男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}輪椅女子雙打比賽.md "wikilink") \]=\]},

`   ["美國網球公開賽"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子單打比賽.md "wikilink") | |
[青少男](../Page/{year}年{tournament}青少年男子單打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子雙打比賽.md "wikilink") |
[混合](../Page/{year}年{tournament}混合雙打比賽.md "wikilink") |
[青少男](../Page/{year}年{tournament}青少年男子雙打比賽.md "wikilink") |
[青少女](../Page/{year}年{tournament}青少年女子雙打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 傳奇 |
[男子](../Page/{year}年{tournament}男子冠軍邀請賽.md "wikilink") |
[女子](../Page/{year}年{tournament}女子冠軍邀請賽.md "wikilink") |
[混合](../Page/{year}年{tournament}混合雙打冠軍邀請賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 輪椅單打 |
[男子](../Page/{year}年{tournament}輪椅男子單打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}輪椅女子單打比賽.md "wikilink") |
[四輪](../Page/{year}年{tournament}_四輪椅單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 輪椅雙打 |
[男子](../Page/{year}年{tournament}輪椅男子雙打比賽.md "wikilink") |
[女子](../Page/{year}年{tournament}輪椅女子雙打比賽.md "wikilink") |
[四輪](../Page/{year}年{tournament}四輪椅雙打比賽.md "wikilink") \]=\]},

`   ["ABN AMRO世界網球賽"] = {[=[|-`

| [單打](../Page/{prefix}_{year}年{tournament}單打比賽.md "wikilink") |
[雙打](../Page/{prefix}_{year}年{tournamentd}雙打比賽.md "wikilink") |- |
[輪椅單打](../Page/{prefix}_{year}年{tournament}輪椅單打比賽.md "wikilink") |
[輪椅雙打](../Page/{prefix}_{year}年{tournamentd}輪椅雙打比賽.md "wikilink")\]=\]},

`   ["doublestwotourneys"] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{prefix}_{year}年{tournament}單打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournamentd}單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{prefix}_{year}年{tournament}雙打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournamentd}雙打比賽.md "wikilink")\]=\]},

`   [""] = {[=[|-`

\! scope="row" style="font-weight: normal; text-align: right;" | 單打 |
[男子](../Page/{prefix}_{year}年{tournament}男子單打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子單打比賽.md "wikilink") |- \!
scope="row" style="font-weight: normal; text-align: right;" | 雙打 |
[男子](../Page/{prefix}_{year}年{tournament}男子雙打比賽.md "wikilink") |
[女子](../Page/{prefix}_{year}年{tournament}女子雙打比賽.md "wikilink")\]=\]}}

local function pullItem(value, default)

`   value = value`
`   if type(STYLES[value]) == "string" then`
`       value = STYLES[value]`
`   end`
`   if STYLES[value] then`
`       return STYLES[value][1]`
`   else`
`       return STYLES[default][1]`
`   end`

end

function p._main(args)

`   local default = ""`
`   if args[2] ~= args[3] then`
`       default = "doublestwotourneys"`
`   end`

`   print('{| style="border-spacing: 0.6em 0; margin: auto; ' ..`
`         'text-align: center;"')`
`   print(string.gsub(pullItem(args.type, default), "{(%a+)}",`
`       {prefix = args.prefix or "", year = args[1], tournament = args[2],`
`        tournamentd = args[3]}))`
`   print("|}")`
`   return getBuffer("\n")`

end

function p.main(frame)

`   local args = require("Module:Arguments").getArgs(frame)`
`   return p._main(args)`

end

return p