local p = {} function p.invoke ()

`   local arg = mw.getCurrentFrame().args`
`   local str`
`   if arg[1] then`
`       str = string.upper(arg[1])`
`   else`
`       str = "C"`
`   end`
`   local oo, pp, aa, nn, ee, rr, ttt`
`   local tt = 0`
`   local cc = 1`
`   for i = 1,string.len(str) do`
`       local c = string.char(string.byte(str,i))`
`       if c == "O" then`
`           oo = 1`
`       elseif c == "P" then`
`           pp = 1`
`       elseif c == "A" then`
`           aa = 1`
`       elseif c == "N" then`
`           nn = 1`
`       elseif c == "E" then`
`           ee = 1`
`       elseif c == "R" then`
`           rr = 1`
`       elseif c == "T" then`
`           tt = tt + 1`
`       elseif c == "C" then`
`           cc = 1`
`       elseif c == "X" then`
`           cc = 0`
`       elseif string.byte(c)<58 then`
`           d = string.byte(c) - 48`
`           if d > -1 then`
`               ttt = d`
`           end`
`       end`
`   end`
`   if ttt then`
`       tt = ttt`
`   end`
`   local out_str = ""`
`   if cc == 1 then`
`       if oo then`
`           out_str = out_str .. `[<span style="color: #888888;">`※`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_#888888;"\>※\</span\> "wikilink")
`       end`
`       if pp then`
`           out_str = out_str .. `[<span style="color: Orange;">`★`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_Orange;"\>★\</span\> "wikilink")
`       end`
`       if aa then`
`           out_str = out_str .. `[<span style="color: Green;">`◆`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_Green;"\>◆\</span\> "wikilink")
`       end`
`       if rr then`
`           out_str = out_str .. `[<span style="color: Purple;">`●`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_Purple;"\>●\</span\> "wikilink")
`       end`
`       if nn then`
`           out_str = out_str .. `[<span style="color: red;">`♥`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_red;"\>♥\</span\> "wikilink")
`       end`
`       if ee then`
`           out_str = out_str .. `[<span style="color: blue;">`■`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_blue;"\>■\</span\> "wikilink")
`       end`
`       if tt then`
`           -- 以下显示效果为：♠，♠♠♠`
`           for i = 1,tt do`
`               out_str = out_str .. `[`♠`](https://zh.wikipedia.org/wiki/♠ "wikilink")
`               end`
`           --以下显示效果为：♠，3♠`

\-- if i\>1 then -- out_str = out_str .. i -- end -- out_str = out_str .. [♠](https://zh.wikipedia.org/wiki/♠ "wikilink")

`       end`
`       if out_str == "" then`
`           out_str = `[<span style="color: Blue;">`－`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_Blue;"\>－\</span\> "wikilink")
`       end`
`   else`
`       out_str = `[<span style="color: Red;">`X`</span>](https://zh.wikipedia.org/wiki/\<span_style="color:_Red;"\>X\</span\> "wikilink")
`   end`
`   return out_str`

end return p