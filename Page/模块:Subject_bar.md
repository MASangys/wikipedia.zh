> 本文内容由[模块:Subject bar](https://zh.wikipedia.org/wiki/模块:Subject_bar)转换而来。


local getPortalImage = require('Module:Portal').image

local p = {}

local function getArgNums(prefix, args)

`   -- Returns a table containing the numbers of the arguments that exist for the specified prefix. For example, if the`
`   -- prefix was 'data', and 'data1', 'data2', and 'data5' exist, it would return {1, 2, 5}.`
`   local nums = {}`
`   for k, v in pairs(args) do`
`       local num = tostring(k):match('^' .. prefix .. '([1-9]%d*)$')`
`       if num then table.insert(nums, tonumber(num)) end`
`   end`
`   table.sort(nums)`
`   return nums`

end

local function makeHorizontalRule()

`   local row = mw.html.create('tr')`
`   row`
`       :tag('td')`
`           :attr('colspan', '2')`
`           :tag('hr', {selfClosing = true})`
`   return tostring(row)`

end

local function makeItem(image, text)

`   local root = mw.html.create('li')`
`   root`
`       :css('float', 'left')`
`       :css('margin-left', '0.3em')`
`       :css('height', '3.6em')`
`       :tag('span')`
`           :css('display', 'inline-block')`
`           :css('margin-right', '0.3em')`
`           :css('width', '30px')`
`           :css('line-height', '3.6em')`
`           :css('text-align', 'center')`
`           :wikitext(image)`
`           :done()`
`       :tag('span')`
`           :css('display', 'inline-block')`
`           :css('width', '11em')`
`           :css('vertical-align', 'middle')`
`           :wikitext(text)`
`   return tostring(root)`

end

local function makeRow(items, heading, subheading, options)

`   if #items < 1 then return end`
`   local swapHeadingSize = type(options) == 'table' and options.swapHeadingSize or false`
`   local row = mw.html.create('tr')`
`   row`
`       :tag('td')`
`           :css('width', '175px')`
`           :tag('span')`
`               :css('font-size', swapHeadingSize and '90%' or '125%')`
`               :wikitext(heading)`
`               :done()`
`           :tag('br', {selfClosing = true})`
`               :done()`
`           :tag('span')`
`               :css('font-size', swapHeadingSize and '125%' or '90%')`
`               :wikitext(subheading)`
`   local list = row:tag('td'):css('text-align', 'left'):tag('ul')`
`   for i, item in ipairs(items) do`
`       local image = item[1]`
`       local text = item[2]`
`       list`
`           :wikitext(makeItem(image, text))`
`   end`
`   return tostring(row)`

end

local function makeNumberedRow(prefix, args, heading, subheading, getItemValsFunc, options)

`   if args[prefix] then`
`       args[prefix .. '1'] = args[prefix]`
`   end`
`   local argNums = getArgNums(prefix, args)`
`   local items = {}`
`   for i, argNum in ipairs(argNums) do`
`       local image, text = getItemValsFunc(args[prefix .. tostring(argNum)])`
`       table.insert(items, {image, text})`
`   end`
`   return makeRow(items, heading, subheading, options)`

end

function p._main(args)

`   local rows = {}`

`   -- Get the book row text.`
`   local bookHeading = "`**[`书籍`](https://zh.wikipedia.org/wiki/Wikipedia:Books "wikilink")**`"`
`   local bookSubheading = '查看或订购条目收藏'`
`   local function getBookItemVals(book)`
`       local image = '`[`Office-book.svg`](https://zh.wikipedia.org/wiki/File:Office-book.svg "fig:Office-book.svg")`'`
`       local text = mw.ustring.format("`**[`%s`](https://zh.wikipedia.org/wiki/Book:%s "wikilink")**`", book, book)`
`       return image, text`
`   end`
`   local bookRow = makeNumberedRow('book', args, bookHeading, bookSubheading, getBookItemVals)`
`   table.insert(rows, bookRow)`

`   -- Get the portal row text`
`   local portalHeading = "`**[`主题`](../Page/Portal:首頁.md "wikilink")**`"`
`   local portalSubheading = '访问相关主题'`
`   local function getPortalItemVals(portal)`
`       local image = mw.ustring.format('`[`%s`](https://zh.wikipedia.org/wiki/File:%s "fig:%s")`', getPortalImage{portal})`
`       local text = mw.ustring.format("`**[`%s主题`](https://zh.wikipedia.org/wiki/Portal:%s "wikilink")**`", portal, portal)`
`       return image, text`
`   end`
`   local portalRow = makeNumberedRow('portal', args, portalHeading, portalSubheading, getPortalItemVals)`
`   table.insert(rows, portalRow)`

`   -- Get the sister projects row text.`
`   local sisters = {`
`       {arg = 'commons', image = 'Commons-logo.svg', prefix = 'commons', display = '媒体', from = '维基共享资源'},`
`       {arg = 'species', image = 'Wikispecies-logo.svg', prefix = 'wikispecies', display = '物种', from = '维基物种'},`
`       {arg = 'voy', image = 'Wikivoyage-Logo-v3-icon.svg', prefix = 'voy', display = '旅行指南', from = '维基导游'},`
`       {arg = 'n', image = 'Wikinews-logo.svg', prefix = 'wikinews', display = '新闻报道', from = '维基新闻'},`
`       {arg = 'wikt', image = 'Wiktionary-logo-v2.svg', prefix = 'wiktionary', postfix = 'Chinese', display = '定义', from = '维基词典'},`
`       {arg = 'b', image = 'Wikibooks-logo.svg', prefix = 'wikibooks', display = '教科书', from = '维基教科书'},`
`       {arg = 'q', image = 'Wikiquote-logo.svg', prefix = 'wikiquote', display = '语录', from = '维基语录'},`
`       {arg = 's', image = 'Wikisource-logo.svg', prefix = 'wikisource', display = '源文本', from = '元维基'},`
`       {arg = 'v', image = 'Wikiversity-logo.svg', prefix = 'wikiversity', display = '学习资源', from = '维基学院'},`
`       {arg = 'd', image = 'Wikidata-logo.svg', prefix = 'wikidata', display = '数据', from = '维基数据'},`
`       {arg = 'spoken', image = 'Sound-icon.svg', prefix = 'spoken wikipedia', display = '聆听此页面', from = '有声维基百科'},`
`   }`
`   local sisterItems = {}`
`   for i, t in ipairs(sisters) do`
`       if args[t.arg] then`
`           -- Get the image value.`
`           local image = mw.ustring.format('`[`%s`](https://zh.wikipedia.org/wiki/File:%s "fig:%s")`', t.image)`
`           -- Get the text value.`
`           local prefix = t.prefix`
`           local search = args[t.arg .. '-search'] or mw.title.getCurrentTitle().text`
`           local postfix = t.postfix`
`           postfix = postfix and ('#' .. postfix) or ''`
`           local display = t.display`
`           local from = t.from`
`           local text = mw.ustring.format(`
`               '`[`%s`](https://zh.wikipedia.org/wiki/%s:Special:Search/%s%s "wikilink")
`来自%s',`
`               prefix,    search,    postfix, display, from`
`           )`
`           if t.arg == 'spoken' then`
`                text = mw.ustring.format('%s于%s`
[<File:%s>](https://zh.wikipedia.org/wiki/File:%s "fig:File:%s")`',`
`                               display, from, args[t.arg] `
`               )       `
`           end`
`           -- Add the values to the items table.`
`           table.insert(sisterItems, {image, text})`
`       end`
`   end`
`   local sisterHeading = "维基百科"`
`   local sisterSubheading = "`**[`姊妹计划`](https://zh.wikipedia.org/wiki/Wikipedia:姊妹计划 "wikilink")**`"`
`   local sisterRow = makeRow(sisterItems, sisterHeading, sisterSubheading, {swapHeadingSize = true})`
`   table.insert(rows, sisterRow)`

`   -- Make the table.`
`   local root = mw.html.create('table')`
`   root`
`       :attr('role', 'presentation')`
`       :addClass('noprint')`
`       :addClass('navbox')`
`       :addClass('metadata')`
`       :addClass('plainlist')`
`       :css('background-color', '#f9f9f9')`
`       :css('border', '1px solid #aaa')`
`       :css('clear', 'both')`
`       :css('margin-bottom', '0.5em')`
`       :css('margin-top', '0.5em')`
`       :wikitext(table.concat(rows, makeHorizontalRule()))`

`   return tostring(root)`

end

function p.main(frame)

`   -- If called via #invoke, use the args passed into the invoking template, or the args passed to #invoke if any exist. Otherwise`
`   -- assume args are being passed directly in from the debug console or from another Lua module.`
`   local origArgs`
`   if frame == mw.getCurrentFrame() then`
`       origArgs = frame:getParent().args`
`       for k, v in pairs(frame.args) do`
`           origArgs = frame.args`
`           break`
`       end`
`   else`
`       origArgs = frame`
`   end`
`   -- Remove blank arguments.`
`   local args = {}`
`   for k, v in pairs(origArgs) do`
`       if v ~= '' then`
`           args[k] = v`
`       end`
`   end`
`   return p._main(args)`

end

return p