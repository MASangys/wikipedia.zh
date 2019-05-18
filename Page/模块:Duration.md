\--[ sumHMS | 7211 | units = minutes, seconds}} will return "120 minutes
and 11 seconds".  will return "7211 seconds"
](https://zh.wikipedia.org/wiki/this_module_is_meant_for_language-dependant_time_calculations._ATM_it_exports_a_single_function:_sumHMS,_which_accepts_unnamed_\(aka_"order_based"\)_arguments_in_the_form_ssss_\(any_number_of_digits\)_or_"mm:ss"_or_"hh:mm:ss:,_converts_them_all_to_seconds,_sums_them_up,_and_returns_the_output_string_describing_the_total_duration,_using_mw.getContentLanguage\(\):formatDuration\(\)_an_optional_paramter,_"units"_tells_the_formatting_function_which_units_to_use:_e.g._{{invoke:Duration "wikilink")

local function sumHMS( args )

`   local total = 0`
`   `
`   function oneMore( st )`
`       if type( st ) ~= 'string' then return end`
`       local t, ar = 0, { st:match( "^%s*(%d*):?(%d*):?(%d*)%s*$" ) }`
`       for _, v in ipairs( ar ) do`
`           local n = tonumber( v )`
`           if n then t = t * 60 + n end`
`       end`
`       total = total + t`
`   end`

`   for _, v in ipairs( args ) do oneMore( v ) end`
`   local units`
`   if args.units then `
`       units = {}`
`       for unit in mw.ustring.gmatch( args.units, "%w+" ) do -- this silliness should be replaced with mw.text.split("%W+") once mw.text is available. `
`           table.insert( units, unit ) `
`       end`
`   end`
`   return mw.language.getContentLanguage():formatDuration( total, units )`

end

return {

`   sumHMS = function( frame ) return sumHMS( frame.args ) end,`

}