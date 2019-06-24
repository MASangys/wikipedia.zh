\-- -- This module implements -- , ,  -- , , , -- , , , -- , , , -- , ,
, -- , ,  -- -- , , , -- ,  -- ,  -- local p = {}

local data_module = 'Module:Sports color/basketball'

local function stripwhitespace(text)

`   return text:match("^%s*(.-)%s*$")`

end

local function bordercss(c, w)

`   local s = 'inset ' .. w .. 'px ' .. w .. 'px 0 #' .. c `
`       .. ', inset -' .. w .. 'px -' .. w .. 'px 0 #' .. c`
`   return '-moz-box-shadow: ' .. s .. '; -webkit-box-shadow: ' .. s .. '; box-shadow: ' .. s .. ';'`

end

local function get_colors(team, unknown)

`   team = stripwhitespace(team or '')`
`   unknown = unknown or {"DCDCDC", "000000", "000000", "FFFFFF"}`
`   `
`   local use_default = {`
`       [""] = 1,`
`       ["retired"] = 1,`
`       ["free agent"] = 1,`
`   }`
`   `
`   local colors = nil`
`   `
`   if ( team and use_default[team:lower()] ) then`
`       colors = {"DCDCDC", "000000", "DCDCDC", "000000"}`
`   else`
`       local all_colors = mw.loadData(data_module)`
`       colors = all_colors[team]`
`       if ( colors and type(colors) == 'string' ) then`
`           colors = all_colors[colors]`
`       end`
`   end`

`   return colors or unknown`

end

local function team_check(team, unknown)

`   local colors = get_colors(team, unknown)`
`   if type(colors) == 'table' then`
`       return 'known'`
`   else`
`       return unknown`
`   end`

end

local function team_color(team, num)

`   local colors = get_colors(team, nil)`

`   num = tonumber(num:match('[1-4]') or '0')`
`   if ( num ) then`
`       return colors[num]`
`   else`
`       return ''`
`   end`

end

local function team_colorcell(team, borderwidth, bg, fg, bd, simple)

`   local colors = get_colors(team, nil)`
`   local border = ''`
`   borderwidth = borderwidth or ''`
`   `
`   if (borderwidth ~= '') then`
`       local bordercolor = stripwhitespace(colors[bd]) or 'FFFFFF'`
`       if bordercolor ~= 'FFFFFF' then`
`           if simple then`
`               border = 'border:' .. borderwidth .. 'px solid #' .. bordercolor .. ';'`
`           else`
`               border = bordercss(bordercolor, borderwidth)`
`           end`
`       end`
`   end`
`   `
`   return 'background-color:#' .. stripwhitespace(colors[bg]) .. ';color:#' .. stripwhitespace(colors[fg]) .. ';' .. border`

end

function p.check(frame)

`   local args = (frame.args[1] ~= nil) and frame.args or frame:getParent().args`
`   data_module = 'Module:Sports color/' .. (frame.args['sport'] or frame:getParent().args['sport'] or 'basketball')`
`   return team_check(args[1] or '', args[2] or '')`

end

function p.color(frame)

`   local args = (frame.args[1] ~= nil) and frame.args or frame:getParent().args`
`   data_module = 'Module:Sports color/' .. (frame.args['sport'] or frame:getParent().args['sport'] or 'basketball')`
`   return team_color(args[1] or '', args[2] or '')`

end

function p.colorcell(frame)

`   local args = (frame.args[1] ~= nil) and frame.args or frame:getParent().args`
`   data_module = 'Module:Sports color/' .. (frame.args['sport'] or frame:getParent().args['sport'] or 'basketball')`
`   return team_colorcell(args[1] or '', args['border'] or '', 1, 2, 3, args['simple'] and 1 or nil )`

end

function p.colorcell2(frame)

`   local args = (frame.args[1] ~= nil) and frame.args or frame:getParent().args`
`   data_module = 'Module:Sports color/' .. (frame.args['sport'] or frame:getParent().args['sport'] or 'basketball')`
`   return team_colorcell(args[1] or '', args['border'] or '', 3, 4, 1, args['simple'] and 1 or nil )`

end

return p