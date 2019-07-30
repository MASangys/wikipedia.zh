local orgs_data

local data_type

\-- 各运动会所对应的国家组织类型；NOC：国家奥林匹克委员会；CGA：英联邦运动会协会；NPC：国家残疾人奥林匹克委员会；NUSF：国家大学生体育联合会 -- 请确保输入的参数非繁简混用（例如：“夏季奥林匹克運動會”）或使用对应语言变种不存在的用字（例如：“亚洲帕拉运动会”） local data_types = {

`   ["奥林匹克运动会"] = "NOC",`
`   ["奧林匹克運動會"] = "NOC",`
`   ["夏季奥林匹克运动会"] = "NOC",`
`   ["夏季奧林匹克運動會"] = "NOC",`
`   ["冬季奥林匹克运动会"] = "NOC",`
`   ["冬季奧林匹克運動會"] = "NOC",`
`   ["青年奥林匹克运动会"] = "NOC",`
`   ["青年奧林匹克運動會"] = "NOC",`
`   ["夏季青年奥林匹克运动会"] = "NOC",`
`   ["夏季青年奧林匹克運動會"] = "NOC",`
`   ["冬季青年奥林匹克运动会"] = "NOC",`
`   ["冬季青年奧林匹克運動會"] = "NOC",`
`   ["东南亚运动会"] = "NOC",`
`   ["東南亞運動會"] = "NOC",`
`   ["东南亚半岛运动会"] = "NOC",`
`   ["東南亞半島運動會"] = "NOC",`
`   ["南亚运动会"] = "NOC",`
`   ["南亞運動會"] = "NOC",`
`   ["东亚运动会"] = "NOC",`
`   ["東亞運動會"] = "NOC",`
`   ["东亚青年运动会"] = "NOC",`
`   ["東亞青年運動會"] = "NOC",`
`   ["亚洲运动会"] = "NOC",`
`   ["亞洲運動會"] = "NOC",`
`   ["亚洲冬季运动会"] = "NOC",`
`   ["亞洲冬季運動會"] = "NOC",`
`   ["亚洲青年运动会"] = "NOC",`
`   ["亞洲青年運動會"] = "NOC",`
`   ["亚洲室内暨武艺运动会"] = "NOC",`
`   ["亞洲室內暨武藝運動會"] = "NOC",`
`   ["亚洲室内运动会"] = "NOC",`
`   ["亞洲室內運動會"] = "NOC",`
`   ["亚洲武艺运动会"] = "NOC",`
`   ["亞洲武藝運動會"] = "NOC",`
`   ["亚洲沙滩运动会"] = "NOC",`
`   ["亞洲沙灘運動會"] = "NOC",`
`   ["欧洲运动会"] = "NOC",`
`   ["歐洲運動會"] = "NOC",`
`   ["地中海运动会"] = "NOC",`
`   ["地中海運動會"] = "NOC",`
`   ["泛美运动会"] = "NOC",`
`   ["泛美運動會"] = "NOC",`
`   ["全非运动会"] = "NOC",`
`   ["全非運動會"] = "NOC",`
`   ["非洲运动会"] = "NOC",`
`   ["非洲運動會"] = "NOC",`
`   ["英联邦运动会"] = "CGA",`
`   ["英聯邦運動會"] = "CGA",`
`   ["大英國協運動會"] = "CGA",`
`   ["共和联邦运动会"] = "CGA",`
`   ["英联邦青年运动会"] = "CGA",`
`   ["英聯邦青年運動會"] = "CGA",`
`   ["大英國協青年運動會"] = "CGA",`
`   ["共和联邦青年运动会"] = "CGA",`
`   ["大英帝国运动会"] = "CGA",`
`   ["大英帝國運動會"] = "CGA",`
`   ["大英帝国和联邦运动会"] = "CGA",`
`   ["大英帝國和聯邦運動會"] = "CGA",`
`   ["不列颠联邦运动会"] = "CGA",`
`   ["不列顛聯邦運動會"] = "CGA",`
`   ["不列颠英联邦运动会"] = "CGA",`
`   ["不列顛英聯邦運動會"] = "CGA",`
`   ["残疾人奥林匹克运动会"] = "NPC",`
`   ["殘疾人奧林匹克運動會"] = "NPC",`
`   ["帕拉林匹克運動會"] = "NPC",`
`   ["夏季残疾人奥林匹克运动会"] = "NPC",`
`   ["夏季殘疾人奧林匹克運動會"] = "NPC",`
`   ["夏季帕拉林匹克運動會"] = "NPC",`
`   ["冬季残疾人奥林匹克运动会"] = "NPC",`
`   ["冬季殘疾人奧林匹克運動會"] = "NPC",`
`   ["冬季帕拉林匹克運動會"] = "NPC",`
`   ["亚洲残疾人运动会"] = "NPC",`
`   ["亞洲殘疾人運動會"] = "NPC",`
`   ["亞洲帕拉運動會"] = "NPC",`
`   ["亚洲青年残疾人运动会"] = "NPC",`
`   ["亞洲青年殘疾人運動會"] = "NPC",`
`   ["亞洲青年帕拉運動會"] = "NPC",`
`   ["世界大学生运动会"] = "NUSF",`
`   ["世界大學生運動會"] = "NUSF",`
`   ["世界大學運動會"] = "NUSF",`
`   ["夏季世界大学生运动会"] = "NUSF",`
`   ["夏季世界大學生運動會"] = "NUSF",`
`   ["夏季世界大學運動會"] = "NUSF",`
`   ["冬季世界大学生运动会"] = "NUSF",`
`   ["冬季世界大學生運動會"] = "NUSF",`
`   ["冬季世界大學運動會"] = "NUSF",`

}

local function stripToNil(text)

`   -- If text is a string, return its trimmed content, or nil if empty.`
`   -- Otherwise return text (which may, for example, be nil).`
`   if type(text) == 'string' then`
`       text = text:match('(%S.-)%s*$')`
`   end`
`   return text`

end

local function yes(parameter)

`   -- Return true if parameter should be interpreted as "yes".`
`   return ({ y = true, yes = true, on = true, [true] = true })[parameter]`

end

local function load_data(fullName)

`   local games = stripToNil(fullName:gsub('^%d+年?', ''))`
`   if not data_types[games] then`
`       error('fullName参数错误：不支持的赛事、繁简混用或对应的中文变体不存在的用字：' .. fullName)`
`   end`
`   data_type = data_types[games]`
`   orgs_data = mw.loadData('Module:Sport orgs alias/' .. data_type)`

end

local function getAlias(args)

`   -- Return alias parameter, possibly modified for exceptional cases.`
`   local alias = stripToNil(args.alias)`
`   local fullName = stripToNil(args.fullName)`
`   local year = tonumber(fullName:match('^%d+'))`
`   local games = stripToNil(fullName:gsub('^%d+年?', ''))`
`   if alias == 'ANG' then`
`       if data_type == 'CGA' then`
`           alias = 'ANG_CGF'`
`       end`
`   elseif alias == 'AUS' then`
`       if data_type == 'CGA' then`
`           alias = 'AUS_CGF'`
`       end`
`   elseif alias == 'BAH' then`
`       if (data_type == 'NOC' or data_type == 'CGA') and year and year <= 2012 then`
`           alias = 'BAH_2012'`
`       end`
`   elseif alias == 'CAN' then`
`       if data_type == 'CGA' then`
`           alias = 'CAN_CGF'`
`       end`
`   elseif alias == 'COK' then`
`       if data_type == 'NOC' and year and year <= 1973 then`
`           alias = 'COK_1968'`
`       end`
`   elseif alias == 'GHA' then`
`       if (data_type == 'NOC' or data_type == 'CGA') and year and year <= 1956 then`
`           alias = 'GCO'`
`       end`
`   elseif alias == 'HKG' then`
`       if data_type == 'CGA' then`
`           alias = 'HKG_CGF'`
`       elseif year == 1997 and (games == '东亚运动会' or games == '東亞運動會') then`
`           alias = 'HKG_CGF'`
`       elseif data_type == 'NPC' and year and year < 2005 then`
`           alias = 'HKG_2005'`
`       elseif (data_type == 'NOC' or data_type == 'NUSF') and year and year < 1997 then`
`           alias = 'HKG_CGF'`
`       end`
`   elseif alias == 'IRL' then`
`       if data_type == 'NOC' and year and year <= 2018 then`
`           alias = 'IRL_2018'`
`       end`
`   elseif alias == 'LIE' then`
`       if data_type == 'NOC' and year and year <= 2013 then`
`           alias = 'LIE_2013'`
`       end`
`   elseif alias == 'MAC' then`
`       if data_type == 'NOC' and year and year <= 2008 then`
`           alias = 'MAC_2008'`
`       elseif data_type == 'NPC' and year and year <= 1999 then`
`           alias = 'MAC_1999'`
`       end`
`   elseif alias == 'MKD' then`
`       if year and year <= 2018 then`
`           alias = 'MKD_2018'`
`       end`
`   elseif alias == 'SAM' then`
`       if (data_type == 'NOC' or data_type == 'CGA') and year and year <= 1996 then`
`           alias = 'WSM'`
`       end`
`   elseif alias == 'SWZ' then`
`       if year == 2018 and (games == '英联邦运动会' or games == '英聯邦運動會' or games == '大英國協運動會' or games == '共和联邦运动会') then`
`           alias = 'SWZ'`
`       elseif year == nil or year >= 2018 then`
`           alias = 'SWZ_YO2018'`
`       end`
`   end`
`   return alias`

end

local function getWebsite(frame, country)

`   if not country.website then`
`       return ''`
`   end`
`   local website = frame:expandTemplate{title = 'url', args = {country.website} }`
`   if country.website_lang then`
`       if type(country.website_lang) == 'table' then`
`           for _, item in ipairs(country.website_lang) do`
`               website = website .. frame:expandTemplate{title = item .. ' icon'}`
`           end`
`       else`
`           website = website .. frame:expandTemplate{title = country.website_lang .. ' icon'}`
`       end`
`   end`
`   return website`

end

local function sportOrgsAlias(frame, args)

`   local fullName = stripToNil(args.fullName)`
`   if not fullName then`
`       return ''`
`   end`
`   load_data(fullName)`
`   local alias = getAlias(args)`
`   local country = orgs_data.countryOrg[alias] or orgs_data.countryOrg[orgs_data.countryAliases[alias]]`
`   if not country then`
`       return ''`
`   end`
`   if yes(args.website) then`
`       return getWebsite(frame, country)`
`   else`
`       return country.orgname or ''`
`   end`

end

local function main(frame)

`   return sportOrgsAlias(frame, frame.args)`

end

return {

`   main = main,`

}