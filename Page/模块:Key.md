\-- This module implements .

local kbdPrefix =

`   '<kbd class=' ..`
`   '"keyboard-key nowrap" ' ..`
`   'style="border: 1px solid #aaa; ' ..`
`   -- The following is an expansion of `
`   '-moz-border-radius: 2px; -webkit-border-radius: 2px; border-radius: 2px; ' ..`
`   -- The following is an expansion of `
`   '-moz-box-shadow: 1px 2px 2px #ddd; -webkit-box-shadow: 1px 2px 2px #ddd; box-shadow: 1px 2px 2px #ddd; ' ..`
`   'background-color: #f9f9f9; ' ..`
`   -- The following is an expansion of `
`   'background-image: -moz-linear-gradient(top, #eee, #f9f9f9, #eee); background-image: -o-linear-gradient(top, #eee, #f9f9f9, #eee); background-image: -webkit-linear-gradient(top, #eee, #f9f9f9, #eee); background-image: linear-gradient(to bottom, #eee, #f9f9f9, #eee); ' ..`
`   'padding: 0.1em 0.3em; ' ..`
`   'font-family: inherit; ' ..`
`   'font-size: 0.85em;">'`

local kbdSuffix = '</kbd>'

local keyText = {

`   ['caps lock'] = '⇪ Caps Lock',`
`   ['`[`caps``
 ``lock`](https://zh.wikipedia.org/wiki/caps_lock "wikilink")`'] = '⇪ `[`Caps``
 ``Lock`](../Page/大寫鎖定.md "wikilink")`',`
`   ['shift'] = '⇧ Shift',`
`   ['`[`shift`](https://zh.wikipedia.org/wiki/shift_key "wikilink")`'] = '⇧ `[`Shift`](https://zh.wikipedia.org/wiki/换档键 "wikilink")`',`
`   ['enter'] = '↵ Enter',`
`   ['`[`enter`](https://zh.wikipedia.org/wiki/enter_key "wikilink")`'] = '↵ `[`Enter`](../Page/回車鍵.md "wikilink")`',`
`   ['cmd'] = '⌘ Cmd',`
`   ['`[`cmd`](https://zh.wikipedia.org/wiki/command_key "wikilink")`'] = '⌘ `[`Cmd`](https://zh.wikipedia.org/wiki/Command键 "wikilink")`',`
`   ['command'] = '⌘ Command',`
`   ['`[`command`](https://zh.wikipedia.org/wiki/command_key "wikilink")`'] = '⌘ `[`Command`](https://zh.wikipedia.org/wiki/Command键 "wikilink")`',`
`   ['opt'] = '⌥ Opt',`
`   ['`[`opt`](https://zh.wikipedia.org/wiki/option_key "wikilink")`'] = '⌥ `[`Opt`](../Page/Option键.md "wikilink")`',`
`   ['option'] = '⌥ Option',`
`   ['`[`option`](https://zh.wikipedia.org/wiki/option_key "wikilink")`'] = '⌥ `[`Option`](../Page/Option键.md "wikilink")`',`
`   ['tab'] = 'Tab ↹',`
`   ['`[`tab`](https://zh.wikipedia.org/wiki/tab_key "wikilink")`'] = '`[`Tab`](../Page/製表鍵.md "wikilink")` ↹',`
`   ['backspace'] = '← Backspace',`
`   ['`[`backspace`](https://zh.wikipedia.org/wiki/backspace "wikilink")`'] = '← `[`ackspace`](https://zh.wikipedia.org/wiki/后退键 "wikilink")`',`
`   ['win'] = '`[`Windows_logo_-_2012_(black).svg`](https://zh.wikipedia.org/wiki/File:Windows_logo_-_2012_\(black\).svg "fig:Windows_logo_-_2012_(black).svg")` Win',`
`   ['`[`win`](https://zh.wikipedia.org/wiki/windows_key "wikilink")`'] = '`[`Windows_logo_-_2012_(black).svg`](https://zh.wikipedia.org/wiki/File:Windows_logo_-_2012_\(black\).svg "fig:Windows_logo_-_2012_(black).svg")` `[`Win`](../Page/Windows键.md "wikilink")`',`
`   ['menu'] = '≣ Menu',`
`   ['`[`menu`](https://zh.wikipedia.org/wiki/menu_key "wikilink")`'] = '≣ `[`Menu`](https://zh.wikipedia.org/wiki/菜单键 "wikilink")`',`
`   ['up'] = '↑',`
`   ['`[`up`](https://zh.wikipedia.org/wiki/arrow_keys "wikilink")`'] = '`[`↑`](https://zh.wikipedia.org/wiki/方向键 "wikilink")`',`
`   ['down'] = '↓',`
`   ['`[`down`](https://zh.wikipedia.org/wiki/arrow_keys "wikilink")`'] = '`[`↓`](https://zh.wikipedia.org/wiki/方向键 "wikilink")`',`
`   ['left'] = '←',`
`   ['`[`left`](https://zh.wikipedia.org/wiki/arrow_keys "wikilink")`'] = '`[`←`](https://zh.wikipedia.org/wiki/方向键 "wikilink")`',`
`   ['right'] = '→',`
`   ['`[`right`](https://zh.wikipedia.org/wiki/arrow_keys "wikilink")`'] = '`[`→`](https://zh.wikipedia.org/wiki/方向键 "wikilink")`',`
`   ['asterisk'] = '*',`
`   ['hash'] = '#',`
`   ['`[`#`](https://zh.wikipedia.org/wiki/# "wikilink")`'] = '`[`#`](https://zh.wikipedia.org/wiki/井号 "wikilink")`',`
`   ['colon'] = ':',`
`   ['`[`:`](https://zh.wikipedia.org/wiki/: "wikilink")`'] = '`[`:`](../Page/冒号.md "wikilink")`',`
`   ['pipe'] = '|',`
`   ['`[](https://zh.wikipedia.org/wiki/ "wikilink")`'] = '`[](../Page/豎線.md "wikilink")`',`
`   ['semicolon'] = ';',`
`   ['`[`;`](https://zh.wikipedia.org/wiki/; "wikilink")`'] = '`[`;`](https://zh.wikipedia.org/wiki/分号 "wikilink")`',`
`   ['equals'] = '=',`

`   -- Left & right analog sticks.`
`   ['l up'] = 'L↑',`
`   ['l down'] = 'L↓',`
`   ['l left'] = 'L←',`
`   ['l right'] = 'L→',`
`   ['l ne'] = 'L↗',`
`   ['l se'] = 'L↘',`
`   ['l nw'] = 'L↖',`
`   ['l sw'] = 'L↙',`

`   ['r up'] = 'R↑',`
`   ['r down'] = 'R↓',`
`   ['r left'] = 'R←',`
`   ['r right'] = 'R→',`
`   ['r ne'] = 'R↗',`
`   ['r se'] = 'R↘',`
`   ['r nw'] = 'R↖',`
`   ['r sw'] = 'R↙',`

`   -- PlayStation.`
`   ['ex'] = '×',`
`   ['circle'] = '○',`
`   ['square'] = '□',`
`   ['triangle'] = '△',`

`   -- Nintendo 64 and GameCube.`
`   ['c up'] = 'C↑',`
`   ['c down'] = 'C↓',`
`   ['c left'] = 'C←',`
`   ['c right'] = 'C→',`
`   ['c ne'] = 'C↗',`
`   ['c se'] = 'C↘',`
`   ['c nw'] = 'C↖',`
`   ['c sw'] = 'C↙',`

}

local keyAlias = {

`   -- ['alternate name for key (alias)'] = 'name for key used in key table'`
`   ['`[`cmd`](https://zh.wikipedia.org/wiki/cmd_key "wikilink")`'] = '`[`cmd`](https://zh.wikipedia.org/wiki/command键 "wikilink")`',`
`   ['`[`command`](https://zh.wikipedia.org/wiki/cmd_key "wikilink")`'] = '`[`command`](https://zh.wikipedia.org/wiki/command键 "wikilink")`',`
`   ['`[`opt`](https://zh.wikipedia.org/wiki/opt_key "wikilink")`'] = '`[`opt`](https://zh.wikipedia.org/wiki/option键 "wikilink")`',`
`   ['`[`option``
 ``key`](https://zh.wikipedia.org/wiki/option_key "wikilink")`'] = '`[`option`](https://zh.wikipedia.org/wiki/option键 "wikilink")`',`
`   ['`[`option`](https://zh.wikipedia.org/wiki/opt_key "wikilink")`'] = '`[`option`](https://zh.wikipedia.org/wiki/option键 "wikilink")`',`
`   ['`[`win`](https://zh.wikipedia.org/wiki/win_key "wikilink")`'] = '`[`win`](https://zh.wikipedia.org/wiki/windows键 "wikilink")`',`
`   ['*'] = 'asterisk',`
`   ['#'] = 'hash',`
`   [':'] = 'colon',`
`   [';'] = 'semicolon',`
`   ['l-up'] = 'l up',`
`   ['l-down'] = 'l down',`
`   ['l-left'] = 'l left',`
`   ['l-right'] = 'l right',`
`   ['l-ne'] = 'l ne',`
`   ['l-se'] = 'l se',`
`   ['l-nw'] = 'l nw',`
`   ['l-sw'] = 'l sw',`
`   ['r-up'] = 'r up',`
`   ['r-down'] = 'r down',`
`   ['r-left'] = 'r left',`
`   ['r-right'] = 'r right',`
`   ['r-ne'] = 'r ne',`
`   ['r-se'] = 'r se',`
`   ['r-nw'] = 'r nw',`
`   ['r-sw'] = 'r sw',`
`   ['ps x'] = 'ex',`
`   ['ps c'] = 'circle',`
`   ['ps s'] = 'square',`
`   ['ps t'] = 'triangle',`
`   ['c-up'] = 'c up',`
`   ['c-down'] = 'c down',`
`   ['c-left'] = 'c left',`
`   ['c-right'] = 'c right',`
`   ['c-ne'] = 'c ne',`
`   ['c-se'] = 'c se',`
`   ['c-nw'] = 'c nw',`
`   ['c-sw'] = 'c sw',`

}

local Collection = {} Collection.__index = Collection do

`   function Collection:add(item)`
`       if item ~= nil then`
`           self.n = self.n + 1`
`           self[self.n] = item`
`       end`
`   end`
`   function Collection:join(sep)`
`       return table.concat(self, sep)`
`   end`
`   function Collection:sort(comp)`
`       table.sort(self, comp)`
`   end`
`   function Collection.new()`
`       return setmetatable({n = 0}, Collection)`
`   end`

end

local function keyPress(args)

`   local chainNames = {`
`       'chain first',`
`       'chain second',`
`       'chain third',`
`       'chain fourth',`
`       'chain fifth',`
`       'chain sixth',`
`       'chain seventh',`
`       'chain eighth',`
`       'chain ninth',`
`   }`
`   local result = Collection.new()`
`   local chainDefault = args.chain or '+'`
`   for i, id in ipairs(args) do`
`       if i > 1 then`
`           result:add(args[chainNames[i - 1]] or chainDefault)`
`       end`
`       local lc = id:lower()`
`       local text = keyText[lc] or keyText[keyAlias[lc]] or id`
`       result:add(kbdPrefix .. text .. kbdSuffix)`
`   end`
`   return result:join()`

end

local function keypress(frame)

`   -- Called by "``".`
`   -- Using the template doubles the post‐expand include size.`
`   return keyPress(frame:getParent().args)`

end

local function press(frame)

`   -- Called by "{{#invoke:key|press|...}}".`
`   return keyPress(frame.args)`

end

return {

`   keypress = keypress,`
`   press = press,`

}