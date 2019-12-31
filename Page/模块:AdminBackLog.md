> 本文内容由[模块:AdminBackLog](https://zh.wikipedia.org/wiki/模块:AdminBackLog)转换而来。


local p = {}

function Status2(code)

`   local list = {`
`       ["+"] = "done",`
`       ["Done"] = "done",`
`       ["done"] = "done",`
`       ["完成"] = "done",`
`       ["-"] = "not done",`
`       ["Not done"] = "not done",`
`       ["not done"] = "not done",`
`       ["拒絕"] = "not done",`
`       ["拒绝"] = "not done",`
`       ["驳回"] = "not done",`
`       ["駁回"] = "not done",`
`       ["未完成"] = "not done",`
`       ["on hold"] = "oh",`
`       ["擱置"] = "oh",`
`       ["搁置"] = "oh",`
`       ["等待"] = "oh",`
`       ["等待中"] = "oh",`
`       ["OH"] = "oh",`
`       ["oh"] = "oh",`
`       ["hold"] = "oh",`
`       ["Hold"] = "oh",`
`       ["*"] = "oh",`
`       ["?"] = "oh",`
`       ["新申請"] = "new"`
`   }`
`   return list[code] or "new"`

end

\--- DRV

function p._DRV_get()

`   local page = mw.title.new('Wikipedia:存廢覆核請求'):getContent()`
`   local result = {}`
`   for title, status in mw.ustring.gmatch( page, '==%s*([^\n]-)%s*==.-\n%*``' ) do`
`       status = mw.ustring.gsub(status, "%|([^|}]+).*", "%1")`
`       table.insert(result, {["title"]=title, ["status"]=Status2(status)})`
`   end`
`   return result`

end

function p.DRV_count(frame)

`   local args = frame.args`
`   local count = 0`
`   for key, value in pairs(p._DRV_get()) do`
`       if value.status == args[1] then`
`           count = count + 1`
`       end`
`   end`
`   return count`

end

function p.DRV_list(frame)

`   local args = frame.args`
`   local list = {}`
`   for key, value in pairs(p._DRV_get()) do`
`       if value.status == args[1] then`
`           table.insert( list, "`[`"..mw.uri.anchorEncode(frame:preprocess(value.title)).."`](https://zh.wikipedia.org/wiki/Wikipedia:存廢覆核請求#"..mw.uri.anchorEncode\(frame:preprocess\(value.title\)\).._" "wikilink")`" )`
`       end`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\--- VIP

function p._VIP_get()

`   local page = mw.title.new('Wikipedia:当前的破坏'):getContent()`
`   local result = {}`
`   for text in mw.text.gsplit( page, '\n===' ) do`
`       local _, _, user = mw.ustring.find(text, "``")`
`       if user then`
`           local done = true`
`           if mw.ustring.find(text, "* 处理： ", 1, true) then`
`               done = false`
`           end`
`           if mw.ustring.find(text, "* 处理：%s*$") then`
`               done = false`
`           end`
`           if mw.ustring.find(text, "* 处理：%s*\n") then`
`               done = false`
`           end`
`           table.insert(result, {["user"]=user, ["status"]=done})`
`       end`
`   end`
`   return result`

end

function p.VIP_count(frame)

`   local count = 0`
`   for key, value in pairs(p._VIP_get()) do`
`       if value.status == false then`
`           count = count + 1`
`       end`
`   end`
`   return count`

end

function p.VIP_list(frame)

`   local list = {}`
`   for key, value in pairs(p._VIP_get()) do`
`       if value.status == false then`
`           table.insert( list, "`[`"..mw.uri.anchorEncode(value.user).."`](https://zh.wikipedia.org/wiki/Wikipedia:当前的破坏#"..mw.uri.anchorEncode\(value.user\).._" "wikilink")`" )`
`       end`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\--- EWIP

function p._EWIP_get()

`   local page = mw.title.new('Wikipedia:管理员通告板/3RR'):getContent()`
`   local result = {}`
`   for text in mw.text.gsplit( page, '\n===' ) do`
`       local _, _, user = mw.ustring.find(text, "``")`
`       if user then`
`           local done = true`
`           if mw.ustring.find(text, "* 处理： ", 1, true) then`
`               done = false`
`           end`
`           if mw.ustring.find(text, "* 处理：%s*$") then`
`               done = false`
`           end`
`           table.insert(result, {["user"]=user, ["status"]=done})`
`       end`
`   end`
`   return result`

end

function p.EWIP_count(frame)

`   local count = 0`
`   for key, value in pairs(p._EWIP_get()) do`
`       if value.status == false then`
`           count = count + 1`
`       end`
`   end`
`   return count`

end

function p.EWIP_list(frame)

`   local list = {}`
`   for key, value in pairs(p._EWIP_get()) do`
`       if value.status == false then`
`           table.insert( list, "`[`"..mw.uri.anchorEncode(value.user).."`](https://zh.wikipedia.org/wiki/Wikipedia:管理员通告板/3RR#"..mw.uri.anchorEncode\(value.user\).._" "wikilink")`" )`
`       end`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\-- RFPP

function p._RFPP_get()

`   local page = mw.title.new('Wikipedia:请求保护页面'):getContent()`
`   local rfpp = mw.text.split(page, "== 请求解除保护 ==")[1]`
`   local rfunpp = mw.text.split(page, "== 请求解除保护 ==")[2]`
`   local result = {}`
`   for text in mw.text.gsplit( rfpp, '\n===' ) do`
`       local _, _, page = mw.ustring.find(text, "^%s*%[%[:?(.-)%]%]%s*===")`
`       if page then`
`           local done = false`
`           if mw.ustring.find(text, "{{RFPP|", 1, true) then`
`               done = true`
`           end`
`           table.insert(result, {["type"]="p", ["page"]=page, ["status"]=done})`
`       end`
`   end`
`   for text in mw.text.gsplit( rfunpp, '\n===' ) do`
`       local _, _, page = mw.ustring.find(text, "^%s*%[%[:?(.-)%]%]%s*===")`
`       if page then`
`           local done = false`
`           if mw.ustring.find(text, "{{RFPP|", 1, true) then`
`               done = true`
`           end`
`           table.insert(result, {["type"]="up", ["page"]=page, ["status"]=done})`
`       end`
`   end`
`   return result`

end

function p.RFPP_count(frame)

`   local args = frame.args`
`   local count = 0`
`   for key, value in pairs(p._RFPP_get()) do`
`       if value.status == false and value.type == args[1] then`
`           count = count + 1`
`       end`
`   end`
`   return count`

end

function p.RFPP_list(frame)

`   local args = frame.args`
`   local list = {}`
`   for key, value in pairs(p._RFPP_get()) do`
`       if value.status == false and value.type == args[1] then`
`           table.insert( list, "`[`"..mw.uri.anchorEncode(value.page).."`](https://zh.wikipedia.org/wiki/Wikipedia:请求保护页面#"..mw.uri.anchorEncode\(value.page\).._" "wikilink")`" )`
`       end`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\-- RRD

function p._RRD_get()

`   local page = mw.title.new('Wikipedia:修订版本删除请求'):getContent()`
`   local result = {}`
`   for status, title in mw.ustring.gmatch( page, '{{Revdel\n%|%s*status%s*=%s*([^\n]+)\n%|%s*article%s*=%s*([^\n]+)' ) do`
`       status = mw.ustring.gsub(status, "<!%-%-不要修改本参数%-%->", "")`
`       table.insert(result, {["title"]=title, ["status"]=Status2(status)})`
`   end`
`   return result`

end

function p.RRD_count(frame)

`   local args = frame.args`
`   local count = 0`
`   for key, value in pairs(p._RRD_get()) do`
`       if value.status == args[1] then`
`           count = count + 1`
`       end`
`   end`
`   return count`

end

function p.RRD_list(frame)

`   local args = frame.args`
`   local list = {}`
`   for key, value in pairs(p._RRD_get()) do`
`       if value.status == args[1] then`
`           table.insert( list, "`[`"..mw.uri.anchorEncode(value.title).."`](https://zh.wikipedia.org/wiki/Wikipedia:修订版本删除请求#"..mw.uri.anchorEncode\(value.title\).._" "wikilink")`" )`
`       end`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\--- CV

function p._CV_get()

`   local page = mw.title.new('Wikipedia:頁面存廢討論/疑似侵權'):getContent()`
`   local result = {}`
`   for title, time in mw.ustring.gmatch( page, '{{CopyvioEntry%|1=(.-)%|time=(.-)%|' ) do`
`       if tonumber(time) < os.time() and mw.title.new(title).exists then`
`           table.insert(result, {["title"]=title})`
`       end`
`   end`
`   return result`

end

function p.CV_count(frame)

`   return #p._CV_get()`

end

function p.CV_list(frame)

`   local args = frame.args`
`   local list = {}`
`   for key, value in pairs(p._CV_get()) do`
`       table.insert( list, "`[`"..mw.uri.anchorEncode(value.title).."`](https://zh.wikipedia.org/wiki/Wikipedia:頁面存廢討論/疑似侵權#"..mw.uri.anchorEncode\(value.title\).._" "wikilink")`" )`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\--- UAA

function p._UAA_get()

`   local page = mw.title.new('Wikipedia:需要管理員注意的用戶名'):getContent()`
`   local result = {}`
`   for user in mw.ustring.gmatch( page, '``' ) do`
`       table.insert(result, {["user"]=user})`
`   end`
`   return result`

end

function p.UAA_count(frame)

`   return #p._UAA_get()`

end

function p.UAA_list(frame)

`   local args = frame.args`
`   local list = {}`
`   for key, value in pairs(p._UAA_get()) do`
`       table.insert( list, "`[`"..mw.uri.anchorEncode(value.user).."`](https://zh.wikipedia.org/wiki/Wikipedia:需要管理員注意的用戶名#"..mw.uri.anchorEncode\(value.user\).._" "wikilink")`" )`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\--- AFFP

function p._AFFP_get()

`   local page = mw.title.new('Wikipedia:防滥用过滤器/错误报告'):getContent()`
`   local result = {}`
`   for title, status in mw.ustring.gmatch( page, '===%s*%[%[:?(.-)%]%].-===%s*\n;``模板", 1, true) then`
`           -- continue`
`       else`
`           table.insert(result, {["title"]=title})`
`       end`
`   end`
`   return result`

end

function p.AFDB_count(frame)

`   return #p._AFDB_get(frame)`

end

function p.AFDB_list(frame)

`   local args = frame.args`
`   local list = {}`
`   for key, value in pairs(p._AFDB_get(frame)) do`
`       table.insert( list, "`[`"..mw.uri.anchorEncode(value.title).."`](https://zh.wikipedia.org/wiki/Wikipedia:頁面存廢討論/積壓討論#"..mw.uri.anchorEncode\(value.title\).._" "wikilink")`" )`
`   end`
`   return mw.text.listToText(list, "、", "、")`

end

\-- END

return p