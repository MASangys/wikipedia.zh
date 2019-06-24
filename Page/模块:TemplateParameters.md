local p = {} local lib_arg = {} local yesno = {}

function p.containsNumber(frame)

`   -- For calling from #invoke.`
`   local args`
`   local can_call_parse = false`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       args = frame.args`
`       can_call_parse = true`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`       if type(args) ~= type({}) then args = {frame} end`
`   end`
`   local input_str=mw.ustring.gsub(args[1] or args['1'],',','')`
`   local g0=mw.ustring.gmatch(input_str,"[%+%-]?[0-9%.]+e[%+%-]?[0-9%.]+")`
`   local out_str = nil`
`   if g0 then out_str = g0() end`
`   if (out_str or '') == '' then `
`       g0=mw.ustring.gmatch(input_str,"[%+%-]?[0-9%.]+") `
`   else`
`       return '1'`
`   end`
`   if g0() then return '1' end`
`   return ''`

end

function p.getNumberValue(frame)

`   -- For calling from #invoke.`
`   local args`
`   local can_call_parse = false`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       args = frame.args`
`       can_call_parse = true`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`       if type(args) ~= type({}) then args = {frame} end`
`   end`
`   local input_str=mw.ustring.gsub(args[1] or args['1'],',','')`
`   local g0=mw.ustring.gmatch(input_str,"[%+%-]?[0-9%.]+e[%+%-]?[0-9%.]+")`
`   local out_str = nil`
`   if g0 then out_str = g0() end`
`   if (out_str or '') == '' then `
`       g0=mw.ustring.gmatch(input_str,"[%+%-]?[0-9%.]+") `
`   else`
`       return out_str`
`   end`
`   return g0() or '0'`

end

function p.argTrim(frame)

`   -- For calling from #invoke.`
`   local args`
`   local can_call_parse = false`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       args = frame.args`
`       can_call_parse = true`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`       if type(args) ~= type({}) then args = {frame} end`
`   end`
`   local arg_counts = 1`
`   local input_str = ''`
`   local first_str = ''`
`   local one_str = mw.text.trim(args['1'] or args[1] or '')`
`   local count = 0`
`   local pipe_to_magic_word = false`
`   if (args["pipe"] or '') ~= '' then`
`       if type(yesno) ~= type(tonumber) then yesno = require('Module:Yesno') end`
`       pipe_to_magic_word = yesno(args["pipe"] or 'no')`
`   end`
`   local num_arg_count = 0`
`   local first_arg = true`
`   for id,_ in pairs(args) do if (tonumber(id) or 0) > num_arg_count then num_arg_count = tonumber(id) or 0 end end`
`   for id=1,num_arg_count do `
`       local it_str = mw.text.trim(args[tostring(id)] or args[id] or '')`
`       if pipe_to_magic_word then it_str = mw.ustring.gsub(it_str,"%|", "{{!}}") end`
`       if not first_arg then input_str = input_str .. '|' else first_arg = false end`
`       input_str = input_str .. it_str`
`       if first_str == '' then first_str = it_str end`
`       if it_str~='' then count = count+1 end`
`   end`
`   for key,val in pairs(args) do`
`       local it_str = mw.text.trim(val)`
`       if pipe_to_magic_word then it_str = mw.ustring.gsub(it_str,"%|", "{{!}}") end`
`       if (tonumber(key) or 0) < 1 and it_str~='' and mw.text.trim(tostring(key)) ~= 'pipe' then `
`           if input_str ~= '' then input_str = input_str .. '|' end`
`           input_str = input_str .. mw.text.trim(tostring(key)) .. '=' .. it_str`
`           if first_str == '' then first_str = it_str end`
`           count = count+1`
`       end`
`   end`
`   if count > 1 then return mw.text.trim(input_str)`
`   else `
`       if one_str~='' then return first_str`
`       else return mw.text.trim(input_str) end`
`   end`

end

function p.listArguments(frame)

`   local body = ''`
`   function print_args(farg, str)`
`       local body = ''`
`       local flag = false`
`       if farg.args then`
`           body = body .. '*' .. "{{" .. (str or farg:getTitle())  .. "}}呼叫參數:" .. '\n'`
`           for k,v in pairs(farg.args) do`
`               if(type(v) ~= type(tonumber) and type(v) ~= type({}))then`
`                   flag = true`
`                   body = body .. '*:' .. "`**`"``   ``..``   ``k``
 ``..``   ``"`**` : " .. tostring(v) .. '\n'`
`               end`
`           end`
`       end`
`       if flag then return body else return '' end`
`   end`
`   if frame ~= mw.getCurrentFrame() and type(frame) == type({}) then`
`       body = body .. '*' .. "函數呼叫參數:" .. '\n'`
`       for k,v in pairs(frame) do`
`           body = body .. '*:' .. "`**`"``   ``..``   ``k``   ``..``
 ``"`**` : " .. v .. '\n'`
`       end`
`   end`
`   local this_arg = frame.args`
`   if type(this_arg) == type({}) then body = body .. print_args(frame, "#invoke:") end`
`   local iter = mw.getCurrentFrame()`
`   if iter == frame then iter = mw.getCurrentFrame():getParent() end`
`   while iter do`
`       body = body .. print_args(iter)`
`       iter = iter:getParent()`
`   end`
`   return body`

end local argument_check = false function p.checkArgument(frame)

`   argument_check = true`
`   return p.getParentArgument(frame)`

end

function p.getParentArgument(frame)

`   local this_arg = frame.args`
`   local out_arg = mw.getCurrentFrame():getParent().args`
`   if tonumber(this_arg.out or 1) > 1 then`
`       local iter = mw.getCurrentFrame()`
`       for i=1,tonumber(this_arg.out) do`
`           if iter:getParent() then`
`               iter = iter:getParent()`
`           end`
`       end`
`       if iter.args then out_arg=iter.args end`
`   end`
`   local result = ''`
`   local is_used = false`
`   if this_arg.name and out_arg then`
`       if out_arg[this_arg.name] then `
`           if result ~= '' and result ~= out_arg[this_arg.name] then is_used =true end`
`           result = out_arg[this_arg.name] `
`       end`
`   end`
`   if out_arg then`
`       for k,v in ipairs(this_arg) do`
`           if out_arg[v] then `
`               if result ~= '' and result ~= out_arg[v] then is_used =true end`
`               result = out_arg[v] `
`           end`
`       end`
`   end`
`   if mw.getCurrentFrame():getParent() then`
`       if argument_check then argument_check = false else`
`           if is_used then mw.addWarning( mw.getCurrentFrame():getParent():getTitle() .. "中，參數 \""`
`               .. (this_arg.name or this_arg[1]) ..  "\" 被用不同的內容定義了多次。"  ) end`
`       end`
`   end`
`   if result == '' then return this_arg.value or '' end`
`   return result`

end

\--外部讀取不定參數 function p.FormatingArguments(frame)

`   -- For calling from #invoke.`
`   local args`
`   local can_call_parse = false`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       args = frame.args`
`       can_call_parse = true`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`   end`
`   local input_str = ''`
`   local count = 1`
`   if args["format"] or args["Format"] or args["格式"] then input_str = args["format"] or args["Format"] or args["格式"] or '' end`
`   if args["count"] then count = tonumber(args["count"] or 1) or 1 end`
`   local display_all = false`
`   if args["displayAll"] then`
`       if type(yesno) ~= type(tonumber) then yesno = require('Module:Yesno') end`
`       display_all = yesno(args["displayAll"] or 'no')`
`   end`
`   count = math.floor(count)`
`   if count < 1 then count = 1 end`
`   local usingConditionalExpressions = false`
`   if args.usingConditionalExpressions then`
`       if type(yesno) ~= type(tonumber) then yesno = require('Module:Yesno') end`
`       if yesno(args.usingConditionalExpressions) == true and can_call_parse then`
`           usingConditionalExpressions = true`
`           input_str = p._get_escape(input_str)`
`       end`
`   end`
`   local out_frame = mw.getCurrentFrame():getParent()`
`   local out_args = {}`
`   local body = ''`
`   if out_frame then out_args = out_frame.args or out_args end`
`   local max_count, i, j = 1, 0, 0 for index, _ in pairs(out_args) do if (tonumber(index) or 0) > max_count then max_count = (tonumber(index) or 0) end end`
`   max_count = math.ceil(max_count / count);`
`   local last_one = false`
`   for i = 1, max_count do`
`       local local_arg = {}`
`       local_arg["isLast"], local_arg["isFirst"]= '', ''`
`       local_arg["count"]=tostring(max_count)`
`       local_arg["ArgGroupID"] = tostring(i)`
`       if i == max_count then local_arg["isLast"] = '1' end`
`       if i == 1 then local_arg["isFirst"] = '1' end`
`       --本組參數是否有值`
`       local is_ready = false`
`       for j = 1, count do`
`           local it = (i-1) * count + j`
`           local_arg.ArgID = tostring(it)`
`           local_arg[j] = out_args[tostring(it)] or out_args[it] or args[tostring(j)] or args[j] or ('``')`
`           --找到本組參數的其中一個值`
`           if out_args[tostring(it)] or out_args[it] then is_ready = true end`
`       end`
`       if is_ready or display_all then --本組參數有值存在才輸出; 如果設定全部顯示也顯示`
`           local output_str = tostring(input_str)`
`           body=body..p._getFormatingStringByArgument(output_str, local_arg)`
`       end`
`   end`
`   if usingConditionalExpressions and can_call_parse then`
`       body = frame:preprocess( body )`
`   end`
`   return body`

end

\--內部讀取確定參數 function p.getFormatingStringByArgument(frame)

`   -- For calling from #invoke.`
`   local args`
`   local can_call_parse = false`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`       can_call_parse = true`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`   end`
`   local targs = {}`
`   for arg, val in pairs(args) do`
`       if tonumber(arg) ~= 1 then`
`           targs[arg] = val`
`       end`
`   end`
`   local input_str = args[1] or args['1']`
`   local usingConditionalExpressions = false`
`   if args.usingConditionalExpressions then`
`       if type(yesno) ~= type(tonumber) then yesno = require('Module:Yesno') end`
`       if yesno(args.usingConditionalExpressions) == true and can_call_parse then`
`           usingConditionalExpressions = true`
`           input_str = p._get_escape(input_str)`
`       end`
`   end`
`   local output_str = p._getFormatingStringByArgument(input_str, targs)`
`   if usingConditionalExpressions and can_call_parse then`
`       output_str = frame:preprocess( output_str )`
`   end`
`   return output_str`

end

function p._findNullArgument(str, args)

`   local result = str or "*``\n"`
`   local emptylist = {}`
`   for k,v in pairs(args) do`
`       local ke = p._getEscapeString(k)`
`       local pattern = "%{%{%{%s*".. ke .. "%s*%}%}%}"`
`       if mw.ustring.find(result, pattern) then`
`           if string.gsub(string.gsub(v or '' , ' ', "") , "%s$", "") == '' then emptylist[k] = true end`
`       else emptylist[k] = true end`
`       result = mw.ustring.gsub(result, pattern, tostring(args[k]) )`
`   end`
`   return emptylist`

end

\--格式化字串的處理，會將特殊的  轉換 function p._getEscapeString(str) str =
mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(str,
"%\[", "%\["), "%\]", "%\]"), "%{", "%{"), "%}", "%}"), "%%", "%%%%"),
"%)", "%)"), "%-", "%-"), "%^", "%^"), "%$", "%$"), "%(", "%("), "%.",
"%."), "%\*", "%\*"), "%+", "%+"), "%|", "%|"); return str; end function
p._getFormatingStringByArgument(str, args)

`   local result = str or "*``\n"`
`   for k,v in pairs(args) do`
`       local ke = p._getEscapeString(k)`
`       result = mw.ustring.gsub(result, "%{%{%{%s*".. ke .. "%s*%}%}%}", tostring(args[k]) )`
`   end`
`   return result`

end

`function p._get_escape(str)`
`   local escapestrs = mw.text.split( str, '\\\\')`
`   local escapechars = {{"\\n", "\n"},{"\\r", "\r"},{"\\t", "\t"},{"\\b", "\b"},{"\\f", "\f"},{"\\v", "\v"},{"\\", ""},}`
`   for i,text in pairs(escapestrs) do `
`       for _, escape_result in ipairs(escapechars) do`
`           escapestrs[i] = mw.ustring.gsub(escapestrs[i], escape_result[1], escape_result[2])`
`       end`
`   end`
`   return table.concat(escapestrs, '\\')`

end

function p.arg_to_spstr(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame)`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`       if type(frame) ~= type({}) then args = {frame} end`
`   end`
`   body=''`
`   for k,v in pairs(args) do`
`       body = body .. "`<參數分隔/>`" .. k .. "`<參數值/>`" .. v`
`   end`
`   return body`

end

function p.pass_spstr(frame)

`   -- For calling from #invoke.`
`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame) --frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       if type(frame) ~= type({}) then args = {frame}`
`       else args = frame end`
`   end`
`   local input_text = p._get_escape(args['code'] or '')`
`   local input_args = { text = input_text }`
`   local input_title = args['TemplateTitle']`
`   local spilt_args = mw.text.split( args['args'] or '', '`<參數分隔/>`')`
`   local working_frame = frame`
`   if type(yesno) ~= type(tonumber) then yesno = require('Module:Yesno') end`
`   local child_args = {}`
`   for aname, aval in pairs(args) do child_args[aname] = aval end`
`   if yesno(args.useParent or 'no') == true then `
`       working_frame = frame:getParent() or frame `
`       for aname, aval in pairs(working_frame.args) do child_args[aname] = aval end`
`   end`
`   for _,v in ipairs(spilt_args) do`
`       local text = mw.text.trim(v)`
`       if text ~= '' then`
`           local spilt_kv = mw.text.split( text, '`<參數值/>`')`
`           local key = mw.text.trim(spilt_kv[1])`
`           local nkey = tonumber(key)`
`           if key ~= '' then input_args[key],child_args[key] = spilt_kv[2],spilt_kv[2] end`
`           --if nkey ~= nil then input_args[nkey],child_args[nkey] = spilt_kv[2],spilt_kv[2] end`
`       end`
`   end`
`   working_frame = working_frame:newChild{ title = input_title or working_frame:getTitle(), args = child_args }`
`   return working_frame:preprocess(input_args)`

end

return p