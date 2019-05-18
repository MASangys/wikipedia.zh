local p = {} --p.Weighted_page_size
修改自module:Template:Weighted_page_size function
p.Weighted_page_size( titleText )

`   if not titleText then`
`       return 0`
`   end`
`   local title = mw.title.new( titleText )`
`   if not title then`
`       return 0`
`   end`
`   local content = title:getContent()`
`   if not content then`
`       return 0`
`   end`
`   local chars = mw.ustring.len( content )`
`   return math.floor( chars * 3.7 + 0.5 )`

end

function p.main( frame )

`   local titleText = frame.args[1]`
`   local size`
`   local icontext`
`   size = p.Weighted_page_size(titleText)`

`   if size<3000 then`
`       icontext='`[`Qsicon_Ueberarbeiten.svg`](https://zh.wikipedia.org/wiki/File:Qsicon_Ueberarbeiten.svg "fig:Qsicon_Ueberarbeiten.svg")`'`
`   elseif size<10000 then   `
`       icontext='`[`Qsicon_inArbeit.svg`](https://zh.wikipedia.org/wiki/File:Qsicon_inArbeit.svg "fig:Qsicon_inArbeit.svg")`'`
`   elseif size<30000 then  `
`       icontext='`[`YesCheck_BlueLinear.svg`](https://zh.wikipedia.org/wiki/File:YesCheck_BlueLinear.svg "fig:YesCheck_BlueLinear.svg")`'`
`   else    `
`       icontext='`[`YesCheck_GreenLinear.svg`](https://zh.wikipedia.org/wiki/File:YesCheck_GreenLinear.svg "fig:YesCheck_GreenLinear.svg")`'`
`   end`
`   return icontext`

end --產生優良條目, 特色條目的圖示 function p.FA_GA_icon(frame)

`   local return_string = ""`
`   if not frame then`
`       return_string = ""`
`   else`
`       local titletext = frame.args[1]`
`       -- Weighted_page_size() > 0, 表示條目存在`
`       if p.Weighted_page_size(titletext) > 0 then`
`           local text = mw.ustring.lower(mw.title.new(titletext):getContent())`
`           if text == '' or text == nil then`
`           else    `
`               local GotFA = string.find(text, "``", 1, true)`
`               local GotGA = string.find(text, "``", 1, true)`
`               if GotGA then`
`                   return_string = '`[`Symbol_support_vote.svg`](https://zh.wikipedia.org/wiki/File:Symbol_support_vote.svg "fig:Symbol_support_vote.svg")` '`
`               else`
`                   if GotFA then`
`                       return_string = '`[`Cscr-featured.png`](https://zh.wikipedia.org/wiki/File:Cscr-featured.png "fig:Cscr-featured.png")` '`
`                   end              `
`               end    `
`           end    `
`       end    `
`   end   `
`   return return_string`

end

return p