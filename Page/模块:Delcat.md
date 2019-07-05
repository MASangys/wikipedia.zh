local p={

`   replace_data = { `
`       "%[%[[Cc][Aa][Tt].-%]%]",`
`       "%[%[分類.-%]%]",`
`       "%[%[分类.-%]%]",`
`       "%[%[[Cc]ategory.-%]%]",`
`       "%[%[CATEGORY.-%]%]",`
`       --"其他例外", --直接新增即可`
`   },`
`   nullstr = ''`

} local strings = require( 'Module:String' ) local TlParLib = {} local
lib_arg = {} --主函數 function p.main(frame)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   get_args = getArgs(frame, {parentFirst=true})`
`   `
`   --__DISAMBIG__`
`   other_replace = {}`
`   to_replace = ''`
`   rep_type = "category"`
`   for arg_name, arg_value in pairs( get_args ) do`
`       if arg_name == 1 or arg_name == '1' then`
`           --要處理的字串`
`           to_replace = arg_value`
`       elseif arg_name == "type" then`
`           rep_type = mw.ustring.lower(arg_value)`
`       else`
`           other_replace[arg_name] = arg_value`
`       end`
`   end`
`   if rep_type == "category" then`
`       return p.delete_category(to_replace, other_replace)`
`   elseif rep_type == "link" then`
`       return p.dellink(get_args)`
`   elseif rep_type == "list_category" or rep_type == "listcategory" or rep_type == "list category" then`
`       return p.list_category(get_args)`
`   else`
`       return to_replace`
`   end`

end

function p.list_category(frame)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   get_args = getArgs(frame, {parentFirst=true})`
`   category_list = p.find_category((get_args[1] or get_args['1']) or '')`
`   format = mw.ustring.gsub((get_args[2] or get_args['2']) or "*``\n", "%{%{%{.-%}%}%}", "%%s" );`
`   it = mw.ustring.find(format, "%%s", 1)`
`   if it == nil then format = format .. "%s" end`
`   format = mw.ustring.gsub(format, "\\n", "\n")`

`   body = ''`
`   for i, category in pairs( category_list ) do`
`       body = body .. mw.ustring.gsub(format, "%%s", category)`
`   end`
`   return body`

end function p.deltitle(input)

``   str = mw.text.trim(mw.ustring.gsub(input,"\127\'\"`UNIQ%-%-.-QINU`\"\'\127", p.nullstr))``

`   begin_, end_ = mw.ustring.find(str, "=+", 1)`
`   if begin_==nil then return input end`
`   begin_2 = mw.ustring.find(str, "=+ *\n", end_ + 1)`
`   count = end_ - begin_ + 1`

`   title_name = mw.text.trim(mw.ustring.sub(str, end_ + 1, begin_2-1 ))`
`   result = "\n;<span id=\"" .. title_name .. "\" style=\"font-size:" .. (({24,20,18,16,14})[count] or 14) .. "px;\">" .. title_name .. "`</span>`"`

`   if count < 1 then return str `
`   elseif count < 3 then result = result .. "\n----" end`
`   return result .. '\n'`

end function p.bytelen(frame)

`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       args = frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`       if type(args) ~= type({}) then args = {frame} end`
`   end`
`   return string.len(args[1] or args['1'])`

end function p.getcjk(frame)

`   local args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       args = frame.args`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`       if type(args) ~= type({}) then args = {frame} end`
`   end`
`   local str = args[1] or args['1']`
`   str = mw.ustring.gsub(str, "<%s*div.-<%s*%/div%s*>",'')`
`   mw.ustring.gsub(mw.ustring.gsub(args[1] or args['1'],`
`       "[%c%l%u%d%p%s%z" ..`
``           "%>%<%=%{%}%|%[%]%`%+%-%*%/%\\"``
`       .. "↑↓←→№©⧸⁄"`
`       .. "%−%~%~%!%@%#%$%^%&%_×÷ºª±∓"`
`       .. "]"`
`   ,'.'),"%.+",args['gap'] or '')`
`   return str`

end

function p.dellink(frame)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   get_args = getArgs(frame, {parentFirst=true})`
`   input = (get_args[1] or get_args['1']) or ''`
``   input = mw.ustring.gsub(input,"\127\'\"`UNIQ%-%-ref.-QINU`\"\'\127", p.nullstr)``
`   body = p.delete_category(input, {})`
`   get_link = mw.ustring.gmatch( body, "%[%[.-%]%]" )`
`   i = 1 j = 1 while mw.ustring.find(body, "\n=+ *[^\n]* *=+ *\n") and j do`
`       if i>=10 then j = nil end`
`       body = mw.ustring.gsub(body, "\n=+ *[^\n]* *=+ *\n", p.deltitle)`
`       i = i + 1`
`   end`
`   `
`   catbody = mw.ustring.gsub(input,'<',"<")`
`   catbody = mw.ustring.gsub(catbody,'>',">")`
`   category_list = p.find_category(catbody)`
`   `
`   link_str = get_link()`
`   while link_str do`
`       link_url = mw.ustring.sub(link_str, 3, -3)`
`       --^$()%.[]*+-?`
`       link_matcher = mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(link_url, `
`           "%%", "%%%%"), "%)", "%)"), "%-", "%-"), "%^", "%^"), "%$", "%$"), "%(", "%("), "%.", "%."), "%*", "%*"), "%+", "%+"), "%|", "%|")`
`       link_matcher = mw.ustring.gsub(mw.ustring.gsub(link_matcher, "%[", "%[") , "%]", "%]") `
`       link_matcher = mw.ustring.gsub(mw.ustring.gsub(link_matcher, "%{", "%{") , "%}", "%}")`
`       first_split = mw.ustring.find(link_url, "%|", 1) or 0`
`       get_link_inner = mw.ustring.gsub(mw.ustring.sub(link_url, 1, first_split - 1), "%%", "%%%%")`

`       body = mw.ustring.gsub( body, "%[%[" .. link_matcher .. "%]%]", get_link_inner );`
`       link_str = get_link()`
`   end`
`   body = mw.text.trim(body) .. '\n'`
`   `
`   body = mw.ustring.gsub( body, "[Ii][Ss][Bb][Nn]", "ISBN" );`
`   body = mw.ustring.gsub( body, "__[A-Z]+__", p.nullstr );`
`   for i, category in pairs( category_list ) do`
`       body = body .. category .. " "`
`   end`
`   return body`

end

function p.delete_category(source_str, other)

`   local body = source_str`
`   for i, categorys in pairs( p.replace_data ) do`
`       body = mw.ustring.gsub( body, categorys, p.nullstr );      `
`   end`
`   for i, categorys in pairs( other ) do`
`       body = mw.ustring.gsub( body, categorys, p.nullstr );      `
`   end`
`   --Category:使用ISBN魔術連結的頁面`
`   body = mw.ustring.gsub( body, "[Ii][Ss][Bb][Nn]", "ISBN" );`
`   body = mw.text.trim(body) --消除多餘空行`
`   return body`

end

function p.find_category(source_str)

`   local body = ''`
`   input = mw.ustring.gsub(source_str,'<',"<")`
`   input = mw.ustring.gsub(input,'>',">")`
`   cat_counting = {}`
`   for i, category_matcher in pairs( p.replace_data ) do`
`       get_cat = mw.ustring.gmatch( input, category_matcher )`
`       cat_str = get_cat()`
`       while cat_str do`
`           cat_name_it = mw.ustring.find(cat_str, ':', 1, false)`
`           first_split = mw.ustring.find(cat_str, "%|", 1) or -2`
`           `
`           category = mw.ustring.sub(cat_str, cat_name_it + 1, first_split - 1)`
`           cat_counting[category] = category`
`           cat_str = get_cat()`
`       end`
`   end`
`   if mw.ustring.find(body, "[Ii][Ss][Bb][Nn]") then category_list["使用ISBN魔術連結的頁面"] = "使用ISBN魔術連結的頁面" end`
`   cat_list = {}`
`   i=1`
`   for _, category_name in pairs( cat_counting ) do`
`       cat_list[i] = "Category:" .. category_name`

`       i = i + 1`
`   end `
`   return cat_list`

end

function p.test(frame)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   get_args = getArgs(frame, {parentFirst=true})`
`   `
`   text = mw.ustring.gsub( ((get_args[1] or get_args['1']) or ''), '\n', "\n ")`
`   `
`   input = mw.ustring.gsub(text,'<',"<")`
`   input = mw.ustring.gsub(input,'>',">")`

``   --return mw.ustring.gsub( input .. "\n*匹配數:", "\127\'\"`UNIQ%-%-ref.-QINU`\"\'\127", p.nullstr );``
``   input = mw.ustring.gsub( input, "\127\'\"`", p.nullstr );``
``   return mw.ustring.gsub( input, "`\"\'\127", p.nullstr );``

end function p.get_title(frame)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   get_args = getArgs(frame, {parentFirst=true})`
`   for arg_name, arg_value in pairs( get_args ) do`
`       if arg_name == 1 or arg_name == '1' then`
`           --要處理的字串`
`           input = arg_value`
`       elseif arg_name == "title" or  arg_name == "2" or arg_name == 2 then`
`           title = arg_value`
`       elseif arg_name == "keep" or arg_name == "keep_title" or arg_name == "keep title" or`
`           arg_name == "3" or arg_name == 3 then`
`               keep_title = mw.ustring.lower(arg_value)`
`       end`
`   end`
`   return p.find_title(input or '', title or '', keep_title)`

end function p.get_chapter(frame)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   get_args = getArgs(frame, {parentFirst=true})`
`   input = (get_args[1] or get_args['1']) or ''`

`   chapter_begin, chapter_end = mw.ustring.find(input, '#', 1)`
`   if chapter_begin ~= nil then`
`       return mw.ustring.sub(input, chapter_begin + 1)`
`   end`
`   `
`   return ''`

end function p.delnowiki(frame)

`   -- For calling from #invoke.`
`   local get_args`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if not getArgs then`
`           getArgs = require('Module:Arguments').getArgs`
`       end`
`       get_args = getArgs(frame, {parentFirst=true})`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       get_args = frame`
`       if type(get_args) ~= type({}) then get_args = {frame} end`
`   end`
`   local lib_unstrip,input_str=nil,get_args[1] or get_args['1'] or ''`
`   if (input_str ~= nil) then lib_unstrip=require('module:Unstrip') end`
`   return mw.text.unstripNoWiki(input_str)`

end

function p.include(frame)

`   local args, working_frame`
`   if frame == mw.getCurrentFrame() then`
`       -- We're being called via #invoke. The args are passed through to the module`
`       -- from the template page, so use the args that were passed into the template.`
`       if lib_arg.getArgs == nil then lib_arg = require('Module:Arguments') end`
`       args = lib_arg.getArgs(frame, {parentFirst=true})`
`       working_frame = frame`
`   else`
`       -- We're being called from another module or from the debug console, so assume`
`       -- the args are passed in directly.`
`       args = frame`
`       working_frame = mw.getCurrentFrame()`
`       if type(args) ~= type({}) then args = {frame} end`
`   end`

`   local keep_title`
`   local pagename`
`   local full_include = false`
`   local new_args = { args["\\1"] or '' }`
`   for arg_name, arg_value in pairs( args ) do`
`       if arg_name == 1 or arg_name == '1' then`
`           pagename = arg_value`
`       elseif arg_name == "keep" or arg_name == "keep_title" or arg_name == "keep title" then`
`           keep_title = mw.ustring.lower(arg_value)`
`       elseif arg_name == "full_include" or arg_name == "full include" or arg_name == "full" then`
`           if yesno == nil then yesno = require('Module:Yesno') end`
`           full_include = yesno(mw.ustring.lower(arg_value) or 'no')`
`       elseif arg_name == "\\1" then new_args["1"] = arg_value`
`       else new_args[arg_name] = arg_value end`
`   end`
`   local hide_first_title = false`
`   local show_t = true`
`   if keep_title ~= nil then`
`       if yesno == nil then yesno = require('Module:Yesno') end`
`       if keep_title == "hide" then show_t, hide_first_title = false, true`
`       else show_t = yesno(keep_title or "yes") end`
`   else`
`       show_t = true`
`   end`

`   local chaptername = ''`
`   local mark_pos,_  = mw.ustring.find(pagename, '%#') --分析章節語法(#)`
`   if mark_pos then `
`       chaptername = mw.ustring.sub(pagename,mark_pos+1,#pagename) `
`       pagename = mw.ustring.sub(pagename,1,mark_pos-1) `
`   end`
`   local chapterfullname = tostring(chaptername)`
`   local chapterid = 1`
`   mark_pos = mw.ustring.find(chapterfullname, "%_%d+$") --分析章節語法(_)`
`   if mark_pos then `
`       chaptername = mw.ustring.sub(chapterfullname,1,mark_pos-1) `
`       chapterid = tonumber(mw.ustring.sub(chapterfullname,mark_pos+1,#chapterfullname)) or 1`
`   end`
`   local body = ''`
`   `
`   --取得引用頁名稱`
`   local check_includetitle, is_namespace0 = mw.text.trim(pagename), 0`
`   check_includetitle, is_namespace0 = mw.ustring.gsub(check_includetitle, "^%s-:","")`
`   local check_includetitle_namespace = mw.title.new( check_includetitle ).namespace`
`   if check_includetitle_namespace == 0 and is_namespace0 > 0 then --有冒號表示指名名字空間(預設是 Template )`
`       check_includetitle = mw.title.new( check_includetitle )`
`   elseif check_includetitle_namespace == 0 then --沒有冒號表示預設是 Template`
`       check_includetitle = mw.title.new( "Template:" .. check_includetitle )`
`   else --其餘情況就用解析到的名字空間`
`       check_includetitle = mw.title.new( check_includetitle )`
`   end`

`   --建立解析器，解析模板語法`
`   local include_frame = mw.getCurrentFrame()`
`   local include_parent_frame = include_frame:getParent()`
`   if include_parent_frame and not mw.isSubsting() then include_frame = include_parent_frame end`
`   --定位為由呼叫者直接執行`
`   if not mw.isSubsting() then`
`       working_frame = include_frame:newChild{ title = include_frame:getTitle(), args = new_args }`
`   end`

`   local input_str = working_frame:preprocess( "``" ) --析出頁面原碼`
`   input_str =  mw.text.decode(input_str) --解析網頁符號 (&#XXX;)`

`   --去除擴展標籤之前，由於章節(== XX ==)也是一種列入strip的擴展標籤，因此要先儲存起來，避免資料遺失`
`   local htagstrip_table = {}`
`   if not mw.isSubsting() then `
``       local htagstrip_matcher = "\127\'\"`UNIQ%-%-h%-.-QINU`\"\'\127%s-[^\n]-%s-=+%s-\n"``
`       local htagstrip_start, htagstrip_end = mw.ustring.find(input_str, htagstrip_matcher, 1)`
`       `
`       while htagstrip_start do`
`           local temp_htagstrip = mw.ustring.sub(input_str, htagstrip_start, htagstrip_end)`
``           local htagstrip_str = mw.ustring.match(temp_htagstrip, "\127\'\"`UNIQ%-%-h%-.-QINU`\"\'\127")``
``           local htag_tail = mw.ustring.gsub(temp_htagstrip, "\127\'\"`UNIQ%-%-h%-.-QINU`\"\'\127", "")``
`           local begin_, end_ = mw.ustring.find(htag_tail, "=+", 1)`
`           local htag_name = mw.text.trim(mw.ustring.gsub(htag_tail, '=', ''))`
`           htagstrip_table[#htagstrip_table+1] = {`
`               name=mw.text.trim(htag_name),`
`               level=end_ - begin_ + 1,`
`               htagstrip=htagstrip_str`
`           }`
`           htagstrip_start, htagstrip_end = mw.ustring.find(input_str, htagstrip_matcher, htagstrip_end+1)`
`       end`
`   end`
`       `
`   input_str =  mw.text.killMarkers( input_str ) --去除擴展標籤`
`   `
`   if mw.isSubsting() then `
`       local cut_UNIQ = mw.text.split(mw.text.decode(tostring(input_str)),"....UNIQ%-.+%-QINU....")`
`       input_str = table.concat( cut_UNIQ, '' )`
`       return mw.ustring.sub(cut_UNIQ[1],20,30)`
`   end`

`   input_str = '\n\n' .. input_str .. '\n\n' --使規表達式不會在首行和末行出現邊界情況`
`   if TlParLib._getEscapeString == nil then TlParLib = require('Module:TemplateParameters') end`
`   local chapterfullname_regex_pattern = TlParLib._getEscapeString(chapterfullname)`
`   local chaptername_regex_pattern = TlParLib._getEscapeString(chaptername)`

`   local is_htag = false`
`   local function htag_regex(chname) `
`       if mw.isSubsting() then return "\n=+[^=]-" .. chname .. "%s-=+%s-\n" end`
`       return "\n=+%s-" .. chname .. "%s-=+%s-\n" `
`   end`
`   local function spantag_regex(chname) return "%<%s-span[^%>]+id=[%\"%\']" .. chname .. "[%\"%\']" end`
`   local function anchortag_regex(chname) return "%{%{[Aa][Nn][Cc][Hh][Oo][Rr][^%}]-%|%s-" .. chname .. "%s-[%|%}]" end`
`   local function find_chtag(chname, alltext)`
`       is_htag = true`
`       local finded_title_begin, finded_title_end = mw.ustring.find(input_str, htag_regex(chname), 1)`
`       if finded_title_begin then return finded_title_begin, finded_title_end end`
`       is_htag = false`
`       finded_title_begin, finded_title_end = mw.ustring.find(input_str, spantag_regex(chname), 1)`
`       if finded_title_begin then return finded_title_begin, finded_title_end end`
`       finded_title_begin, finded_title_end = mw.ustring.find(input_str, anchortag_regex(chname), 1)`
`       if finded_title_begin then return finded_title_begin, finded_title_end end`
`   end`
`   local next_title_matcher = htag_regex("[^\n]-")`
`   `
`    if mw.isSubsting() then return "check=" .. chapterfullname .. tostring(finded_title_begin) .. tostring(finded_title_end) end`
`   `
`   if mw.text.trim(chapterfullname) ~= '' then`
`       local finded_title_begin, finded_title_end = find_chtag(chapterfullname_regex_pattern, input_str)`
`       local next_title_begin, next_title_end = #input_str, nil; next_title_end = next_title_begin`
`       if finded_title_begin then --匹配全名`
`       else --從非全名尋找`
`           finded_title_begin, finded_title_end =find_chtag(chaptername_regex_pattern, input_str)`
`       end`
`       if chapterid > 1 then`
`           local cutted_title_matcher = htag_regex(chaptername_regex_pattern)`
`           for index = 2, chapterid do`
`               if finded_title_end ~= nil then`
`                   finded_title_begin, finded_title_end = mw.ustring.find(input_str, cutted_title_matcher, finded_title_end + 1)`
`               end`
`           end`
`       end`

`       local finded_title_string = mw.ustring.sub(input_str, finded_title_begin, finded_title_end)`

`       if chapterfullname == "__FIRST_SECTION__" then finded_title_begin = -1;is_htag=true end`
`       local htag_level = nil`
`       if finded_title_begin then --找到了`
`           if chapterfullname == "__FIRST_SECTION__" then`
`               finded_title_string = ''`
`               htag_level = 9007199254740991 --lua max int`
`               finded_title_end = 1`
`           else`
`               if is_htag == false then --分析章節標題`
`                   local re_find = mw.ustring.sub(input_str, 1, finded_title_begin)`
`                   re_find = re_find:reverse()`
`                   local temp_title_begin, temp_title_end = mw.ustring.find(re_find, htag_regex("[^\n]-"), 1)`
`                   if temp_title_begin then finded_title_string = mw.ustring.sub(re_find, temp_title_begin, temp_title_end) end`
`                   finded_title_string = finded_title_string:reverse()`
`               end`
`               --獲得章節標題的級數`
`               if htag_level==nil then`
`                   local begin_, end_ = mw.ustring.find(finded_title_string, "=+", 1)`
`                   htag_level = end_ - begin_ + 1`
`               end`
`           end`
`       `
`           local next_title_find_begin, next_title_find_end = mw.ustring.find(input_str, next_title_matcher, finded_title_end + 1)`
`           local flag = true while next_title_find_begin and flag do`
`               local next_title_find = mw.ustring.sub(input_str, next_title_find_begin, next_title_find_end)`
`               local find_begin_, find_end_ = mw.ustring.find(next_title_find, "=+", 1)`
`               local find_count = find_end_ - find_begin_ + 1`
`               if find_count <= htag_level then `
`                   next_title_begin = next_title_find_begin`
`                   next_title_end = next_title_find_end`
`                   flag = nil`
`               end`
`               next_title_find_begin, next_title_find_end = mw.ustring.find(input_str, next_title_matcher, next_title_find_end + 1)`
`           end`
`           if next_title_begin == nil then next_title_begin = 0 end`
`           `
`           local ch_start = finded_title_end + 1`
`           if is_htag == false then ch_start = finded_title_begin end`
`           body = mw.ustring.sub(input_str, ch_start, next_title_begin - 1)`

`           if show_t == false then --不顯示章節標頭者，移除章節標頭`
`               local i = 1 j = 1 while mw.ustring.find(body, "\n=+ *[^\n]* *=+ *\n") and j do if i>=10 then j = nil end`
`                   body = mw.ustring.gsub(body, "\n=+ *[^\n]* *=+ *\n", p.deltitle)`
`                   i = i + 1`
`               end`
`           end`
`           if hide_first_title==false then`
`               if show_t then body = finded_title_string .. body `
`               else body = p.deltitle(finded_title_string) .. body end`
`           end`
`       end`
`   else`
`       body = input_str`
`   end `
`   if full_include==true then --設定為 "全面引用" 將noinclude等標記移除`
`       --匹配noinclude等標記的正規表達式 (適用於lua的版本)`
`       local include_pattern = "[Ii][Nn][Cc][Ll][Uu][Dd][Ee]"`
`       local only_pattern = "[Oo][Nn][Ll][Yy]"`
`       local no_pattern = "[Nn][Oo]"`
`       local taghead_pattern = "%<[%s/]-"`
`       local tagtail_pattern = "[^%>]-%>"`
`       local tagdel_pattern = " "`
`       body = mw.ustring.gsub(body, taghead_pattern .. no_pattern .. include_pattern .. tagtail_pattern, tagdel_pattern)`
`       body = mw.ustring.gsub(body, taghead_pattern .. only_pattern .. include_pattern .. tagtail_pattern, tagdel_pattern)`
`       body = mw.ustring.gsub(body, taghead_pattern .. include_pattern .. only_pattern .. tagtail_pattern, tagdel_pattern)`
`   end`
`   `
`   local min_title = 0`
`   if show_t == true and not mw.isSubsting() then --顯示章節標頭者，須使章節標頭正常運作`
`       --將擴展標籤 (== XX ==) 擺回去`
`       body = '\n\n' .. body .. '\n\n' --使規表達式不會在首行和末行出現邊界情況`
`       local back_title_start, back_title_end = mw.ustring.find(body, next_title_matcher, 1)`
`       local title_first_match = true`
`       while back_title_start do --逐一搜索標題`
`           local check_title=mw.ustring.sub(body, back_title_start, back_title_end)`
`           check_title=mw.text.trim(mw.ustring.gsub(check_title, '=', ''))`
`           check_title=mw.text.trim(check_title) --確定標題名稱`
`           local check_title_matcher=TlParLib._getEscapeString(check_title)`
`           local htagstrip_table_item={} --獲得原始標題的擴展標籤strip標記符號`
`           for ik, iv in ipairs(htagstrip_table) do`
`               if iv.name == check_title_matcher then`
`                   htagstrip_table_item = iv`
`                   if title_first_match == true then`
`                       min_title = ik`
`                       title_first_match = false`
`                   end`
`                   break`
`               end`
`           end`

`           --將擴展標籤strip標記符號放回內文`
`           if htagstrip_table_item.htagstrip then`
`               body = mw.ustring.gsub(body, "(=+)(%s-" .. check_title_matcher .. "%s-=+)", "%1" .. htagstrip_table_item.htagstrip .. "%2")`
`           end`
`           back_title_start, back_title_end = mw.ustring.find(body, next_title_matcher, back_title_end+1)`
`       end`
`   end`

`   body = mw.text.trim(body)`
`   `
`       if mw.isSubsting() then return chapterfullname .. tostring(#body)  end`
`   --if mw.isSubsting() then return mw.text.killMarkers(body) end`
`   `
``   if min_title > 1 then body = "\127\'\"`UNIQ____TITLE__TAG__PATTERN____QINU`\"\'\127\n" .. body``
`       for _=2,min_title do body = "== ==\n" .. body end `
`   end`
`   working_frame = include_frame:newChild{ title = check_includetitle.fullText, args = new_args }`
`   body = working_frame:preprocess( body )`
``   if min_title > 1 then local start;_,start = mw.ustring.find(body,"\127\'\"`UNIQ____TITLE__TAG__PATTERN____QINU`\"\'\127\n")``
`       if start then body =mw.ustring.sub(body, start+1, #body) end`
`       body = mw.text.trim(body)`
`   end`
`   `
`   return body`

end

function p.find_title(str, title, keep_title)

`   if title == nil then return '' end`
`   if title == '' then return str end`
`   settion_data_begin, settion_data_end = mw.ustring.find(title, "_[0-9]+$", 1)`
`   `
`   find_count = 1`
`   if settion_data_begin ~= nil then `
`       cutted_title = mw.ustring.sub(title, 1, settion_data_begin - 1)`
`       find_count = tonumber(mw.ustring.sub(title, settion_data_begin + 1, settion_data_end))`
`   else`
`       cutted_title = title`
`   end`
`   if find_count < 1 then `
`       find_count = 1`
`       cutted_title = title `
`   end`
`   show_t = true`
`   if keep_title ~= nil then`
`       if yesno == nil then yesno = require('Module:Yesno') end`
`       if keep_title == "hide" then show_t = false end`
`       keep_t = yesno(keep_title)`
`   else`
`       keep_t = false`
`   end`
`   `
``   str = '\n'..mw.text.trim(mw.ustring.gsub(str,"\127\'\"`UNIQ%-%-h%-.-QINU`\"\'\127", p.nullstr))``

`   --^$()%.[]*+-?`
`   title_matcher = mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(title, `
`       "%%", "%%%%"), "%)", "%)"), "%-", "%-"), "%^", "%^"), "%$", "%$"), "%(", "%("), "%.", "%."), "%*", "%*"), "%+", "%+"), "%|", "%|")`
`   title_matcher = mw.ustring.gsub(mw.ustring.gsub(title_matcher, "%[", "%[") , "%]", "%]") `
`   title_matcher = mw.ustring.gsub(mw.ustring.gsub(title_matcher, "%{", "%{") , "%}", "%}")`

`   cutted_title_matcher = mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(mw.ustring.gsub(cutted_title, `
`       "%%", "%%%%"), "%)", "%)"), "%-", "%-"), "%^", "%^"), "%$", "%$"), "%(", "%("), "%.", "%."), "%*", "%*"), "%+", "%+"), "%|", "%|")`
`   cutted_title_matcher = mw.ustring.gsub(mw.ustring.gsub(cutted_title_matcher, "%[", "%[") , "%]", "%]") `
`   cutted_title_matcher = mw.ustring.gsub(mw.ustring.gsub(cutted_title_matcher, "%{", "%{") , "%}", "%}")`

`   cutted_title_matcher = "\n=+ *" .. cutted_title_matcher .. " *=+ *\n"`
`   title_matcher = "\n=+ *" .. title_matcher .. " *=+ *\n"`
`   `
`   finded_title_begin, finded_title_end = mw.ustring.find(str, title_matcher, 1)`
`   if finded_title_begin == nil then`
`       finded_title_begin, finded_title_end = mw.ustring.find(str, cutted_title_matcher, 1)`
`       for index = 2, find_count do`
`           if finded_title_end ~= nil then`
`               finded_title_begin, finded_title_end = mw.ustring.find(str, cutted_title_matcher, finded_title_end + 1)`
`           end`
`       end`
`   end`

`   if title == "__FIRST_SECTION__" then finded_title_begin = -1 end`
`   if finded_title_begin ~= nil then`
`       if title == "__FIRST_SECTION__" then`
`           finded_title = ''`
`           count = 99999`
`           finded_title_end = 1`
`       else`
`           finded_title = mw.ustring.sub(str, finded_title_begin, finded_title_end)`
`           `
`           begin_, end_ = mw.ustring.find(finded_title, "=+", 1)`
`           begin_2, end_2 = mw.ustring.find(finded_title, "=+ *\n", end_ + 1)`
`           count = end_ - begin_ + 1`
`           `
`       end`
`       next_title_matcher = "\n=+ *[^=\n]* *=+ *\n"`
`       next_title_find_begin, next_title_find_end = mw.ustring.find(str, next_title_matcher, finded_title_end + 1)`
`       flag = true while next_title_find_begin and flag do`
`           next_title_find = mw.ustring.sub(str, next_title_find_begin, next_title_find_end)`
`           find_begin_, find_end_ = mw.ustring.find(next_title_find, "=+", 1)`
`           find_count = find_end_ - find_begin_ + 1`
`           if find_count <= count then `
`               next_title_begin = next_title_find_begin`
`               next_title_end = next_title_find_end`
`               flag = nil`
`           end`
`           next_title_find_begin, next_title_find_end = mw.ustring.find(str, next_title_matcher, next_title_find_end + 1)`
`       end`
`       `
`       --title_name = mw.text.trim(mw.ustring.sub(str, end_ + 1, begin_2-1 ))`
`       if next_title_begin == nil then next_title_begin = 0 end`
`       `
`       body = mw.ustring.sub(str, finded_title_end + 1, next_title_begin - 1)`
`       i = 1 j = 1 while mw.ustring.find(body, "\n=+ *[^\n]* *=+ *\n") and j do if i>=10 then j = nil end`
`           body = mw.ustring.gsub(body, "\n=+ *[^\n]* *=+ *\n", p.deltitle)`
`           i = i + 1`
`       end`

`       if show_t then if keep_title then body = finded_title .. body else body = p.deltitle(finded_title) .. body end end`
`       return  mw.text.trim(body .. `[`CAT:使用將淘汰函數的頁面`](https://zh.wikipedia.org/wiki/CAT:使用將淘汰函數的頁面 "wikilink")`)`
`   end`
`   return '' .. `[`CAT:使用將淘汰函數的頁面`](https://zh.wikipedia.org/wiki/CAT:使用將淘汰函數的頁面 "wikilink")

end

return p