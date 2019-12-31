> 本文内容由[模块:Infobox color](https://zh.wikipedia.org/wiki/模块:Infobox_color)转换而来。


\--若程式碼有問題可以直接修改 local p = {} function p.color(frame)

`   function round(num)`
`       return math.floor(num + 0.5)`
`   end`
`   function roundarr(arr)`
`       local i = 1`
`       while arr[i] ~= nil do`
`           arr[i] = round(arr[i])`
`           i = i + 1`
`       end`
`       return arr`
`   end`
`   function getnum(ss, s1)`
`       return '0' .. ({string.gsub(ss or `*`,``   ``s1,`*`)})[1]`
`   end`
`   function setmax(num, max)`
`       num = num * 1`
`       max = getnum(max or '', '%D') * 1`
`       num = num < max and num or max`
`       return num`
`   end`
`   local color = {}`
`   color.setdata = {`
`       function(R, G, B)`
`           color.r = setmax(R, 255)`
`           color.g = setmax(G, 255)`
`           color.b = setmax(B, 255)`
`       end`
`       ,`
`       function(C, M, Y)`
`           color.setdata[1](255 - setmax(C, 255), 255 - setmax(M, 255), 255 - setmax(Y, 255))`
`       end`
`       ,`
`       function(C, M, Y, K)`
`           function CMYKtoCMY(color)`
`               color = setmax(color, 255)`
`               return color * (1 - K / 255) + K`
`           end`
`           K = setmax(K, 255)`
`           color.setdata[2](CMYKtoCMY(C), CMYKtoCMY(M), CMYKtoCMY(Y))`
`       end`
`       ,`
`       function(H, S, V)`
`           function SVFtoPQT(F)`
`               return V * 2.55 * (100 - F * S) / 100`
`           end`

`           H = H % 360`
`           S = setmax(S, 100)`
`           V = setmax(V, 100)`
`           local Hi = math.floor(H / 60)`
`           local F = H % 60 / 60`
`           local W = SVFtoPQT(0)`
`           local P = SVFtoPQT(1)`
`           local Q = SVFtoPQT(F)`
`           local T = SVFtoPQT(1 - F)`
`           if Hi == 0 then`
`               color.setdata[1](W, T, P)`
`           elseif Hi == 1 then`
`               color.setdata[1](Q, W, P)`
`           elseif Hi == 2 then`
`               color.setdata[1](P, W, T)`
`           elseif Hi == 3 then`
`               color.setdata[1](P, Q, W)`
`           elseif Hi == 4 then`
`               color.setdata[1](T, P, W)`
`           else`
`               color.setdata[1](W, P, Q)`
`           end`
`       end`
`       ,`
`       function(HEX)`
`           function HEXtoDEC(h)`
`               return ('0X' .. h) * 1`
`           end`
`           HEX = string.format('%06x', '0X' .. HEX)`
`           HEX = string.sub(HEX, -6, -1)`
`           color.setdata[1](HEXtoDEC(string.sub(HEX,1,2)), HEXtoDEC(string.sub(HEX,3,4)), HEXtoDEC(string.sub(HEX,5,6)))`
`       end     `
`   }`
`   color.changedata = {`
`       function()`
`           return {color.r, color.g, color.b}`
`       end`
`       ,`
`       function()`
`           return {255 - color.r, 255 - color.g, 255 - color.b}`
`       end`
`       ,`
`       function()`
`           local data = color.changedata[2]()`
`           local K = math.min(unpack(data))`
`           function CMYtoCMYK(color)`
`               return (data[color + 1] - K) / (255 - K) * 255`
`           end`
`           return (K == 255) and {0, 0, 0, 255} or {CMYtoCMYK(0), CMYtoCMYK(1), CMYtoCMYK(2), K}`
`       end`
`       ,`
`       function()`
`           local data = color.changedata[1]()`
`           local max = math.max(unpack(data))`
`           local min = math.min(unpack(data))`
`           local H`
`           function RGBtoHSV(color)`
`               return ((data[(color + 1) % 3 + 1] - data[(color + 2) % 3 + 1]) / (max - min) * 60 + 120 * color + 360) % 360`
`           end`
`           if max == min then`
`               H = 0`
`           elseif max == color.r then`
`               H = RGBtoHSV(0)`
`           elseif max == color.g then`
`               H = RGBtoHSV(1)`
`           else`
`               H = RGBtoHSV(2)`
`           end`
`           return {round(H) % 360, (max == 0) and 0 or ((max - min) / max * 100), max / 2.55}`
`       end`
`       ,`
`       function()`
`           return string.format('%02X%02X%02X',unpack(roundarr(color.changedata[1]())))`
`       end`
`   }`
`   local args = require('Module:Arguments').getArgs(frame)`
`   local mod = string.lower(args.mod or 'rgb')`
`   local modint = string.find(mod, 'rgb') and 1 or string.find(mod, 'cmyk') and 3 or string.find(mod, 'hsv') and 4 or string.find(mod, 'hex') and 5 or 1`
`   local arr = {getnum(args[1], modint == 5 and '%X' or '%D'), getnum(args[2], '%D'), getnum(args[3], '%D'), getnum(args[4], '%D')}`
`   color.setdata[modint](unpack(arr))`
`   local hex = color.changedata[5]()`
`   local textcolor = args.textcolor or '#000000'`
`   local title = args.title or '（無標題）'`
`   local source = args.source or ''`
`   local r, g, b = unpack(roundarr(color.changedata[1]()))`
`   local c, m, y, k = unpack(roundarr(color.changedata[3]()))`
`   local h, s, v = unpack(roundarr(color.changedata[4]()))`
`   local ss = '{|class="toccolours" style="text-align:left;float:right;width:300px;clear:right;margin:0em 0em 1em 1em;"\n'`
`   ss = ss .. '|-\n!colspan=3 style="text-align:center;font-size:150%;background-color:#' .. hex .. ';color:' .. textcolor .. ';"|' .. title .. '\n'`
`   ss = ss .. '|-\n!colspan=2|`[`網頁顏色`](https://zh.wikipedia.org/wiki/網頁顏色 "wikilink")`||#' .. hex  .. '\n'`
`   ss = ss .. '|-\n!`[`RGB`](https://zh.wikipedia.org/wiki/RGB "wikilink")<sup>`N`</sup>`||(`[`r`](https://zh.wikipedia.org/wiki/紅色 "wikilink")`, `[`g`](../Page/綠色.md "wikilink")`, `[`b`](../Page/藍色.md "wikilink")`)||(' .. r .. ', ' .. g .. ', ' .. b .. ')\n'`
`   ss = ss .. '|-\n!nowrap|`[`CMYK`](https://zh.wikipedia.org/wiki/CMYK "wikilink")<sup>`N`</sup>`||nowrap|(`[`c`](../Page/青色.md "wikilink")`, `[`m`](https://zh.wikipedia.org/wiki/品紅色 "wikilink")`, `[`y`](https://zh.wikipedia.org/wiki/黃色 "wikilink")`, `[`k`](../Page/黑色.md "wikilink")`)||(' .. c .. ', ' .. m .. ', ' .. y .. ', ' .. k .. ')\n'`
`   ss = ss .. '|-\n!`[`HSV`](https://zh.wikipedia.org/wiki/HSV色彩空間 "wikilink")`||(`[`h`](../Page/色相.md "wikilink")`, `[`s`](https://zh.wikipedia.org/wiki/色度_\(色彩學\) "wikilink")`, `[`v`](https://zh.wikipedia.org/wiki/明度 "wikilink")`)||nowrap|(' .. h .. '°, ' .. s .. '%, ' .. v .. '%)\n'`
`   if source ~= '' then`
`       ss = ss .. '|-\n!colspan=2|資料來源||' .. source  .. '\n'`
`   end`
`   ss = ss .. '|-\n!align=center colspan=3|`<sup>`N`</sup>`：代表`[`值域`](../Page/值域.md "wikilink")介於`0～255之間\n'`
`   ss = ss .. '|-\n|align=center colspan=3|`

<div class="notice metadata NavFrame collapsed" id="spoiler" style="border: 0px;">

<div class="NavHead" style="border: 0px; background: #E4E4E4">

[Nuvola_apps_kcoloredit.svg](https://zh.wikipedia.org/wiki/File:Nuvola_apps_kcoloredit.svg "fig:Nuvola_apps_kcoloredit.svg") \\'\\'\\'注意事項\\'\\'\\'

</div>

<div class="NavContent">

1.  本條目的顏色值可能只是參考，並非共通標準。
2.  本條目包含了使用[顏色標示的內容](https://zh.wikipedia.org/wiki/顏色 "wikilink")，可能會因為不同的閱讀環境而產生差異。參見[網頁親和力](../Page/網頁親和力.md "wikilink")。[色盲](../Page/色盲.md "wikilink")人士或黑白[螢幕使用者需要非色盲人士或使用彩色螢幕來幫助](https://zh.wikipedia.org/wiki/螢幕 "wikilink")，或是使用無障礙軟體幫助。

</div>

</div>

\\n'

`   ss = ss .. '|}'`
`   return ss`

end return p