> 本文内容由[模块:Infobox multi-lingual name](https://zh.wikipedia.org/wiki/模块:Infobox_multi-lingual_name)转换而来。


\--[TODO: all non-English text wrapped in {{lang}}? distingush various scripts? Kanji is ja-Hani ... every child infobox should support translit / transcription parameter(s) every child infobox should have a literal meaning parameter revise parameter names to be IETF language code or obvious derivations thereof for error messaging create a separate ibox? else messages are not necessarily visible](https://zh.wikipedia.org/wiki/TODO:_all_non-English_text_wrapped_in_{{lang}}?_distingush_various_scripts?_Kanji_is_ja-Hani_..._every_child_infobox_should_support_translit_/_transcription_parameter\(s\)_every_child_infobox_should_have_a_literal_meaning_parameter_revise_parameter_names_to_be_IETF_language_code_or_obvious_derivations_thereof_for_error_messaging_create_a_separate_ibox?_else_messages_are_not_necessarily_visible "wikilink")

require('Module:No globals'); local data = mw.loadData ('Module:Infobox multi-lingual name/data'); local lang_mod = require ('Module:Lang'); -- for various functions and templates provided by Module:Lang local getArgs = require ('Module:Arguments').getArgs;

\--[--------------------------\< I S _ S E T \>------------------------------------------------------------------ Returns true if argument is set; false otherwise. Argument is 'set' when it exists (not nil) or when it is not an empty string.](https://zh.wikipedia.org/wiki/--------------------------\<_I_S_S_E_T_\>------------------------------------------------------------------_Returns_true_if_argument_is_set;_false_otherwise._Argument_is_'set'_when_it_exists_\(not_nil\)_or_when_it_is_not_an_empty_string. "wikilink")

local function is_set( var )

`   return not (var == nil or var == '');`

end

\--[--------------------------\< A N Y _ S E T \>---------------------------------------------------------------- Returns true if any member of the table is set; false otherwise. Argument is 'set' when it exists (not nil) or when it is not an empty string.](https://zh.wikipedia.org/wiki/--------------------------\<_A_N_Y_S_E_T_\>----------------------------------------------------------------_Returns_true_if_any_member_of_the_table_is_set;_false_otherwise._Argument_is_'set'_when_it_exists_\(not_nil\)_or_when_it_is_not_an_empty_string. "wikilink")

local function any_set (t)

`   for _, v in pairs (t) do`
`       if is_set (v) then`
`           return true;`
`       end`
`   end`
`   `
`   return false;`

end

\--\[\[--------------------------\< S H O W F L A G \>--------------------------------------------------------------

This function handles the |showflag= parameter from the template . That template passes the value to  which {{\#invoke:}}s this module/function. This function does not take any frame parameters. All parameters used by this function come from the  template parent frame.

This function returns a child infobox or an empty string

{{\#invoke:Infobox multi-lingual name|showflag}}

\]\]

local function showflag (frame, args)

`   local pframe = frame:getParent();                                           -- there are no frame arguments for this function; all arguments must come from the parent (the template)`

\-- local show_flag = pframe.args.showflag;

`   local show_flag = args.showflag; `

`   if not is_set (show_flag) then`
`       return '';                                                              -- |showflag= not set so nothing to do; return empty string`
`   end`

`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   infobox_args['child'] = 'yes';                                              -- showflag infoboxen are always children`
`   infobox_args['labelstyle'] = 'font-weight:normal';                          -- and always have this label style`

`   if data.transl_map[show_flag] then`
`       local i=1;`
`       while (1) do`
`           local labeln = 'label' .. i;                                        -- make label index that matches |labeln= parameter `
`           local datan = 'data' .. i;                                          -- make data index that matches |datan= parameter `
`           if not data.transl_map[show_flag][labeln] then`
`               break;                                                          -- not found then done`
`           end`
`           infobox_args[labeln] = data.label_map[data.transl_map[show_flag][labeln]];  -- add |labeln=`<label text / wikilink>

\-- infobox_args\[datan\] = pframe.args\[data.transl_map\[show_flag\]\[datan\]\]; -- add |datan=

`           infobox_args[datan] = args[data.transl_map[show_flag][datan]];      -- add |datan=`
`           i = i + 1;                                                          -- bump to next label / data pair`
`       end`
`   else`
`       return '';                                                              -- |showflag= value invalid; TODO: return error message?`
`   end`
`   `
`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`
`   end`

\--[--------------------------\< A D D _ L A B E L _ D A T A _ P A I R \>---------------------------------------- Adds a label parameter and matching data parameter to infobox arguments table; bumps the enumerator on return](https://zh.wikipedia.org/wiki/--------------------------\<_A_D_D_L_A_B_E_L_D_A_T_A_P_A_I_R_\>----------------------------------------_Adds_a_label_parameter_and_matching_data_parameter_to_infobox_arguments_table;_bumps_the_enumerator_on_return "wikilink")

local function add_label_data_pair (infobox_args, label, data, i)

`   if is_set (data) then`
`       infobox_args['label' .. i] = label;                                     -- make an enumerated label parameter`
`       infobox_args['data' .. i] = data;                                       -- make an enumerated data parameter`
`   `
`       return i + 1;                                                           -- return bumped enumerator`
`   end`

`   return i;                                                                   -- if here, no data so no need to add label or bump enumerator`

end

\--\[\[--------------------------\< A D D _ T R A N S C R I P T I O N \>--------------------------------------------

This function does that repetative work when assembling the parameter list for  template

inputs are:

`   infobox_args - table of infobox parameters`
`   args - args table from the {{#invoke:}} frame`
`   idx - index into xscript table`
`   show - pseudo-boolean (true or nil) header display flag; when true display the header`
`   i - enumerator for `` parameters |headern=, |labeln=, |datan=; in this application i continually`
`       increments; there are no gaps as there are in the original template`
`   lang - language code used by `` - must be valid IETF code`

returns i for the next time this function is called

\]\]

local function add_transcription (infobox_args, args, idx, show, i, lang)

`   infobox_args['header' .. i] = show and data.xscript[idx].header;            -- if headers are displayed`
`   i = i + 1;                                                                  -- bump the enumerator`
`   for _, v in ipairs (data.xscript[idx].t) do                                 -- each label / data pair in the xscript subtable`
`       i = add_label_data_pair (infobox_args, v[1], is_set (args[v[2]]) and lang_mod._transl ({lang, args[v[2]], italic = 'no'}), i);  -- enumerator is bumped here`
`   end`
`   `
`   return i;                                                                   -- and done`

end

\--[--------------------------\< T R A N S C R I P T I O N S _ Z H \>-------------------------------------------- transcriptions support for {{Infobox Chinese/Chinese}}. This function adds headers and label data pairs to infobox_arg table according to which parameters are set returns the enumerator in case it is needed](https://zh.wikipedia.org/wiki/--------------------------\<_T_R_A_N_S_C_R_I_P_T_I_O_N_S_Z_H_\>--------------------------------------------_transcriptions_support_for_{{Infobox_Chinese/Chinese}}._This_function_adds_headers_and_label_data_pairs_to_infobox_arg_table_according_to_which_parameters_are_set_returns_the_enumerator_in_case_it_is_needed "wikilink")

local function transcriptions_zh (infobox_args, args, show, i)

`   if any_set ({args.p, args.bpmf, args.gr, args.w, args.tp, args.myr, args.mps, args.mi}) then`
`       i = add_transcription (infobox_args, args, 'standard mandarin', show, i, 'zh');`
`   end`

`   if any_set ({args.xej, args['zh-dungan'], args.sic}) then`
`       i = add_transcription (infobox_args, args, 'other mandarin', show, i, 'zh');`
`   end`
`       `
`   if any_set ({args.wuu, args.lmz, args.ouji, args.suz}) then                 -- ???? ouji was not included here in original template; why?`
`       i = add_transcription (infobox_args, args, 'wu', show, i, 'wuu');`
`   end`
`   `
`   if is_set (args.gan) then`
`       i = add_transcription (infobox_args, args, 'gan', show, i, 'gan');`
`   end`
`   `
`   if is_set (args.hsn) then`
`       i = add_transcription (infobox_args, args, 'xiang', show, i, 'hsn');`
`   end`

`   if any_set ({args.h, args.phfs}) then`
`       i = add_transcription (infobox_args, args, 'hakka', show, i, 'hak');`
`   end`

`   if any_set ({args.y, args.ci, args.j, args.sl, args.gd, args.hk, args.mo}) then -- ???? sl, hk, mo not here in original; why?`
`       i = add_transcription (infobox_args, args, 'yue cantonese', show, i, 'yue');`
`   end`

`   if is_set (args.toi) then`
`       i = add_transcription (infobox_args, args, 'other yue', show, i, 'yue');`
`   end`

`   if any_set ({args.poj, args.tl, args.bp, args.teo, args.hain, args.lizu}) then  -- ???? bp not here in original; why?`
`       i = add_transcription (infobox_args, args, 'southern min', show, i, 'nan');`
`   end`

`   if is_set (args.buc) then`
`       i = add_transcription (infobox_args, args, 'eastern min', show, i, 'cdo');`
`   end`

`   if is_set (args.hhbuc) then`
`       i = add_transcription (infobox_args, args, 'pu-xian min', show, i, 'cpx');`
`   end`

`   if is_set (args.mblmc) then`
`       i = add_transcription (infobox_args, args, 'northern min', show, i, 'mnp');`
`   end`

`   if is_set (args['phagspa-latin']) then                                      -- phagspa is a script`
`       i = add_transcription (infobox_args, args, 'old mandarin', show, i, 'zh');`
`   end`

`   if any_set ({args.mc, args.emc, args.lmc}) then`
`       i = add_transcription (infobox_args, args, 'middle chinese', show, i, 'ltc');`
`   end`

`   if any_set ({args['oc-b92'], args['oc-bs'], args['oc-zz']}) then`
`       i = add_transcription (infobox_args, args, 'old chinese', show, i, 'och');`
`   end`

`   return i;                                                                   -- return current state of the enumerator`

end

\--[--------------------------\< T R A N S C R I P T I O N S \>-------------------------------------------------- This function handles the transcription infobox called by various {{Infobox Chinese/xxx}}. Creates header and label / data pairs according to the presence of certain parameters provided to {{Infobox Chinese}}](https://zh.wikipedia.org/wiki/--------------------------\<_T_R_A_N_S_C_R_I_P_T_I_O_N_S_\>--------------------------------------------------_This_function_handles_the_transcription_infobox_called_by_various_{{Infobox_Chinese/xxx}}._Creates_header_and_label_/_data_pairs_according_to_the_presence_of_certain_parameters_provided_to_{{Infobox_Chinese}} "wikilink")

local function transcriptions (frame, args, lang)

`   if not args then`
`       args = frame.args;`
`   end`
`   local show = 'no' ~= args.hide or nil;                                      -- make boolean-ish for controlling display of headers; |hide=no means show transcriptions without collapsed header`

`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   local i = 1;                                                                -- enumerator used with `` |headern=, |labeln=, and |datan= parameters`

`   if show then`
`       infobox_args['subbox'] = 'yes';`
`       infobox_args['above'] = 'Transcriptions';`
`   else`
`       infobox_args['child'] = 'yes';`
`   end`
`   `
`   infobox_args['bodyclass'] = 'collapsible collapsed';`
`   infobox_args['abovestyle'] = 'font-size: 100%; text-align: left; background-color: #f9ffbc;';   -- TODO: #define various colors in a common config location; and function?`
`   infobox_args['headerstyle'] = 'background-color: #dcffc9;';                 -- TODO: #define various colors in a common config location; and function?`
`   infobox_args['labelstyle'] = 'font-weight:normal;';`

`   if 'zh' == lang then`
`       transcriptions_zh (infobox_args, args, show, i);                        -- special case because there are various headers etc`
`   else`
`       add_transcription (infobox_args, args, data.keys[lang], show, i, lang);         `
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});       -- render the infobox and done`
`   end`

\--\[\[--------------------------\< I B O X _ B O I L E R P L A T E \>----------------------------------------------

boilerplate style settings for the various child infoboxen (not for transcription infoboxen) beause they are mostly the same child-infobox to child-infobox

TODO: |headercolor= is set to its default color in . Better here than there isn't it? less maintenence headache when a default value is set in only one place; override in the highest level appropriate but leave the default here. in the higher-level template(s) remove |headercolor= default values

\]\]

local function ibox_boilerplate (infobox_args, args)

`   infobox_args['child'] = 'yes';`
`   local h_color;`
`   if is_set (args.headercolor) then`
`       h_color = args.headercolor;`
`   else`
`       h_color = '#b0c4de'                                                     -- TODO: #define various colors in a common config location; and / or function?`
`   end`
`   `
`   infobox_args['headerstyle'] = 'background-color: ' ..  h_color .. ';';`
`   `
`   if is_set (args.fontstyle) then                                             -- ???? |fontstyle= not a documented parameter; supported by `` and `
`       infobox_args['labelstyle'] = 'font-weight:' .. fontstyle .. ';';`
`   else`
`       infobox_args['labelstyle'] = 'font-weight:normal;';`
`   end`
`   `

end

\--\[\[--------------------------\< I B O X _ M L N _ Z H \>--------------------------------------------------------

bypasses

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_zh}}

\]\]

local function ibox_mln_zh (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`

`   ibox_boilerplate (infobox_args, args)   `

`   if 'none' ~= args.header and 'none' ~= args.chinese_header then`
`       infobox_args['header1'] = args.header or args.chinese_header or 'Chinese name';`
`   end`

`   local i = 2;`
`   `
`   i = add_label_data_pair (infobox_args, '`[`汉语`](../Page/汉语.md "wikilink")`', is_set (args.c) and lang_mod._lang ({'zh-Hani', args.c, size = '1rem'}), i)`

`   if 'st' == args.order then`
`       i = add_label_data_pair (infobox_args, '`[`简化字`](https://zh.wikipedia.org/wiki/简化字 "wikilink")`', is_set (args.s) and lang_mod._lang ({'zh-Hans', args.s, size = '1rem'}), i)`
`       i = add_label_data_pair (infobox_args, '`[`繁体字`](../Page/繁体字.md "wikilink")`', is_set (args.t) and lang_mod._lang ({'zh-Hant', args.t, size = '1rem'}), i)`
`   else`
`       i = add_label_data_pair (infobox_args, '`[`繁体字`](../Page/繁体字.md "wikilink")`', is_set (args.t) and lang_mod._lang ({'zh-Hant', args.t, size = '1rem'}), i)`
`       i = add_label_data_pair (infobox_args, '`[`简化字`](https://zh.wikipedia.org/wiki/简化字 "wikilink")`', is_set (args.s) and lang_mod._lang ({'zh-Hans', args.s, size = '1rem'}), i)`
`   end`

`   if is_set (args.phagspa) then                                               -- ???? this parameter isn't passed from `` to `
`       i = add_label_data_pair (infobox_args, '`[`\'Phags-pa``   ``script`](https://zh.wikipedia.org/wiki//'Phags-pa_script "wikilink")`', frame:expandTemplate ({title='Phagspa', args = {'h', args.phagspa, args['phagspa-latin'], size = 12}}), i)`
`   end`

`   infobox_args['data' .. i] = showflag (frame, args);                         -- needs frame so that it can frame:expandTemplate()`
`   i = i + 1;`
`                                                                               -- ???? why is this transliteration here and not part of the transcription list?`
`   i = add_label_data_pair (infobox_args, '`[`邮政式拼音`](https://zh.wikipedia.org/wiki/邮政式拼音 "wikilink")`', is_set (args.psp) and args.psp or nil, i)`

`   i = add_label_data_pair (infobox_args, '字面意思', is_set (args.l) and args.l or nil, i)`

`   if 'no' == args.hide then`
`       infobox_args['rowstyle' .. i] = 'display:none;';`
`       infobox_args['rowcellstyle' .. i] = 'display:none;';`
`   end`
`   `
`   if any_set ({args.c, args.t, args.p, args.s, args.phagspa}) then            -- ???? phagspa not passed into ``  Why?`
`       infobox_args['data' .. i] = transcriptions (frame, args, 'zh');         -- needs frame so that it can frame:expandTemplate()`
`   end`
`   `
`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`
`   end`

\--\[\[-------------------------\< I B O X _ M L N _ A R \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_ar}}

Template:Infobox_Arabic_term/testcases

TODO: standardize on lowercase parameter names for transcriptions

\]\]

local function ibox_mln_ar (frame, args)

`   if not args then`
`       args = getArgs (frame);                                                 --, {removeBlanks = false}?`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`

`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.arabic_header then`
`       infobox_args['header1'] = args.header or args.arabic_header or 'Arabic name';`
`   end`
`   `
`   local i = 2;`

`   i = add_label_data_pair (infobox_args, '`[`Arabic`](https://zh.wikipedia.org/wiki/Arabic "wikilink")`', is_set (args.arabic) and args.arabic or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Romanization`](https://zh.wikipedia.org/wiki/Romanization_of_Arabic "wikilink")`', is_set (args.arabic_rom) and args.arabic_rom or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`IPA`](https://zh.wikipedia.org/wiki/Help:IPA_for_Arabic "wikilink")`', is_set (args.arabic_ipa) and args.arabic_ipa or nil, i)`
`   i = add_label_data_pair (infobox_args, 'Literal meaning', is_set (args.arabic_lit) and args.arabic_lit or nil, i)`

`   if any_set ({args.chat, args.Chat, args['ala-lc'], args['ALA-LC'], args.iso, args.ISO, args.din, args.DIN}) then`
`       infobox_args['data' .. i] = transcriptions (frame, args, 'ar');         -- needs frame so that it can frame:expandTemplate()`
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ B L A N K \>---------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_blank}}

TODO: support transl somehow? to accommodate stuff like: |msa=تيمور جاوء
Timur Jauh which is bad

\]\]

local function ibox_mln_blank (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   local ietf_code = lang_mod._is_ietf_code (args.lang);`
`   local name_from_code = ietf_code and lang_mod._name_from_code ({args.lang}) or nil;`

`   if 'none' ~= args.header and 'none' ~= args.blank_header then`
`       if is_set (args.header) or is_set (args.blank_header) then              -- if either of these`
`           infobox_args['header1'] = args.header or args.blank_header;         -- make a header from them`
`       elseif ietf_code then`
`           infobox_args['header1'] = name_from_code .. ' name';                -- make a header from the language name`
`       else`
`           infobox_args['header1'] = args.lang .. ' name';                     -- not a code so use whatever text is in `
`       end`
`   end`
`   `
`   local i = 2;`
`   local label;`
`   local data;`
`   `
`   if name_from_code then`
`       if is_set (args.lang_article) then`
`           label = table.concat ({                                             -- make a linked label from provided article name`
`               '[[',`
`               args.lang_article,`
`               '|',`
`               name_from_code,`
`               ']]'`
`               });`
`       else`
`           label = lang_mod._name_from_code ({args.lang, ['link'] = 'yes'})    -- let lang module make the correct linked label`
`       end`
`   `
`       data = lang_mod._lang ({args.lang, args.lang_content}); `
`   else`
`       label = args.lang;                                                      -- fall back`
`       data = args.lang_content;`
`   end`
`   `
`   i = add_label_data_pair (infobox_args, label, data, i)`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ B O \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_bo}}

\]\]

local function ibox_mln_bo (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.tibetan_header then`
`       infobox_args['header1'] = args.header or args.tibetan_header or 'Tibetan name';`
`   end`
`   `
`   local i = 2;`

`   i = add_label_data_pair (infobox_args, '`[`Tibetan`](https://zh.wikipedia.org/wiki/Tibetan_alphabet "wikilink")`', is_set (args.tib) and frame:expandTemplate ({title='Bo-textonly', args = {lang = 'bo', args.tib}}) or nil, i)`
`   i = add_label_data_pair (infobox_args, 'Literal meaning', is_set (args.literal_tibetan) and args.literal_tibetan or nil, i)`

`   if any_set ({args.wylie, args.thdl, args.zwpy, args.lhasa}) then`
`       infobox_args['data' .. i] = transcriptions (frame, args, 'bo');         -- needs frame so that it can frame:expandTemplate()`
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ D N G \>-------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_dng}}

\]\]

local function ibox_mln_dng (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.dunganese_header then`
`       infobox_args['header1'] = args.header or args.dunganese_header or 'Dunganese name';`
`   end`
`   `
`   local i = 2;`

`   i = add_label_data_pair (infobox_args, '`[`Dungan`](https://zh.wikipedia.org/wiki/Dungan_language "wikilink")`', is_set (args.dungan) and args.dungan or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Xiao\'erjing`](https://zh.wikipedia.org/wiki/Xiao/'erjing "wikilink")`', is_set (args['dungan-xej']) and args['dungan-xej'] or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Romanization`](https://zh.wikipedia.org/wiki/Romanization "wikilink")`', is_set (args['dungan-latin']) and args['dungan-latin'] or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Hanzi`](https://zh.wikipedia.org/wiki/Hanzi "wikilink")`', is_set (args['dungan-han']) and args['dungan-han'] or nil, i)`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ H O K K I E N \>-----------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_hokkien}}

Template:Infobox Hokkien name/testcases

\]\]

local function ibox_mln_hokkien (frame, args)

`   if not args then`
`       args = getArgs (frame);                                                 --, {removeBlanks = false}?`
`   end`
`   local show = 'no' ~= args.hide or nil;                                      -- make boolean-ish for controlling display of headers; |hide=no means show transcriptions without collapsed header`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.hokkien_header then`
`       infobox_args['header1'] = args.header or args.hokkien_header or 'Hokkien name';`
`   end`
`   `
`   local i = 2;`
`   `
`   i = add_label_data_pair (infobox_args, '`[`Hàn-jī`](https://zh.wikipedia.org/wiki/Hàn-jī "wikilink")`', is_set (args.hanji) and lang_mod._lang ({'nan', args.hanji, size = '115%'}) or nil, i);`
`   i = add_label_data_pair (infobox_args, '`[`Pe̍h-ōe-jī`](https://zh.wikipedia.org/wiki/Pe̍h-ōe-jī "wikilink")`', is_set (args.poj) and lang_mod._lang ({'nan', args.poj, size = '115%'}) or nil, i);`
`   i = add_label_data_pair (infobox_args, '`[`Hàn-lô`](https://zh.wikipedia.org/wiki/Hàn-lô "wikilink")`', is_set (args.hanlo) and lang_mod._lang ({'nan', args.hanlo, size = '115%'}) or nil, i);`
`   i = add_label_data_pair (infobox_args, 'Literal meaning', is_set (args.lm) and args.lm or nil, i)`

`   if show then`
`       if any_set ({args.tl, args.bp, args.hokkienipa}) then`
`           infobox_args['data' .. i] = transcriptions (frame, args, 'hokkien');    -- needs frame so that it can frame:expandTemplate()`
`       end`
`   else`
`       i = add_label_data_pair (infobox_args, '`[`Tâi-lô`](https://zh.wikipedia.org/wiki/Taiwanese_Romanization_System "wikilink")`', is_set (args.tl) and args.tl or nil, i)`
`       i = add_label_data_pair (infobox_args, '`[`Bbánpìng`](https://zh.wikipedia.org/wiki/Bbánlám_pìngyīm "wikilink")`', is_set (args.bp) and args.bp or nil, i)`
`       i = add_label_data_pair (infobox_args, '`[`IPA`](https://zh.wikipedia.org/wiki/Help:IPA_for_Hokkien "wikilink")`', is_set (args.hokkienipa) and args.hokkienipa or nil, i)`
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ J A \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_ja}}

\]\]

local function ibox_mln_ja (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.japanese_header then`
`       infobox_args['header1'] = args.header or args.japanese_header or 'Japanese name';`
`   end`
`   `
`   local i = 2;`
`   `
`   i = add_label_data_pair (infobox_args, '`[`Kanji`](https://zh.wikipedia.org/wiki/Kanji "wikilink")`', is_set (args.kanji) and lang_mod._lang ({'ja', args.kanji}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Kana`](https://zh.wikipedia.org/wiki/Kana "wikilink")`', is_set (args.kana) and lang_mod._lang ({'ja', args.kana}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Hiragana`](https://zh.wikipedia.org/wiki/Hiragana "wikilink")`', is_set (args.hiragana) and lang_mod._lang ({'ja', args.hiragana}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Katakana`](https://zh.wikipedia.org/wiki/Katakana "wikilink")`', is_set (args.katakana) and lang_mod._lang ({'ja', args.katakana}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Kyūjitai`](https://zh.wikipedia.org/wiki/Kyūjitai "wikilink")`', is_set (args.kyujitai) and lang_mod._lang ({'ja', args.kyujitai}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Shinjitai`](https://zh.wikipedia.org/wiki/Shinjitai "wikilink")`', is_set (args.shinjitai) and lang_mod._lang ({'ja', args.shinjitai}) or nil, i)`

`   if any_set ({args.romaji, args.revhep, args.tradhep, args.kunrei, args.nihon}) then`
`       infobox_args['data' .. i] = transcriptions (frame, args, 'ja');         -- needs frame so that it can frame:expandTemplate()`
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ K O \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_ko}}

\]\]

local function ibox_mln_ko (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local show = 'no' ~= args.hide or nil;                                      -- make boolean-ish for controlling display of headers; |hide=no means show transcriptions without collapsed header`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.korean_header then`
`       infobox_args['header1'] = args.header or args.korean_header or 'Korean name';`
`   end`
`   `
`   local i = 2;`
`   `
`   if 'yes' == args.northkorea then`
`       i = add_label_data_pair (infobox_args, '`[`Chosŏn\'gŭl`](https://zh.wikipedia.org/wiki/Hangul "wikilink")`', is_set (args.hangul) and lang_mod._lang ({'ko', args.hangul, size = '1rem'}) or nil, i)`
`   elseif 'old' == args.northkorea then`
`       i = add_label_data_pair (infobox_args, '`[`Hunminjeongeum`](https://zh.wikipedia.org/wiki/Hunminjeongeum "wikilink")`', is_set (args.hangul) and lang_mod._lang ({'ko', args.hangul, size = '1rem'}) or nil, i)`
`   else`
`       i = add_label_data_pair (infobox_args, '`[`Hangul`](https://zh.wikipedia.org/wiki/Hangul "wikilink")`', is_set (args.hangul) and lang_mod._lang ({'ko', args.hangul, size = '1rem'}) or nil, i)`
`   end`

`   if 'yes' == args.northkorea then`
`       i = add_label_data_pair (infobox_args, '`[`Hancha`](https://zh.wikipedia.org/wiki/Hanja "wikilink")`', is_set (args.hanja) and lang_mod._lang ({'ko', args.hanja, size = '1rem'}) or nil, i)`
`   else`
`       i = add_label_data_pair (infobox_args, '`[`Hanja`](https://zh.wikipedia.org/wiki/Hanja "wikilink")`', is_set (args.hanja) and lang_mod._lang ({'ko', args.hanja, size = '1rem'}) or nil, i)`
`   end`
`   `
`   i = add_label_data_pair (infobox_args, 'Literal meaning', is_set (args.lk) and args.lk or nil, i)`

`   if show then`
`       if any_set ({args.mr, args.rr}) then`
`           infobox_args['data' .. i] = transcriptions (frame, args, 'ko');     -- needs frame so that it can frame:expandTemplate()`
`       end`
`   else`
`       i = add_label_data_pair (infobox_args, '`[`Revised``   ``Romanization`](https://zh.wikipedia.org/wiki/Revised_Romanization_of_Korean "wikilink")`', is_set (args.rr) and lang_mod._transl ({'ko', 'rr', args.rr}) or nil, i)`
`       i = add_label_data_pair (infobox_args, '`[`McCune–Reischauer`](https://zh.wikipedia.org/wiki/McCune–Reischauer "wikilink")`', is_set (args.mr) and lang_mod._transl ({'ko', 'mr', args.mr}) or nil, i)`
`       i = add_label_data_pair (infobox_args, '`[`IPA`](https://zh.wikipedia.org/wiki/Help:IPA/Korean "wikilink")`', is_set (args.koreanipa) and args.koreanipa or nil, i)`
`   end`
`   `
`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ M N \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_mn}}

\]\]

local function ibox_mln_mn (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.mongolian_header then`
`       infobox_args['header1'] = args.header or args.mongolian_header or 'Mongolian name';`
`   end`
`   `
`   local i = 2;`
`   `
`   i = add_label_data_pair (infobox_args, '`[`Mongolian``   ``Cyrillic`](https://zh.wikipedia.org/wiki/Mongolian_Cyrillic_script "wikilink")`',`
`       is_set (args.mon) and lang_mod._lang ({'mn', args.mon}) or nil, i)`

\-- i = add_label_data_pair (infobox_args, '[Mongolian](https://zh.wikipedia.org/wiki/Mongolian_language "wikilink")', -- TODO: weird construct in original template; is this one required? -- is_set (args.mong) and lang_mod._lang ({'mn', frame:expandTemplate ({title='MongolUnicode', args = {args.mong}}) }) or nil, i)

`   i = add_label_data_pair (infobox_args, '`[`Mongolian``   ``script`](https://zh.wikipedia.org/wiki/Mongolian_script "wikilink")`',`
`       is_set (args.mong) and lang_mod._lang ({'mn', frame:expandTemplate ({title='MongolUnicode', args = {args.mong}}) }) or nil, i)`

`   if is_set (args.monr) then`
`       infobox_args['data' .. i] = transcriptions (frame, args, 'mn');         -- needs frame so that it can frame:expandTemplate()`
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ M N C \>-------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_mnc}}

\]\]

local function ibox_mln_mnc (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.manchu_header then`
`       infobox_args['header1'] = args.header or args.manchu_header or 'Manchu name';`
`   end`
`   `
`   local i = 2;`
`   `
`   i = add_label_data_pair (infobox_args, '`[`Manchu``   ``script`](https://zh.wikipedia.org/wiki/Manchu_alphabet "wikilink")`', is_set (args.mnc) and frame:expandTemplate ({title='ManchuSibeUnicode', args = {lang='mnc', args.mnc}}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Romanization`](https://zh.wikipedia.org/wiki/Transliterations_of_Manchu "wikilink")`', is_set (args.mnc_rom) and args.mnc_rom or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Abkai`](https://zh.wikipedia.org/wiki/Transliterations_of_Manchu "wikilink")`', is_set (args.mnc_a) and args.mnc_a or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Möllendorff`](https://zh.wikipedia.org/wiki/Transliterations_of_Manchu "wikilink")`', is_set (args.mnc_v) and args.mnc_v or nil, i)`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ M Y \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_my}}

\]\]

local function ibox_mln_my (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.burmese_header then`
`       infobox_args['header1'] = args.header or args.burmese_header or 'Burmese name';`
`   end`
`   `
`   local i = 2;`

`   i = add_label_data_pair (infobox_args, '`[`Burmese`](https://zh.wikipedia.org/wiki/Burmese_language "wikilink")`', is_set (args.my) and args.my or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`IPA`](https://zh.wikipedia.org/wiki/Wikipedia:IPA_for_Burmese "wikilink")`', is_set (args.bi) and args.bi or nil, i)`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ R U \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_ru}}

\]\]

local function ibox_mln_ru (frame, args)

`   if not args then`
`       args = getArgs (frame);`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.russian_header then`
`       infobox_args['header1'] = args.header or args.russian_header or 'Russian name';`
`   end`
`   `
`   local i = 2;`
`   `
`   i = add_label_data_pair (infobox_args, '`[`Russian`](https://zh.wikipedia.org/wiki/Russian_language "wikilink")`', is_set (args.rus) and lang_mod._lang ({'ru', args.rus}) or nil, i);`
`   i = add_label_data_pair (infobox_args, '`[`Romanization`](https://zh.wikipedia.org/wiki/Romanization_of_Russian "wikilink")`', is_set (args.rusr) and lang_mod._lang ({'ru-Latn', args.rusr}) or nil, i);   --TODO: use transl instead?`
`   i = add_label_data_pair (infobox_args, '`[`IPA`](https://zh.wikipedia.org/wiki/Wikipedia:IPA_for_Russian "wikilink")`', is_set (args.rusipa) and args.rusipa or nil, i);`
`   i = add_label_data_pair (infobox_args, 'Literal meaning', is_set (args.ruslit) and args.ruslit or nil, i);`

`   if any_set ({args.scientific, args.Scientific, args.iso, args.ISO, args.gost, args.GOST, args['bgn/pcgn'], args['BGN/PCGN']}) then`
`       infobox_args['data' .. i] = transcriptions (frame, args, 'ru');         -- needs frame so that it can frame:expandTemplate()`
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ T H \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_th}}

\]\]

local function ibox_mln_th (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.thai_header then`
`       infobox_args['header1'] = args.header or args.thai_header or 'Thai name';`
`   end`
`   `
`   local i = 2;`

`   i = add_label_data_pair (infobox_args, '`[`Thai`](https://zh.wikipedia.org/wiki/Thai_language "wikilink")`', is_set (args.tha) and lang_mod._lang ({'th', args.tha}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`RTGS`](https://zh.wikipedia.org/wiki/Royal_Thai_General_System_of_Transcription "wikilink")`', is_set (args.rtgs) and lang_mod._transl ({'th', 'rtgs', args.rtgs}) or nil, i)`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ U G \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_ug}}

\]\]

local function ibox_mln_ug (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.uyghur_header then`
`       infobox_args['header1'] = args.header or args.uyghur_header or 'Uyghur name';`
`   end`
`   `
`   local i = 2;`
`   `
`   i = add_label_data_pair (infobox_args, '`[`Uyghur`](https://zh.wikipedia.org/wiki/Uyghur_language "wikilink")`', is_set (args.uig) and frame:expandTemplate ({title='ug-textonly', args = {args.uig}}) or nil, i)`
`   i = add_label_data_pair (infobox_args, 'Literal meaning', is_set (args.lu) and args.lu or nil, i)`

`   if any_set ({args.uly, args.uyy, args.sgs, args.usy, args.uipa}) then`
`       infobox_args['data' .. i] = transcriptions (frame, args, 'ug');         -- needs frame so that it can frame:expandTemplate()`
`   end`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ V I \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_vi}}

\]\]

local function ibox_mln_vi (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.vietnamese_header then`
`       infobox_args['header1'] = args.header or args.vietnamese_header or 'Vietnamese name';`
`   end`
`   `
`   local i = 2;`

`   i = add_label_data_pair (infobox_args, '`[`Vietnamese`](https://zh.wikipedia.org/wiki/Vietnamese_language "wikilink")`', is_set (args.vie) and lang_mod._lang ({'vi', args.vie}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Vietnamese``   ``alphabet`](https://zh.wikipedia.org/wiki/Vietnamese_alphabet "wikilink")`', is_set (args.qn) and lang_mod._lang ({'vi', args.qn}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Hán-Nôm`](https://zh.wikipedia.org/wiki/Hán-Nôm "wikilink")`', is_set (args.hn) and lang_mod._lang ({'vi-Hani', args.hn}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Chữ``   ``Hán`](https://zh.wikipedia.org/wiki/Chữ_Hán "wikilink")`', is_set (args.chuhan) and lang_mod._lang ({'vi-Hani', args.chuhan}) or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Chữ``   ``Nôm`](https://zh.wikipedia.org/wiki/Chữ_Nôm "wikilink")`', is_set (args.chunom) and lang_mod._lang ({'vi-Hani', args.chunom}) or nil, i)`
`   i = add_label_data_pair (infobox_args, 'Literal meaning', is_set (args.lqn) and args.lqn or nil, i)`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ Z A \>---------------------------------------------------------

implements

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_za}}

\]\]

local function ibox_mln_za (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   `
`   ibox_boilerplate (infobox_args, args);`

`   if 'none' ~= args.header and 'none' ~= args.zhuang_header then`
`       infobox_args['header1'] = args.header or args.zhuang_header or 'Zhuang name';`
`   end`
`   `
`   local i = 2;`

`   i = add_label_data_pair (infobox_args, '`[`Zhuang`](https://zh.wikipedia.org/wiki/Zhuang_language "wikilink")`', is_set (args.zha) and ('`<span style="font-family: Arial Unicode MS, sans-serif;">`' .. args.zha .. '`</span>`') or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`1957``   ``orthography`](https://zh.wikipedia.org/wiki/Zhuang_language "wikilink")`', is_set (args.zha57) and args.zha57 or nil, i)`
`   i = add_label_data_pair (infobox_args, '`[`Sawndip`](https://zh.wikipedia.org/wiki/Sawndip "wikilink")`', is_set (args.sd) and args.sd or nil, i)`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ H E A D E R \>-------------------------------------------------

bypasses

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_header}}

\]\]

local function ibox_mln_header (frame, args)

`   if not args then`
`       args = getArgs (frame);`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`

`   infobox_args['decat'] = 'yes';`
`   infobox_args['child'] = is_set (args.child) and args.child or 'yes';`
`   infobox_args['bodystyle'] = is_set (args.float) and 'float: left; clear: left; margin: 0 1em 1em 0;' or nil;`
`   infobox_args['bodyclass'] =  is_set (args.collapse) and ('collapsible' .. ('yes' == args.collapse and ' collapsed' or '')) or nil;`

`   local h_color;`
`   if is_set (args.headercolor) then`
`       h_color = args.headercolor;`
`   else`
`       h_color = '#b0c4de'                                                     -- TODO: #define various colors in a common config location; and function?`
`   end`

`   infobox_args['subheaderstyle'] = 'font-size: 125%; background-color:' .. h_color .. ';';`
`   infobox_args['subheader'] = is_set (args.title) and args.title or mw.title.getCurrentTitle().text;`
`   infobox_args['image'] = frame:callParserFunction ({name = '#invoke:InfoboxImage',`
`       args =`
`           {`
`           'InfoboxImage',`
`           image = args.pic,`
`           sizedefault = 'frameless',`
`           size = args.picsize,`
`           upright = args.picupright,`
`           alt = args.picalt or args.pictooltip`
`           }`
`       });`

`   infobox_args['caption'] = is_set (args.piccap) and args.piccap or nil;`

`   infobox_args['image2'] = frame:callParserFunction ({name = '#invoke:InfoboxImage',`
`       args =`
`           {`
`           'InfoboxImage',`
`           image = args.pic2,`
`           sizedefault = 'frameless',`
`           size = args.picsize2,`
`           upright = args.picupright2,`
`           alt = args.picalt2 or args.pictooltip2`
`           }`
`       });`

`   infobox_args['caption2'] = is_set (args.piccap2) and args.piccap2 or nil;`
`   `
`   infobox_args['headerstyle'] = 'background-color:' .. h_color;`
`   infobox_args['headerstyle'] = 'width: 50%; white-space: nowrap';`

`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--\[\[-------------------------\< I B O X _ M L N _ F O O T E R \>-------------------------------------------------

bypasses

Module entry point

{{\#invoke:Infobox multi-lingual name|ibox_mln_footer}}

\]\]

local function ibox_mln_footer (frame, args)

`   if not args then`
`       args = frame.args;`
`   end`
`   local infobox_args = {};                                                    -- table to hold arguments for frame:expandTemplate()`
`   infobox_args['decat'] = 'yes';`
`   infobox_args['child'] = is_set (args.child) and args.child or 'yes';`
`   infobox_args['bodystyle'] = '';                                             -- present in wikisource template but not assigned a value there`
`   infobox_args['below'] = args.footnote;`
`   `
`   return frame:expandTemplate ({title='Infobox', args = infobox_args});`

end

\--[-------------------------\< I B O X _ Z H Z H _ E N U M _ P A R A M S _ G E T \>----------------------------](https://zh.wikipedia.org/wiki/-------------------------\<_I_B_O_X_Z_H_Z_H_E_N_U_M_P_A_R_A_M_S_G_E_T_\>---------------------------- "wikilink")

local function ibox_zhzh_enum_params_get (args, i)

`   local ibox_args = {};`
`   local count = 0;                                                            -- counts how many args got added to ibox_args {}`

`   for _, v in ipairs (data.ibox_zhzh_enum_params) do                          -- add enumerated parameters`
`       if args[v .. i] then                                                    -- only when there is an assigned value`
`           ibox_args[v] = args[v .. i];                                        -- add`
`           count = count + 1;                                                  -- and tally`
`       end`
`   end`

`   return 0 ~= count and ibox_args or nil;                                     -- if table is empty return nil as a flag`

end

\--[--------------------------\< A R \>-------------------------------------------------------------------------- ----\< A R A B I C \>----](https://zh.wikipedia.org/wiki/--------------------------\<_A_R_\>--------------------------------------------------------------------------_----\<_A_R_A_B_I_C_\>---- "wikilink")

local function ar (frame, args)

`   if is_set ({args.arabic, args.arabic_rom, args.arabic_ipa, args.arabic_lit}) then`
`       local ibox_args = {`

\-- \['arabic_header'\] = args.tib and 'Arabic name', -- redundant; TODO: support |arabic_header=

`           ['arabic'] = args.arabic,`
`           ['arabic_rom'] = args.arabic_rom,`
`           ['arabic_ipa'] = args.arabic_ipa,`
`           ['arabic_lit'] = args.arabic_lit or args['literal meaning'],        -- 'literal meaning' is from ``; itis param name a good idea?  TODO: unify parameter names`
`           ['chat'] = args.chat or args.Chat,                                  -- TODO: unify parameter names`
`           ['ala-lc'] = args['ala-lc'] or args['ALA-LC'],                      -- TODO: unify parameter names`
`           ['iso'] = args.iso or args.ISO,                                     -- TODO: unify parameter names`
`           ['din'] = args.din or args.DIN                                      -- TODO: unify parameter names`
`           }`
`           `
`       return ibox_mln_ar (frame, ibox_args);`
`   end`

end

\--[--------------------------\< A S \>-------------------------------------------------------------------------- ----\< A S S A M E S E \>----](https://zh.wikipedia.org/wiki/--------------------------\<_A_S_\>--------------------------------------------------------------------------_----\<_A_S_S_A_M_E_S_E_\>---- "wikilink")

local function as (frame, args)

`   if args.asm then`
`       local ibox_args = {`
`           ['lang'] = 'as',`
`           ['lang_content'] = args.asm,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< B N \>-------------------------------------------------------------------------- ----\< B E N G A L I \>----](https://zh.wikipedia.org/wiki/--------------------------\<_B_N_\>--------------------------------------------------------------------------_----\<_B_E_N_G_A_L_I_\>---- "wikilink")

local function bn (frame, args)

`   if args.ben then`
`       local ibox_args = {`
`           ['lang'] = 'bn',`
`           ['lang_content'] = args.ben,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< B O \>-------------------------------------------------------------------------- ----\< T I B E T A N \>----](https://zh.wikipedia.org/wiki/--------------------------\<_B_O_\>--------------------------------------------------------------------------_----\<_T_I_B_E_T_A_N_\>---- "wikilink")

local function bo (frame, args)

`   if any_set ({args.tib, args.wylie, args.thdl, args.zwpy, args.lhasa}) then`
`       local ibox_args = {`

\-- \['tibetan_header'\] = args.tib and 'Tibetan name', -- redundant; TODO: support |burmese_header=

`           ['hide'] = args.hide,`
`           ['tib'] = args.tib,`
`           ['wylie'] = args.wylie,`
`           ['thdl'] = args.thdl,`
`           ['zwpy'] = args.zwpy,`
`           ['lhasa'] = args.lhasa,`
`           }`
`           `
`       return ibox_mln_bo (frame, ibox_args);`
`   end`

end

\--[--------------------------\< D N G \>------------------------------------------------------------------------ ----\< D U N G A N E S E \>----](https://zh.wikipedia.org/wiki/--------------------------\<_D_N_G_\>------------------------------------------------------------------------_----\<_D_U_N_G_A_N_E_S_E_\>---- "wikilink")

local function dng (frame, args)

`   if any_set ({args.dungan, args['dungan-xej'], args['dungan-han']}) then`
`       local ibox_args = {`

\-- \['dunganese_header'\] = 'Dunganese name', -- redundant; TODO: support |dungan_header=

`           ['dungan'] = args.dungan,`
`           ['dungan-xej'] = args['dungan-xej'],`
`           ['dungan-han'] = args['dungan-han'],`
`           ['dungan-latin'] = args['dungan-latin'],`
`           }`
`           `
`       return ibox_mln_dng (frame, ibox_args);`
`   end`

end

\--[--------------------------\< H I \>-------------------------------------------------------------------------- ----\< H I N D I \>----](https://zh.wikipedia.org/wiki/--------------------------\<_H_I_\>--------------------------------------------------------------------------_----\<_H_I_N_D_I_\>---- "wikilink")

local function hi (frame, args)

`   if args.hin then`
`       local ibox_args = {`
`           ['lang'] = 'hi',`
`           ['lang_content'] = args.hin,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< I D \>-------------------------------------------------------------------------- ----\< I N D O N E S I A N \>----](https://zh.wikipedia.org/wiki/--------------------------\<_I_D_\>--------------------------------------------------------------------------_----\<_I_N_D_O_N_E_S_I_A_N_\>---- "wikilink")

local function id (frame, args)

`   if args.ind then`
`       local ibox_args = {`
`           ['lang'] = 'id',`
`           ['lang_content'] = args.ind,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< J A \>-------------------------------------------------------------------------- ----\< J A P A N E S E \>----](https://zh.wikipedia.org/wiki/--------------------------\<_J_A_\>--------------------------------------------------------------------------_----\<_J_A_P_A_N_E_S_E_\>---- "wikilink")

local function ja (frame, args)

`   if any_set ({args.kanji, args.kana, args.hiragana, args.katakana, args.kyujitai, args.shinjitai}) then`
`       local ibox_args = {`

\-- \['japanese_header'\] = 'Japanese name', -- redundant; TODO: support |japanese_header=

`           ['hide'] = args.hide,`
`           ['kanji'] = args.kanji,`
`           ['kyujitai'] = args.kyujitai,`
`           ['shinjitai'] = args.shinjitai,`
`           ['kana'] = args.kana,`
`           ['hiragana'] = args.hiragana,`
`           ['katakana'] = args.katakana,`
`           ['romaji'] = args.romaji,`
`           ['revhep'] = args.revhep,`
`           ['tradhep'] = args.tradhep,`
`           ['kunrei'] = args.kunrei,`
`           ['nihon'] = args.nihon,`
`           }`
`           `
`       return ibox_mln_ja (frame, ibox_args);`
`   end`

end

\--[--------------------------\< K M \>-------------------------------------------------------------------------- ----\< K H M E R \>----](https://zh.wikipedia.org/wiki/--------------------------\<_K_M_\>--------------------------------------------------------------------------_----\<_K_H_M_E_R_\>---- "wikilink")

local function km (frame, args)

`   if args.khm then`
`       local ibox_args = {`
`           ['lang'] = 'km',`
`           ['lang_content'] = args.khm,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< K O 1 \>------------------------------------------------------------------------ TODO: handle ko same way as enumerated zh? ----\< K O R E A N (1) \>----](https://zh.wikipedia.org/wiki/--------------------------\<_K_O_1_\>------------------------------------------------------------------------_TODO:_handle_ko_same_way_as_enumerated_zh?_----\<_K_O_R_E_A_N_\(1\)_\>---- "wikilink")

local function ko1 (frame, args)

`   if any_set ({args.hanja, args.hangul}) then`
`       local ibox_args = {`

\-- \['korean_header'\] = 'Korean name', -- redundant; TODO: support |korean_header=

`           ['hide'] = args.hide,`
`           ['hangul'] = args.hangul,`
`           ['hanja'] = args.hanja,`
`           ['rr'] = args.rr,`
`           ['mr'] = args.mr,`
`           ['northkorea'] = args.northkorea,`
`           ['lk'] = args.lk,`
`           }`
`           `
`           `
`       return ibox_mln_ko (frame, ibox_args);`
`   end`

end

\--[--------------------------\< K O 2 \>------------------------------------------------------------------------ TODO: handle ko same way as enumerated zh? ----\< K O R E A N (2) \>----](https://zh.wikipedia.org/wiki/--------------------------\<_K_O_2_\>------------------------------------------------------------------------_TODO:_handle_ko_same_way_as_enumerated_zh?_----\<_K_O_R_E_A_N_\(2\)_\>---- "wikilink")

local function ko2 (frame, args)

`   if any_set ({args.cnhanja, args.cnhangul}) then`
`       local ibox_args = {`
`           ['korean_header'] = '`[`Chinese``   ``Korean`](https://zh.wikipedia.org/wiki/Korean_language_in_China "wikilink")` name',`
`           ['hide'] = args.hide,`
`           ['hangul'] = args.cnhangul,`
`           ['hanja'] = args.cnhanja,`
`           ['rr'] = args.cnrr,`
`           ['mr'] = args.cnmr,`
`           ['northkorea'] = 'yes',`
`           ['lk'] = args.cnlk,`
`           }`
`           `
`       return ibox_mln_ko (frame, ibox_args);`
`   end`

end

\--[--------------------------\< K O 3 \>------------------------------------------------------------------------ TODO: handle ko same way as enumerated zh? ----\< K O R E A N (3) \>----](https://zh.wikipedia.org/wiki/--------------------------\<_K_O_3_\>------------------------------------------------------------------------_TODO:_handle_ko_same_way_as_enumerated_zh?_----\<_K_O_R_E_A_N_\(3\)_\>---- "wikilink")

local function ko3 (frame, args)

`   if any_set ({args.nkhanja, args.nkhangul}) then`
`       local ibox_args = {`
`           ['korean_header'] = 'North Korean name',`
`           ['hide'] = args.hide,`
`           ['hangul'] = args.nkhangul,`
`           ['hanja'] = args.nkhanja,`
`           ['rr'] = args.nkrr,`
`           ['mr'] = args.nkmr,`
`           ['northkorea'] = 'yes',`
`           ['lk'] = args.nklk,`
`           }`
`           `
`       return ibox_mln_ko (frame, ibox_args);`
`   end`

end

\--[--------------------------\< K O 4 \>------------------------------------------------------------------------ TODO: handle ko same way as enumerated zh? ----\< K O R E A N (4) \>----](https://zh.wikipedia.org/wiki/--------------------------\<_K_O_4_\>------------------------------------------------------------------------_TODO:_handle_ko_same_way_as_enumerated_zh?_----\<_K_O_R_E_A_N_\(4\)_\>---- "wikilink")

local function ko4 (frame, args)

`   if any_set ({args.skhanja, args.skhangul}) then`
`       local ibox_args = {`
`           ['korean_header'] = 'South Korean name',`
`           ['hide'] = args.hide,`
`           ['hangul'] = args.skhangul,`
`           ['hanja'] = args.skhanja,`
`           ['rr'] = args.skrr,`
`           ['mr'] = args.skmr,`
`           ['northkorea'] = nil,`
`           ['lk'] = args.sklk,`
`           }`
`           `
`       return ibox_mln_ko (frame, ibox_args);`
`   end`

end

\--[--------------------------\< L O \>-------------------------------------------------------------------------- ----\< L A O \>----](https://zh.wikipedia.org/wiki/--------------------------\<_L_O_\>--------------------------------------------------------------------------_----\<_L_A_O_\>---- "wikilink")

local function lo (frame, args)

`   if args.lao then`
`       local ibox_args = {`
`           ['lang'] = 'lo',`
`           ['lang_content'] = args.lao,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< M N \>-------------------------------------------------------------------------- ----\< M O N G O L I A N \>----](https://zh.wikipedia.org/wiki/--------------------------\<_M_N_\>--------------------------------------------------------------------------_----\<_M_O_N_G_O_L_I_A_N_\>---- "wikilink")

local function mn (frame, args)

`   if any_set ({args.mong, args.mon}) then`
`       local ibox_args = {`

\-- \['mongolian_header'\] = 'Mongolian name', -- redundant; TODO: support |mongolian_header=

`           ['hide'] = args.hide,`
`           ['mon'] = args.mon,`
`           ['mong'] = args.mong,`
`           ['monr'] = args.monr,`
`           }`
`           `
`       return ibox_mln_mn (frame, ibox_args);`
`   end`

end

\--[--------------------------\< M N C \>------------------------------------------------------------------------ ----\< M A N C H U \>----](https://zh.wikipedia.org/wiki/--------------------------\<_M_N_C_\>------------------------------------------------------------------------_----\<_M_A_N_C_H_U_\>---- "wikilink")

local function mnc (frame, args)

`   if any_set ({args.mnc_rom, args.mnc}) then`
`       local ibox_args = {`

\-- \['manchu_header'\] = 'Manchu name', -- redundant; TODO: support |manchu_header=

`           ['mnc'] = args.mnc,`
`           ['mnc_rom'] = args.mnc_rom,`
`           ['mnc_a'] = args.mnc_a,`
`           ['mnc_v'] = args.mnc_v,`
`           }`
`           `
`       return ibox_mln_mnc (frame, ibox_args);`
`   end`

end

\--[--------------------------\< M S \>-------------------------------------------------------------------------- ----\< M A L A Y \>----](https://zh.wikipedia.org/wiki/--------------------------\<_M_S_\>--------------------------------------------------------------------------_----\<_M_A_L_A_Y_\>---- "wikilink")

local function ms (frame, args)

`   if args.msa then`
`       local ibox_args = {`
`           ['lang'] = 'ms',`
`           ['lang_content'] = args.msa,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< M Y \>-------------------------------------------------------------------------- ----\< B U R M E S E \>----](https://zh.wikipedia.org/wiki/--------------------------\<_M_Y_\>--------------------------------------------------------------------------_----\<_B_U_R_M_E_S_E_\>---- "wikilink")

local function my (frame, args)

`   if args.my then`
`       local ibox_args = {`

\-- \['burmese_header'\] = 'Burmese name', -- redundant; TODO: support |burmese_header=

`           ['my'] = args.my,`
`           ['bi'] = args.bi,`
`           }`
`           `
`       return ibox_mln_my (frame, ibox_args);`
`   end`

end

\--[--------------------------\< N E \>-------------------------------------------------------------------------- ----\< N E P A L I \>----](https://zh.wikipedia.org/wiki/--------------------------\<_N_E_\>--------------------------------------------------------------------------_----\<_N_E_P_A_L_I_\>---- "wikilink")

local function ne (frame, args)

`   if args.nep then`
`       local ibox_args = {`
`           ['lang'] = 'ne',`
`           ['lang_content'] = args.nep,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< P I \>-------------------------------------------------------------------------- ----\< P A L I \>----](https://zh.wikipedia.org/wiki/--------------------------\<_P_I_\>--------------------------------------------------------------------------_----\<_P_A_L_I_\>---- "wikilink")

local function pi (frame, args)

`   if args.pli then`
`       local ibox_args = {`
`           ['lang'] = 'pi',`
`           ['lang_content'] = args.pli,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< P T \>-------------------------------------------------------------------------- ----\< P O R T U G U E S E \>----](https://zh.wikipedia.org/wiki/--------------------------\<_P_T_\>--------------------------------------------------------------------------_----\<_P_O_R_T_U_G_U_E_S_E_\>---- "wikilink")

local function pt (frame, args)

`   if args.por then`
`       local ibox_args = {`
`           ['lang'] = 'pt',`
`           ['lang_content'] = args.por,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< P R A \>------------------------------------------------------------------------ ----\< P R A K R I T \>----](https://zh.wikipedia.org/wiki/--------------------------\<_P_R_A_\>------------------------------------------------------------------------_----\<_P_R_A_K_R_I_T_\>---- "wikilink")

local function pra (frame, args)

`   if args.pra then`
`       local ibox_args = {`
`           ['lang'] = 'pra',`
`           ['lang_content'] = args.pra,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< R U \>-------------------------------------------------------------------------- ----\< R U S S I A N \>----](https://zh.wikipedia.org/wiki/--------------------------\<_R_U_\>--------------------------------------------------------------------------_----\<_R_U_S_S_I_A_N_\>---- "wikilink")

local function ru (frame, args)

`   if any_set ({args.rus, args.russian}) then                                  -- TODO: unify parameter names`
`       local ibox_args = {`

\-- \['russian_header'\] = 'Russian name', -- redundant; TODO: support |russian_header=

`           ['rus'] = args.rus or args.russian,`
`           ['rusr'] = args.rusr,`
`           ['rusipa'] = args.rusipa or args['native pronunciation'],           -- TODO: unify parameter names`
`           ['ruslit'] = args.ruslit or args['literal meaning'],                -- TODO: unify parameter names`
`           ['scientific'] = args.scientific,`
`           ['iso'] = args.iso,`
`           ['gost'] = args.gost,`
`           ['bgn/pcgn'] = args['bgn/pcgn'],`
`           }`
`           `
`       return ibox_mln_ru (frame, ibox_args);`
`   end`

end

\--[--------------------------\< S A \>-------------------------------------------------------------------------- ----\< S A N S K R I T \>----](https://zh.wikipedia.org/wiki/--------------------------\<_S_A_\>--------------------------------------------------------------------------_----\<_S_A_N_S_K_R_I_T_\>---- "wikilink")

local function sa (frame, args)

`   if args.san then`
`       local ibox_args = {`
`           ['lang'] = 'sa',`
`           ['lang_content'] = args.san,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< T A \>-------------------------------------------------------------------------- ----\< T A M I L \>----](https://zh.wikipedia.org/wiki/--------------------------\<_T_A_\>--------------------------------------------------------------------------_----\<_T_A_M_I_L_\>---- "wikilink")

local function ta (frame, args)

`   if args.tam then`
`       local ibox_args = {`
`           ['lang'] = 'ta',`
`           ['lang_content'] = args.tam,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< T E T \>------------------------------------------------------------------------ ----\< T E T U M \>----](https://zh.wikipedia.org/wiki/--------------------------\<_T_E_T_\>------------------------------------------------------------------------_----\<_T_E_T_U_M_\>---- "wikilink")

local function tet (frame, args)

`   if args.tet then`
`       local ibox_args = {`
`           ['lang'] = 'tet',`
`           ['lang_content'] = args.tet,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< T H \>-------------------------------------------------------------------------- ----\< T H A I \>----](https://zh.wikipedia.org/wiki/--------------------------\<_T_H_\>--------------------------------------------------------------------------_----\<_T_H_A_I_\>---- "wikilink")

local function th (frame, args)

`   if args.tha then`
`       local ibox_args = {`

\-- \['thai_header'\] = 'Thai name', -- redundant; TODO: support |thai_header=

`           ['tha'] = args.tha,`
`           ['rtgs'] = args.rtgs,`
`           }`
`           `
`       return ibox_mln_th (frame, ibox_args);`
`   end`

end

\--[--------------------------\< T L \>-------------------------------------------------------------------------- ----\< F I L I P I N O \>----](https://zh.wikipedia.org/wiki/--------------------------\<_T_L_\>--------------------------------------------------------------------------_----\<_F_I_L_I_P_I_N_O_\>---- "wikilink")

local function tl (frame, args)

`   if args.tgl then`
`       local ibox_args = {`
`           ['blank_header'] = 'Filipino name',`
`           ['lang'] = 'tl',`
`           ['lang_content'] = args.tgl,`
`           }`
`           `
`       return ibox_mln_blank (frame, ibox_args);`
`   end`

end

\--[--------------------------\< U G \>-------------------------------------------------------------------------- ----\< U Y G H U R \>----](https://zh.wikipedia.org/wiki/--------------------------\<_U_G_\>--------------------------------------------------------------------------_----\<_U_Y_G_H_U_R_\>---- "wikilink")

local function ug (frame, args)

`   if args.uig then`
`       local ibox_args = {`

\-- \['uyghur_header'\] = 'Uyghur name', -- redundant; TODO: support |uyghur_header=

`           ['hide'] = args.hide,`
`           ['uig'] = args.uig,`
`           ['lu'] = args.lu,`
`           ['uly'] = args.uly,`
`           ['uyy'] = args.uyy,`
`           ['sgs'] = args.sgs,`
`           ['usy'] = args.usy,`
`           ['uipa'] = args.uipa,`
`           }`
`           `
`       return ibox_mln_ug (frame, ibox_args);`
`   end`

end

\--[--------------------------\< V I \>-------------------------------------------------------------------------- ----\< V I E T N A M E S E \>----](https://zh.wikipedia.org/wiki/--------------------------\<_V_I_\>--------------------------------------------------------------------------_----\<_V_I_E_T_N_A_M_E_S_E_\>---- "wikilink")

local function vi (frame, args)

`   if any_set ({args.qn, args.vie, args.chuhan}) then`
`       local ibox_args = {`

\-- \['vietnamese_header'\] = 'Vietnamese name', -- redundant; TODO: support |vietnamese_header=

`           ['vie'] = args.vie,`
`           ['qn'] = args.qn,`
`           ['hn'] = args.hn,`
`           ['chuhan'] = args.chuhan,`
`           ['chunom'] = args.chunom,`
`           ['lqn'] = args.lqn,`
`           }`
`           `
`       return ibox_mln_vi (frame, ibox_args);`
`   end`

end

\--[--------------------------\< Z A \>-------------------------------------------------------------------------- ----\< Z H U A N G \>----](https://zh.wikipedia.org/wiki/--------------------------\<_Z_A_\>--------------------------------------------------------------------------_----\<_Z_H_U_A_N_G_\>---- "wikilink")

local function za (frame, args)

`   if args.zha then`
`       local ibox_args = {`

\-- \['zhuang_header'\] = 'Zhuang name', -- redundant; TODO: support |zhuang_header=

`           ['hide'] = args.hide,`
`           ['zha'] = args.zha,`
`           ['zha57'] = args.zha57,`
`           ['sd'] = args.sd,`
`           }`
`           `
`       return ibox_mln_za (frame, ibox_args);`
`   end`

end

\--[--------------------------\< Z H \>-------------------------------------------------------------------------- ----------\< C H I N E S E \>----------](https://zh.wikipedia.org/wiki/--------------------------\<_Z_H_\>--------------------------------------------------------------------------_----------\<_C_H_I_N_E_S_E_\>---------- "wikilink")

local function zh (frame, args)

`   local children = {};`
`   `
`   if any_set ({args.c, args.t, args.p, args.s}) then                          -- first infobox zh/zh`
`       local ibox_args = ibox_zhzh_enum_params_get (args, '');                 -- get the enumerated parameters (here enumerator is empty string)`

`       if ibox_args then`
`           ibox_args['hide'] = args.hide; `
`           ibox_args['showflag'] = args.showflag;`
`           ibox_args['order'] = args.order;`

`           ibox_args['p'] = args.p or args.hp;                                 -- add special case parameters`
`           ibox_args['xej'] = args.xej and lang_mod._lang ({'zh-Arab', args.xej});`

`           if 'yes' == args.child then`
`               ibox_args['chinese_header'] = args.name1;                       -- show the header name from parameter or default name from ibox_mln_zh()`
`           elseif any_set ({                                                   -- when any of these are set there will be other child infoboxen so ...`
`                   args.hangul, args.hanja, args.kana, args.kanji, args.hiragana,`
`                   args.katakana, args.kyujitai, args.shinjitai, args.tam, args.hin,`
`                   args.san, args.pli, args.tgl, args.msa, args.mnc, args.mon, args.mong,`
`                   args.por, args.rus, args.tha, args.tib, args.qn, args.uig, args.vie,`
`                   args.chuhan, args.chunom, args.hn, args.zha, args['dungan-xej'],`
`                   args.dungan, args.lao, args.khm, args.tet, args.lang1, args.lang2,`
`                   args.lang3, args.lang4, args.lang5, args.lang6, args.lang7, args.lang8,`
`                   args.lang9, args.lang10, args.lang11, `
`                   }) then`
`                       ibox_args['chinese_header'] = args.name1;               -- ... show the header name from parameter or default name from ibox_mln_zh()`
`           else`
`               ibox_args['chinese_header'] = args.name1 or 'none';             -- show the header name from parameter or no header (args.name1 missing or 'empty' - nil)`
`           end`

`           table.insert (children, ibox_mln_zh (frame, ibox_args));`
`       end`
`   end`
`   `
`   for i=2, 6 do`
`       if any_set ({args['c'..i], args['t'..i], args['p'..i], args['s'..i]}) then`
`           local ibox_args = ibox_zhzh_enum_params_get (args, i);              -- get the enumerated parameters`

`           if ibox_args then`
`               ibox_args['hide'] = args.hide;`
`               ibox_args['showflag'] = args.showflag;`
`               ibox_args['order'] = args.order; `

`               ibox_args['p'] = args['p'..i] or args['hp'..i];                 -- add special case parameters`
`               ibox_args['xej'] = args['xej'..i] and lang_mod._lang ({'zh-Arab', args['xej'..i]});`

`               if args[data.zh_hdr_names[i][1]] then`
`                   ibox_args['chinese_header'] = args[data.zh_hdr_names[i][1]];    -- use value from parameter`
`               else`
`                   ibox_args['chinese_header'] = data.zh_hdr_names[i][2];      -- use the default`
`               end`

`               table.insert (children, ibox_mln_zh (frame, ibox_args));`
`           end`
`       end`
`   end`
`   `
`   return table.concat (children) or '';                                       -- big string of zh infoboxen or an empty string if nothing was done here`

end

\--\[\[==========================\<\< I B O X _ M L N \>\>============================================================

implements

TODO: do a valueFunc () on getArgs() so that when they are blank we acknowledge the blank (|name1= present with empty string or whitespace as assigned value)

\]\]

local function ibox_mln (frame)

`   local args = getArgs(frame);                                                -- also gets parent frame params (there are no frame params for this function) TODO:, {removeBlanks = false}?`
`   local infobox_args = {};                                                    -- table to hold arguments for ibox_mln frame:expandTemplate()`
`   local children = {};                                                        -- table of returned infoboxen text`

\----------\< H E A D E R I N F O B O X \>----------

`   infobox_args['child'] = args.child;`
`   infobox_args['rowstyle1'] = 'display:none;';`
`   if 'yes' ~= args.child then`
`       local hdr_args = {`
`           ['title'] = args.title or mw.title.getCurrentTitle().text:gsub ('%s+%b()$', '');    -- mimic `` (template not magic word)`
`           ['float'] = args.float,`
`           ['collapse'] = args.collapse,`
`           ['pic'] = args.pic or args.image,                                   -- TODO: unify parameter names`
`           ['picsize'] = args.picsize or args.imgwidth,                        -- TODO: unify parameter names`
`           ['picupright'] = args.picupright,`
`           ['picalt'] = args.picalt,`
`           ['pictooltip'] = args.pictooltip,`
`           ['piccap'] = args.piccap or args.caption,                           -- TODO: unify parameter names`
`           ['pic2'] = args.pic2,`
`           ['picsize2'] = args.picsize2,`
`           ['picupright2'] = args.picupright2,`
`           ['picalt2'] = args.picalt2,`
`           ['pictooltip2'] = args.pictooltip2,`
`           ['piccap2'] = args.piccap2,`
`           }`
`       table.insert (children, ibox_mln_header (frame, hdr_args));`
`   end`

\----------\< L A N G U A G E I N F O B O X E N \>----------

`   local lang_iboxen = {                                                       -- table of codes used in |ibox_order= and their matching function pointers`
`       ['ar'] = ar, ['as'] = as, ['bn'] = bn, ['bo'] = bo, ['dng'] = dng,`
`       ['hi'] = hi, ['id'] = id, ['ja'] = ja, ['km'] = km, ['ko1'] = ko1,`
`       ['ko2'] = ko2, ['ko3'] = ko3, ['ko4'] = ko4, ['lo'] = lo, ['mn'] = mn,`
`       ['mnc'] = mnc, ['ms'] = ms, ['my'] = my, ['ne'] = ne, ['pi'] = pi,`
`       ['pra'] = pra, ['pt'] = pt, ['ru'] = ru, ['sa'] = sa, ['ta'] = ta,`
`       ['tet'] = tet, ['th'] = th, ['tl'] = tl, ['ug'] = ug, ['vi'] = vi,`
`       ['za'] = za, ['zh'] = zh`
`       }`

`   local lang_ibox_order = {                                                   -- default list of lang ibox calling functions as used by legacy `
`       zh, my, bo, dng, vi, th, za, ko1, ko2, ko3, ko4, mn, ja, ms, id, tl,`
`        ug, mnc, bn, as, ne, pra, ta, hi, sa, pi, pt, ru, lo, km, tet`
`       };`
`   `
`   if args.ibox_order then                                                     -- parameter value is comma-separated list of lang iboxen to render and their order`
`       local t = mw.text.split (args.ibox_order, '%s*,%s*')                    -- make a table from the list`
`       lang_ibox_order = {};                                                   -- reset; don't use default list`
`       for _, v in ipairs (t) do                                               -- spin through the ibox_order list in order and `
`           if lang_iboxen[v] then                                              -- if there is a matching ibox function`
`               table.insert (lang_ibox_order, lang_iboxen[v]);                 -- add it to the list of functions to call; TODO: error message when specified language does not exist?`
`           end`
`       end`
`   end `

`   for _, ibox_func in ipairs (lang_ibox_order) do                             -- call each function in the list in the list order`
`       table.insert (children, ibox_func (frame, args) or '');                 -- add ibox string (or empty string when there is no ibox string)`
`   end`

\----------\< B L A N K \# I N F O B O X E N \>----------

`   for i = 1, 11 do                                                            -- loop through 11 (why 11?) 'blanks'`
`       local langn = 'lang'..i;                                                -- make lang parameter name`
`       local langn_content = langn ..'_content';                               -- make lang content parameter name`
`   if args[langn_content] then`
`           local ibox_args = {`
`               ['lang'] = args[langn],`
`               ['lang_content'] = args[langn_content],`
`               }`
`               `
`           table.insert (children, ibox_mln_blank (frame, ibox_args));`
`       end`
`   end`

\----------\< F O O T E R I N F O B O X \>----------

`   if 'yes' ~= args.child then`
`       table.insert (children, ibox_mln_footer (frame, {['footnote'] = args.footnote}));`
`   end`

\----------\< R E N D E R \>----------

`   return table.concat (children);                                             -- concatenate all of the children together into a ginormous string`

end

\--[--------------------------\< E X P O R T E D F U N C T I O N S \>------------------------------------------ these not used outside of old {{Infobox Chinese}}: ibox_mln_dng = ibox_mln_dng, -- {{infobox Chinese/Dunganese}} ibox_mln_mn = ibox_mln_mn, -- {{infobox Chinese/Mongolian}} ibox_mln_mnc = ibox_mln_mnc, -- {{infobox Chinese/Manchu}} ibox_mln_my = ibox_mln_my, -- {{infobox Chinese/Burmese}} ibox_mln_th = ibox_mln_th, -- {{infobox Chinese/Thai}} ibox_mln_ug = ibox_mln_ug, -- {{infobox Chinese/Uyghur}} ibox_mln_za = ibox_mln_za, -- {{infobox Chinese/Zhuang}} these templates require parameter-name unification before they can directly use this module (and avoid the subtemplates): {{Infobox Tibetan-Chinese}} uses: {{Infobox Chinese/Chinese}} {{Infobox Chinese/Tibetan}} {{Infobox East Asian name}} uses: {{Infobox Chinese/Chinese}} {{Infobox Chinese/Japanese}} {{Infobox Chinese/Korean}} {{Infobox Chinese/Russian}} {{Infobox Chinese/Blank}}](https://zh.wikipedia.org/wiki/--------------------------\<_E_X_P_O_R_T_E_D_F_U_N_C_T_I_O_N_S_\>------------------------------------------_these_not_used_outside_of_old_{{Infobox_Chinese}}:_ibox_mln_dng_=_ibox_mln_dng,_--_{{infobox_Chinese/Dunganese}}_ibox_mln_mn_=_ibox_mln_mn,_--_{{infobox_Chinese/Mongolian}}_ibox_mln_mnc_=_ibox_mln_mnc,_--_{{infobox_Chinese/Manchu}}_ibox_mln_my_=_ibox_mln_my,_--_{{infobox_Chinese/Burmese}}_ibox_mln_th_=_ibox_mln_th,_--_{{infobox_Chinese/Thai}}_ibox_mln_ug_=_ibox_mln_ug,_--_{{infobox_Chinese/Uyghur}}_ibox_mln_za_=_ibox_mln_za,_--_{{infobox_Chinese/Zhuang}}_these_templates_require_parameter-name_unification_before_they_can_directly_use_this_module_\(and_avoid_the_subtemplates\):_{{Infobox_Tibetan-Chinese}}_uses:_{{Infobox_Chinese/Chinese}}_{{Infobox_Chinese/Tibetan}}_{{Infobox_East_Asian_name}}_uses:_{{Infobox_Chinese/Chinese}}_{{Infobox_Chinese/Japanese}}_{{Infobox_Chinese/Korean}}_{{Infobox_Chinese/Russian}}_{{Infobox_Chinese/Blank}} "wikilink")

return {

`   ibox_mln = ibox_mln,                                                        -- `
`   ibox_mln_ar = ibox_mln_ar,                                                  -- `` (used in Template:Infobox Arabic term)`
`   ibox_mln_blank = ibox_mln_blank,                                            -- `
`   ibox_mln_bo = ibox_mln_bo,                                                  -- `
`   ibox_mln_footer = ibox_mln_footer,                                          -- `
`   ibox_mln_header = ibox_mln_header,                                          -- `
`   ibox_mln_hokkien = ibox_mln_hokkien,                                        -- `` (used in Template:Infobox Hokkien name)`
`   ibox_mln_ja = ibox_mln_ja,                                                  -- `
`   ibox_mln_ko = ibox_mln_ko,                                                  -- `
`   ibox_mln_ru = ibox_mln_ru,                                                  -- `` (used in Template:Infobox Russian term)`
`   ibox_mln_vi = ibox_mln_vi,                                                  -- `` (used in Template:Infobox Vietnamese)`
`   ibox_mln_zh = ibox_mln_zh,                                                  -- `
`   }`