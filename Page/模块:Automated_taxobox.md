require('Module:No globals') local TaxonItalics = require('Module:TaxonItalics') local Autotaxobox = require('Module:Autotaxobox') local ItalicTitle = require('Module:Italic title') local p = {} -- functions made public local l = {} -- internal functions, kept separate

\-- ============================================================================= -- automaticTaxobox implements Template:Automatic taxobox; see the documentation -- of that template for details. -- The following parameters present in the old template code version of -- Template:Automatic taxobox were not used and have not been implemented: -- image_caption_align -- image2_caption_align -- binomial2 -- binomial2_authority -- binomial3 -- binomial3_authority -- binomial4 -- binomial4_authority -- =============================================================================

function p.automaticTaxobox(frame)

`   local args`
`   if frame.args['direct'] == 'yes' then args = frame.args`
`   else args = frame:getParent().args end`
`   -- ---------------------------------------------------------------------`
`   -- pick up taxobox parameters from the caller that need to be processed;`
`   -- most will be passed on unchanged`
`   -- ---------------------------------------------------------------------`
`   local pagename = args['pagename'] or '' -- for testing and debugging only`
`   local italicTitle = args['italic_title'] or args['italic title'] or ''`
`   local fossilRange = args['fossil_range'] or args['fossil range'] or args['temporal_range'] or args['temporal range'] or ''`
`   local oldestFossil = args['oldest_fossil'] or args['oldest fossil'] or ''`
`   local youngestFossil =  args['youngest_fossil'] or args['youngest fossil'] or ''`
`   local name = args['name'] or ''`
`   local colourAs = args['color_as'] or args['color as'] or args['colour_as']  or args['colour as'] or ''`
`   local taxon = args['taxon'] or ''`
`   local authority = args['authority'] or ''`
`   local subdivision = args['subdivision'] or ''`
`   local subdivisionRanks = args['subdivision_ranks'] or args['subdivision ranks'] or ''`
`   local binomial = args['binomial'] or ''`
`   local binomialAuthority = args['binomial_authority'] or args['binomial_authority'] or''`
`   -- ------------------------------------------------------`
`   -- set the taxobox parameters determined by this function`
`   -- ------------------------------------------------------`
`   fossilRange = l.setfossilRange(frame, fossilRange, oldestFossil, youngestFossil)`
`   -- use the base page name as the taxon if the taxon parameter is missing`
`   local currentPagename = mw.title.getCurrentTitle()`
`   if pagename == '' then pagename = currentPagename.text end -- pagename para only used in testing and debugging`
`   local basePagename = mw.ustring.gsub(pagename, '%s+%b()$', '', 1)`
`   local taxonParaMissingError = false`
`   if taxon == '' then`
`       taxonParaMissingError = true`
`       taxon = basePagename`
`   end`
`   -- decide if the page name and taxobox name need to be italicized;`
`   -- if italic_title is not set, then if the names are the taxon, use its rank to decide`
`   local ok, taxonRank = Autotaxobox.getTaxonInfoItem(frame, taxon, 'rank') -- taxonRank needed later if not here`
`   if italicTitle == '' then`
`       if not (ok and taxonRank ~= '' and`
`               frame:expandTemplate{ title = 'Is italic taxon', args = {taxonRank} } == 'yes') then`
`           italicTitle = 'no'`
`       end`
`   end`
`   --   remove any " (DISAMBIG)" or "/MODIFIER" from the taxon's name;`
`   --   if the base page name is the same as the base taxon name, then italicization can be applied`
`   local baseTaxon = mw.ustring.gsub(mw.ustring.gsub(taxon, '%s+%b()$', '', 1), '/.*$', '', 1)`
`   if italicTitle == '' and basePagename == baseTaxon then`
`       italicTitle = 'yes'`
`   end`
`   -- italicize the page name (page title) if required`
`   if italicTitle == 'yes' and currentPagename.namespace == 0 then`
`       ItalicTitle._main({})`
`   end`
`   -- set the taxobox name if not supplied, italicizing it if appropriate.`
`   if name == '' then`
`       name = basePagename`
`       if italicTitle == 'yes' then`
`           name = TaxonItalics.italicizeTaxonName(name, false, false)`
`       end`
`       -- name = name ..  '/' .. baseTaxon .. '/' .. nameRank`
`   end`
`   -- determine taxobox colour`
`   local colour = ''`
`   if colourAs ~= '' then`
`       colour = frame:expandTemplate{ title = 'Taxobox colour', args = {colourAs} }`
`   else`
`       colour = Autotaxobox.getTaxoboxColour(frame, taxon)`
`   end`
`   -- fill in a missing subdivision_ranks parameter`
`   if subdivision ~= '' and subdivisionRanks == '' and ok and taxonRank ~= '' then`
`       subdivisionRanks =  frame:expandTemplate{ title = 'Children rank', args = {taxonRank} }`
`   end`
`   -- set binomial parameters if the target taxon is (unusually) a species`
`   if binomial == '' then`
`       if ok and taxonRank == 'species' then`
`           binomial = TaxonItalics.italicizeTaxonName(taxon, false, false)`
`           binomialAuthority = authority`
`       end`
`   end`
`   -- ------------------------------------------------`
`   -- now call Taxobox/core with all of its parameters`
`   -- ------------------------------------------------`
`   local res = frame:expandTemplate{ title = 'Taxobox/core', args =`
`       { ['edit link'] = 'e',`
`         temporal_range = fossilRange,`
`         display_taxa = args['display_parents'] or args['display parents'] or '1',`
`         parent = taxon,`
`         authority = authority,`
`         parent_authority = args['parent_authority'] or args['parent authority'] or '',`
`         grandparent_authority = args['grandparent_authority'] or args['grandparent authority'] or '',`
`         greatgrandparent_authority = args['greatgrandparent_authority'] or args['greatgrandparent authority'] or '',`
`         greatgreatgrandparent_authority = args['greatgreatgrandparent_authority'] or args['greatgreatgrandparent authority'] or '',`
`         name = name,`
`         colour = colour,`
`         status = args['status'] or '',`
`         status_system = args['status_system'] or args['status system'] or '',`
`         status_ref = args['status_ref'] or args['status ref'] or '',`
`         status2 = args['status2'] or '',`
`         status2_system = args['status2_system'] or args['status2 system'] or '',`
`         status2_ref = args['status2_ref'] or args['status2 ref'] or '',`
`         trend = args['trend'] or '',`
`         extinct = args['extinct'] or '',`
`         image = args['image'] or '',`
`         upright = args['image_upright'] or args['image upright'] or '',`
`         image_alt = args['image_alt'] or args['image alt'] or '',`
`         image_caption = args['image_caption'] or args['image caption'] or '',`
`         image2 = args['image2'] or '',`
`         upright2 = args['image2_upright'] or args['image2 upright'] or '',`
`         image2_alt = args['image2_alt'] or args['image2 alt'] or '',`
`         image2_caption = args['image2_caption'] or args['image2 caption'] or '',`
`         classification_status = args['classification_status'] or args['classification status'] or '',`
`         diversity = args['diversity'] or '',`
`         diversity_ref = args['diversity_ref'] or args['diversity ref'] or '',`
`         diversity_link = args['diversity_link'] or args['diversity link'] or '',`
`         binomial = binomial,`
`         binomial_authority = binomialAuthority,`
`         trinomial = args['trinomial'] or '',`
`         trinomial_authority = args['trinomial_authority'] or args['trinomial authority'] or '',`
`         type_genus = args['type_genus'] or args['type genus'] or '',`
`         type_genus_authority = args['type_genus_authority'] or args['type genus authority'] or '',`
`         type_species = args['type_species'] or args['type species'] or '',`
`         type_species_authority = args['type_species_authority'] or args['type species authority'] or '',`
`         subdivision = subdivision,`
`         subdivision_ranks = subdivisionRanks,       `
`         type_strain = args['type_strain'] or args['type strain'] or '',`
`         range_map = args['range_map'] or args['range map'] or '',`
`         range_map_upright = args['range_map_upright'] or args['range map upright'] or '',`
`         range_map_alt = args['range_map_alt'] or args['range map alt'] or '',`
`         range_map_caption = args['range_map_caption'] or args['range map caption'] or '',`
`         range_map2 = args['range_map2'] or args['range map2'] or '',`
`         range_map2_upright = args['range_map2_upright'] or args['range map2 upright'] or '',`
`         range_map2_alt = args['range_map2_alt'] or args['range map2 alt'] or '',`
`         range_map2_caption = args['range_map2_caption'] or args['range map2 caption'] or '',`
`         range_map3 = args['range_map3'] or args['range map3'] or '',`
`         range_map3_upright = args['range_map3_upright'] or args['range map3 upright'] or '',`
`         range_map3_alt = args['range_map3_alt'] or args['range map3 alt'] or '',`
`         range_map3_caption = args['range_map3_caption'] or args['range map3 caption'] or '',`
`         range_map4 = args['range_map4'] or args['range map4'] or '',`
`         range_map4_upright = args['range_map4_upright'] or args['range map4 upright'] or '',`
`         range_map4_alt = args['range_map4_alt'] or args['range map4 alt'] or '',`
`         range_map4_caption = args['range_map4_caption'] or args['range map4 caption'] or '',`
`         synonyms_ref = args['synonyms_ref'] or args['synonyms ref'] or '',`
`         synonyms = args['synonyms'] or ''`
`       } }`
`   -- put page in error-tracking categories if required`
`   local errCat1 = ''`
`   if binomial ~= '' then errCat1 = '' end`
`   local errCat2 = ''`
`   if taxonParaMissingError then errCat2 = '' end`
`   res = res .. frame:expandTemplate{ title = 'Main other', args = {errCat1..errCat2} }`
`   return res`

end

\-- ============================================================================= -- l.setfossilRange(frame, fossilRange, oldestFossil, youngestFossil) checks -- the parameters that determine the fossil range, returning an appropriate -- range. -- ============================================================================= -- temporary public function for debugging function p.chkFossilRange(frame)

`   local args = frame.args`
`   local fossilRange = args['temporal_range'] or args['temporal range'] or args['fossil_range'] or args['fossil range'] or ''`
`   local oldestFossil = args['oldest_fossil'] or args['oldest fossil'] or ''`
`   local youngestFossil =  args['youngest_fossil'] or args['youngest fossil'] or ''`
`   local fossilRange = l.setfossilRange(frame, fossilRange, oldestFossil, youngestFossil)`
`   return fossilRange`

end

function l.setfossilRange(frame, fossilRange, oldestFossil, youngestFossil)

`   local res = ''`
`   if fossilRange ~= '' then`
`       if mw.ustring.find(frame:expandTemplate{ title = 'Period start', args = { fossilRange } }, '[Ee]rror') then`
`           res = fossilRange`
`       else `
`           res = frame:expandTemplate{ title = 'Geological range', args = { fossilRange } }`
`       end`
`   elseif oldestFossil ~= '' then`
`       if youngestFossil == '' then youngestFossil = 'Recent' end`
`       if mw.ustring.find(frame:expandTemplate{ title = 'Period start', args = { oldestFossil } }, '[Ee]rror') or`
`          mw.ustring.find(frame:expandTemplate{ title = 'Period start', args = { youngestFossil } }, '[Ee]rror') then`
`           res = oldestFossil..'–'..youngestFossil`
`       else`
`       res = frame:expandTemplate{ title = 'Geological range', args = { oldestFossil, youngestFossil } }`
`       end`
`   end`
`   return res`

end

return p

[Category:Automatic_taxoboxes_using_binomial_parameter](https://zh.wikipedia.org/wiki/Category:Automatic_taxoboxes_using_binomial_parameter "wikilink") [Category:Automatic_taxoboxes_relying_on_page_title](https://zh.wikipedia.org/wiki/Category:Automatic_taxoboxes_relying_on_page_title "wikilink")