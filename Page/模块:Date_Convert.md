require('Module:No globals')

local getArgs = require('Module:Arguments').getArgs local p = {}

local function error(template)

`   return '`<strong class="error">`错误：时间格式不正确`</strong>`'`

end

local function time(format, object)

`   return mw.getCurrentFrame():callParserFunction('#time', format, object)`

end

local function convert(input)

`   input = input:gsub(" "," ");`
`   input = input:gsub("%s+"," ");`
`   local y, m, d, suf`
`   local datePatternList = {`
`       -- English date format`
`       {'%d%d? ?%a+[ ,]*%d+', 'Y-m-d'},    -- 26 Oct 1994`
`       {'%a+ ?%d%d?[ ,]+%d+', 'Y-m-d'},    -- Oct 26, 1994`
`       {'%a+[ ,]*%d%d%d%d+', 'Y-m'},       -- Oct 1994`
`       {'%a+ ?%d%d?', 'Y-m-d'},            -- Oct 26`
`       {'%d%d? *%a+', 'Y-m-d'},            -- 26 Oct`
`       -- Slash or hyphen date format`
`       {'%d+/%d%d?/%d+', 'Y-m-d'},         -- 1994/10/26 or 10/26/1994`
`       {'%d+%.%d%d?%.%d+', 'Y-m-d'},       -- 1994.10.26 or 26.10.1994`
`       {'%d%d?/%d%d?', 'Y-m-d'},           -- 10/26`
`       {'%d+%-%d%d?%-%d+', 'Y-m-d'},       -- 1994-10-26 or 26-10-94`
`       {'%d%d%d%d+%-%d%d?', 'Y-m'},        -- 1994-10`
`       {'%d%d%d%d', 'Y'},                  -- 1994`
`   }`

`   y, m, d, suf = string.match(input, '^(%d+)年(%d%d?)月(%d%d?)日(.*)$');`
`   if y then`
`       if #y < 4 then`
`           y = string.rep(0, 4 - #y) .. y`
`       end`
`       return time('Y-m-d', y .. '-' .. m .. '-' .. d) , suf`
`   end`

`   y, m, suf = string.match(input, '^(%d+)年(%d%d?)月(.*)$');`
`   if y then`
`       if #y < 4 then`
`           y = string.rep(0, 4 - #y) .. y`
`       end`
`       return time('Y-m', y .. '-' .. m) , suf`
`   end`

`   y, suf = string.match(input, '^(%d+)年(.*)$');`
`   if y then`
`       if #y < 4 then`
`           y = string.rep(0, 4 - #y) .. y`
`       end`
`       return time('Y', y) , suf`
`   end`

`   for _, value in ipairs(datePatternList) do`
`       local str, suf = string.match(input, '^(' .. value[1] .. ')(.*)$');`
`       if str then`
`           return time(value[2], str), suf`
`       end`
`   end`

`   return time('Y-m-d', 'error')`

end

function p._ChineseDate(args, error)

`   local date, suffix = convert(args[1])`
`   local errorMessage = time('Y-m-d', 'error')`
`   suffix = args.suf and suffix or ''`
`   if string.match(date, '^%d+%-%d%d%-%d%d$') then`
`       return time('Y年Fj日', date):gsub("^0+","") .. suffix`
`   end`
`   if string.match(date, '^%d+%-%d%d$') then`
`       return time('Y年F', date):gsub("^0+","") .. suffix`
`   end`
`   if string.match(date, '^%d+$') then`
`       return time('Y年', date):gsub("^0+","") .. suffix`
`   end`
`   if date == errorMessage and args.error == 'ignore' then`
`       return args[1]`
`   end`
`   --- return error('Chinese_date')`
`   return '`<strong class="error">`错误：时间格式不正确`</strong>`'`

end

function p.ChineseDate(frame)

`   local args = getArgs(frame)`
`   return p._ChineseDate(args)`

end

function p._ISODate(args, error)

`   local returnval, suf = convert(args[1])`
`   local errorMessage = time('Y-m-d', 'error')`

`   if returnval == errorMessage and args.error == 'ignore' then`
`       return args[1]`
`   end`
`   if returnval == errorMessage then`
`       --- return error('ISODate')`
`       return '`<strong class="error">`错误：时间格式不正确`</strong>`'`
`   end`
`   return returnval .. (args.suffix and suf or '')`

end

function p.ISODate(frame)

`   local args = getArgs(frame)`
`   return p._ISODate(args)`

end

return p

[Category:Template:'_.._template_.._'使用錯誤](https://zh.wikipedia.org/wiki/Category:Template:'_.._template_.._'使用錯誤 "wikilink") [Category:Template:Chinese_date使用錯誤](https://zh.wikipedia.org/wiki/Category:Template:Chinese_date使用錯誤 "wikilink") [Category:Template:ISODate使用錯誤](https://zh.wikipedia.org/wiki/Category:Template:ISODate使用錯誤 "wikilink")