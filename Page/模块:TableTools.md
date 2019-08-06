\--[------------------------------------------------------------------------------------ -- TableTools -- -- -- -- This module includes a number of functions for dealing with Lua tables. -- -- It is a meta-module, meant to be called from other Lua modules, and should -- -- not be called directly from \#invoke. -- ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_TableTools_--_--_--_--_This_module_includes_a_number_of_functions_for_dealing_with_Lua_tables._--_--_It_is_a_meta-module,_meant_to_be_called_from_other_Lua_modules,_and_should_--_--_not_be_called_directly_from_#invoke._--_------------------------------------------------------------------------------------_-- "wikilink")

local libraryUtil = require('libraryUtil')

local p = {}

\-- Define often-used variables and functions. local floor = math.floor local infinity = math.huge local checkType = libraryUtil.checkType

\--[------------------------------------------------------------------------------------ -- isPositiveInteger -- -- This function returns true if the given value is a positive integer, and false -- if not. Although it doesn't operate on tables, it is included here as it is -- useful for determining whether a given table key is in the array part or the -- hash part of a table. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_isPositiveInteger_--_--_This_function_returns_true_if_the_given_value_is_a_positive_integer,_and_false_--_if_not._Although_it_doesn't_operate_on_tables,_it_is_included_here_as_it_is_--_useful_for_determining_whether_a_given_table_key_is_in_the_array_part_or_the_--_hash_part_of_a_table._------------------------------------------------------------------------------------_-- "wikilink") function p.isPositiveInteger(v)

`   if type(v) == 'number' and v >= 1 and floor(v) == v and v < infinity then`
`       return true`
`   else`
`       return false`
`   end`

end

\--[------------------------------------------------------------------------------------ -- isNan -- -- This function returns true if the given number is a NaN value, and false -- if not. Although it doesn't operate on tables, it is included here as it is -- useful for determining whether a value can be a valid table key. Lua will -- generate an error if a NaN is used as a table key. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_isNan_--_--_This_function_returns_true_if_the_given_number_is_a_NaN_value,_and_false_--_if_not._Although_it_doesn't_operate_on_tables,_it_is_included_here_as_it_is_--_useful_for_determining_whether_a_value_can_be_a_valid_table_key._Lua_will_--_generate_an_error_if_a_NaN_is_used_as_a_table_key._------------------------------------------------------------------------------------_-- "wikilink") function p.isNan(v)

`   if type(v) == 'number' and tostring(v) == '-nan' then`
`       return true`
`   else`
`       return false`
`   end`

end

\--[------------------------------------------------------------------------------------ -- shallowClone -- -- This returns a clone of a table. The value returned is a new table, but all -- subtables and functions are shared. Metamethods are respected, but the returned -- table will have no metatable of its own. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_shallowClone_--_--_This_returns_a_clone_of_a_table._The_value_returned_is_a_new_table,_but_all_--_subtables_and_functions_are_shared._Metamethods_are_respected,_but_the_returned_--_table_will_have_no_metatable_of_its_own._------------------------------------------------------------------------------------_-- "wikilink") function p.shallowClone(t)

`   local ret = {}`
`   for k, v in pairs(t) do`
`       ret[k] = v`
`   end`
`   return ret`

end

\--[------------------------------------------------------------------------------------ -- removeDuplicates -- -- This removes duplicate values from an array. Non-positive-integer keys are -- ignored. The earliest value is kept, and all subsequent duplicate values are -- removed, but otherwise the array order is unchanged. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_removeDuplicates_--_--_This_removes_duplicate_values_from_an_array._Non-positive-integer_keys_are_--_ignored._The_earliest_value_is_kept,_and_all_subsequent_duplicate_values_are_--_removed,_but_otherwise_the_array_order_is_unchanged._------------------------------------------------------------------------------------_-- "wikilink") function p.removeDuplicates(t)

`   checkType('removeDuplicates', 1, t, 'table')`
`   local isNan = p.isNan`
`   local ret, exists = {}, {}`
`   for i, v in ipairs(t) do`
`       if isNan(v) then`
`           -- NaNs can't be table keys, and they are also unique, so we don't need to check existence.`
`           ret[#ret + 1] = v`
`       else`
`           if not exists[v] then`
`               ret[#ret + 1] = v`
`               exists[v] = true`
`           end`
`       end `
`   end`
`   return ret`

end

\--[------------------------------------------------------------------------------------ -- numKeys -- -- This takes a table and returns an array containing the numbers of any numerical -- keys that have non-nil values, sorted in numerical order. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_numKeys_--_--_This_takes_a_table_and_returns_an_array_containing_the_numbers_of_any_numerical_--_keys_that_have_non-nil_values,_sorted_in_numerical_order._------------------------------------------------------------------------------------_-- "wikilink") function p.numKeys(t)

`   checkType('numKeys', 1, t, 'table')`
`   local isPositiveInteger = p.isPositiveInteger`
`   local nums = {}`
`   for k, v in pairs(t) do`
`       if isPositiveInteger(k) then`
`           nums[#nums + 1] = k`
`       end`
`   end`
`   table.sort(nums)`
`   return nums`

end

\--[------------------------------------------------------------------------------------ -- affixNums -- -- This takes a table and returns an array containing the numbers of keys with the -- specified prefix and suffix. For example, for the table -- {a1 = 'foo', a3 = 'bar', a6 = 'baz'} and the prefix "a", affixNums will -- return {1, 3, 6}. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_affixNums_--_--_This_takes_a_table_and_returns_an_array_containing_the_numbers_of_keys_with_the_--_specified_prefix_and_suffix._For_example,_for_the_table_--_{a1_=_'foo',_a3_=_'bar',_a6_=_'baz'}_and_the_prefix_"a",_affixNums_will_--_return_{1,_3,_6}._------------------------------------------------------------------------------------_-- "wikilink") function p.affixNums(t, prefix, suffix)

`   checkType('affixNums', 1, t, 'table')`
`   checkType('affixNums', 2, prefix, 'string', true)`
`   checkType('affixNums', 3, suffix, 'string', true)`

`   local function cleanPattern(s)`
`       -- Cleans a pattern so that the magic characters ()%.[]*+-?^$ are interpreted literally.`
`       s = s:gsub('([%(%)%%%.%[%]%*%+%-%?%^%$])', '%%%1')`
`       return s`
`   end`

`   prefix = prefix or ''`
`   suffix = suffix or ''`
`   prefix = cleanPattern(prefix)`
`   suffix = cleanPattern(suffix)`
`   local pattern = '^' .. prefix .. '([1-9]%d*)' .. suffix .. '$'`

`   local nums = {}`
`   for k, v in pairs(t) do`
`       if type(k) == 'string' then         `
`           local num = mw.ustring.match(k, pattern)`
`           if num then`
`               nums[#nums + 1] = tonumber(num)`
`           end`
`       end`
`   end`
`   table.sort(nums)`
`   return nums`

end

\--\[\[

-----

\-- numData -- -- Given a table with keys like ("foo1", "bar1", "foo2", "baz2"), returns a table -- of subtables in the format -- { \[1\] = {foo = 'text', bar = 'text'}, \[2\] = {foo = 'text', baz = 'text'} } -- Keys that don't end with an integer are stored in a subtable named "other". -- The compress option compresses the table so that it can be iterated over with -- ipairs.

-----

\--\]\] function p.numData(t, compress)

`   checkType('numData', 1, t, 'table')`
`   checkType('numData', 2, compress, 'boolean', true)`
`   local ret = {}`
`   for k, v in pairs(t) do`
`       local prefix, num = mw.ustring.match(tostring(k), '^([^0-9]*)([1-9][0-9]*)$')`
`       if num then`
`           num = tonumber(num)`
`           local subtable = ret[num] or {}`
`           if prefix == '' then`
`               -- Positional parameters match the blank string; put them at the start of the subtable instead.`
`               prefix = 1`
`           end`
`           subtable[prefix] = v`
`           ret[num] = subtable`
`       else`
`           local subtable = ret.other or {}`
`           subtable[k] = v`
`           ret.other = subtable`
`       end`
`   end`
`   if compress then`
`       local other = ret.other`
`       ret = p.compressSparseArray(ret)`
`       ret.other = other`
`   end`
`   return ret`

end

\--[------------------------------------------------------------------------------------ -- compressSparseArray -- -- This takes an array with one or more nil values, and removes the nil values -- while preserving the order, so that the array can be safely traversed with -- ipairs. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_compressSparseArray_--_--_This_takes_an_array_with_one_or_more_nil_values,_and_removes_the_nil_values_--_while_preserving_the_order,_so_that_the_array_can_be_safely_traversed_with_--_ipairs._------------------------------------------------------------------------------------_-- "wikilink") function p.compressSparseArray(t)

`   checkType('compressSparseArray', 1, t, 'table')`
`   local ret = {}`
`   local nums = p.numKeys(t)`
`   for _, num in ipairs(nums) do`
`       ret[#ret + 1] = t[num]`
`   end`
`   return ret`

end

\--[------------------------------------------------------------------------------------ -- sparseIpairs -- -- This is an iterator for sparse arrays. It can be used like ipairs, but can -- handle nil values. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_sparseIpairs_--_--_This_is_an_iterator_for_sparse_arrays._It_can_be_used_like_ipairs,_but_can_--_handle_nil_values._------------------------------------------------------------------------------------_-- "wikilink") function p.sparseIpairs(t)

`   checkType('sparseIpairs', 1, t, 'table')`
`   local nums = p.numKeys(t)`
`   local i = 0`
`   local lim = #nums`
`   return function ()`
`       i = i + 1`
`       if i <= lim then`
`           local key = nums[i]`
`           return key, t[key]`
`       else`
`           return nil, nil`
`       end`
`   end`

end

\--[------------------------------------------------------------------------------------ -- size -- -- This returns the size of a key/value pair table. It will also work on arrays, -- but for arrays it is more efficient to use the \# operator. ------------------------------------------------------------------------------------ --](https://zh.wikipedia.org/wiki/------------------------------------------------------------------------------------_--_size_--_--_This_returns_the_size_of_a_key/value_pair_table._It_will_also_work_on_arrays,_--_but_for_arrays_it_is_more_efficient_to_use_the_#_operator._------------------------------------------------------------------------------------_-- "wikilink") function p.size(t)

`   checkType('size', 1, t, 'table')`
`   local i = 0`
`   for k in pairs(t) do`
`       i = i + 1`
`   end`
`   return i`

end

return p