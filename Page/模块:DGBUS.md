\-- 声明模块本体 local p = {} -- 导入数据 local c = mw.loadData('Module:DGBUS/color') local function _loadSystemData(loc)

`   local state`
`   if loc == nil or loc == "" or loc == "东莞" or loc == "東莞" then`
`       state, system = pcall(mw.loadData, "Module:DGBUS/data")`
`   elseif loc == "南沙" or loc == "花都" or loc == "番禺" or loc == "增城" or loc == "从化" or loc == "從化" or loc == "广州" or loc == "廣州" then`
`       state, system = pcall(mw.loadData, "Module:DGBUS/guangzhou")`
`   -- elseif loc == "惠州" then`
`   --  state, system = pcall(mw.loadData, "Module:DGBUS/huizhou")`
`    elseif loc == "深圳" then`
`       state, system = pcall(mw.loadData, "Module:DGBUS/shenzhen")`
`   else`
`       state, system = pcall(mw.loadData, "Module:DGBUS/data")`
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

\-- 生成一条线路的一列表格内容 function p._internalList(no, style, loc)

`   local d = _loadSystemData(loc)`
`   if d[no] == nil then`
`       a = `[`width="1%"`](https://zh.wikipedia.org/wiki/ "wikilink")`..no..`[](https://zh.wikipedia.org/wiki/''' "wikilink")`..'`[`Module:DGBUS中未包含这条`](https://zh.wikipedia.org/wiki/Module:DGBUS "wikilink")[`"..loc.."的线路`](https://zh.wikipedia.org/wiki/'..loc.."巴士路线列表 "wikilink")`）''"`
`   elseif d[no].note == "已停办" or d[no].note == "已停辦" then`
`       a = `[`width="1%"`](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].code..`[](https://zh.wikipedia.org/wiki/''' "wikilink")
`   else`
`       b = p._internalColorbox(d[no].company)                  -- 生成颜色方块`
`       e1 = p.tsllink(d[no].endpoint1)                         -- 处理起讫点1可能出现的`
`       e2 = p.tsllink(d[no].endpoint2)                         -- 处理起讫点2可能出现的`
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
`           elseif (style == "nofa") then                       -- 不显示票价栏（nofa）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`           elseif (style == "nocofa") then                     -- 不显示公司和票价栏（nocofa）`
`               a = a`
`           else                                                -- 显示公司和票价栏（默认）`
`               a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].fare..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].company`
`           end`
`           a = a..`[](https://zh.wikipedia.org/wiki/ "wikilink")`..d[no].note`
`       end`
`   end`
`   return a`

end

\--  function p.list(frame)

`   local bb = frame.args`
`   local loc = bb.loc`
`   if loc == "" or loc == nil then loc = "东莞" end`
`   local ret = p._internalList(bb.code, bb.format, loc)`
`   return ret`

end

\-- 生成表格表头 function p._internalTitle(style, loc)

`   if loc == "" or loc == nil then loc = "东莞" end`
`   t = '!colspan="2" width="12%"|`[`编号`](https://zh.wikipedia.org/wiki/'..loc..'巴士路线列表 "wikilink")`!!colspan="3"|起讫点'`
`   if ((style == "noco") or (style == "nocotr")) then          -- 不显示公司栏（noco）`
`       t = t..'!!width="8%"|全程收费!!width="20%"|备注\n|-style="background:#a2a9b1" height=0\n|width="1%" height=0| || || width="24%"| || ||width="24%"| || || '`
`   elseif (style == "nofa") then                               -- 不显示票价栏（nofa）`
`       t = t..'!!width="10%"|公司（分公司）!!width="20%"|备注\n|-style="background:#a2a9b1" height=0\n|width="1%" height=0| || || width="24%"| || ||width="24%"| || || '`
`   elseif (style == "nocofa") then                             -- 不显示公司和票价栏（nocofa）`
`       t = t..'!!width="20%"|备注\n|-style="background:#a2a9b1" height=0\n|width="1%" height=0| || || width="24%"| || ||width="24%"| || '`
`   else                                                        -- 显示公司和票价栏（notr、nodo、默认）`
`       t = t..'!!width="8%"|全程收费!!width="10%"|公司（分公司）!!width="20%"|备注\n|-style="background:#a2a9b1" height=0\n|width="1%" height=0| || || width="24%"| || ||width="24%"| || || || '`
`   end`
`   return t`

end

\-- 及 function p.title(frame)

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