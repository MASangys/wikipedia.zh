> 本文内容由[模块:Transclude random subpage](https://zh.wikipedia.org/wiki/模块:Transclude_random_subpage)转换而来。


\-- This module implements [Template:Transclude random subpage](https://zh.wikipedia.org/wiki/Template:Transclude_random_subpage "wikilink"). It is alpha software.

local p = {}

local mRandom = require('Module:Random') local currentTitle = mw.title.getCurrentTitle()

\-- tracking function added by BHG 29/04/2019 -- called as subPageTrackingCategories(pages, args.max) local function subPageTrackingCategories(pages, max)

`   local retval = "";`
`   local availableSubPageCount = 0;`
`   local i;`
`   local thispagetitle = mw.title.getCurrentTitle().text`

`   -- don't track DYK etc, only selected/featured articles, biogs etc`
`   if ((string.find(pages.subpage, "/[sS]elected") == -1) and (string.find(pages.subpage, "/[fF]eatured") == -1)) then`
`       return retval`
`   end`
`   -- no tracking unless we are in Portal namespace`
`   if (mw.title.getCurrentTitle().nsText ~= "Portal") then`
`       return ""`
`   end`

\-- no tracking if this is a subpage

`   if ((mw.ustring.match(thispagetitle, "/") ~= nil) and (thispagetitle ~= "AC/DC")) then`
`       return retval`
`   end`
`   `
`   if (max == nil) then`
`       return ""`
`   end`

`   -- limit checking to prevent Lua overload`
`   local myMaxCheck = 60`
`   if tonumber(max) < myMaxCheck then`
`       myMaxCheck = tonumber(max)`
`   end`
`   for i=1,myMaxCheck do `
`       local aSubPage = mw.title.new(pages.subpage .. '/' .. i)`
`       if (aSubPage.exists) then`
`           availableSubPageCount = availableSubPageCount + 1;`
`       end`
`   end`
`   if myMaxCheck >= tonumber(max) then`
`       if (availableSubPageCount < tonumber(max)) then`
`           retval = retval .. ""`
`       elseif (availableSubPageCount > tonumber(max)) then`
`           retval = retval .. ""`
`       end`
`   end`
`   -- before categorising, check what type of subpage we are categorising, and if detected, categorise images separately`
`   local subpageType = "subpages" -- generic type`
`   local subpageName = pages.subpage`
`   subpageName = mw.ustring.gsub(subpageName, "^[^/]*/", "")`
`   subpageName = mw.ustring.lower(subpageName)`
`   if ((mw.ustring.find(subpageName, "picture", 1, true) ~= nil) or`
`       (mw.ustring.find(subpageName, "image", 1, true) ~= nil) or`
`       (mw.ustring.find(subpageName, "panorama", 1, true) ~= nil)) then`
`       subpageType = "image subpages"`
`   end`
`   if (availableSubPageCount < 2) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 5) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 10) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 15) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 20) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 25) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 30) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 40) then`
`       retval = retval .. ""`
`   elseif (availableSubPageCount <= 50) then`
`       retval = retval .. ""`
`   else`
`       retval = retval .. ""`
`   end`
`   return retval;`

end

local function getRandomNumber(max)

`   -- gets a random integer between 1 and max; max defaults to 1`
`   return mRandom.number{max or 1}`

end

local function expandArg(args, key)

`   -- Emulate how unspecified template parameters appear in wikitext. If the`
`   -- specified argument exists, its value is returned, and if not the argument`
`   -- name is returned inside triple curly braces.`
`   local val = args[key]`
`   if val then`
`       return val`
`   else`
`       return string.format('``', key)`
`   end`

end

local function getPages(args)

`   local pages = {}`
`   pages.root = args.rootpage or currentTitle.prefixedText`
`   pages.subpage = pages.root .. '/' .. expandArg(args, 'subpage')`
`   pages.random = pages.subpage .. '/' .. getRandomNumber(args.max)`
`   return pages`

end

local function tryExpandTemplate(frame, title, args)

`   local success, result = pcall(frame.expandTemplate, frame, {title = title, args = args})`
`   if success then`
`       return result`
`   else`
`       local msg = string.format(`
`           '`<strong class="error">`The page "`[`%s`](https://zh.wikipedia.org/wiki/%s "wikilink")`" does not exist.`</strong>`',`
`           title`
`       )`
`       if mw.title.getCurrentTitle().namespace == 100 then -- is in the portal namespace`
`           msg = msg .. ''`
`       end`
`       return msg`
`   end`

end

local function getRandomSubpageContent(frame, pages)

`   return tryExpandTemplate(`
`       frame,`
`       pages.random`
`   )`

end

function p._main(args, frame)

`   frame = frame or mw.getCurrentFrame()`
`   local pages = getPages(args)`

`   local ret = {}`
`   ret[#ret + 1] = getRandomSubpageContent(frame, pages)`

`   return table.concat(ret, '\n') .. subPageTrackingCategories(pages, args.max, args.header)`

end

function p._nominate(args, frame)

`   frame = frame or mw.getCurrentFrame()`
`   local pages = getPages(args)`
`   `
`   local ret = {}`
`   ret[#ret + 1] = getRandomSubpageContent(frame, pages)`

`   return table.concat(ret, '\n') .. subPageTrackingCategories(pages, args.max, args.header)`

end

local function makeInvokeFunction(func)

`   return function (frame)`
`       local args = require('Module:Arguments').getArgs(frame, {`
`           trim = false,`
`           removeBlanks = false,`
`           wrappers = {`
`               'Template:Transclude random subpage',`
`               'Template:Transclude random subpage/BHG-test',`
`           }`
`       })`
`       return func(args, frame)`
`   end`

end

p.main = makeInvokeFunction(p._main)

return p

[Category:Random_portal_component_with_no_value_for_max](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_no_value_for_max "wikilink") [Category:Random_portal_component_with_fewer_available_subpages_than_specified_max](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_fewer_available_subpages_than_specified_max "wikilink") [Category:Random_portal_component_with_more_available_subpages_than_specified_max](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_more_available_subpages_than_specified_max "wikilink") [Category:Random_portal_component_with_less_than_2_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_less_than_2_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_2–5_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_2–5_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_6–10_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_6–10_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_11–15_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_11–15_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_16–20_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_16–20_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_21–25_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_21–25_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_26–30_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_26–30_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_31–40_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_31–40_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_41–50_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_41–50_available_"_.._subpageType_.._" "wikilink") [Category:Random_portal_component_with_over_50_available_"_.._subpageType_.._"](https://zh.wikipedia.org/wiki/Category:Random_portal_component_with_over_50_available_"_.._subpageType_.._" "wikilink") [Category:Portals_needing_attention](https://zh.wikipedia.org/wiki/Category:Portals_needing_attention "wikilink")