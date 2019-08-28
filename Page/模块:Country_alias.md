\-- 该模块根据国家和地区代码、年份和赛事返回相应的国家名称或旗帜 -- 国家和地区代码基于国际奥委会、英联邦和国际游泳联合会的代码

\--[以下国家和地区代码为一个代码根据赛事或年份的不同，可以代表两个不同的国家和地区： ANG（ANG在其他赛事代表安哥拉，在英联邦运动会代表安圭拉，该情况通过加入ANG_CGF进行处理） 以下国家和地区代码为同一个代码根据赛事或年份的不同，拥有不同的旗帜/名称： 香港（Hong Kong） HKG、HKG_CGF（香港在1997年7月1日后以中国香港的名义参赛，同时不再参加英联邦运动会） 澳门（Macau） MAC、MAC_1999（澳门在1999年12月回归（当时距离年底仅有数日，期间应无主要的综合性赛事），2000年开始以中国澳门名义参赛） 个人/独立奥林匹克运动员（Individual/Independent Olympic Athlete） IOA、IOA_2000（IOA在2000年时为个人奥林匹克运动员，2012年起为独立奥林匹克运动员） 个人/独立残奥/帕运运动员（Individual/Independent Paralympic Athlete） IPA、IPA_2000（IPA在2000年时为个人残奥/帕运运动员，2016年起为独立残奥/帕运运动员） 斯威士兰（Swaziland/Eswatini） SWZ、SWZ_YO2018（斯威士兰在2018年英联邦运动会后国名改为“Eswatini”，台湾方面跟进将该国国名翻译为“史瓦帝尼”） 马其顿（Macedonia/North Macedonia） MKD、MKD_2018（马其顿在2019年更改国名为北马其顿） 以下国家和地区代码为同一国家和地区视乎年份或赛事的不同使用两个或多个不同的代码： Anguilla AIA, ANG_CGF Antigua and Barbuda ANT, ATG Bahrain BHN, BHR, BRN Curaçao CUR, CUW Faroe Islands FAR, FRO Guernsey GGY, GUE Iran IRI, IRN Ireland IRE, IRL - IRE is \*only\* for CGF apps Jersey JER, JEY Lebanon LBN, LIB Montserrat MNT, MSR Nicaragua NCA, NIC Norfolk Island NFI, NFK Oman OMA, OMN Refugee Olympic Team ROA, ROT Romania ROM, ROU Saint Helena SHE, SHN Saint Vincent and the Grenadines SVG, VIN Sarawak SAR, SWK Singapore SGP, SIN South Africa RSA, SAF Tonga TGA, TON Trinidad and Tobago TRI, TTO Turks and Caicos Islands TCA, TCI, TKS Oddity that needs to be revisited French Polynesia PYF, TAH - TAH has been converted to Tahiti per SILENCE](https://zh.wikipedia.org/wiki/以下国家和地区代码为一个代码根据赛事或年份的不同，可以代表两个不同的国家和地区：_ANG（ANG在其他赛事代表安哥拉，在英联邦运动会代表安圭拉，该情况通过加入ANG_CGF进行处理）_以下国家和地区代码为同一个代码根据赛事或年份的不同，拥有不同的旗帜/名称：_香港（Hong_Kong）_HKG、HKG_CGF（香港在1997年7月1日后以中国香港的名义参赛，同时不再参加英联邦运动会）_澳门（Macau）_MAC、MAC_1999（澳门在1999年12月回归（当时距离年底仅有数日，期间应无主要的综合性赛事），2000年开始以中国澳门名义参赛）_个人/独立奥林匹克运动员（Individual/Independent_Olympic_Athlete）_IOA、IOA_2000（IOA在2000年时为个人奥林匹克运动员，2012年起为独立奥林匹克运动员）_个人/独立残奥/帕运运动员（Individual/Independent_Paralympic_Athlete）_IPA、IPA_2000（IPA在2000年时为个人残奥/帕运运动员，2016年起为独立残奥/帕运运动员）_斯威士兰（Swaziland/Eswatini）_SWZ、SWZ_YO2018（斯威士兰在2018年英联邦运动会后国名改为“Eswatini”，台湾方面跟进将该国国名翻译为“史瓦帝尼”）_马其顿（Macedonia/North_Macedonia）_MKD、MKD_2018（马其顿在2019年更改国名为北马其顿）_以下国家和地区代码为同一国家和地区视乎年份或赛事的不同使用两个或多个不同的代码：_Anguilla_AIA,_ANG_CGF_Antigua_and_Barbuda_ANT,_ATG_Bahrain_BHN,_BHR,_BRN_Curaçao_CUR,_CUW_Faroe_Islands_FAR,_FRO_Guernsey_GGY,_GUE_Iran_IRI,_IRN_Ireland_IRE,_IRL_-_IRE_is_*only*_for_CGF_apps_Jersey_JER,_JEY_Lebanon_LBN,_LIB_Montserrat_MNT,_MSR_Nicaragua_NCA,_NIC_Norfolk_Island_NFI,_NFK_Oman_OMA,_OMN_Refugee_Olympic_Team_ROA,_ROT_Romania_ROM,_ROU_Saint_Helena_SHE,_SHN_Saint_Vincent_and_the_Grenadines_SVG,_VIN_Sarawak_SAR,_SWK_Singapore_SGP,_SIN_South_Africa_RSA,_SAF_Tonga_TGA,_TON_Trinidad_and_Tobago_TRI,_TTO_Turks_and_Caicos_Islands_TCA,_TCI,_TKS_Oddity_that_needs_to_be_revisited_French_Polynesia_PYF,_TAH_-_TAH_has_been_converted_to_Tahiti_per_SILENCE "wikilink") -- 代表团写法 local linksuffix = {

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

local function getAlias(args)

`   -- Return alias parameter, possibly modified for exceptional cases.`
`   local alias = stripToNil(args.alias)`
`   local games = stripToNil(args.games)`
`   local year = tonumber(args.year)`
`   local fullName = stripToNil(args.fullName)`
`   if fullName then`
`       year = tonumber(fullName:match('^%d+'))  -- ignore args.year`
`       games = stripToNil(fullName:gsub('^%d+年?', ''))`
`   end`
`   if alias == 'ANG' then`
`       if games == '英联邦运动会' or games == '英聯邦運動會' or games == '大英國協運動會' or games == '共和联邦运动会' then`
`           alias = 'ANG_CGF'`
`       end`
`   elseif alias == 'ART' then`
`       if games == '亚洲室内暨武艺运动会' or games == '亞洲室內暨武藝運動會' then`
`           alias = 'ART_AIMAG'`
`       end`
`   elseif alias == 'HKG' then`
`       if games == '英联邦运动会' or games == '英聯邦運動會' or games == '大英國協運動會' or games == '共和联邦运动会' `
`       or games == '大英帝國運動會' or games == '大英帝国运动会' or games == '大英帝國和聯邦運動會' or games == '大英帝国和联邦运动会' `
`       or games == '不列顛聯邦運動會' or games == '不列颠联邦运动会' or games == '不列顛英聯邦運動會' or games == '不列颠英联邦运动会' then`
`           alias = 'HKG_CGF'`
`       elseif (year == 1997 and (games == '东亚运动会' or games == '東亞運動會')) or (fullName == '1997年东亚运动会' or fullName == '1997年東亞運動會') then`
`           alias = 'HKG_CGF'`
`       elseif year and year < 1997 then`
`           alias = 'HKG_CGF'`
`       end`
`   elseif alias == 'IOA' then`
`       if year == 2000 then`
`           alias = 'IOA_2000'`
`       elseif year == 2016 and (games == '亚洲沙滩运动会' or games == '亞洲沙灘運動會') then`
`           alias = 'IOA_ABG2016'`
`       end`
`   elseif alias == 'IPA' then`
`       if year == 2000 then`
`           alias = 'IPA_2000'`
`       end`
`   elseif alias == 'MAC' then`
`       if year and year <= 1999 then`
`           alias = 'MAC_1999'`
`       end`
`   elseif alias == 'SWZ' then`
`       if fullName then`
`           if year == nil or (year >= 2018 and (fullName ~= '2018年英联邦运动会' and fullName ~= '2018年英聯邦運動會' and fullName ~= '2018年大英國協運動會' and fullName ~= '2018年共和联邦运动会')) then`
`               alias = 'SWZ_YO2018'`
`           end`
`       elseif year == 2018 and (games == '英联邦运动会' or games == '英聯邦運動會' or games == '大英國協運動會' or games == '共和联邦运动会') then`
`           alias = 'SWZ'`
`       elseif year == nil or year >= 2018 then`
`           alias = 'SWZ_YO2018'`
`       end`
`   elseif alias == 'MKD' then`
`       if year and year <= 2018 then`
`           alias = 'MKD_2018'`
`       end`
`   elseif alias == 'SAM' then`
`       if year and year <= 1996 then`
`           alias = 'WSM'`
`       end`
`   -- 1992年中华台北残奥代表团使用五环版，1996年至2004年使用1994年至2004年版残奥旗帜，2008年开始使用现在的版本`
`   elseif alias == 'TPE' then`
`       if games == '亚洲残疾人运动会' or games == '亞洲殘疾人運動會' or games == '亞洲帕拉運動會' `
`       or games == '亚洲青年残疾人运动会' or games == '亞洲青年殘疾人運動會' or games == '亞洲青年帕拉運動會' `
`       or games == '夏季残疾人奥林匹克运动会' or games == '夏季殘疾人奧林匹克運動會' or games == '夏季帕拉林匹克運動會'`
`       or games == '残疾人奥林匹克运动会' or games == '殘疾人奧林匹克運動會' or games == '帕拉林匹克運動會' then`
`           alias = 'TPE_PAR'`
`       end`
`   elseif alias == 'COK' then`
`       if year and year <= 1973 then`
`           alias = 'COK_1968'`
`       end`
`   elseif alias == 'GHA' then`
`       if year and year <= 1956 then`
`           alias = 'GCO'`
`       end`
`   end`
`   return alias`

end

local function getFlag(args, country)

`   -- Return name of flag selected from country data (nil if none defined).`
`   local year = tonumber(args.year)`
`   local games = stripToNil(args.games)`
`   local fullName = stripToNil(args.fullName)`
`   if fullName then`
`       year = tonumber(fullName:match('^%d+'))  -- ignore args.year`
`       games = stripToNil(fullName:gsub('^%d+年?', ''))`
`   end`
`   if games then`
`       local gdata = country[games]`
`       if gdata then`
`           if type(gdata) == 'string' then`
`               return gdata`
`           end`
`           if gdata[1] then`
`               return gdata[1]`
`           end`
`           if gdata[year] then`
`               if type(gdata[year]) == 'string' then`
`                   return gdata[year]`
`               end`
`               return gdata[year][1]`
`           end`
`       end`
`   end`
`   for _, item in ipairs(country) do`
`       if type(item) == 'string' then`
`           return item`
`       end`
`       if year and year <= item[1] then`
`           return item[2]`
`       end`
`   end`

end

local function getName(args, country)

`   local lan = stripToNil(args.lan)`
`   if lan == nil then`
`       lan = 'zh'`
`   elseif lan == 'zh-my' then`
`       lan = 'zh-sg'`
`   end`
`   if country[lan] == nil then`
`       if lan == 'zh-hans' or lan == 'zh-hant' then`
`           lan = 'zh'`
`       elseif lan == 'zh-cn' or lan == 'zh-sg' then`
`           if country['zh-hans'] ~= nil then`
`               lan = 'zh-hans'`
`           else`
`               lan = 'zh'`
`           end`
`       elseif lan == 'zh-tw' or lan == 'zh-hk' or lan == 'zh-mo' then`
`           if country['zh-hant'] ~= nil then`
`               lan = 'zh-hant'`
`           else`
`               lan = 'zh'`
`           end`
`       end`
`   end`
`   return country[lan]`

end

local data = mw.loadData('Module:Country alias/data') local function getGames(games, lan)

`   if lan == nil or lan == 'zh-hans' or lan == 'zh-cn' then`
`       lan = 'zh'`
`   elseif lan == 'zh-mo' then`
`       lan = 'zh-hk'`
`   elseif lan == 'zh-my' then`
`       lan = 'zh-sg'`
`   end`
`   if games == nil then`
`       return games`
`   end`
`   if data.event[lan][games] == nil then`
`       if lan == 'zh' or lan == 'zh-hant' then`
`           games = games`
`       elseif lan == 'zh-cn' or lan == 'zh-sg' then`
`           if data.event['zh'][games] == nil then`
`               games = games`
`           else`
`               games = data.event['zh'][games]`
`           end`
`       elseif lan == 'zh-hk' or lan == 'zh-tw' then`
`           if data.event['zh-hant'][games] == nil then`
`               games = games`
`           else`
`               games = data.event['zh-hant'][games]`
`           end`
`       end`
`   else`
`       games = data.event[lan][games]`
`   end`
`   return games`

end

local function countryAlias(args)

`   local alias = getAlias(args)`
`   local country = data.countries[alias] or data.countries[data.countryAliases[alias]]`
`   local function quit(message)`
`       return args.error or error(message)`
`   end`
`   if not country then`
`       return quit('Invalid country alias: ' .. tostring(alias))`
`   end`
`   if yes(args.flag) then`
`       return getFlag(args, country) or quit('No flag defined for ' .. alias)`
`   else`
`       return getName(args, country) or quit('No name defined for ' .. alias)`
`   end`

end

local function countryAlias2(args)

`   local alias = getAlias(args)`
`   local country = data.countries[alias] or data.countries[data.countryAliases[alias]]`
`   local function quit(message)`
`       return args.error or error(message)`
`   end`
`   if not country then`
`       return quit('Invalid country alias: ' .. tostring(alias))`
`   end`
`   -- 当country.single不为空的时候，需要临时改变args.lan的值，在调用完getName后需要把args.lan的值改回来，以免影响下一次调用`
`   local original_lan = args.lan`
`   local new_lan = country.single or args.lan`
`   args.lan = new_lan`
`   local name = getName(args, country) or quit('No name defined for ' .. alias)`
`   args.lan = original_lan`
`   return {name, new_lan}`

end

local function getSingle(args)

`   local alias = getAlias(args)`
`   local country = data.countries[alias] or data.countries[data.countryAliases[alias]]`
`   if not country then`
`       return nil`
`   end`
`   return country.single`

end

local function getAllName(args)

`   local alias = getAlias(args)`
`   local country = data.countries[alias] or data.countries[data.countryAliases[alias]]`
`   if not country then`
`       return nil`
`   end`
`   local strZhhans = country['zh']`
`   if country['zh-hans'] then`
`       strZhhans = country['zh-hans']`
`   end`
`   local strZhhant = country['zh']`
`   if country['zh-hant'] then`
`       strZhhant = country['zh-hant']`
`   end`
`   local strStart = '-{zh-hans:' .. strZhhans .. '; zh-hant:' .. strZhhant .. ';'`
`   if country['zh-cn'] then`
`       strStart = strStart .. ' zh-cn:' .. country['zh-cn'] .. ';'`
`   end`
`   if country['zh-sg'] then`
`       strStart = strStart .. ' zh-sg:' .. country['zh-sg'] .. '; zh-my:' .. country['zh-sg'] .. ';'`
`   end`
`   if country['zh-hk'] then`
`       strStart = strStart .. ' zh-hk:' .. country['zh-hk'] .. ';'`
`   end`
`   if country['zh-mo'] then`
`       strStart = strStart .. ' zh-mo:' .. country['zh-mo'] .. ';'`
`   end`
`   if country['zh-tw'] then`
`       strStart = strStart .. ' zh-tw:' .. country['zh-tw'] .. ';'`
`   end`
`   local strEnd = '}-'`
`   return strStart .. strEnd`

end

local function flagIOC(frame)

`   -- Implement `` and `` which previously called this module three times.`
`   -- Returns `<flag>` `<country link>` `<athletes>`, with the third value optional`
`   local args = frame.args`
`   local code = stripToNil(args[1]) or error('flagIOC parameter 1 should be a country code')`
`   local games = stripToNil(args[2])`
`   local athletes = stripToNil(args[3])`
`   local lan = stripToNil(args[4])`
`   local altname = stripToNil(args.name)`
`   local parms = {`
`       alias = code,`
`       fullName = games,`
`       year = games:match('^%d+'),`
`       games = games:gsub('^%d+年?', ''),`
`   }`
`   local single = getSingle(parms)`
`   local lang`
`   if single then`
`       lang = single`
`   else`
`       lang = lan`
`   end`
`   parms.lan = lang`
`   local fullName = countryAlias(parms)`
`   if altname == nil or altname == '' then`
`       if single then`
`           altname = getAllName(parms)`
`       else`
`           altname = fullName`
`       end`
`   end`
`   local year = games:match('^%d+')`
`   games = games:gsub('^%d+年?', '')`
`   games = getGames(games, lang)`
`   if year then`
`       games = year .. '年' .. games`
`   end`
`   parms.flag = true`
`   if yes(args.rt) then`
`       return (('`[`{altname}`](https://zh.wikipedia.org/wiki/{games}{name}{suffix} "wikilink")` `[`{flag}`](https://zh.wikipedia.org/wiki/File:{flag} "fig:{flag}")`')`
`           :gsub('{(%w+)}', {`
`               flag = countryAlias(parms),`
`               games = games,`
`               name = fullName,`
`               suffix = linksuffix[lang],`
`               altname = altname`
`           }))`
`   else`
`       return (('`[`{flag}`](https://zh.wikipedia.org/wiki/File:{flag} "fig:{flag}")` `[`{altname}`](https://zh.wikipedia.org/wiki/{games}{name}{suffix} "wikilink")`{athletes}')`
`           :gsub('{(%w+)}', {`
`               athletes = athletes and`
`                   ('`<span style="font-size:90%;">`（' .. athletes .. '）`</span>`') or`
`                   '',`
`               flag = countryAlias(parms),`
`               games = games,`
`               name = fullName,`
`               suffix = linksuffix[lang],`
`               altname = altname`
`           }))`
`   end`

end

local function flagIOCathlete(frame)

`   -- Implement ``, ``, `` and `` which previously called this module three times.`
`   -- Returns `<flag>` `<athlete/medalist>` `<country link>
`   local args = frame.args`
`   local athlete = stripToNil(args[1])`
`   if athlete == nil then`
`       athlete = ''`
`   end`
`   local code = stripToNil(args[2]) or error('flagIOCathlete/medalist parameter 2 should be a country code')`
`   local games = stripToNil(args[3])`
`   local lan = stripToNil(args[4])`
`   local parms = {`
`       alias = code,`
`       fullName = games,`
`       year = games:match('^%d+'),`
`       games = games:gsub('^%d+年?', ''),`
`   }`
`   local single = getSingle(parms)`
`   local lang`
`   local altname`
`   if single then`
`       lang = single`
`   else`
`       lang = lan`
`   end`
`   parms.lan = lang`
`   local fullName = countryAlias(parms)`
`   if single then`
`       altname = getAllName(parms)`
`   else`
`       altname = fullName`
`   end`
`   local year = games:match('^%d+')`
`   games = games:gsub('^%d+年?', '')`
`   games = getGames(games, lang)`
`   if year then`
`       games = year .. '年' .. games`
`   end`
`   parms.flag = true`
`   if yes(args.medalist) then`
`       return (('`[`{flag}`](https://zh.wikipedia.org/wiki/File:{flag} "fig:{flag}")` {athlete}`
[`{altname}`](https://zh.wikipedia.org/wiki/{games}{name}{suffix} "wikilink")<span style="font-size:90%;">`（{code}）`</span>`')`
`           :gsub('{(%w+)}', {`
`               flag = countryAlias(parms),`
`               athlete = athlete,`
`               code = code,`
`               games = games,`
`               name = fullName,`
`               suffix = linksuffix[lang],`
`               altname = altname`
`           }))`
`   else`
`       return (('`[`{flag}`](https://zh.wikipedia.org/wiki/File:{flag} "fig:{flag}")` {athlete}`<small>`（`[`{altname}`](https://zh.wikipedia.org/wiki/{games}{name}{suffix} "wikilink")`）`</small>`')`
`           :gsub('{(%w+)}', {`
`               flag = countryAlias(parms),`
`               athlete = athlete,`
`               games = games,`
`               name = fullName,`
`               suffix = linksuffix[lang],`
`               altname = altname`
`           }))`
`   end`

end

local function main(frame)

`   return countryAlias(frame.args)`

end

local function flagCaption(frame)

`   local args = frame.args`
`   local alias = getAlias(args)`
`   local country = data.countries[alias] or data.countries[data.countryAliases[alias]]`
`   local function quit(message)`
`       return args.error or error(message)`
`   end`
`   if not country then`
`       return quit('Invalid country alias: ' .. tostring(alias))`
`   end`
`   -- Return name of flag selected from country data (nil if none defined).`
`   local captionsuffix = {`
`       ['zh'] = "国旗",`
`       ['zh-hans'] = "国旗",`
`       ['zh-cn'] = "国旗",`
`       ['zh-sg'] = "国旗",`
`       ['zh-my'] = "国旗",`
`       ['zh-hant'] = "國旗",`
`       ['zh-hk'] = "國旗",`
`       ['zh-mo'] = "國旗",`
`       ['zh-tw'] = "國旗",`
`   }`
`   local year = tonumber(args.year)`
`   local games = stripToNil(args.games)`
`   local fullName = stripToNil(args.fullName)`
`   local name = getName(args, country)`
`   if fullName then`
`       year = tonumber(fullName:match('^%d+'))  -- ignore args.year`
`       games = stripToNil(fullName:gsub('^%d+年?', ''))`
`   end`
`   if games then`
`       local gdata = country[games]`
`       if gdata then`
`           if gdata[2] then`
`               return gdata[2]`
`           end`
`           if gdata[year] then`
`               if gdata[year][2] then`
`                   return gdata[year][2]`
`               end`
`           end`
`       end`
`   end`
`   for _, item in ipairs(country) do`
`       if type(item) == 'table' and year and year <= item[1] then`
`           if item[3] then`
`               return item[3]`
`           else`
`               break`
`           end`
`       end`
`   end`
`   if country.flagname then`
`       return country.flagname `
`   end`
`   return "[["_.._name_.._captionsuffix[args.lan]_.._"|" .. name .. captionsuffix[args.lan] .. "]]"`

end

\-- 调用了Module:Ilh判断条目是否存在，注意Module:Ilh提到相关函数需要更好实现 local ilh = require('Module:Ilh') local function overviewlink(frame)

`   -- 以后这个可以定义一个linkleft，linkright`
`   -- Returns `<country link>` `
`   local args = frame.args`
`   local code = stripToNil(args[1]) or error('flagIOC parameter 1 should be a country code')`
`   local games = stripToNil(args[2])`
`   games = games:gsub('^%d+年?', '')`
`   local parms = {`
`       alias = code,`
`       fullName = games,`
`   }`
`   local overview`
`   for key, value in pairs(linksuffix) do`
`       parms.lan = key`
`       local fullName = countryAlias(parms)`
`       local gameName = getGames(games, key)`
`       local link = gameName .. fullName .. value`
`       local isExist = ilh.isExist(link)`
`       if isExist == true then`
`           overview = link`
`           break`
`       end`
`   end`
`   if overview then`
`       return "（`[`总结`](https://zh.wikipedia.org/wiki/"_.._overview_.._" "wikilink")`）"`
`   else`
`       return ""`
`   end`

end

return {

`   flagIOC = flagIOC,`
`   flagIOCathlete = flagIOCathlete,`
`   flagCaption = flagCaption,`
`   overviewlink = overviewlink,`
`   main = main,`
`   countryAlias2 = countryAlias2,`
`   getGames = getGames,`

}