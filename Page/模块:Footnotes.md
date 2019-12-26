require('Module:No globals');

\--[--------------------------\< A R G S _ D E F A U L T \>------------------------------------------------------ a table to specify initial values.](https://zh.wikipedia.org/wiki/--------------------------\<_A_R_G_S_D_E_F_A_U_L_T_\>------------------------------------------------------_a_table_to_specify_initial_values. "wikilink")

local args_default = {

`   bracket_left = '',`
`   bracket_right = '',`
`   bracket_year_left = '',`
`   bracket_year_right = '',`
`   postscript = '',`
`   page = '',`
`   pages = '',`
`   location = '',`
`   page_sep = ", p. ",`
`   pages_sep = ", pp. ",`
`   ref = '',`
`   };`

\--[--------------------------\< I S _ Y E A R \>---------------------------------------------------------------- evaluates param to see if it is one of these forms with or without lowercase letter disambiguator: YYYY n.d. nd c. YYYY YYYY–YYYY (separator is endash) YYYY–YY (separator is endash) return true when param has a recognized form; false else](https://zh.wikipedia.org/wiki/--------------------------\<_I_S_Y_E_A_R_\>----------------------------------------------------------------_evaluates_param_to_see_if_it_is_one_of_these_forms_with_or_without_lowercase_letter_disambiguator:_YYYY_n.d._nd_c._YYYY_YYYY–YYYY_\(separator_is_endash\)_YYYY–YY_\(separator_is_endash\)_return_true_when_param_has_a_recognized_form;_false_else "wikilink")

local function is_year (param)

`   return mw.ustring.match (param, '^%d%d%d%d?%l?$') or`
`       mw.ustring.match (param, '^n%.d%.%l?$') or`
`       mw.ustring.match (param, '^nd%l?$') or`
`       mw.ustring.match (param, '^c%. %d%d%d%d?%l?$') or`
`       mw.ustring.match (param, '^%d%d%d%d–%d%d%d%d%l?$') or`
`       mw.ustring.match (param, '^%d%d%d%d–%d%d%l?$');`

end

\--\[\[--------------------------\< C O R E \>----------------------------------------------------------------------

returns an anchor link (CITEREF) formed from one to four author names, year, and insource location (|p=, |pp=, loc=)

\]\]

local function core( args )

`   local result;`

`   if args.P5 ~= '' then`
`       if is_year (args.P5) then`
`           result = table.concat ({args.P1, ' et al. ', args.bracket_year_left, args.P5, args.bracket_year_right});`
`       else`
`           args.P5 = '';                                                       -- when P5 not a year don't include in anchor`
`           result = table.concat ({args.P1, ' et al.'});                       -- and don't render it`
`       end`

`   elseif args.P4 ~= '' then`
`       if is_year (args.P4) then`
`           result = table.concat ({args.P1, ', ', args.P2, ' & ', args.P3, ' ', args.bracket_year_left, args.P4, args.bracket_year_right});    -- three names and a year`
`       else`
`           result = table.concat ({args.P1, ' et al.'});                       -- four names`
`       end`

`   elseif args.P3 ~= '' then`
`       if is_year (args.P3) then`
`           result = table.concat ({args.P1, ' & ', args.P2, ' ', args.bracket_year_left, args.P3, args.bracket_year_right});   -- two names and a year`
`       else`
`           result = table.concat ({args.P1, ', ', args.P2, ' ', ' & ', args.P3});  -- three names`
`       end`
`           `
`   elseif args.P2 ~= '' then`
`       if is_year (args.P2) then`
`           result = table.concat ({args.P1, ' ', args.bracket_year_left, args.P2, args.bracket_year_right});   -- one name and year`
`       else`
`           result = table.concat ({args.P1, ' & ', args.P2});              -- two names`
`       end`
`       `
`   else`
`       result = args.P1;                                                       -- one name`
`   end`
`                                                                               -- when author-date result ends with a dot (typically when the last positional parameter holds 'n.d.')`
`                                                                               -- and when no in-source location (no |p=, |pp=, or |loc=)`
`                                                                               -- and when the first or only character in args.postscript is a dot`
`                                                                               -- remove the author-date result trailing dot`
`                                                                               -- the author-date result trailing dot will be replaced later with the content of args.postscript (usually a dot)`
`   if ('.' == result:sub(-1)) and ('.' == args.postscript:sub(1)) and ('' == args.page) and ('' == args.pages) and ('' == args.location) then`
`       result = result:gsub ('%.$', '');`
`   end`
`   `
`   if args.ref ~= 'none' then`
`       if args.ref ~= '' then`
`           result = table.concat ({'`[`',``   ``result,``   ``'`](https://zh.wikipedia.org/wiki/#',_mw.uri.anchorEncode_\(args.ref\),_' "wikilink")`'});`
`       else`
`           result = table.concat ({'`[`',``   ``result,``   ``'`](https://zh.wikipedia.org/wiki/#CITEREF',_mw.uri.anchorEncode_\(table.concat_\({args.P1,_args.P2,_args.P3,_args.P4,_args.P5}\)\),_' "wikilink")`'});`
`       end`
`   end`

`   if args.page ~= '' then`
`       result = table.concat ({result, args.page_sep, args.page});`
`   elseif args.pages ~= ''then`
`       result = table.concat ({result, args.pages_sep, args.pages});`
`   end      `

`   if args.location ~= '' then`
`       result = table.concat ({result, ', ', args.location});`
`   end`

`   result = table.concat ({args.bracket_left, result, args.bracket_right, args.postscript}):gsub ('%s+', ' ');     -- strip redundant spaces`
`   return result;`

end

\--[--------------------------\< A R G S _ F E T C H \>--------------------------------------------------------- Because all of the templates share a common set of parameters, a single common function to fetch those parameters from frame and parent frame.](https://zh.wikipedia.org/wiki/--------------------------\<_A_R_G_S_F_E_T_C_H_\>---------------------------------------------------------_Because_all_of_the_templates_share_a_common_set_of_parameters,_a_single_common_function_to_fetch_those_parameters_from_frame_and_parent_frame. "wikilink")

local function args_fetch (frame, ps)

`   local args = args_default;                                                  -- create a copy of the default table`
`   local pframe = frame:getParent();                                           -- point to the template's parameter table`

`   for k, v in pairs (frame.args) do                                           -- override defaults with values provided in the #invoke: if any`
`       args[k] = v;       `
`   end`
`   `
`   args.postscript = pframe.args.postscript or pframe.args.ps or ps;`
`   if 'none' == args.postscript then`
`       args.postscript = '';`
`   end`
`   args.page = pframe.args.p or pframe.args.page or '';`
`   args.pages = pframe.args.pp or pframe.args.pages or '';`
`   args.location = pframe.args.loc or '';`
`   args.ref = pframe.args.ref or pframe.args.Ref or '';`
`   `
`   for i, v in ipairs ({'P1', 'P2', 'P3', 'P4', 'P5'}) do                      -- loop through the five positional parameters and trim if set else empty string`
`       args[v] = (pframe.args[i] and mw.text.trim (pframe.args[i])) or '';`
`   end`

`   return args;`

end

\--[--------------------------\< H A R V A R D _ C I T A T I O N \>---------------------------------------------- common entry point for: {{harvard citation}} aka {{harv}} {{Harvard citation no brackets}} aka {{harvnb}} {{harvcol}} {{harvcolnb}} {{harvcoltxt}} {{Harvard citation text}} aka {{harvtxt}} {{Harvp}} Distinguishing features (brackets and page separators) are specified in this module's {{\#invoke}} in the respective templates.](https://zh.wikipedia.org/wiki/--------------------------\<_H_A_R_V_A_R_D_C_I_T_A_T_I_O_N_\>----------------------------------------------_common_entry_point_for:_{{harvard_citation}}_aka_{{harv}}_{{Harvard_citation_no_brackets}}_aka_{{harvnb}}_{{harvcol}}_{{harvcolnb}}_{{harvcoltxt}}_{{Harvard_citation_text}}_aka_{{harvtxt}}_{{Harvp}}_Distinguishing_features_\(brackets_and_page_separators\)_are_specified_in_this_module's_{{#invoke}}_in_the_respective_templates. "wikilink")

local function harvard_citation (frame)

`   local args = args_fetch (frame, '');                                        -- get the template and invoke parameters; default postscript is empty string`

`   return core (args);`

end

\--\[\[--------------------------\< S T R I P _ U R L \>------------------------------------------------------------

used by sfn() and sfnm(). This function fixes an issue with reference tooltip gadget where the tooltip is not displayed when an insource locator (|p=, |pp=, |loc=) has an external wikilink that contains a \# character

strip uri-reserved characters from urls in |p=, |pp-, and |loc= parameters The researved characters are:

`   !#$&'()*+,/:;=?@[]`
`   `

\]\]

local function strip_url (pages) local escaped_uri;

`   if not pages or ('' == pages) then`
`       return pages;`
`   end`
`   `
`   for uri in pages:gmatch ('%[(%a[%w%+%.%-]*://%S+)') do                      -- for each external link get the uri`
`       escaped_uri = uri:gsub ("([%(%)%.%%%+%-%*%?%[%^%$%]])", "%%%1" );       -- save a copy with lua pattern characters escaped`
`       uri = uri:gsub ("[!#%$&'%(%)%*%+,/:;=%?@%[%]%.%%]", '');                -- remove reserved characters and '%' because '%20' (space character) is a lua 'invalid capture index'`
`       pages = pages:gsub (escaped_uri, uri, 1);                               -- replace original uri with the stripped version`
`   end`
`   `
`   return pages;`

end

\--[--------------------------\< S F N \>------------------------------------------------------------------------ entry point for {{sfn}} and {{sfnp}}](https://zh.wikipedia.org/wiki/--------------------------\<_S_F_N_\>------------------------------------------------------------------------_entry_point_for_{{sfn}}_and_{{sfnp}} "wikilink")

local function sfn (frame)

`   local args = args_fetch (frame, '.');                                       -- get the template and invoke parameters; default postscript is a dot`

`   local result = core (args);                                                 -- go make a CITEREF anchor`
`   `
`                                                                               -- put it all together and then strip redundant spaces`
`   local name = table.concat ({'FOOTNOTE', args.P1, args.P2, args.P3, args.P4, args.P5, strip_url (args.page), strip_url (args.pages), strip_url (args.location)}):gsub ('%s+', ' ');`

`   return frame:extensionTag ({name='ref', args={name=name}, content=result}); `

end

\--[--------------------------\< S F N M \>---------------------------------------------------------------------- common entry point for {{sfnm}} and {{sfnmp}} Distinguishing features (brackets) are specified in this module's {{\#invoke}} in the respective templates.](https://zh.wikipedia.org/wiki/--------------------------\<_S_F_N_M_\>----------------------------------------------------------------------_common_entry_point_for_{{sfnm}}_and_{{sfnmp}}_Distinguishing_features_\(brackets\)_are_specified_in_this_module's_{{#invoke}}_in_the_respective_templates. "wikilink")

local function sfnm (frame)

`   local args = args_default;                                                  -- create a copy of the default table`
`   local pframe = frame:getParent();                                           -- point to the template's parameter table`
`   `
`   local n = 1;                                                                -- index of source; this is the 'n' in na1, ny, etc`
`   local first_pnum = 1;                                                       -- first of a pair of positional parameters`
`   local second_pnum = 2;                                                      -- second of a pair of positional parameters`

`   local last_ps = 0;                                                          -- index of the last source with |nps= set`
`   local last_index = 0;                                                       -- index of the last source; these used to determine which of |ps= or |nps= will terminate the whole rendering`

`   local out = {};                                                             -- table to hold rendered sources`
`   local footnote = {'FOOTNOTE'};                                              -- all author, date, insource location stuff becomes part of the reference's footnote id; added as we go`

`   for k, v in pairs (frame.args) do                                           -- override defaults with values provided in the #invoke: if any`
`       args[k] = v;       `
`   end`
`   `
`   while true do`
`       if not pframe.args[table.concat ({n, 'a1'})] and not pframe.args[first_pnum] then`
`           break;                                                              -- no na1 or matching positional parameter so done`
`       end`
`       `
`       if pframe.args[table.concat ({n, 'a1'})] then                           -- does this source use named parameters?`
`           for _, v in ipairs ({'P1', 'P2', 'P3', 'P4', 'P5'}) do              -- initialize for this source`
`               args[v] = '';`
`           end`

`           for i, v in ipairs ({'P1', 'P2', 'P3', 'P4', 'P5'}) do              -- extract author and year parameters for this source`
`               args[v] = pframe.args[table.concat ({n, 'a', i})] or '';        -- attempt to assign author name`
`               if '' == args[v] then                                           -- when there wasn't an author name`
`                   args[v] = pframe.args[table.concat ({n, 'y'})] or '';       -- attempt to assign year`
`                   break;                                                      -- done with author/date for this source`
`               end`
`           end`

`       else                                                                    -- this source uses positional parameters`
`           args.P1 = mw.text.trim (pframe.args[first_pnum]);                   -- yes, only one author supported`
`           args.P2 = (pframe.args[second_pnum] and mw.text.trim (pframe.args[second_pnum])) or ''; -- when positional author, year must also be positional`

`           for _, v in ipairs ({'P3', 'P4', 'P5'}) do                          -- blank the rest of these for this source`
`               args[v] = '';`
`           end`

`           first_pnum = first_pnum + 2;                                        -- source must use positional author and positional year`
`           second_pnum = first_pnum + 1;                                       -- bump these for possible next positional source`
`       end`
`       `
`       args.postscript = pframe.args[table.concat ({n, 'ps'})] or '';`
`       if 'none' == args.postscript then                                       -- this for compatibility with other footnote templates; does nothing`
`           args.postscript = '';`
`       end`

`       args.ref = pframe.args[table.concat ({n, 'ref'})] or '';                -- alternate reference for this source`

`       args.page = pframe.args[table.concat ({n, 'p'})] or '';                 -- insource locations for this source`
`       args.pages = pframe.args[table.concat ({n, 'pp'})] or '';`
`       args.location = pframe.args[table.concat ({n, 'loc'})] or '';`

`       table.insert (out, core (args));                                        -- save the rendering of this source`
`       `
`       for k, v in ipairs ({'P1', 'P2', 'P3', 'P4', 'P5'}) do                  -- create the FOOTNOTE id`
`           if '' ~= args[v] then`
`               table.insert (footnote, args[v]);`
`           end`
`       end`
`       for k, v in ipairs ({'page', 'pages', 'location'}) do                   -- these done separately so that we can strip uri-reserved characters from extlinked page numbers `
`           if '' ~= args[v] then`
`               table.insert (footnote, strip_url (args[v]))`
`           end`
`       end`
`       `
`       last_index = n;                                                         -- flags used to select terminal postscript from nps or from end_ps`
`       if '' ~= args.postscript then                           `
`           last_ps = n;`
`       end`
`       `
`       n = n+1;                                                                -- bump for the next one`
`   end`
`   `
`   local name = table.concat (footnote):gsub ('%s+', ' ');                     -- put the footnote together and strip redundant space`
`   `
`   args.end_ps = pframe.args.postscript or pframe.args.ps or '.';              -- this is the postscript for the whole not for the individual sources`
`   if 'none' == args.end_ps then                                               -- not an original sfnm parameter value; added for compatibility with other footnote templates`
`       args.end_ps = '';`
`   end`

`   local result = table.concat ({table.concat (out, '; '), (last_index == last_ps) and '' or  args.end_ps});`
`   return frame:extensionTag ({name='ref', args={name=name}, content=result});`

end

\--[--------------------------\< E X P O R T T A B L E \>------------------------------------------------------](https://zh.wikipedia.org/wiki/--------------------------\<_E_X_P_O_R_T_T_A_B_L_E_\>------------------------------------------------------ "wikilink")

return {

`   harvard_citation = harvard_citation,`
`   sfn = sfn,`
`   sfnm = sfnm,`
`   };`