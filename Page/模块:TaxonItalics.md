local p = {}

\--[========================================================================= Italicize a taxon name appropriately by invoking italicizeTaxonName. The algorithm used is: \* If the name has italic markup at the start or the end, do nothing. \* Else \* Remove (internal) italic markup. \* If the name is made up of four words and the third word is a botanical connecting term, de-italicize the connecting term and add italic markup to the outside of the name. \* Else if the name is made up of three words and the second word is a botanical connecting term or a variant of "cf.", de-italicize the connecting term and add italic markup to the outside of the name. \* Else just add italic markup to the outside of the name. The module also: \* Ensures that the hybrid symbol, ×, and parentheses are not italicized \* Has an option to abbreviate all parts of taxon names other than the last to the first letter (e.g. "Pinus sylvestris var. sylvestris" becomes "P. s. var. sylvestris"). \* Has an option to wikilink the italicized name to the input name. =============================================================================](https://zh.wikipedia.org/wiki/=========================================================================_Italicize_a_taxon_name_appropriately_by_invoking_italicizeTaxonName._The_algorithm_used_is:_*_If_the_name_has_italic_markup_at_the_start_or_the_end,_do_nothing._*_Else_*_Remove_\(internal\)_italic_markup._*_If_the_name_is_made_up_of_four_words_and_the_third_word_is_a_botanical_connecting_term,_de-italicize_the_connecting_term_and_add_italic_markup_to_the_outside_of_the_name._*_Else_if_the_name_is_made_up_of_three_words_and_the_second_word_is_a_botanical_connecting_term_or_a_variant_of_"cf.",_de-italicize_the_connecting_term_and_add_italic_markup_to_the_outside_of_the_name._*_Else_just_add_italic_markup_to_the_outside_of_the_name._The_module_also:_*_Ensures_that_the_hybrid_symbol,_×,_and_parentheses_are_not_italicized_*_Has_an_option_to_abbreviate_all_parts_of_taxon_names_other_than_the_last_to_the_first_letter_\(e.g._"Pinus_sylvestris_var._sylvestris"_becomes_"P._s._var._sylvestris"\)._*_Has_an_option_to_wikilink_the_italicized_name_to_the_input_name._============================================================================= "wikilink")

\--connecting terms in three part names (e.g. Pinus sylvestris var. sylvestris) local cTerms3 = {

`   --subsp.`
`   subspecies = "subsp.",`
`   ["subsp."] = "subsp.",`
`   subsp = "subsp.",`
`   ["ssp."] = "subsp.",`
`   ssp = "subsp.",`
`   --var.`
`   varietas = "var.",`
`   ["var."] = "var.",`
`   var = "var.",`
`   --subvar.`
`   subvarietas = "subvar.",`
`   ["subvar."] = "subvar.",`
`   subvar = "subvar.",`
`   --f.`
`   forma = "f.",`
`   ["f."] = "f.",`
`   f = "f.",`
`   --subf.`
`   subforma = "subf.",`
`   ["subf."] = "subf.",`
`   subf = "subf."`
`   }`

\--connecting terms in two part names (e.g. Pinus sect. Pinus) local cTerms2 = {

`   --subg.`
`   subgenus = "subg.",`
`   ["subg."] = "subg.",`
`   subg = "subg.",`
`   --supersect.`
`   supersection = "supersect.",`
`   ["supersect."] = "supersect.",`
`   supersect = "supersect.",`
`   --sect.`
`   section = "sect.",`
`   ["sect."] = "sect.",`
`   sect = "sect.",`
`   --subsect.`
`   subsection = "subsect.",`
`   ["subsect."] = "subsect.",`
`   subsect = "subsect.",`
`   --ser.`
`   series = "ser.",`
`   ["ser."] = "ser.",`
`   ser = "ser.",`
`   --subser.`
`   subseries = "subser.",`
`   ["subser."] = "subser.",`
`   subser = "subser.",`
`   --cf.`
`   cf = "cf.",`
`   ["cf."] = "cf.",`
`   ["c.f."] = "cf."`
`   }`

\--[========================================================================= Main function to italicize a taxon name appropriately. =============================================================================](https://zh.wikipedia.org/wiki/=========================================================================_Main_function_to_italicize_a_taxon_name_appropriately._============================================================================= "wikilink") function p.main(frame)

`   local name = frame.args[1] or ''`
`   local linked = frame.args['linked'] == 'yes'`
`   local abbreviated = frame.args['abbreviated'] == 'yes'`
`   return p.italicizeTaxonName(name, linked, abbreviated)`

end

\--[========================================================================= Utility function to abbreviate an input string to its first character followed by ".". Both "×" and an HTML entity at the start of the string are skipped over in determining first character, as is an opening parenthesis, which causes a closing parenthesis to be included. =============================================================================](https://zh.wikipedia.org/wiki/=========================================================================_Utility_function_to_abbreviate_an_input_string_to_its_first_character_followed_by_"."._Both_"×"_and_an_HTML_entity_at_the_start_of_the_string_are_skipped_over_in_determining_first_character,_as_is_an_opening_parenthesis,_which_causes_a_closing_parenthesis_to_be_included._============================================================================= "wikilink") function p.abbreviate(str)

`   local result = ""`
`   local hasParentheses = false`
`   if mw.ustring.len(str) < 2 then`
`       --single character strings are left unchanged`
`       result = str`
`   else`
`       --skip over an opening parenthesis that could be present at the start of the string`
`       if mw.ustring.sub(str,1,1) == "(" then`
`           hasParentheses = true`
`           result = "(" `
`           str = mw.ustring.sub(str,2,mw.ustring.len(str))`
`       end`
`       --skip over a hybrid symbol that could be present at the start of the string`
`       if mw.ustring.sub(str,1,1) == "×" then`
`           result = "×" `
`           str = mw.ustring.sub(str,2,mw.ustring.len(str))`
`       end`
`       --skip over an HTML entity that could be present at the start of the string`
`       if mw.ustring.sub(str,1,1) == "&" then`
`           local i,dummy = mw.ustring.find(str,";",2,plain)`
`           result = result .. mw.ustring.sub(str,1,i)`
`           str = mw.ustring.sub(str,i+1,mw.ustring.len(str))`
`       end`
`       --if there's anything left, reduce it to its first character plus ".",`
`       --adding the closing parenthesis if required`
`       if str ~= "" then `
`           result = result .. mw.ustring.sub(str,1,1) .. "."`
`           if hasParentheses then result = result .. ")" end`
`       end`
`   end`
`   return result`

end

\--[========================================================================= The function which does the italicization. =============================================================================](https://zh.wikipedia.org/wiki/=========================================================================_The_function_which_does_the_italicization._============================================================================= "wikilink") function p.italicizeTaxonName(name, linked, abbreviated)

`   local italMarker = "''"`
`   -- begin by tidying the input name: trim; replace any use of the HTML`
`   -- italic tags by Wikimedia markup; replace any alternatives to the hybrid`
`   -- symbol by the symbol itself; prevent the hybrid symbol being treated as`
`   -- a 'word' by converting a following space to the HTML entity`
`   name = string.gsub(mw.text.trim(name), "`

</?i>

", italMarker)

`   name = string.gsub(string.gsub(name, "×", "×"), "×", "×")`
`   name = string.gsub(name, "`

</?span.->

", "") -- remove any span markup

`   name = string.gsub(name, "× ", "× ")`
`   -- now italicize and abbreviate if required`
`   local result = name`
`   if name ~= '' then`
`       if string.sub(name,1,2) == "`*`"``   ``or``   ``string.sub(name,-2)``   ``==``   ``"`*`" then`
`           -- do nothing if the name already has italic markers at the start or end`
`       else`
`           name = string.gsub(name, "''", "") -- first remove any internal italics`
`           local words = mw.text.split(name, " ", true)`
`           if #words == 4 and cTerms3[words[3]] then`
`               -- the third word of a four word name is a connecting term`
`               -- ensure the connecting term isn't italicized`
`               words[3] = '`<span style="font-style:normal;">`' .. cTerms3[words[3]] .. '`</span>`'`
`               if abbreviated then`
`                   words[1] = p.abbreviate(words[1])`
`                   words[2] = p.abbreviate(words[2])`
`               end`
`               result = words[1] .. " " .. words[2] .. " " .. words[3] .. " " .. words[4]`
`           elseif #words == 3 and cTerms2[words[2]] then`
`               -- the second word of a three word name is a connecting term`
`               -- ensure the connecting term isn't italicized`
`               words[2] = '`<span style="font-style:normal;">`' .. cTerms2[words[2]] .. '`</span>`'`
`               if abbreviated then`
`                   words[1] = p.abbreviate(words[1])`
`               end`
`               result = words[1] .. " " .. words[2] .. " " .. words[3]`
`           else`
`               -- not a name as above; only deal with abbreviation`
`               if abbreviated then`
`                   if #words > 1 then`
`                       result = p.abbreviate(words[1])`
`                       for i = 2, #words-1, 1 do`
`                           result = result .. " " .. p.abbreviate(words[i])`
`                       end`
`                       result = result .. " " .. words[#words]`
`                   end`
`               else`
`                   result = name`
`               end`
`           end`
`           -- deal with any hybrid symbol as it should not be italicized`
`           result = string.gsub(result, "×", '`<span style="font-style:normal;">`×`</span>`')`
`            -- deal with any parentheses as they should not be italicized`
`           result = string.gsub(string.gsub(result,"%(",'`<span style="font-style:normal;">`(`</span>`'),"%)",'`<span style="font-style:normal;">`)`</span>`')`
`          -- add outside markup`
`           if linked then`
`               if result ~= name then`
`                   result = "`[`"``   ``..``   ``italMarker``   ``..``   ``result``   ``..``   ``italMarker``   ``..``   ``"`](https://zh.wikipedia.org/wiki/"_.._name_.._" "wikilink")`"`
`               else`
`                   result = italMarker .. "`[`"``   ``..``   ``name``   ``..``   ``"`](https://zh.wikipedia.org/wiki/"_.._name_.._" "wikilink")`" .. italMarker`
`               end`
`           else`
`               result = italMarker .. result .. italMarker`
`           end`
`       end`
`   end`
`   return result`

end

return p