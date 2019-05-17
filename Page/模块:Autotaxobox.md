\--[This module provides support to the automated taxobox system – the
templates Automatic taxobox, Speciesbox, Subspeciesbox, Infraspeciesbox,
etc. In particular it provides a way of traversing the taxonomic
hierarchy encoded in taxonomy templates (templates with names of the
form "Template:Taxonomy/TAXON_NAME") without causing template expansion
depth
errors.](https://zh.wikipedia.org/wiki/This_module_provides_support_to_the_automated_taxobox_system_–_the_templates_Automatic_taxobox,_Speciesbox,_Subspeciesbox,_Infraspeciesbox,_etc._In_particular_it_provides_a_way_of_traversing_the_taxonomic_hierarchy_encoded_in_taxonomy_templates_\(templates_with_names_of_the_form_"Template:Taxonomy/TAXON_NAME"\)_without_causing_template_expansion_depth_errors. "wikilink")

local p = {}

\--[=========================================================================
Limit the maximum depth of a taxonomic hierarchy that can be traversed;
avoids excessive processing time and protects against incorrectly set up
hierarchies, e.g. loops.
=============================================================================](https://zh.wikipedia.org/wiki/=========================================================================_Limit_the_maximum_depth_of_a_taxonomic_hierarchy_that_can_be_traversed;_avoids_excessive_processing_time_and_protects_against_incorrectly_set_up_hierarchies,_e.g._loops._============================================================================= "wikilink")
local MaxSearchLevels = 100

function p.getMaxSearchLevels()

`   return MaxSearchLevels`

end

\--[taxoboxColour|TAXON}}
=============================================================================](https://zh.wikipedia.org/wiki/==========================_taxoboxColour_================================_Determines_the_correct_colour_for_a_taxobox,_by_searching_up_the_taxonomic_hierarchy_from_the_supplied_taxon_for_the_first_taxon_\(other_than_'incertae_sedis'\)_that_sets_a_taxobox_colour._It_is_assumed_that_a_valid_taxobox_colour_is_defined_using_CSS_rgb\(\)_syntax._If_no_taxon_that_sets_a_taxobox_colour_is_found,_then_'transparent'_is_returned_unless_the_taxonomic_hierarchy_is_too_deep,_when_the_error_colour_is_returned._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.taxoboxColour(frame)

`   local currTaxon = frame.args[1] or ''`
`   local i = 1 -- count levels processed`
`   local searching = currTaxon ~= '' -- still searching for a colour?`
`   local foundICTaxon = false -- record whether 'incertae sedis' found`
`   local colour = '' -- default is no colour`
`   while searching and i <= MaxSearchLevels do`
`       local plainCurrTaxon = p.stripExtra(currTaxon) -- remove trailing text after /`
`       if plainCurrTaxon == 'incertae sedis' then`
`           foundICTaxon = true`
`       else`
`           local possibleColour = frame:expandTemplate{ title = 'Template:Taxobox colour', args = { plainCurrTaxon } }`
`           if string.sub(possibleColour,1,3) == 'rgb' then`
`               colour = possibleColour`
`               searching = false`
`           end`
`       end`
`       if searching then`
`           local ok, parent = p.getTaxonInfoItem(frame, currTaxon, 'parent')`
`           if ok and parent ~= '' then`
`               currTaxon = parent`
`               i = i + 1`
`           else`
`               searching = false -- run off the top of the hierarchy or tried to use non-existent taxonomy template`
`           end`
`       end`
`   end`
`   if colour ~= '' then`
`       return colour`
`   elseif foundICTaxon then`
`       return frame:expandTemplate{ title = 'Template:Taxobox colour', args = { 'incertae sedis' } }`
`   elseif searching then`
`       -- hierarchy exceeds MaxSearchLevels levels`
`       return frame:expandTemplate{ title = 'Template:Taxobox/Error colour', args = { } }`
`   else`
`       return 'transparent'`
`   end`

end

\--[taxoboxList|TAXON |display_taxa = the number of taxa \*above\*
TAXON to force to be displayed |authority = taxonomic authority for
TAXON |parent_authority = taxonomic authority for TAXON's parent
|gparent_authority = taxonomic authority for TAXON's grandparent
|ggparent_authority = taxonomic authority for TAXON's greatgrandparent
|ggparent_authority = taxonomic authority for TAXON's
greatgreatgrandparent |bold_first = 'bold' to bold TAXON in its row }}
=============================================================================](https://zh.wikipedia.org/wiki/===========================_taxoboxList_=================================_Returns_the_rows_of_taxa_in_an_automated_taxobox,_based_on_the_taxonomic_hierarchy_for_the_supplied_taxon._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.taxoboxList(frame)

`   local currTaxon = frame.args[1] or ''`
`   local displayN = (tonumber(frame.args['display_taxa']) or 1)+1`
`   local auth = frame.args['authority'] or ''`
`   local parentAuth = frame.args['parent_authority'] or ''`
`   local gParentAuth = frame.args['gparent_authority'] or ''`
`   local ggParentAuth = frame.args['ggparent_authority'] or ''`
`   local gggParentAuth = frame.args['gggparent_authority'] or ''`
`   local boldFirst = frame.args['bold_first'] or 'link' -- values 'link' or 'bold'`
`   local taxonTable = p.makeTable(frame, currTaxon)`
`   local res = ''`
`   local force = ''`
`   -- display all taxa above possible 10th level ancestor`
`   for i = taxonTable.n, 11, -1 do`
`       res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[i], fc = tostring(displayN >= i) } }`
`   end`
`   -- display 10th level ancestor, if it exists`
`   if taxonTable.n >= 10 then`
`       force =  tostring(displayN >= 10 or (displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[9] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[8] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[7] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[6] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[5] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[4] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[3] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true') )`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[10], fc = force } }`
`   end`
`   -- display 9th level ancestor, if it exists`
`   if taxonTable.n >= 9 then`
`       force =  tostring(displayN >= 9 or (displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[8] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[7] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[6] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[5] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[4] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[3] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true') )`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[9], fc = force } }`
`   end`
`   -- display 8th level ancestor, if it exists`
`   if taxonTable.n >= 8 then`
`       force =  tostring(displayN >= 8 or (displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[7] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[6] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[5] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[4] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[3] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true') )`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[8], fc = force } }`
`   end`
`   -- display 7th level ancestor, if it exists`
`   if taxonTable.n >= 7 then`
`       force =  tostring(displayN >= 7 or (displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[6] } }== 'true'  and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[5] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[4] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[3] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true') )`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[7], fc = force } }`
`   end`
`   -- display 6th level ancestor, if it exists`
`   if taxonTable.n >= 6 then`
`       force =  tostring(displayN >= 6 or (displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[5] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[4] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[3] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true') )`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[6], fc = force } }`
`   end`
`   -- display greatgreatgrandparent, if it exists`
`   if taxonTable.n >= 5 then`
`       force =  tostring(displayN >= 5 or (displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[4] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[3] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true') )`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[5], authority = gggParentAuth, fc = force } }`
`   end`
`   -- display greatgrandparent, if it exists; force the display if an infrataxon is below`
`   if taxonTable.n >= 4 then`
`       force =  tostring(displayN >= 4 or (displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[3] } } == 'true' and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true') )`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[4], authority = ggParentAuth, fc = force } }`
`   end`
`   -- display grandparent, if it exists; force the display if an infrataxon is below`
`   if taxonTable.n >= 3 then`
`       force =  tostring(displayN >= 3 or displayN>0 and`
`                    frame:expandTemplate{ title = 'Template:Infrataxon', args = { taxonTable[2] } } == 'true')`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[3], authority = gParentAuth, fc = force } }`
`   end`
`   -- display parent, if it exists`
`   if taxonTable.n >= 2 then`
`       res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[2], authority = parentAuth, fc = tostring(displayN >= 2) } }`
`   end`
`   -- display target taxon`
`   res = res .. frame:expandTemplate{ title = 'Template:Taxobox/showtaxon', args = { taxonTable[1], authority = auth, fc = 'true', format = boldFirst  } }`
`   return res`

end

\--[taxonomyList|TAXON}}
=============================================================================](https://zh.wikipedia.org/wiki/==========================_taxonomyList_=================================_Returns_the_cells_of_the_taxonomy_table_displayed_on_"Template:Taxonomy...."_pages._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.taxonomyList(frame)

`   local currTaxon = frame.args[1] or ''`
`   if currTaxon == '' then return '| ||ERROR: no taxon supplied\n|-' end`
`   local taxonTable = p.makeTable(frame, currTaxon)`
`   local rankTable = p.getRankTable()`
`   local lastRankVal = 1000000`
`   local orderOk`
`   local res = ''`
`   for i = taxonTable.n, 1, -1 do`
`       -- check ranks are in right order in the hierarchy`
`       local ok, rank = p.getTaxonInfoItem(frame, taxonTable[i], 'rank')`
`       local currRankVal = rankTable[rank]`
`       if currRankVal then`
`           orderOk = currRankVal < lastRankVal`
`           if orderOk then lastRankVal = currRankVal end`
`       else`
`           orderOk = true`
`       end`
`       -- now return a row of the taxonomy table with anomalous ranks marked`
`       if orderOk then`
`           res = res .. frame:expandTemplate{ title = 'Template:Taxonomy links', args = { taxonTable[i] } }`
`       else`
`           if i ~= 1 then`
`               res = res .. frame:expandTemplate{ title = 'Template:Taxonomy links', args = { taxonTable[i], error = 'true' } }`
`           else`
`               res = res .. frame:expandTemplate{ title = 'Template:Taxonomy links', args = { taxonTable[i], error = 'true', last_error = 'true' } }`
`           end`
`       end`
`   end`
`   return res`

end

\--[callTaxonomyKey |parent= |rank= |extinct= |always_display=
|link_target=value of 'link' parameter in taxonomy template
|link_text=value of parameter 2 in taxonomy template |same_as= }}
=============================================================================](https://zh.wikipedia.org/wiki/=========================_callTaxonomyKey_===============================_Prepares_for,_and_then_calls,_Template:Taxonomy_key_to_display_a_taxonomy_template_page._It_does_this_by_building_up_the_information_the_template_requires,_following_one_'same_as'_link,_if_required._Usage:_{{#invoke:Autotaxobox "wikilink")
local SAME_AS = 7 local PARENT = 1 local RANK = 2 local LINK_TARGET =
3 local LINK_TEXT = 4 local ALWAYS_DISPLAY = 5 local EXTINCT = 6 local
REFS = 8

function p.callTaxonomyKey(frame)

`   local parent = frame.args['parent'] or ''`
`   local rank = frame.args['rank'] or ''`
`   local extinct = frame.args['extinct'] or ''`
`   local alwaysDisplay = frame.args['always_display'] or ''`
`   local linkTarget = frame.args['link_target'] or ''`
`   local linkText = frame.args['link_text'] or '' -- this is the "raw" link text, and can be ''`
`   local refs = frame.args['refs'] or ''`
`   local sameAsTaxon = frame.args['same_as'] or ''`
`   if sameAsTaxon ~= '' then`
`       -- try using the 'same as' taxon; it's an error if it doesn't exist`
`       local ok, sameAsInfoStr = pcall(frame.expandTemplate, frame, { title = 'Template:Taxonomy/' .. sameAsTaxon, args = {['machine code'] = 'all' } })`
`       if ok then`
`           local sameAsInfo = mw.text.split(sameAsInfoStr, '$', true)`
`           --'same as' taxon's taxonomy template must not have a 'same as' link`
`           if sameAsInfo[SAME_AS] == '' then`
`               if parent == '' then parent = sameAsInfo[PARENT] end`
`               if rank == '' then rank = sameAsInfo[RANK] end`
`               if extinct == '' then extinct = sameAsInfo[EXTINCT] end`
`               if alwaysDisplay == '' then alwaysDisplay = sameAsInfo[ALWAYS_DISPLAY] end`
`               if linkTarget == '' then linkTarget = sameAsInfo[LINK_TARGET] end`
`               if linkText == '' then linkText = sameAsInfo[LINK_TEXT] end`
`               if refs == '' and parent == sameAsInfo[PARENT] then refs = sameAsInfo[REFS] end`
`           else`
`               return '`<span style="color:red; font-size:1.1em">`Error: attempt to follow two "same as" links`</span>`: same_as
= ' .. sameAsTaxon .. ', but `[`Template:Taxonomy/'``   ``..``
 ``sameAsTaxon``   ``..``
 ``'`](https://zh.wikipedia.org/wiki/Template:Taxonomy/'_.._sameAsTaxon_.._' "wikilink")` also has asame_as parameter.'`
`           end`
`       else`
`           return frame:expandTemplate{ title = 'Template:Taxonomy key/missing template', args = {taxon=sameAsTaxon, msg='given as the value of same
as'} }`
`       end`
`   end`
`   local link = linkTarget`
`   if linkText ~= '' and linkText ~= linkTarget then link = link .. "|" .. linkText end`
`   return frame:expandTemplate{ title = 'Template:Taxonomy key',`
`           args = {parent=parent, rank=rank, extinct=extinct, always_display=alwaysDisplay, link_target=linkTarget, link=link, refs=refs, same_as=sameAsTaxon} }`

end

\--[taxonInfo|TAXON|ITEM}} ITEM is one of: 'parent', 'rank', 'link
target', 'link text', 'link', 'extinct', 'always display', 'refs', 'same
as' or 'all'. If ITEM is not specified, the default is 'all' – all
values in a single string separated by '$'.
=============================================================================](https://zh.wikipedia.org/wiki/============================_taxonInfo_==================================_Extracts_and_returns_information_from_Template:Taxonomy/TAXON,_following_one_'same_as'_link_if_required._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.taxonInfo(frame)

`   local taxon = frame.args[1] or ''`
`   local item = frame.args[2] or ''`
`   if item == '' then item = 'all' end`
`   local ok, info = p.getTaxonInfoItem(frame, taxon, item)`
`   return info`

end

\--[taxonLink |taxon= : having '/?' at the end triggers the output of '
(?)' |extinct= : 'yes' or 'true' trigger the output of '†' |bold= :
'yes' makes the core output bold and not wikilinked |italic= : 'yes'
makes the core output italic |link_target= : target for the wikilink
link_text= : text of the wikilink (may be same as link_target),
without †, italics, etc. }}
=============================================================================](https://zh.wikipedia.org/wiki/============================_taxonLink_==================================_Returns_a_wikilink_to_a_taxon,_if_required_including_'†'_before_it_and_'_\(?\)'_after_it,_and_optionally_italicized_or_bolded_without_a_wikilink._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.taxonLink(frame)

`   local taxon = frame.args['taxon'] or ''`
`   local extinct = frame.args['extinct'] or ''`
`   local bold = frame.args['bold'] or ''`
`   local italic = frame.args['italic'] or ''`
`   local linkTarget = frame.args['link_target'] or ''`
`   local linkText = frame.args['link_text'] or frame.args['plain_link_text'] or '' --temporarily allow alternative args`
`   -- if link text is missing, try to find a replacement`
`   if linkText == '' then`
`       if string.find(taxon, 'Incertae sedis', 1, true) then`
`           linkText = "`*`incertae``   ``sedis`*`"`
`           linkTarget = 'Incertae sedis'`
`       else`
`           linkText = p.stripExtra(taxon)`
`       end`
`   end`
`   local link = ''`
`   if bold == 'yes' then link = '`<b>`' .. linkText .. '`</b>`'`
`   else`
`       if linkTarget == linkText or linkTarget == '' then link = linkText`
`       else link = linkTarget .. '|' .. linkText`
`       end`
`       link = '`[`'``   ``..``   ``link``   ``..``
 ``'`](https://zh.wikipedia.org/wiki/'_.._link_.._' "wikilink")`'`
`   end`
`   if italic == 'yes' and not string.find(link, "''", 1, true) then link = '`<i>`' .. link .. '`</i>`' end`
`   if (extinct == 'yes' or extinct == 'true') and not string.find(link, '†', 1, true) then`
`       link = '`<span style="font-style:normal;font-weight:normal;">`†`</span>`' .. link`
`   end`
`   if string.sub(taxon, -2) == '/?' and not string.find(link, '?', 1, true) then`
`       link = link .. '`<span style="font-style:normal;font-weight:normal;">` (?)`</span>`'`
`   end`
`   return link`

end

\--[showRankTable}}
=============================================================================](https://zh.wikipedia.org/wiki/==========================_showRankTable_================================_Returns_a_wikitable_showing_the_ranks_and_their_values_as_set_up_by_getRankTable\(\)._Usage:_{{#invoke:Autotaxobox "wikilink")

function p.showRankTable(frame)

`   local rankTable = p.getRankTable()`
`   local res = '{| class="wikitable sortable"\n|+ Ranks checked in taxonomy templates\n! Rank !! Shown as !! Value\n'`
`   for k, v in pairs(rankTable) do`
`       local rankShown = frame:expandTemplate{ title = 'Template:Sinicize rank', args = { k } }`
`       res = res .. '|-\n|' .. k .. '||' .. rankShown .. '||' .. v .. '\n'`
`   end`
`   return res .. '|}\n'`

end

\--[nth|TAXON|n=N}}
=============================================================================](https://zh.wikipedia.org/wiki/===============================_nth_=====================================_External_utility_function_primarily_intended_for_use_in_checking_and_debugging._Returns_the_nth_level_above_a_taxon_in_a_taxonomic_hierarchy,_where_the_taxon_itself_is_counted_as_the_first_level._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.nth(frame)

`   local currTaxon = frame.args[1] or ''`
`   if currTaxon == '' then return 'ERROR: no taxon supplied' end`
`   local n = tonumber(frame.args['n'] or 1)`
`   if n > MaxSearchLevels then`
`       return 'Exceeded maximum number of levels allowed (' .. MaxSearchLevels .. ')'`
`   end`
`   local i = 1`
`   local inHierarchy = true -- still in the taxonomic hierarchy or off the top?`
`   while i < n and inHierarchy do`
`       local ok, parent = p.getTaxonInfoItem(frame, currTaxon, 'parent')`
`           if ok and parent ~= '' then`
`           currTaxon = parent`
`           i = i + 1`
`       else`
`           inHierarchy = false`
`       end`
`   end`
`   if inHierarchy then return currTaxon`
`   else return 'Level ' .. n .. ' is past the top of the taxonomic hierarchy'`
`   end`

end

\--[nLevels|TAXON}}
=============================================================================](https://zh.wikipedia.org/wiki/=============================_nLevels_===================================_External_utility_function_primarily_intended_for_use_in_checking_and_debugging._Returns_number_of_levels_in_a_taxonomic_hierarchy,_starting_from_the_supplied_taxon_as_level_1._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.nLevels(frame)

`   local currTaxon = frame.args[1] or ''`
`   if currTaxon == '' then return 'ERROR: no taxon supplied' end`
`   local i = 1`
`   local inHierarchy = true -- still in the taxonomic hierarchy or off the top?`
`   while inHierarchy and i < MaxSearchLevels  do`
`       local ok, parent = p.getTaxonInfoItem(frame, currTaxon, 'parent')`
`       if ok and parent ~= '' then`
`           currTaxon = parent`
`           i = i + 1`
`       else`
`           inHierarchy = false`
`       end`
`   end`
`   if inHierarchy then return MaxSearchLevels .. '+'`
`   else return i`
`   end`

end

\--[listAll|TAXON}}
=============================================================================](https://zh.wikipedia.org/wiki/=============================_listAll_===================================_External_utility_function_primarily_intended_for_use_in_checking_and_debugging._Returns_a_comma_separated_list_of_a_taxonomic_hierarchy,_starting_from_the_supplied_taxon._Usage:_{{#invoke:Autotaxobox "wikilink")
function p.listAll(frame)

`   local currTaxon = frame.args[1] or ''`
`   if currTaxon == '' then return 'ERROR: no taxon supplied' end`
`   return p.listTaxa(p.makeTable(frame, currTaxon))`

end

\--[=========================================================================
Internal functions
=============================================================================](https://zh.wikipedia.org/wiki/=========================================================================_Internal_functions_============================================================================= "wikilink")

\--[= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
= = = Internal utility function to strip off any extra parts of a taxon
name, i.e. anything after a '/'. Thus "Felidae/?" would be reduced to
"Felidae". = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
= = = = = = =
=](https://zh.wikipedia.org/wiki/=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_Internal_utility_function_to_strip_off_any_extra_parts_of_a_taxon_name,_i.e._anything_after_a_'/'._Thus_"Felidae/?"_would_be_reduced_to_"Felidae"._=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_= "wikilink")
function p.stripExtra(taxonName)

`   local i = string.find(taxonName,'/')`
`   if i then`
`       return string.sub(taxonName,1,i-1)`
`   else`
`       return taxonName`
`   end`

end

\--[= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
= = = Internal utility function to convert a taxon table to a
comma-separated list. = = = = = = = = = = = = = = = = = = = = = = = = =
= = = = = = = = = = = = =
=](https://zh.wikipedia.org/wiki/=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_Internal_utility_function_to_convert_a_taxon_table_to_a_comma-separated_list._=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_= "wikilink")
function p.listTaxa(taxonTable)

`   local lst = taxonTable[1]`
`   for i = 2, taxonTable.n, 1 do`
`       lst = lst .. ', ' .. taxonTable[i]`
`   end`
`   return lst`

end

\--[= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
= = = Internal utility function to extract an item of information from a
taxonomy template, following one 'same as' link if required. = = = = = =
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
=](https://zh.wikipedia.org/wiki/=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_Internal_utility_function_to_extract_an_item_of_information_from_a_taxonomy_template,_following_one_'same_as'_link_if_required._=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_= "wikilink")
function p.getTaxonInfoItem(frame, taxon, item)

`   -- item == 'link' is a special case`
`   if item == 'link' then`
`       return p.getTaxonInfoLink(frame, taxon)`
`   end`
`   -- item ~= 'link'`
`   local ok, info = pcall(frame.expandTemplate, frame, { title = 'Template:Taxonomy/' .. taxon, args = {['machine code'] = item } })`
`   if ok then`
`       if info == '' then`
`           -- try 'same as'`
`           local sameAsTaxon = frame:expandTemplate{ title = 'Template:Taxonomy/' .. taxon, args = {['machine code'] = 'same as' } }`
`           if sameAsTaxon ~= '' then`
`               ok, info = pcall(frame.expandTemplate, frame, { title = 'Template:Taxonomy/' .. sameAsTaxon, args = {['machine code'] = item } })`
`           end`
`       end`
`   end`
`   if ok then`
`       -- if item is 'link_text' check whether '(?)' needs to be added`
`       if item == 'link_text' and string.sub(taxon, -2) == '/?' and not string.find(info, '?', 1, true) then`
`           info = info .. '`<span style="font-style:normal;font-weight:normal;">` (?)`</span>`'`
`       end`
`   else`
`       info = '`[`Template:Taxonomy/'``   ``..``   ``taxon``   ``..``
 ``'`](https://zh.wikipedia.org/wiki/Template:Taxonomy/'_.._taxon_.._' "wikilink")`' --error indicator in code before conversion to Lua`
`   end`
`   return ok, info`

end

function p.getTaxonInfoLink(frame, taxon)

`   local ok, linkText, linkTarget`
`   local link = ''`
`   ok, linkText = p.getTaxonInfoItem(frame, taxon, 'link_text')`
`   if ok then`
`       ok, linkTarget = p.getTaxonInfoItem(frame, taxon, 'link_target')`
`       if ok then`
`           if linkText == linkTarget then link = linkText`
`           else link = linkTarget .. '|' .. linkText`
`           end`
`       end`
`   end`
`   return ok, link`

end

\--\[\[= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
= = = = Internal utility function to return a table (array) constructed
from a taxonomic hierarchy stored in "Template:Taxonomy/..." templates.
TABLE.n holds the total number of taxa; TABLE\[1\]..TABLE\[TABLE.n\] the
taxon names.

#

\= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
=\]\] function p.makeTable(frame, currTaxon)

`   local i = 1`
`   local inHierarchy = true -- still in the taxonomic hierarchy or off the top?`
`   local taxonTable = {}`
`   taxonTable[1] = currTaxon;`
`   while i < MaxSearchLevels and inHierarchy do`
`       local ok, parent = p.getTaxonInfoItem(frame, currTaxon, 'parent')`
`       if ok and parent ~= '' then`
`           currTaxon = parent`
`           i = i + 1`
`           taxonTable[i] = currTaxon`
`       else`
`           inHierarchy = false -- run off the top of the hierarchy or tried to use non-existent taxonomy template`
`       end`
`   end`
`   taxonTable.n = i`
`   return taxonTable`

end

\--[= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
= = = Internal utility function to set up a table of numerical values
corresponding to 'Linnaean' ranks, with upper ranks having higher
values. In a valid taxonomic hierarchy, a lower rank should never have a
higher value than a higher rank. The actual numerical values are
arbitrary so long as they are ordered. The ranks should correspond to
those in Template:Anglicise ranks. = = = = = = = = = = = = = = = = = = =
= = = = = = = = = = = = = = = = = = =
=](https://zh.wikipedia.org/wiki/=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_Internal_utility_function_to_set_up_a_table_of_numerical_values_corresponding_to_'Linnaean'_ranks,_with_upper_ranks_having_higher_values._In_a_valid_taxonomic_hierarchy,_a_lower_rank_should_never_have_a_higher_value_than_a_higher_rank._The_actual_numerical_values_are_arbitrary_so_long_as_they_are_ordered._The_ranks_should_correspond_to_those_in_Template:Anglicise_ranks._=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_=_= "wikilink")
function p.getRankTable()

`   return {`
`       classis = 1400,`
`       cohort = 1100,`
`       divisio = 1500,`
`       domain = 1700,`
`       familia = 800,`
`       forma = 100,`
`       genus = 600,`
`       grandordo = 1005,`
`       ['grandordo-mb'] = 1002,`
`       infraclassis = 1397,`
`       infralegio = 1197,`
`       infraordo = 997,`
`       infraphylum = 1497,`
`       infraregnum = 1597,`
`       infratribus = 697,`
`       legio = 1200,`
`       magnordo = 1006,`
`       microphylum = 1495,`
`       micrordo = 995,`
`       mirordo = 1004,`
`       ['mirordo-mb'] = 1001,`
`       nanophylum = 1499,`
`       nanordo = 999,`
`       ordo = 1000,`
`       parafamilia = 800,`
`       parvordo = 996,`
`       phylum = 1500,`
`       regnum = 1600,`
`       sectio = 500,`
`       --series = 400, used too inconsistently to check`
`       species = 300,`
`       subclassis = 1398,`
`       subcohort = 1098,`
`       subdivisio = 1498,`
`       subfamilia = 798,`
`       subgenus = 598,`
`       sublegio = 1198,`
`       subordo = 998,`
`       subphylum = 1498,`
`       subregnum = 1598,`
`       subsectio = 498,`
`       subspecies = 298,`
`       subtribus = 698,`
`       superclassis = 1403,`
`       supercohort = 1103,`
`       superdivisio = 1503,`
`       superdomain = 1703,`
`       superfamilia = 803,`
`       superlegio = 1203,`
`       superordo = 1003,`
`       superphylum = 1503,`
`       superregnum = 1603,`
`       supertribus = 703,`
`       tribus = 700,`
`       varietas = 200,`
`       zoodivisio = 1300,`
`       zoosectio = 900,`
`       zoosubdivisio = 1298,`
`       zoosubsectio = 898,`
`   }`

end

return p