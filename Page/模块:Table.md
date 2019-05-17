local p = {}

\-- A number of functions, most of them imported from
[wikt:Module:table](https://zh.wikipedia.org/wiki/wikt:Module:table "wikilink"),
a -- spinoff of
[Module:TableTools](https://zh.wikipedia.org/wiki/Module:TableTools "wikilink").

local libraryUtil = require('libraryUtil') local checkType =
libraryUtil.checkType local checkTypeMulti = libraryUtil.checkTypeMulti

local function _check(funcName, expectType)

`   if type(expectType) == "string" then`
`       return function(argIndex, arg, nilOk)`
`           checkType(funcName, argIndex, arg, expectType, nilOk)`
`       end`
`   else`
`       return function(argIndex, arg, expectType, nilOk)`
`           if type(expectType) == "table" then`
`               checkTypeMulti(funcName, argIndex, arg, expectType, nilOk)`
`           else`
`               checkType(funcName, argIndex, arg, expectType, nilOk)`
`           end`
`       end`
`   end`

end

\--[Returns a list of the keys in a table, sorted using either a default
comparison function or a custom keySort
function.](https://zh.wikipedia.org/wiki/Returns_a_list_of_the_keys_in_a_table,_sorted_using_either_a_default_comparison_function_or_a_custom_keySort_function. "wikilink")
function p.keysToList(t, keySort, checked)

`   if not checked then`
`       local check = _check('keysToList')`
`       check(1, t, 'table')`
`       check(2, keySort, 'function', true)`
`   end`
`   `
`   local list = {}`
`   local index = 1`
`   for key, value in pairs(t) do`
`       list[index] = key`
`       index = index + 1`
`   end`
`   `
`   -- Place numbers before strings, otherwise sort using <.`
`   if not keySort then`
`       keySort = function(item1, item2)`
`           -- "number" < "string", so numbers will be sorted before strings.`
`           local type1, type2 = type(item1), type(item2)`
`           if type1 ~= type2 then`
`               return type1 < type2`
`           else`
`               return item1 < item2`
`           end`
`       end`
`   end`
`   `
`   table.sort(list, keySort)`
`   `
`   return list`

end

\--[Iterates through a table, with the keys sorted using the keysToList
function. If there are only numerical keys, sparseIpairs is probably
more
efficient.](https://zh.wikipedia.org/wiki/Iterates_through_a_table,_with_the_keys_sorted_using_the_keysToList_function._If_there_are_only_numerical_keys,_sparseIpairs_is_probably_more_efficient. "wikilink")
function p.sortedPairs(t, keySort)

`   local check = _check('keysToList')`
`   check(1, t, 'table')`
`   check(2, keySort, 'function', true)`
`   `
`   local list = p.keysToList(t, keySort, true)`
`   `
`   local i = 0`
`   return function()`
`       i = i + 1`
`       local key = list[i]`
`       if key ~= nil then`
`           return key, t[key]`
`       else`
`           return nil, nil`
`       end`
`   end`

end

\--[Returns true if all keys in the table are consecutive integers
starting at 1.
--](https://zh.wikipedia.org/wiki/Returns_true_if_all_keys_in_the_table_are_consecutive_integers_starting_at_1._-- "wikilink")
function p.isArray(t)

`   checkType("isArray", 1, t, "table")`
`   `
`   local i = 0`
`   for k, v in pairs(t) do`
`       i = i + 1`
`       if t[i] == nil then`
`           return false`
`       end`
`   end`
`   return true`

end

\-- { "a", "b", "c" } -\> { a = 1, b = 2, c = 3 } function
p.invert(array)

`   checkType("invert", 1, array, "table")`
`   `
`   local map = {}`
`   for i, v in ipairs(array) do`
`       map[v] = i`
`   end`
`   `
`   return map`

end

\--\[\[

`   { "a", "b", "c" } -> { ["a"] = true, ["b"] = true, ["c"] = true }`

\--\]\] function p.listToSet(t)

`   checkType("listToSet", 1, t, "table")`
`   `
`   local set = {}`
`   for _, item in ipairs(t) do`
`       set[item] = true`
`   end`
`   `
`   return set`

end

\--[Recursive deep copy
function](https://zh.wikipedia.org/wiki/Recursive_deep_copy_function "wikilink")
function p.deepCopy(orig, noMetatable)

`   local orig_type = type(orig)`
`   local copy`
`   if orig_type == 'table' then`
`       copy = {}`
`       for orig_key, orig_value in pairs(orig) do`
`           copy[p.deepCopy(orig_key, noMetatable)] = p.deepCopy(orig_value, noMetatable)`
`       end`
`       if not noMetatable then`
`           setmetatable(copy, p.deepCopy(getmetatable(orig)))`
`       end`
`   else -- number, string, boolean, etc`
`       copy = orig`
`   end`
`   return copy`

end

\--[Concatenates all values in the table that are indexed by a number,
in order. sparseConcat{ a, nil, c, d } =\> "acd" sparseConcat{ nil, b,
c, d } =\>
"bcd"](https://zh.wikipedia.org/wiki/Concatenates_all_values_in_the_table_that_are_indexed_by_a_number,_in_order._sparseConcat{_a,_nil,_c,_d_}_=\>_"acd"_sparseConcat{_nil,_b,_c,_d_}_=\>_"bcd" "wikilink")
function p.sparseConcat(t, sep, i, j)

`   local list = {}`
`   `
`   local list_i = 0`
`   for _, v in require("Module:TableTools").sparseIpairs(t) do`
`       list_i = list_i + 1`
`       list[list_i] = v`
`   end`
`   `
`   return table.concat(list, sep, i, j)`

end

return p