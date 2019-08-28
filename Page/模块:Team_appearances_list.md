\-- This module implements [Template:Team appearances list](https://zh.wikipedia.org/wiki/Template:Team_appearances_list "wikilink").

local p = {}

local data_competitions local country_alias_data local country_alias

\-- 代表团写法 local linksuffix = {

`   ['zh'] = "代表团",`
`   ['zh-hans'] = "代表团",`
`   ['zh-cn'] = "代表团",`
`   ['zh-sg'] = "代表团",`
`   ['zh-my'] = "代表团",`
`   ['zh-hant'] = "代表團",`
`   ['zh-hk'] = "代表團",`
`   ['zh-mo'] = "代表團",`
`   ['zh-tw'] = "代表團",`

}

local function load_data(frame)

`   frame = frame or mw.getCurrentFrame()`
`   -- 根据模块是否以sandbox作为结尾决定引用sandbox模块还是正式模块`
`   local sandbox = frame:getTitle():find('sandbox', 1, true) and '/sandbox' or ''`
`   local datamod = mw.loadData('Module:Team appearances list/data' .. sandbox)`
`   if not data_competitions then`
`       data_competitions = datamod`
`   end`
`   if not country_alias_data then`
`       country_alias_data = mw.loadData('Module:Country alias/data' .. sandbox)`
`   end`
`   if not country_alias then`
`       country_alias = require('Module:Country alias' .. sandbox)`
`   end`

end

local function strip_to_nil(text)

`   -- If text is a string, return its trimmed content, or nil if empty.`
`   -- Otherwise return text (which may, for example, be nil).`
`   if type(text) == 'string' then`
`       text = text:match('(%S.-)%s*$')`
`   end`
`   return text`

end

local function make_options(args)

`   -- Return table of options from validated args or throw error.`
`   local options = {}`
`   local function valid_integer(name, min, max, is_optional)`
`       local arg = args[name]`
`       if arg == nil or arg == '' then`
`           if is_optional then`
`               return nil`
`           end`
`           error('缺少' .. name .. '参数')`
`       end`
`       arg = tonumber(arg)`
`       if type(arg) ~= 'number' then`
`           error('参数' .. name .. '非数字')`
`       end`
`       if math.floor(arg) ~= arg then`
`           error('参数' .. name .. '非整数')`
`       end`
`       if not (min <= arg and arg <= max) then`
`           error('参数' .. name .. '无效')`
`       end`
`       return arg`
`   end`
`   local function valid_text(name)`
`       local arg = args[name]`
`       if arg == nil or arg == '' then`
`           error('缺少' .. name .. '参数')`
`       end`
`       if type(arg) ~= 'string' then`
`           error('参数' .. name .. '非字符串')`
`       end`
`       return arg`
`   end`
`   options.lan = args["lan"] or "zh"`
`   options.competition = valid_text('competition')`
`   options.team = valid_text('team')`
`   options.competitions = data_competitions.competitions[data_competitions.competitionsAliases[options.competition]]`
`   local begin_optional`
`   if options.competitions then`
`       begin_optional = true`
`   else`
`       options.interval = valid_integer('interval', 1, 30)`
`   end`
`   options.begin_year = valid_integer('begin_year', 1800, 2100, begin_optional)`
`   options.end_year = valid_integer('end_year', 1800, 2100, true)`
`   if options.begin_year and options.end_year then`
`       if options.begin_year > options.end_year then`
`           error('参数end_year的值不得小于参数begin_year的值')`
`       end`
`   end`
`   return options`

end

local function extract_range(text)

`   -- Return first (if text is a single year), or first, last if a range.`
`   -- The returned values are numbers.`
`   -- Return nothing if text is invalid.`
`   local year = text:match('^(%d+)$')`
`   if year then`
`       if #year == 4 then`
`           return tonumber(year)`
`       end`
`       return`
`   end`
`   local first, dash, last = text:match('^(%d+)(%D+)(%d+)$')`
`   if not (first and #first == 4) then`
`       return`
`   end`
`   dash = strip_to_nil(dash)`
`   if not (dash == '-' or dash == '–') then`
`       return`
`   end`
`   if #last ~= 4 then`
`       if #last == 2 then`
`           last = first:sub(1, 2) .. last`
`       else`
`           return`
`       end`
`   end`
`   first = tonumber(first)`
`   last = tonumber(last)`
`   if first < last then`
`       return first, last`
`   elseif first == last then`
`       return first`
`   end`

end

local function competition_absences_action(data, absent_years, absent_ranges)

`   for _, item in ipairs(data) do`
`       if type(item) == 'number' then`
`           absent_years[item] = true`
`       else`
`           item = strip_to_nil(item)`
`           if type(item) == 'string' then`
`               local first, last = extract_range(item)`
`               if not first then`
`                   error('Year ' .. item .. ' is not valid')`
`               end`
`               if last then`
`                   table.insert(absent_ranges, {first, last})`
`               else`
`                   absent_years[first] = true`
`               end`
`           end`
`       end`
`   end`
`   return absent_years, absent_ranges`

end

local function competition_absences(data, hasTable)

`   -- Return two tables with absent years and absent year ranges.`
`   -- Parameter data is an array of strings from template parameters, or`
`   -- numbers or strings from built-in data.`
`   -- Parameters that are blank or not numbers or strings are ignored.`
`   local absent_years, absent_ranges = {}, {}`
`   if hasTable then`
`       for _, y in ipairs(data) do`
`           if type(y) == 'table' then`
`               absent_years, absent_ranges = competition_absences_action(y, absent_years, absent_ranges)`
`           end`
`       end`
`   else`
`       absent_years, absent_ranges = competition_absences_action(data, absent_years, absent_ranges)`
`   end`
`   return absent_years, absent_ranges`

end

local function competition_information(args)

`   -- Return four tables with competition and team information:`
`   -- * List of competition years that the team attended or could have attended.`
`   -- * Table of absent years (when the team did not attend).`
`   -- * List of pairs of years (absent for each year in range, inclusive).`
`   -- 英文版的disqualified_year参数由于目前只支持一个年份，故暂时不添加支持`
`   local options = make_options(args)`
`   local absences`
`   local comp_years = {}`
`   local aliases = {}`
`   local notes = {}`
`   local alias_args = {`
`       games = options.competition,`
`       lan = options.lan`
`   }`
`   local begin_year = options.begin_year`
`   local end_year = options.end_year`
`   local competitions = options.competitions`
`   local hasTable = nil`
`   alias_args.alias = options.team`
`   aliases[options.team] = country_alias.countryAlias2(alias_args)`
`   if competitions then`
`       absences = competitions[options.team] `
`               or competitions[data_competitions.codeAliases[options.team]] `
`               or competitions[country_alias_data.countryAliases[options.team]]`
`       if absences then`
`           for _, y in ipairs(absences) do`
`               if type(y) == 'table' then`
`                   hasTable = true`
`                   begin_year = y.begin_year or options.begin_year or 1800`
`                   if y.begin_year and options.begin_year then`
`                       begin_year = y.begin_year > options.begin_year and y.begin_year or options.begin_year`
`                   end`
`                   end_year = y.end_year or options.end_year or 2100`
`                   if y.end_year and options.end_year then`
`                       end_year = y.end_year < options.end_year and y.end_year or options.end_year`
`                   end`
`                   local alias = y.link_alias or options.team`
`                   for _, z in ipairs(competitions) do`
`                       if z > end_year then`
`                           break`
`                       elseif z >= begin_year then`
`                           table.insert(comp_years, {z, alias})`
`                       end`
`                   end`
`                   if not aliases[alias] then`
`                       alias_args.alias = alias`
`                       aliases[alias] = country_alias.countryAlias2(alias_args)`
`                   end`
`                   if absences.note == 'yes' and aliases[alias][1] ~= aliases[options.team][1] `
`                   and not notes[alias] then`
`                       table.insert(notes, alias)`
`                       notes[alias] = #notes`
`                   end`
`               end`
`           end`
`       end`
`       if not hasTable then`
`           begin_year = options.begin_year or (absences and absences.begin_year) or 1800`
`           end_year = options.end_year or (absences and absences.end_year) or 2100`
`           local alias = (absences and absences.link_alias) or options.team`
`           for _, y in ipairs(competitions) do`
`               if y > end_year then`
`                   break`
`               elseif y >= begin_year then`
`                   table.insert(comp_years, {y, alias})`
`               end`
`           end`
`           if not aliases[alias] then`
`               alias_args.alias = alias`
`               aliases[alias] = country_alias.countryAlias2(alias_args)`
`           end`
`           if absences and absences.note == 'yes' and aliases[alias][1] ~= aliases[options.team][1] `
`           and not notes[alias] then`
`               table.insert(notes, alias)`
`               notes[alias] = #notes`
`           end`
`       end`
`   else`
`       end_year = end_year or (os.date('!*t').year + options.interval)`
`       for y = begin_year, end_year, options.interval do`
`           table.insert(comp_years, {y, options.team})`
`       end`
`   end`
`   return comp_years, aliases, notes, competition_absences(absences or args, hasTable)`

end

function p._main(args)

`   load_data()  -- in case this function is called by another module`
`   local hlist = require('Module:List').horizontal`
`   local competitions, aliases, notes, absent_years, absent_ranges = competition_information(args)`
`   local current_year = os.date('!*t').year`
`   local comp_name = {}`
`   local function is_absent(y)`
`       if absent_years[y] then`
`           return true`
`       end`
`       for _, range in ipairs(absent_ranges) do`
`           if range[1] <= y and y <= range[2] then`
`               return true`
`           end`
`       end`
`       return false`
`   end`
`   local appearances = {}`
`   local absent_first, absent_last`
`   for i = 1, #competitions + 1 do`
`       local y`
`       local alias`
`       if competitions[i] then`
`           y = competitions[i][1]`
`           alias = competitions[i][2]`
`       end`
`       if y and is_absent(y) then`
`           if absent_first then`
`               absent_last = y`
`           else`
`               absent_first = y`
`           end`
`       else`
`           if absent_first then`
`               table.insert(appearances,`
`                   '`<span style="color:gray">`' ..`
`                   (absent_last and (absent_first .. '–' .. absent_last) or absent_first) ..`
`                   '`</span>`')`
`               absent_first, absent_last = nil, nil`
`           end`
`           if y then`
`               local name = aliases[alias][1]`
`               local lang = aliases[alias][2]`
`               if not comp_name[lang] then`
`                   comp_name[lang] = country_alias.getGames(args.competition, lang)`
`               end`
`               local display = tostring(y)`
`               if y > current_year then`
`                   display = '`<i>`' .. display .. '`</i>`'`
`               end`
`               local note = ''`
`               if notes[alias] then`
`                   note = '`<sup>`'``   ``..``   ``tostring(notes[alias])``   ``..``   ``'`</sup>`'`
`               end`
`               table.insert(appearances, string.format(`
`                   '`[`%s`](https://zh.wikipedia.org/wiki/%d年%s%s%s "wikilink")`%s',`
`                   y, comp_name[lang], name, linksuffix[lang], display, note`
`               ))`
`           end`
`       end`
`   end`
`   local bottom = ''`
`   if #appearances > 0 and #notes > 0 then`
`       bottom = '`

'

`       for j = 1, #notes do`
`           bottom = bottom .. '`<sup>`'``   ``..``   ``j``   ``..``   ``'`</sup>` 以“' .. aliases[notes[j]][1] .. '”名义参赛'`
`           if j < #notes then`
`               bottom = bottom .. '`
`'`
`           end`
`       end`
`       bottom = bottom .. '`

'

`   end`
`   return hlist(appearances) .. bottom`

end

function p.main(frame)

`   load_data(frame)`
`   return p._main(frame:getParent().args)`

end

return p