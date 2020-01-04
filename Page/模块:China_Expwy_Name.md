> 本文内容由[模块:China Expwy Name](https://zh.wikipedia.org/wiki/模块:China_Expwy_Name)转换而来。


-----

\-- Module:China Expwy Name - Lua module for China Expwy Name template

-----

\-- For the  code-name convensions

local p = {}

\-- Icon width for different code, according to GB5768-2009 local width_translation = {

`   [1] = "22px",`
`   [2] = "27px",`
`   [3] = "32px",`
`   [4] = "37px"`

}

\-- Language code for different ethnics local lang_codes = {

`   ["维"] = "ug", ["維"] = "ug", ["ug"] = "ug",`
`   ["藏"] = "bo", ["bo"] = "bo",`
`   ["蒙"] = "mn", ["mn"] = "mn"`

}

\-- Province library local province_lib = mw.loadData("Module:China Expwy Name/Province") -- Main expressway code-name translation library local expwy_lib = mw.loadData("Module:China Expwy Name/NameFromCode") local image_refs = mw.loadData("Module:China Expwy Name/ImageRefs") -- Code translation against ambiguity, such as G1501s local code_translation = mw.loadData("Module:China Expwy Name/TranslateCode")

function trim(s)

` return s:match "^%s*(.-)%s*$"`

end

function clean_tags(s)

`   return string.gsub(string.gsub(trim(s), '<.->', ''), "'", "")`

end

function internal_translatecode(province, id)

`   if code_translation[province] == nil or code_translation[province][id] == nil then`
`       return id`
`   else`
`       return code_translation[province][id]`
`   end`

end

\-- Functionality for code-name conversion function p.fullname(frame)

`   if frame.args[1] == nil then`
`       return "error"`
`   else`
`       id = clean_tags(string.upper(frame.args[1]))`
`   end`
`   if frame.args[2] == nil then`
`       province = "CHINA"`
`   else`
`       province = trim(string.upper(frame.args[2]))`
`   end`
`   if province_lib.chn_lib[province] ~= nil then`
`       province = province_lib.chn_lib[province]`
`   end`
`   if expwy_lib[province] == nil then`
`       return "error"`
`   elseif expwy_lib[province][id] == nil then`
`       return "error"`
`   else`
`       return expwy_lib[province][id]`
`   end`

end

\-- Functionality for raw code fetching (e.g., G1501SH -\> G1501) function p.translatecode(frame)

`   if frame.args[1] == nil then`
`       return ""`
`   else`
`       id = clean_tags(string.upper(frame.args[1]))`
`   end`
`   if frame.args[2] == nil then`
`       province = "CHINA"`
`   else`
`       province = trim(string.upper(frame.args[2]))`
`   end`
`   if province_lib.chn_lib[province] ~= nil then`
`       province = province_lib.chn_lib[province]`
`   end`
`   return internal_translatecode(province, id)`

end

function internal_image_link(frame, typ, link)

`   if frame.args[1] == nil then`
`       return ""`
`   else`
`       id = clean_tags(string.upper(frame.args[1]))`
`   end`
`   `
`   if frame.args[2] == nil or trim(frame.args[2]) == '' then`
`       province = "CHINA"`
`   else`
`       province = trim(string.upper(frame.args[2]))`
`   end`
`   if province_lib.chn_lib[province] ~= nil then`
`       province = province_lib.chn_lib[province]`
`   end`
`   `
`   true_code = internal_translatecode(province, id)`
`   true_code_len = string.len(true_code) - 1`
`   if frame.args[3] ~= nil and string.upper(frame.args[3]) ~= "D" then`
`       image_width = frame.args[3]`
`   else`
`       if width_translation[true_code_len] == nil then`
`           return ""`
`       else`
`           image_width = width_translation[true_code_len]`
`       end`
`   end`

`   image_ref_exists = false`
`   if typ == 0 then -- sign no name`
`       base_image_name = province_lib.db[province].image_prefix .. " Expwy " .. true_code .. " sign no name"`
`       if image_refs[province] ~= nil and image_refs[province][true_code] ~= nil and image_refs[province][true_code].no_name ~= nil then`
`           image_ref_exists = image_refs[province][true_code].no_name`
`       end`
`   else -- sign with name`
`       base_image_name = province_lib.db[province].image_prefix .. " Expwy " .. id .. " sign with name"`
`       if image_refs[province] ~= nil and image_refs[province][id] ~= nil and image_refs[province][id].with_name ~= nil then`
`           image_ref_exists = image_refs[province][id].with_name`
`       end`
`       if frame.args[4] ~= nil then`
`           lang_code = lang_codes[trim(string.lower(frame.args[4]))]`
`           if lang_code ~= nil then`
`               image_ref_exists = false`
`               base_image_name = base_image_name .. ' ' .. lang_code`
`               if image_refs[province] ~= nil and image_refs[province][id] ~= nil and image_refs[province][id].langs ~= nil and image_refs[province][id].langs[lang_code] ~= nil then`
`                   image_ref_exists = image_refs[province][id].langs[lang_code]`
`               end`
`           end`
`       end`
`   end`

`   if not image_ref_exists then`
`       svg_title = mw.title.makeTitle("File", base_image_name .. '.svg')`
`       image_ref_exists = svg_title.fileExists`
`   end`

`   if image_ref_exists then`
`       if link == nil then`
`           return '`[`'``   ``..``   ``image_width``   ``..``   ``'`](https://zh.wikipedia.org/wiki/File:'_.._base_image_name_.._'.svg "fig:' .. image_width .. '")`'`
`       else`
`           return '`[`'``   ``..``   ``image_width``   ``..``   ``'`](https://zh.wikipedia.org/wiki/File:'_.._base_image_name_.._'.svg "fig:' .. image_width .. '")`'`
`       end`
`   else`
`       return ""`
`   end`

end

\-- Functionality for sign width fetching function p.image_no_name(frame)

`   return internal_image_link(frame, 0, nil)`

end

\-- Functionality for sign width fetching function p.image_with_name(frame)

`   return internal_image_link(frame, 1, nil)`

end

function p.image_link_with_name(frame)

`   return internal_image_link(frame, 1, p.fullname(frame))`

end

function p.image_link_no_name(frame)

`   return internal_image_link(frame, 0, p.fullname(frame))`

end

\-- Functionality for sign width fetching function p.signwidth(frame)

`   if frame.args[1] == nil then`
`       return width_translation[1]`
`   else`
`       id = clean_tags(string.upper(frame.args[1]))`
`   end`
`   `
`   if frame.args[2] == nil then`
`       province = "CHINA"`
`   else`
`       province = trim(string.upper(frame.args[2]))`
`   end`
`   `
`   if province_lib.chn_lib[province] ~= nil then`
`       province = province_lib.chn_lib[province]`
`   end`
`   `
`   true_code_len = string.len(internal_translatecode(province, id)) - 1`
`   if width_translation[true_code_len] == nil then`
`       return width_translation[1]`
`   else`
`       return width_translation[true_code_len]`
`   end`

end

function p.province_short_name(frame)

`   if frame.args[1] == nil then`
`       return ""`
`   end`
`   province = trim(string.upper(frame.args[1]))`
`   if province_lib.chn_lib[province] ~= nil then`
`       province = province_lib.chn_lib[province]`
`   end`
`   if province_lib.db[province] == nil then`
`       return ""`
`   end`
`   return province_lib.db[province].short_name`

end

function p.province_highway_link(frame)

`   if frame.args[1] == nil then`
`       return ""`
`   end`
`   province = trim(string.upper(frame.args[1]))`
`   if province_lib.chn_lib[province] ~= nil then`
`       province = province_lib.chn_lib[province]`
`   end`
`   if province_lib.db[province] == nil then`
`       return ""`
`   end`
`   return '[['_.._province_lib.db[province].expwy_link_.._'|' .. province_lib.db[province].expwy_link .. ']]'`

end

function p.enumerate_road_ids(frame)

`   out_str = ''`
`   for province, pset in pairs(expwy_lib) do`
`       for road_id, road_name in pairs(pset) do`
`           true_code = internal_translatecode(province, road_id)`
`           road_str = province .. '|' .. province_lib.db[province].image_prefix .. '|' .. road_id .. '|' .. true_code`
`           if out_str == '' then`
`               out_str = road_str`
`           else`
`               out_str = out_str .. ';' .. road_str`
`           end`
`       end`
`   end`
`   return out_str`

end

return p

[Category:线路名出现错误的中国高速公路条目](https://zh.wikipedia.org/wiki/Category:线路名出现错误的中国高速公路条目 "wikilink") [Category:线路名出现错误的中国高速公路条目](https://zh.wikipedia.org/wiki/Category:线路名出现错误的中国高速公路条目 "wikilink") [Category:线路名出现错误的中国高速公路条目](https://zh.wikipedia.org/wiki/Category:线路名出现错误的中国高速公路条目 "wikilink")