> 本文内容由[模块:GZBUS](https://zh.wikipedia.org/wiki/模块:GZBUS)转换而来。


\-- 声明模块本体 local p = {} -- 导入数据 local c = mw.loadData('Module:GZBUS/color') local function _loadSystemData(loc)

`   local state`
`   if loc == "南沙" then`
`       state, system = pcall(mw.loadData, "Module:GZBUS/nansha")`
`   elseif loc == "花都" then`
`       state, system = pcall(mw.loadData, "Module:GZBUS/huadu")`
`   elseif loc == "番禺" then`
`       state, system = pcall(mw.loadData, "Module:GZBUS/panyu")`
`   elseif loc == "增城" then`
`       state, system = pcall(mw.loadData, "Module:GZBUS/zengcheng")`
`   elseif loc == "从化" or loc == "從化" then`
`       state, system = pcall(mw.loadData, "Module:GZBUS/conghua")`
`   elseif loc == "佛山" then`
`       state, system = pcall(mw.loadData, "Module:GZBUS/foshan")   -- 广佛路线`
`   elseif loc == "东莞" or loc == "東莞" then`
`       state, system = pcall(mw.loadData, "Module:GZBUS/dongguan") -- 穗莞路线`
`   else`
`       state, system = pcall(mw.loadData, "Module:GZBUS/data")`
`   end`
`   return system`

end

\-- 建立路线名称反查解析表 do

`   p.revName = {}`
`   for i, t in pairs(c.company) do`
`       for _, k in pairs(t) do`
`           p.revName[k] = t[1]`
`       end`
`   end`

end

\--  function p._internalColorbox(compname)

`   str = compname`
`   len = #str`
`   if len >18 or compname == "multi" then`
`       return `[`width="1%"``   ``style="background:`](https://zh.wikipedia.org/wiki/width="1%"_style="background: "wikilink")`..c.colors['multi']..`[`"`](https://zh.wikipedia.org/wiki/" "wikilink")`  -- 公司名超过六个字自动为联营`
`   else`
`       if p.revName[compname] then`
`           return `[`width="1%"``   ``style="background:`](https://zh.wikipedia.org/wiki/width="1%"_style="background: "wikilink")`..c.colors[p.revName[compname]]..`[`"`](https://zh.wikipedia.org/wiki/" "wikilink")
`       else`
`           return `[`width="1%"``   ``style="background:`](https://zh.wikipedia.org/wiki/width="1%"_style="background: "wikilink")`..c.colors['other']..`[`"`](https://zh.wikipedia.org/wiki/" "wikilink")
`       end`
`   end`

end

\-- 处理起讫点中出现的跨粤文维基百科的链接模板（） function p.tsllink(name)

`   str = name`
`   if string.find(name, "tsl") then`
`       start = string.find(name, "{")`
`       en3 = string.find(name, "}", start)`
`       en1 = string.find(name, "|", start+13)`
`       arg1 = string.sub(name, start+13, en1-1)`
`       en2 = string.find(name, "|", en1+1)`
`       arg2 = string.sub(name, en1+1, en2-1)`
`       arg3 = string.sub(name, en2+1, en3-1) `
`       no1 = string.sub(name, 0, start-1)`
`       fi1 = string.find(name, "{", en2+1)`
`       if fi1 == nil then          -- 只引用一次tsl`
`           no2 = string.sub(name, en3+2, string.len(name))`
`           str = no1..mw.getCurrentFrame():expandTemplate{title = "tsl", args = {"zh-yue", arg1, arg2, arg3}}..no2`
`       else                        -- 引用两次tsl`
`           start1 = string.find(name, "{", en3)`
`           no2 = string.sub(name, en3+2, start1-1)`
`           en4 = string.find(name, "|", start1+13)`
`           arg4 = string.sub(name, start1+13, en4-1)`
`           en5 = string.find(name, "|", en4+1)`
`           arg5 = string.sub(name, en4+1, en5-1)`
`           en6 = string.find(name, "}", start1)`
`           arg6 = string.sub(name, en5+1, en6-1) `
`           no3 = string.sub(name, en6+2, string.len(name))`
`           str = no1..mw.getCurrentFrame():expandTemplate{title = "tsl", args = {"zh-yue", arg1, arg2, arg3}}..no2..mw.getCurrentFrame():expandTemplate{title = "tsl", args = {"zh-yue", arg4, arg5, arg6}}..no3`
`       end`
`       return str`
`   else`
`       return str`
`   end`

end

\-- 生成一条路线的一列表格内容 function p._internalList(no, style, loc)

`   local d = _loadSystemData(loc)`
`   if d[no] == nil then`
`       a = `[`width="1%"`](https://zh.wikipedia.org/wiki/ "wikilink")`..no..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..'`[`Module:GZBUS中未包含这条`](https://zh.wikipedia.org/wiki/Module:GZBUS "wikilink")[`"..loc.."的路线`](https://zh.wikipedia.org/wiki/'..loc.."巴士路线列表 "wikilink")`）''"`
`   elseif d[no].note == "已停办" or d[no].note == "已停辦" then`
`       a = `[`width="1%"`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")
`   else`
`       b = p._internalColorbox(d[no].company)  -- 生成颜色方块`
`       e1 = p.tsllink(d[no].endpoint1)         -- 处理起讫点1可能出现的`
`       e2 = p.tsllink(d[no].endpoint2)         -- 处理起讫点2可能出现的`
`       -- BRT样式（注：不显示公司栏（noco）已不适用于BRT样式）：`
`       if ((style == "BRT" or style == "brt") and (d[no].brt_west == nil)) then            -- 不是BRT路线`
`           a = `[`width="1%"`](https://zh.wikipedia.org/wiki/ "wikilink")`..no.."`*`'||colspan=8``   ``align=center|`*`（错误：该路线并非`[`BRT路线`](https://zh.wikipedia.org/wiki/广州快速公交运输系统#路线 "wikilink")`）''"`
`       elseif ((style == "BRT" or style == "brt") and (d[no].code == "B28")) then          -- BRT样式：B28（四列）`
`           a = `[`rowspan="4"`](https://zh.wikipedia.org/wiki/ "wikilink")`..b..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east_in..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east_out..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note.."\n|-\n"..`[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east_in1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east_out1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east1.."\n|-\n"..`[`rowspan="2"``   ``align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_in..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_out..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west.."\n|-\n"..`[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_in1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_out1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west1`
`       elseif ((style == "BRT" or style == "brt") and (d[no].brt_east == nil)) then        -- BRT样式：早高峰单向路线（一列）`
`           a = `[](https://zh.wikipedia.org/wiki/ "wikilink")`..b..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_in..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_out..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note`
`       elseif ((style == "BRT" or style == "brt") and (d[no].brt_east ~= nil)) then        -- BRT样式：除B28外的双向路线（两列）`
`           a = `[`rowspan="2"`](https://zh.wikipedia.org/wiki/ "wikilink")`..b..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east_in..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east_out..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_east..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note.."\n|-\n"..`[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_in..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west_out..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].brt_west`
`       -- 非BRT样式：`
`       else`
`           -- 非BRT样式：部分双向高峰快线（两列）：`
`           if d[no].direction1 ~= nil then`
`               a = `[`rowspan="2"`](https://zh.wikipedia.org/wiki/ "wikilink")`..b..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction`
`               if (d[no].endpoint3 ~= nil) then                -- 部分双向高峰快线：去程终点和返程起点不同`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`               else                                            -- 部分双向高峰快线：去程终点和返程起点相同`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`               end`
`               if style == "noco" or style == "nocotr" then    -- 不显示公司栏（noco、nocotr）`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare`
`               elseif style == "nofa" then                     -- 不显示票价栏（nofa）`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`               elseif style == "nocofa" then                   -- 不显示公司和票价栏（nocofa）`
`                   a = a`
`               else                                            -- 显示公司和票价栏（notr、nodo、默认）`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`               end`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note.."\n|-\n"..`[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction1`
`               if d[no].endpoint3 ~= nil then                  -- 部分双向高峰快线：去程终点和返程起点不同`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].endpoint3`
`               else                                            -- 部分双向高峰快线：去程终点和返程起点相同`
`                   a = a`
`               end         `
`           -- 非BRT样式：其他（一列）：`
`           else`
`               a = `[](https://zh.wikipedia.org/wiki/ "wikilink")`..b..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`               if (style == "noco" or style == "nocotr") then  -- 不显示公司栏（noco、nocotr）`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare`
`               elseif style == "nofa" then                     -- 不显示票价栏（nofa）`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`               elseif style == "nocofa" then                   -- 不显示公司和票价栏（nocofa）`
`                   a = a`
`               else                                            -- 显示公司和票价栏（notr、nodo、默认）`
`                   a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`               end`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note`
`               if (style == "notr" or style == "nocotr") then  -- 不显示无轨电车信息（notr、nocotr）`
`                   if (d[no].doubledecker==1) then `
`                       if d[no].note ~= "" and d[no].note ~= nil then a = a..`[`；双层巴士路线`](https://zh.wikipedia.org/wiki/；双层巴士路线 "wikilink")` `
`                       else a = a..`[`双层巴士路线`](https://zh.wikipedia.org/wiki/双层巴士路线 "wikilink")` end`
`                   end`
`               elseif style == "nodo" then                     -- 不显示双层巴士信息（nodo）`
`                   if (d[no].trolleybus==1) then`
`                       if d[no].note ~= "" and d[no].note ~= nil then a = a..`[`；无轨电车路线`](https://zh.wikipedia.org/wiki/；无轨电车路线 "wikilink")` `
`                       else a = a..`[`无轨电车路线`](https://zh.wikipedia.org/wiki/无轨电车路线 "wikilink")` end`
`                   end`
`               else`
`                   if (d[no].doubledecker==1) then `
`                       if d[no].note ~= "" and d[no].note ~= nil then a = a..`[`；双层巴士路线`](https://zh.wikipedia.org/wiki/；双层巴士路线 "wikilink")` `
`                       else a = a..`[`双层巴士路线`](https://zh.wikipedia.org/wiki/双层巴士路线 "wikilink")` end`
`                       if (d[no].trolleybus==1) then a = a..`[`、无轨电车路线`](https://zh.wikipedia.org/wiki/、无轨电车路线 "wikilink")` end`
`                   elseif (d[no].trolleybus==1) then`
`                       if d[no].note ~= "" and d[no].note ~= nil then a = a..`[`；无轨电车路线`](https://zh.wikipedia.org/wiki/；无轨电车路线 "wikilink")` `
`                       else a = a..`[`无轨电车路线`](https://zh.wikipedia.org/wiki/无轨电车路线 "wikilink")` end`
`                   end`
`               end`
`           end`
`       end`
`   end`
`   return a`

end

\--  function p.list(frame)

`   local bb = frame.args`
`   local loc = bb.loc`
`   if loc == "" or loc == nil then loc = "广州" end`
`   local ret = p._internalList(bb.code, bb.format, loc)`
`   return ret`

end

\-- 生成一条路线的一列简单表格内容 function p._internalSimpList(no, loc, vehicle)

`   local d = _loadSystemData(loc)`
`   if d[no] == nil then`
`       a = `[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..no..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..'`[`Module:GZBUS中未包含这条`](https://zh.wikipedia.org/wiki/Module:GZBUS "wikilink")[`"..loc.."的路线`](https://zh.wikipedia.org/wiki/'..loc.."巴士路线列表 "wikilink")`）''"`
`   elseif d[no].note == "已停办" or d[no].note == "已停辦" then`
`       a = `[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")
`   else`
`       e1 = p.tsllink(d[no].endpoint1)                     -- 处理起讫点1可能出现的`
`       e2 = p.tsllink(d[no].endpoint2)                     -- 处理起讫点2可能出现的`
`       -- 部分双向高峰快线（两列）：`
`       if d[no].direction1 ~= nil then`
`           a = `[`rowspan="2"``   ``align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction`
`           if d[no].endpoint3 ~= nil then                  -- 部分双向高峰快线：去程终点和返程起点不同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`           else                                            -- 部分双向高峰快线：去程终点和返程起点相同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`           end`
`           a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`.."\n|-\n"..`[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction1`
`           if d[no].endpoint3 ~= nil then                  -- 部分双向高峰快线：去程终点和返程起点不同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].endpoint3`
`           else                                            -- 部分双向高峰快线：去程终点和返程起点相同`
`               a = a`
`           end         `
`       -- 其他（一列）：`
`       else`
`           a = `[`'''`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2..`[](https://zh.wikipedia.org/wiki/ "wikilink")
`       end`
`   end`
`   return a`

end

\--  function p.simplelist(frame)

`   local ss = frame.args`
`   local loc = ss.loc`
`   if loc == "" or loc == nil or loc == "廣州" then loc = "广州" end`
`   local ret = p._internalSimpList(ss.code, loc)`
`   return ret`

end

\-- 生成表格表头 function p._internalTitle(style, loc)

`   if loc == "" or loc == nil then loc = "广州" end`
`   if (style == "BRT" or style == "brt")then`
`       t = '!colspan="2" width="8.5%"|`[`编号`](../Page/广州巴士路线列表.md "wikilink")`!!width="25%" colspan="3"|路线!!width="10.6%"|驶入BRT通道!!width="10.6%"|驶出BRT通道!!width="8.5%"|BRT通道停靠站数!!width="14.9%"|运营商!!width="21.3%"|备注'`
`   else`
`       if (style == "noco" or style == "nocotr") then  -- 不显示公司栏（noco、nocotr）`
`           t = '!colspan="2" width="14%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|路线!!width="10%"|全程收费!!width="22%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="25%"| || ||width="25%"| ||colspan="2"| '`
`       elseif style == "nofa" then                     -- 不显示票价栏（nofa）`
`           t = '!colspan="2" width="14%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|路线!!width="11%"|运营商!!width="21%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="25%"| || ||width="25%"| ||colspan="2"| '`
`       elseif style == "nocofa" then                   -- 不显示公司和票价栏（nocofa）`
`           t = '!colspan="2" width="16%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|路线!!width="24%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="28%"| || ||width="28%"| || '`
`       else                                            -- 显示公司和票价栏（notr、nodo、默认）`
`           t = '!colspan="2" width="12%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|路线!!width="8%"|全程收费!!width="10%"|运营商!!width="20%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="23%"| || ||width="23%"| ||colspan="3"| '`
`       end`
`   end`
`   return t`

end

\--  function p.title(frame)

`   local tt = frame.args`
`   local ret = p._internalTitle(tt.format, tt.loc)`
`   return ret`

end

\--  function p.colorbox(frame)

`   local cc = frame.args`
`   local ret = p._internalColorbox(cc.company)`
`   return ret`

end

return p