require('Module:No globals')

local getArgs = require('Module:Arguments').getArgs local p = {}

local function toISO(format, string)

`   return mw.getCurrentFrame():callParserFunction('#time', format, string)`

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
`       {'%d+%.%d%d?%.%d+', 'Y-m-d'},           -- 1994.10.26 or 26.10.1994`
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
`       return toISO('Y-m-d', y .. '-' .. m .. '-' .. d) , suf`
`   end`

`   y, m, suf = string.match(input, '^(%d+)年(%d%d?)月(.*)$');`
`   if y then`
`       if #y < 4 then`
`           y = string.rep(0, 4 - #y) .. y`
`       end`
`       return toISO('Y-m', y .. '-' .. m) , suf`
`   end`

`   y, suf = string.match(input, '^(%d+)年(.*)$');`
`   if y then`
`       if #y < 4 then`
`           y = string.rep(0, 4 - #y) .. y`
`       end`
`       return toISO('Y', y) , suf`
`   end`

`   for _, value in ipairs(datePatternList) do`
`       local str, suf = string.match(input, '^(' .. value[1] .. ')(.*)$');`
`       if str then`
`           return toISO(value[2], str), suf`
`       end`
`   end`

`   return toISO('Y-m-d', 'error')`

end

function p.dates(frame)

`   local args = getArgs(frame)`
`   return p._dates(args)`

end

function p._dates(args)

`   local returnval, suf = convert(args[1])`
`   local errorMessage = toISO('Y-m-d', 'error')`

`   if returnval == errorMessage and args.error == 'ignore' then`
`       return args[1]`
`   end`

`   return returnval .. (args.suffix and suf or '')`

end

function p.dateAndSuffix(string)

`   return convert(string)`

end

return p