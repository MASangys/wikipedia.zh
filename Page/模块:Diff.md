-----

\-- Provides functions for diffing text. -- -- (c) 2007, 2008 Yuri
Takhteyev (yuri@freewisdom.org) -- (c) 2007 Hisham Muhammad -- Adapted
to MediaWiki LUA:
[User:Ebraminio](https://zh.wikipedia.org/wiki/User:Ebraminio "wikilink")
\<ebrahim -at- gnu.org\> -- -- License: MIT/X, see
<http://sputnik.freewisdom.org/en/License>

-----

SKIP_SEPARATOR = true -- a constant

IN = "in"; OUT = "out"; SAME = "same" -- token statuses

\-- Only works for separator is a single unicode character function
special_find(text, separator, start)

` for codepoint in mw.ustring.gcodepoint(text, start) do`
`   if codepoint > 0x2460 then`
`     return start`
`   end`
`   if mw.ustring.find(mw.ustring.char(codepoint), separator) then`
`     return mw.ustring.find(text, separator, start)`
`   end`
`   start = start + 1`
` end`

end

-----

\-- Split a string into tokens. (Adapted from Gavin Kistner's split on
-- <http://lua-users.org/wiki/SplitJoin>. -- -- @param text A string to
be split. -- @param separator \[optional\] the separator pattern
(defaults to any -- white space - %s+). -- @return A list of tokens.

-----

function split(text, separator)

` separator = separator or "%s+"`
` local parts = {}`
` local start = 1`
` local split_start, split_end = special_find(text, separator, start)`
` while split_start do`
`   if split_end then`
`     table.insert(parts, mw.ustring.sub(text, start, split_start-1))`
`   else`
`     local temp_str = mw.ustring.sub(text, start, split_start-1)`
`     if temp_str ~= '' then`
`       table.insert(parts, temp_str)`
`     end`
`   end`

`   if split_end then`
`     table.insert(parts, mw.ustring.sub(text, split_start, split_end))`
`     start = split_end + 1`
`   else`
`     table.insert(parts, mw.ustring.sub(text, split_start, split_start))`
`     start = split_start + 1`
`   end`
`   split_start, split_end = special_find(text, separator, start)`
` end`
` if mw.ustring.sub(text, start) ~= "" then`
`   table.insert(parts, mw.ustring.sub(text, start))`
` end`
` return parts`

end

-----

\-- Derives the longest common subsequence of two strings. This is a
faster -- implementation than one provided by stdlib. Submitted by
Hisham Muhammad. -- The algorithm was taken from: --
<http://en.wikibooks.org/wiki/Algorithm_implementation/Strings/Longest_common_subsequence>
-- -- @param t1 the first string. -- @param t2 the second string. --
@return the least common subsequence as a matrix.

-----

function quick_LCS(t1, t2)

` local m = #t1`
` local n = #t2`

` -- Build matrix on demand`
` local C = {}`
` local setmetatable = setmetatable`
` local mt_tbl = {`
`   __index = function(t, k)`
`     t[k] = 0`
`     return 0`
`   end`
` }`
` local mt_C = {`
`   __index = function(t, k)`
`     local tbl = {}`
`     setmetatable(tbl, mt_tbl)`
`     t[k] = tbl`
`     return tbl`
`   end`
` }`
` setmetatable(C, mt_C)`
` local max = math.max`
` for i = 1, m+1 do`
`   local ci1 = C[i+1]`
`   local ci = C[i]`
`   for j = 1, n+1 do`
`     if t1[i-1] == t2[j-1] then`
`       ci1[j+1] = ci[j] + 1`
`     else`
`       ci1[j+1] = max(ci1[j], ci[j+1])`
`     end`
`   end`
` end`
` return C`

end

-----

\-- Formats an inline diff as HTML, with <ins> and <del> tags. -- --
@param tokens a table of {token, status} pairs. -- @return an HTML
string.

-----

function format_as_html(tokens)

` local diff_buffer = ""`
` local token, status`
` for i, token_record in ipairs(tokens) do`
`   token = mw.text.nowiki(token_record[1])`
`   status = token_record[2]`
`   if status == "in" then`
`     diff_buff`