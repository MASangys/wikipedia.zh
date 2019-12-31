> 本文内容由[模块:Hatnote inline](https://zh.wikipedia.org/wiki/模块:Hatnote_inline)转换而来。


-----

\-- Module:Hatnote-inline -- -- -- -- This module produces hatnote-style links and links to related articles, -- -- but inside a <span>, instead of the

<div>

used by Module:Hatnote. It -- -- implements the  meta-template. --

-----

local mHatnote = require('Module:Hatnote') local mArguments = require('Module:Arguments') local yesno = require('Module:Yesno') local p = {}

function p.hatnoteInline (frame)

`   local args = mArguments.getArgs(frame)`
`   local hatnote = mHatnote.hatnote(frame)`
`   if args.inline == nil or yesno(args.inline, true) then`
`       local subs = {`
`           ['^<div'] = '<span',`
`           ['`

</div>

$'\] = '</span>'

`       }`
`       for k, v in pairs(subs) do hatnote = string.gsub(hatnote, k, v) end`
`   end`
`   return hatnote`

end

p.hatnote = p.hatnoteInline --alias

return p