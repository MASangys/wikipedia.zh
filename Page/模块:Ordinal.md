> 本文内容由[模块:Ordinal](https://zh.wikipedia.org/wiki/模块:Ordinal)转换而来。


\--[This template will add the appropriate ordinal suffix to a given integer. Please do not modify this code without applying the changes first at Module:Ordinal/sandbox and testing at Module:Ordinal/sandbox/testcases and Module talk:Ordinal/sandbox/testcases.](https://zh.wikipedia.org/wiki/This_template_will_add_the_appropriate_ordinal_suffix_to_a_given_integer._Please_do_not_modify_this_code_without_applying_the_changes_first_at_Module:Ordinal/sandbox_and_testing_at_Module:Ordinal/sandbox/testcases_and_Module_talk:Ordinal/sandbox/testcases. "wikilink")

local p = {}

local yesno = require('Module:Yesno') -- boolean value interpretation

\--\[\[ This function converts an integer value into a numeral followed by ordinal indicator. The output string might contain HTML tags.

Usage: {{\#invoke:Ordinal|ordinal|1=|2=|sup=}} {{\#invoke:Ordinal|ordinal}} - uses the caller's parameters

Parameters

`   1: Any number or string.`
`   2: Set to "d" if the module should display "d" instead of "nd" and "rd".`
`   sup: Set to yes/no to toggle superscript ordinal suffix.`

\]\] function p.ordinal(frame)

`   local args = frame.args`
`   if args[1] == nil then`
`       args = frame:getParent().args`
`   end`
`   if args[1] == nil then`
`       args[1] = "``"`
`   end`
`   return p._ordinal(args[1], (args[2] == 'd'), yesno(args.sup))`

end

function p._ordinal(n, d, sup)

`   local x = tonumber(mw.ustring.match(n, "(%d*)%W*$"))`
`   local suffix = "th"`
`   -- If tonumber(n) worked:`
`   if x then`
`       local mod10 = math.abs(x) % 10`
`       local mod100 = math.abs(x) % 100`
`       if     mod10 == 1 and mod100 ~= 11 then`
`           suffix = "st"`
`       elseif mod10 == 2 and mod100 ~= 12 then`
`           if d then suffix = "d" else suffix = "nd" end`
`       elseif mod10 == 3 and mod100 ~= 13 then`
`           if d then suffix = "d" else suffix = "rd" end`
`       end`
`   end`
`   if sup then`
`       suffix = "`<sup>`"``   ``..``   ``suffix``   ``..``   ``"`</sup>`"`
`   end`
`   return n .. suffix`

end

return p