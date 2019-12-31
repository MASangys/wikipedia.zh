> 本文内容由[模块:DYKCount](https://zh.wikipedia.org/wiki/模块:DYKCount)转换而来。


local p={} local lib_arg={}; function p.getDYKCount(frame)

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
`   local input_n = args[1] or args['1']`
`   local src = working_frame:preprocess{ text = "``" }`
`   local st,ed = mw.ustring.find(src, "{{%s-produceEncouragement%s-|%s-count%s-=%s-%d+%s-}}" );`
`   if st then`
`       local dyk_template = mw.ustring.sub(src, st,ed)`
`       st,ed = mw.ustring.find(dyk_template, "count%s-=%s-%d+" )`
`       dyk_template = mw.text.decode(mw.ustring.sub(dyk_template, st,ed))`
`       st,ed = mw.ustring.find(dyk_template, "%d+" )`
`       local dyk_count = mw.ustring.sub(dyk_template, st,ed)`
`       return dyk_count;`
`   else`
`       return 0;`
`   end`

end return p;