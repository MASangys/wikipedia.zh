> 本文内容由[模块:Int](https://zh.wikipedia.org/wiki/模块:Int)转换而来。


\--修改自[mw:Module:Int](https://zh.wikipedia.org/wiki/mw:Module:Int "wikilink") local int = {}

function int.int(frame)

`   local args = frame.args`
`   local pargs = (frame:getParent() or {}).args`
`   local arguments = {}`
`   local arguments_subst = ''`
`   local arguments_qqx = ''`
`   for k, v in pairs(pargs) do`
`       local n = tonumber(k) or 0`
`       if (n >= 2) then`
`           arguments[n - 1] = mw.text.trim(v)`
`           arguments_subst = arguments_subst .. '|' .. mw.text.trim(v)`
`           arguments_qqx = arguments_qqx .. ',' .. mw.text.trim(v)`
`       else`
`       end`
`   end`
`   if mw.isSubsting() then`
`       return '``'`
`   else`
`       local msg = mw.message.new(mw.text.trim(args[1]), arguments)`
`       local lang = pargs['lang'] or args['lang'] or frame:callParserFunction{ name = 'int', args = {'Conversionname'} }`
`       if (frame:callParserFunction{ name = 'int', args = {'Lang'} } == 'qqx') then`
`           return '(' .. args[1] .. arguments_qqx .. ')'`
`       else`
`           if (msg:exists() and not msg:isDisabled()) then`
`               local msgstr = msg:inLanguage(lang):plain()`
`               return frame:preprocess(msgstr)`
`           else`
`               return '⧼' .. args[1] .. '⧽'`
`           end`
`       end`
`   end`

end

return int