\-- 声明模块本体 local p = {} -- 导入数据 local c = mw.loadData('Module:HZBUS/color') local function _loadSystemData(loc)

`   local state`
`   if loc == nil or loc == "" or loc == "惠州" then`
`       state, system = pcall(mw.loadData, "Module:HZBUS/data")`
`   elseif loc == "东莞" or loc == "東莞" then`
`       state, system = pcall(mw.loadData, "Module:HZBUS/dongguan")`
`   elseif loc == "深圳" then`
`       state, system = pcall(mw.loadData, "Module:HZBUS/shenzhen")`
`   else`
`       state, system = pcall(mw.loadData, "Module:HZBUS/data")`
`   end`
`   return system`

end

\-- 建立线路名称反查解析表 do

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
`       return `[`width="1%"``   ``style="background:`](https://zh.wikipedia.org/wiki/width="1%"_style="background: "wikilink")`..c.colors['multi']..`[`"`](https://zh.wikipedia.org/wiki/" "wikilink")
`   else`
`       if p.revName[compname] then`
`           return `[`width="1%"``   ``style="background:`](https://zh.wikipedia.org/wiki/width="1%"_style="background: "wikilink")`..c.colors[p.revName[compname]]..`[`"`](https://zh.wikipedia.org/wiki/" "wikilink")
`       else`
`           return `[`width="1%"``   ``style="background:`](https://zh.wikipedia.org/wiki/width="1%"_style="background: "wikilink")`..c.colors['other']..`[`"`](https://zh.wikipedia.org/wiki/" "wikilink")
`       end`
`   end`

end -- 处理起讫点中出现的跨粤文维基百科的链接模板（） function p.tsllink(name)

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

\-- 生成一条线路的一列表格内容 function p._internalList(no, style, loc, vehicle)

`   local d = _loadSystemData(loc)`
`   `
`   if d[no] == nil then`
`       a = `[`width="1%"`](https://zh.wikipedia.org/wiki/ "wikilink")`..no..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..'`[`Module:HZBUS中未包含这条`](https://zh.wikipedia.org/wiki/Module:HZBUS "wikilink")[`"..loc.."的线路`](https://zh.wikipedia.org/wiki/'..loc.."巴士路线列表 "wikilink")`）''"`
`   elseif d[no].note == "已停办" or d[no].note == "已停辦" then`
`       a = `[`width="1%"`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")
`   else`
`       b = p._internalColorbox(d[no].company)                  -- 生成颜色方块`
`       e1 = p.tsllink(d[no].endpoint1)                         -- 处理起讫点1可能出现的`
`       e2 = p.tsllink(d[no].endpoint2)                         -- 处理起讫点2可能出现的`
`       if d[no].vehicle == "" or d[no].vehicle == nil then`
`           ve = "（暂时未知）"`
`       else`
`           ve = d[no].vehicle`
`       end`
`       -- 部分双向高峰快线（两列）：`
`       if (d[no].direction1 ~= nil) then`
`           a = `[`rowspan="2"`](https://zh.wikipedia.org/wiki/ "wikilink")`..b..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction`
`           if (d[no].endpoint3 ~= nil) then                    -- 部分双向高峰快线：去程终点和返程起点不同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`           else                                                -- 部分双向高峰快线：去程终点和返程起点相同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`           end`
`           if style == "noco" then                             -- 不显示公司栏（noco）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare`
`           elseif style == "nofa" then                         -- 不显示票价栏（nofa）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`           elseif style == "nocofa" then                       -- 不显示公司和票价栏（nocofa）`
`               a = a`
`           else                                                -- 显示公司和票价栏（默认）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`           end`
`           if vehicle == "yes" then a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..ve end`
`           a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note.."\n|-\n"..`[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction1`
`           if (d[no].endpoint3 ~= nil) then                    -- 部分双向高峰快线：去程终点和返程起点不同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].endpoint3`
`           else                                                -- 部分双向高峰快线：去程终点和返程起点相同`
`               a = a`
`           end         `
`       -- 其他（一列）：`
`       else`
`           a = `[](https://zh.wikipedia.org/wiki/ "wikilink")`..b..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`           if style == "noco" then                             -- 不显示公司栏（noco）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare`
`           elseif style == "nofa" then                     -- 不显示票价栏（nofa）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`           elseif style == "nocofa" then                       -- 不显示公司和票价栏（nocofa）`
`               a = a`
`           else                                                -- 显示公司和票价栏（默认）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`           end`
`           if vehicle == "yes" then a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..ve end`
`           a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note`
`       end`
`   end`
`   return a`

end

\--  function p.list(frame)

`   local bb = frame.args`
`   local loc = bb.loc`
`   if loc == "" or loc == nil then loc = "惠州" end`
`   local vehicle = bb.vehicle`
`   if bb.vehicle == "yes" then vehicle = "yes" end`
`   local ret = p._internalList(bb.code, bb.format, loc, vehicle)`
`   return ret`

end

\-- 生成一条线路的一列简单表格内容 function p._internalSimpList(no, loc)

`   local d = _loadSystemData(loc)`
`   if d[no] == nil then`
`       a = `[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..no..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..'`[`Module:HZBUS中未包含这条`](https://zh.wikipedia.org/wiki/Module:HZBUS "wikilink")[`"..loc.."的线路`](https://zh.wikipedia.org/wiki/'..loc.."巴士路线列表 "wikilink")`）''"`
`   elseif d[no].note == "已停办" or d[no].note == "已停辦" then`
`       a = `[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")
`   else`
`       e1 = p.tsllink(d[no].endpoint1)                         -- 处理起讫点1可能出现的`
`       e2 = p.tsllink(d[no].endpoint2)                         -- 处理起讫点2可能出现的`
`       -- 部分双向高峰快线（两列）：`
`       if (d[no].direction1 ~= nil) then`
`           a = `[`rowspan="2"``   ``align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..e1..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction`
`           if (d[no].endpoint3 ~= nil) then                    -- 部分双向高峰快线：去程终点和返程起点不同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`           else                                                -- 部分双向高峰快线：去程终点和返程起点相同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..e2`
`           end`
`           a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`.."\n|-\n"..`[`align=center`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].direction1`
`           if (d[no].endpoint3 ~= nil) then                    -- 部分双向高峰快线：去程终点和返程起点不同`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].endpoint3`
`           else                                                -- 部分双向高峰快线：去程终点和返程起点相同`
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
`   if loc == "" or loc == nil then loc = "惠州" end`
`   local ret = p._internalSimpList(ss.code, loc)`
`   return ret`

end

\-- 输出线路单项资料 function p._internalCode(no, loc)

`   local d = _loadSystemData(loc)`
`   if d[no] == nil then`
`       a = "`*`（错误：`[`Module:HZBUS中无`](https://zh.wikipedia.org/wiki/Module:HZBUS "wikilink")`"..no.."线路）`*`"`
`   elseif d[no].note == "已停办" or d[no].note == "已停辦" then`
`       a = `[`''（错误：`](https://zh.wikipedia.org/wiki/''（错误： "wikilink")`..d[no].code..`[`已停办或暂停服务，请移除）''`](https://zh.wikipedia.org/wiki/已停办或暂停服务，请移除）'' "wikilink")
`   else`
`       a = d[no].code`
`   end`
`   return a`

end

\--  function p.code(frame)

`   local ss = frame.args`
`   local loc = ss.loc`
`   if loc == "" or loc == nil then loc = "惠州" end`
`   local ret = p._internalCode(ss.code, loc)`
`   return ret`

end

\-- 生成表格首列 function p._internalTitle(style, loc, vehicle)

`   if loc == "" or loc == nil then loc = "惠州" end`
`   if vehicle == "yes" then                                    -- 显示运力（vehicle = yes）`
`       if style == "noco" then                                 -- 不显示公司栏（noco）`
`           t = '!colspan="2" width="12%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="8%"|收费!!width="19%"|运力!!width="19%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="20%"| || ||width="20%"| ||colspan="3"| '`
`       elseif style == "nofa" then                             -- 不显示票价栏（nofa）`
`           t = '!colspan="2" width="12%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="8%"|运营商!!width="19%"|运力!!width="19%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="20%"| || ||width="20%"| ||colspan="3"| '`
`       elseif style == "nocofa" then                           -- 不显示公司和票价栏（nocofa）`
`           t = '!colspan="2" width="13%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="21%"|运力!!width="20%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="22%"| || ||width="22%"| ||colspan="2"| '`
`       else                                                    -- 显示公司和票价栏（默认）`
`           t = '!colspan="2" width="10%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="8%"|收费!!width="8%"|运营商!!width="18%"|运力!!width="18%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="18%"| || ||width="18%"| ||colspan="4"| '`
`       end`
`   else                                                        -- 不显示运力`
`       if style == "noco" then                                 -- 不显示公司栏（noco）`
`           t = '!colspan="2" width="14%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="10%"|收费!!width="22%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="26%"| || ||width="26%"| ||colspan="2"| '`
`       elseif style == "nofa" then                         -- 不显示票价栏（nofa）`
`           t = '!colspan="2" width="14%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="11%"|运营商!!width="21%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="26%"| || ||width="26%"| ||colspan="2"| '`
`       elseif style == "nocofa" then                           -- 不显示公司和票价栏（nocofa）`
`           t = '!colspan="2" width="16%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="24%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="29%"| || ||width="29%"| || '`
`       else                                                    -- 显示公司和票价栏（默认）`
`           t = '!colspan="2" width="12%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'..'!!width="8%"|收费!!width="10%"|运营商!!width="20%"|备注\n|-style="background:#EAECF0" height=0\n|colspan="2"| ||width="24%"| || ||width="24%"| ||colspan="3"|'`
`       end`
`   end`
`   return t`

end

\--  function p.title(frame)

`   local tt = frame.args`
`   local ret = p._internalTitle(tt.format, tt.loc, tt.vehicle)`
`   return ret`

end

\--  function p.colorbox(frame)

`   local cc = frame.args`
`   local ret = p._internalColorbox(cc.company)`
`   return ret`

end

return p