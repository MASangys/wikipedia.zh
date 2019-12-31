> 本文内容由[模块:Template translation](https://zh.wikipedia.org/wiki/模块:Template_translation)转换而来。


local this = {}

function this.checkLanguage(subpage, default)

`   --[[Check first if there's an any invalid character that would cause the`
`       mw.language.isKnownLanguageTag function() to throw an exception:`
`       - all ASCII controls in [\000-\031\127],`
`       - double quote ("), sharp sign (#), ampersand (&), apostrophe ('),`
`       - slash (/), colon (:), semicolon (;), lower than (<), greater than (>),`
`       - brackets and braces ([, ], {, }), pipe (|), backslash (\\)`
`       All other characters are accepted, including space and all non-ASCII`
`       characters (including \192, which is invalid in UTF-8).`
`   --]]`
`   if mw.language.isValidCode(subpage) and mw.language.isKnownLanguageTag(subpage)`
`   --`[`However``   ``"SupportedLanguages"``   ``are``   ``too``   ``restrictive,``   ``as``   ``they``   ``discard``   ``many``   ``valid``   ``BCP47``   ``script``   ``variants``   ``(only``   ``because``   ``MediaWiki``   ``still``   ``does``   ``not``   ``define``   ``automatic``   ``transliterators``   ``for``   ``them,``   ``e.g.``   ``"en-dsrt"``   ``or``   ``"fr-brai"``   ``for``   ``French``   ``transliteration``   ``in``   ``Braille),``   ``and``   ``country``   ``variants,``   ``(useful``   ``in``   ``localized``   ``data,``   ``even``   ``if``   ``they``   ``are``   ``no``   ``longer``   ``used``   ``for``   ``translations,``   ``such``   ``as``   ``zh-cn,``   ``also``   ``useful``   ``for``   ``legacy``   ``codes).``   ``We``   ``want``   ``to``   ``avoid``   ``matching``   ``subpagenames``   ``containing``   ``any``   ``uppercase``   ``letter,``   ``(even``   ``if``   ``they``   ``are``   ``considered``   ``valid``   ``in``   ``BCP``   ``47,``   ``in``   ``which``   ``they``   ``are``   ``case-insensitive;``   ``they``   ``are``   ``not``   ``"SupportedLanguages"``   ``for``   ``MediaWiki,``   ``so``   ``they``   ``are``   ``not``   ``"KnownLanguageTags"``   ``for``   ``MediaWiki).``   ``To``   ``be``   ``more``   ``restrictive,``   ``we``   ``exclude``   ``any``   ``character``   ``*``   ``that``   ``is``   ``not``   ``ASCII``   ``and``   ``not``   ``a``   ``lowercase``   ``letter,``   ``minus-hyphen,``   ``or``   ``digit,``   ``or``   ``does``   ``not``   ``start``   ``by``   ``a``   ``letter``   ``or``   ``does``   ``not``   ``finish``   ``by``   ``a``   ``letter``   ``or``   ``digit;``   ``*``   ``or``   ``that``   ``has``   ``more``   ``than``   ``8``   ``characters``   ``between``   ``hyphens;``   ``*``   ``or``   ``that``   ``has``   ``two``   ``hyphens;``   ``*``   ``or``   ``with``   ``specific``   ``uses``   ``in``   ``template``   ``subpages``   ``and``   ``unusable``   ``as``   ``languages.``   ``--`](https://zh.wikipedia.org/wiki/However_"SupportedLanguages"_are_too_restrictive,_as_they_discard_many_valid_BCP47_script_variants_\(only_because_MediaWiki_still_does_not_define_automatic_transliterators_for_them,_e.g._"en-dsrt"_or_"fr-brai"_for_French_transliteration_in_Braille\),_and_country_variants,_\(useful_in_localized_data,_even_if_they_are_no_longer_used_for_translations,_such_as_zh-cn,_also_useful_for_legacy_codes\)._We_want_to_avoid_matching_subpagenames_containing_any_uppercase_letter,_\(even_if_they_are_considered_valid_in_BCP_47,_in_which_they_are_case-insensitive;_they_are_not_"SupportedLanguages"_for_MediaWiki,_so_they_are_not_"KnownLanguageTags"_for_MediaWiki\)._To_be_more_restrictive,_we_exclude_any_character_*_that_is_not_ASCII_and_not_a_lowercase_letter,_minus-hyphen,_or_digit,_or_does_not_start_by_a_letter_or_does_not_finish_by_a_letter_or_digit;_*_or_that_has_more_than_8_characters_between_hyphens;_*_or_that_has_two_hyphens;_*_or_with_specific_uses_in_template_subpages_and_unusable_as_languages._-- "wikilink")
`   or  string.find(subpage, "^[%l][%-%d%l]*[%d%l]$") ~= nil`
`   and string.find(subpage, "[%d%l][%d%l][%d%l][%d%l][%d%l][%d%l][%d%l][%d%l][%d%l]") == nil`
`   and string.find(subpage, "%-%-") == nil`
`   and subpage ~= "doc"`
`   and subpage ~= "layout"`
`   and subpage ~= "sandbox"`
`   and subpage ~= "testcases"`
`   then`
`       return subpage`
`   end`
`   -- Otherwise there's currently no known language subpage`
`   return default`

end

\--[Get the last subpage of the current page if it is a translation.](https://zh.wikipedia.org/wiki/Get_the_last_subpage_of_the_current_page_if_it_is_a_translation. "wikilink") function this.getLanguageSubpage()

`   --`[`This``   ``code``   ``does``   ``not``   ``work``   ``in``   ``all``   ``namespaces``   ``where``   ``the``   ``Translate``   ``tool``   ``works.``   ``--``   ``It``   ``works``   ``in``   ``the``   ``main``   ``namespace``   ``on``   ``Meta``   ``because``   ``it``   ``allows``   ``subpages``   ``there``   ``--``   ``It``   ``would``   ``not``   ``work``   ``in``   ``the``   ``main``   ``namespace``   ``of``   ``English``   ``Wikipedia``   ``(but``   ``the``   ``--``   ``articles``   ``are``   ``monolignual``   ``on``   ``that``   ``wiki).``   ``--``   ``On``   ``Meta-Wiki``   ``the``   ``main``   ``space``   ``uses``   ``subpages``   ``and``   ``its``   ``pages``   ``are``   ``translated.``   ``--``   ``The``   ``Translate``   ``tool``   ``allows``   ``translatng``   ``pages``   ``in``   ``all``   ``namespaces,``   ``even``   ``if``   ``--``   ``the``   ``namespace``   ``officially``   ``does``   ``not``   ``have``   ``subpages.``   ``--``   ``On``   ``Meta-Wiki``   ``the``   ``Category``   ``namespace``   ``still``   ``does``   ``not``   ``have``   ``subpages``   ``enabled,``   ``--``   ``even``   ``if``   ``they``   ``would``   ``be``   ``very``   ``useful``   ``for``   ``categorizing``   ``templates,``   ``that``   ``DO``   ``have``   ``--``   ``subpages``   ``(for``   ``documentatio``   ``and``   ``tstboxes``   ``pages).``   ``This``   ``is``   ``a``   ``misconfiguration``   ``--``   ``bug``   ``of``   ``Meta-Wiki.``   ``The``   ``work-around``   ``is``   ``to``   ``split``   ``the``   ``full``   ``title``   ``and``   ``then``   ``--``   ``get``   ``the``   ``last``   ``titlepart.``   ``local``   ``subpage``   ``=``   ``mw.title.getCurrentTitle().subpageText``   ``--`](https://zh.wikipedia.org/wiki/This_code_does_not_work_in_all_namespaces_where_the_Translate_tool_works._--_It_works_in_the_main_namespace_on_Meta_because_it_allows_subpages_there_--_It_would_not_work_in_the_main_namespace_of_English_Wikipedia_\(but_the_--_articles_are_monolignual_on_that_wiki\)._--_On_Meta-Wiki_the_main_space_uses_subpages_and_its_pages_are_translated._--_The_Translate_tool_allows_translatng_pages_in_all_namespaces,_even_if_--_the_namespace_officially_does_not_have_subpages._--_On_Meta-Wiki_the_Category_namespace_still_does_not_have_subpages_enabled,_--_even_if_they_would_be_very_useful_for_categorizing_templates,_that_DO_have_--_subpages_\(for_documentatio_and_tstboxes_pages\)._This_is_a_misconfiguration_--_bug_of_Meta-Wiki._The_work-around_is_to_split_the_full_title_and_then_--_get_the_last_titlepart._local_subpage_=_mw.title.getCurrentTitle\(\).subpageText_-- "wikilink")
`   local titleparts = mw.text.split(mw.title.getCurrentTitle().fullText, '/')`
`   local subpage = titleparts[#titleparts]`
`   return this.checkLanguage(subpage, '')`

end

\--[Get the first part of the language code of the subpage, before the '-'.](https://zh.wikipedia.org/wiki/Get_the_first_part_of_the_language_code_of_the_subpage,_before_the_'-'. "wikilink") function this.getMainLanguageSubpage()

`   parts = mw.text.split( this.getLanguageSubpage(), '-' )`
`   return parts[1]`

end

\--[Get the last subpage of the current frame if it is a translation. Not used locally.](https://zh.wikipedia.org/wiki/Get_the_last_subpage_of_the_current_frame_if_it_is_a_translation._Not_used_locally. "wikilink") function this.getFrameLanguageSubpage(frame)

`   local titleparts = mw.text.split(frame:getParent():getTitle(), '/')`
`   local subpage = titleparts[#titleparts]`
`   return this.checkLanguage(subpage, '')`

end

\--[Get the language of the current page. Not used locally.](https://zh.wikipedia.org/wiki/Get_the_language_of_the_current_page._Not_used_locally. "wikilink") function this.getLanguage()

`   local subpage = mw.title.getCurrentTitle().subpageText`
`   return this.checkLanguage(subpage, mw.language.getContentLanguage():getCode())`

end

\--[Get the language of the current frame. Not used locally.](https://zh.wikipedia.org/wiki/Get_the_language_of_the_current_frame._Not_used_locally. "wikilink") function this.getFrameLanguage(frame)

`   local titleparts = mw.text.split(frame:getParent():getTitle(), '/')`
`   local subpage = titleparts[#titleparts]`
`   return this.checkLanguage(subpage, mw.language.getContentLanguage():getCode())`

end

function this.title(namespace, basepagename, subpage)

`   local message, title`
`   local pagename = basepagename`
`   if (subpage or '') ~= ''`
`   then`
`       pagename = pagename .. '/' .. subpage`
`   end`
`   local valid, title = xpcall(function()`
`           return mw.title.new(pagename, namespace) -- costly`
`       end, function(msg) -- catch undocumented exception (!?)`
`           -- thrown when namespace does not exist. The doc still`
`           -- says it should return a title, even in that case...`
`           message = msg`
`       end)`
`   if valid and title ~= nil and (title.id or 0) ~= 0`
`   then`
`       return title`
`   end`
`   return { -- "pseudo" mw.title object with id = nil in case of error`
`       prefixedText = pagename, -- the only property we need below`
`       message = message -- only for debugging`
`   }`

end

\--[If on a translation subpage (like Foobar/de), this function returns a given template in the same language, if the translation is available. Otherwise, the template is returned in its default language, without modification. This is aimed at replacing the current implementation of Template:TNTN. This version does not expand the returned template name: this solves the problem of self-recursion in TNT when translatable templates need themselves to transclude other translable templates (such as Tnavbar).](https://zh.wikipedia.org/wiki/If_on_a_translation_subpage_\(like_Foobar/de\),_this_function_returns_a_given_template_in_the_same_language,_if_the_translation_is_available._Otherwise,_the_template_is_returned_in_its_default_language,_without_modification._This_is_aimed_at_replacing_the_current_implementation_of_Template:TNTN._This_version_does_not_expand_the_returned_template_name:_this_solves_the_problem_of_self-recursion_in_TNT_when_translatable_templates_need_themselves_to_transclude_other_translable_templates_\(such_as_Tnavbar\). "wikilink") function this.getTranslatedTemplate(frame, withStatus)

`   local args = frame.args`
`   local pagename = args['template']`
`   `
`   --`[`Check``   ``whether``   ``the``   ``pagename``   ``is``   ``actually``   ``in``   ``the``   ``Template``   ``namespace,``   ``or``   ``if``   ``we're``   ``transcluding``   ``a``   ``main-namespace``   ``page.``   ``(added``   ``for``   ``backward``   ``compatibility``   ``of``   ``Template:TNT)`](https://zh.wikipedia.org/wiki/Check_whether_the_pagename_is_actually_in_the_Template_namespace,_or_if_we're_transcluding_a_main-namespace_page._\(added_for_backward_compatibility_of_Template:TNT\) "wikilink")
`   local title`
`   local namespace = args['tntns'] or ''`
`   if (namespace ~= '') -- Checks for tntns parameter for custom ns.`
`   then`
`       title = this.title(namespace, pagename) -- Costly`
`   else -- Supposes that set page is in ns10.`
`       namespace = 'Template'`
`       title = this.title(namespace, pagename) -- Costly`
`       if title.id == nil`
`       then -- not found in the Template namespace, assume the main namespace (for backward compatibility)`
`           namespace = ''`
`           title = this.title(namespace, pagename) -- Costly`
`       end`
`   end`
`   `
`   -- Get the last subpage and check if it matches a known language code.`
`   local subpage = args['uselang'] or ''`
`   if (subpage == '')`
`   then`
`       subpage = this.getLanguageSubpage()`
`   end`
`   if (subpage == '')`
`   then`
`       -- Check if a translation of the pagename exists in English`
`       local newtitle = this.title(namespace, pagename, 'en') -- Costly`
`       -- Use the translation when it exists`
`       if newtitle.id ~= nil`
`       then`
`           title = newtitle`
`       end`
`   else`
`       -- Check if a translation of the pagename exists in that language`
`       local newtitle = this.title(namespace, pagename, subpage) -- Costly`
`       if newtitle.id == nil`
`       then`
`           -- Check if a translation of the pagename exists in English`
`           newtitle = this.title(namespace, pagename, 'en') -- Costly`
`       end`
`       -- Use the translation when it exists`
`       if newtitle.id ~= nil`
`       then`
`           title = newtitle`
`       end`
`   end`
`   -- At this point the title should exist`
`   if withStatus then`
`       -- status returned to Lua function below`
`       return title.prefixedText, title.id ~= nil`
`   else`
`       -- returned directly to MediaWiki`
`       return title.prefixedText`
`   end`

end

\--[If on a translation subpage (like Foobar/de), this function renders a given template in the same language, if the translation is available. Otherwise, the template is rendered in its default language, without modification. This is aimed at replacing the current implementation of Template:TNT. Note that translatable templates cannot transclude themselves other translatable templates, as it will recurse on TNT. Use TNTN instead to return only the effective template name to expand externally, with template parameters also provided externally.](https://zh.wikipedia.org/wiki/If_on_a_translation_subpage_\(like_Foobar/de\),_this_function_renders_a_given_template_in_the_same_language,_if_the_translation_is_available._Otherwise,_the_template_is_rendered_in_its_default_language,_without_modification._This_is_aimed_at_replacing_the_current_implementation_of_Template:TNT._Note_that_translatable_templates_cannot_transclude_themselves_other_translatable_templates,_as_it_will_recurse_on_TNT._Use_TNTN_instead_to_return_only_the_effective_template_name_to_expand_externally,_with_template_parameters_also_provided_externally. "wikilink") function this.renderTranslatedTemplate(frame)

`   local title, found = this.getTranslatedTemplate(frame, true)`
`   -- At this point the title should exist prior to performing the expansion`
`   -- of the template, otherwise render a red link to the missing page`
`   -- (resolved in its assumed namespace). If we don't tet this here, a`
`   -- script error would be thrown. Returning a red link is consistant with`
`   -- MediaWiki behavior when attempting to transclude inexistant templates.`
`   if not found then`
`       return '`[`'``   ``..``   ``title``   ``..``   ``'`](https://zh.wikipedia.org/wiki/'_.._title_.._' "wikilink")`'`
`   end`

`   -- Copy args pseudo-table to a proper table so we can feed it to expandTemplate.`
`   -- Then render the pagename.`
`   local args = frame.args`
`   local pargs = (frame:getParent() or {}).args`
`   local arguments = {}`
`   if (args['noshift'] or '') == ''`
`   then`
`       for k, v in pairs(pargs) do`
`           -- numbered args >= 1 need to be shifted`
`           local n = tonumber(k) or 0`
`           if (n > 0)`
`           then`
`               if (n >= 2)`
`               then`
`                   arguments[n - 1] = v`
`               end`
`           else`
`               arguments[k] = v`
`           end`
`       end`
`   else -- special case where TNT is used as autotranslate`
`       -- (don't shift again what is shifted in the invokation)`
`       for k, v in pairs(pargs) do`
`           arguments[k] = v`
`       end`
`   end`
`   arguments['template'] = title -- override the existing parameter of the base template name supplied with the full name of the actual template expanded`
`   arguments['tntns'] = nil -- discard the specified namespace override`
`   arguments['uselang'] = args['uselang'] -- argument forwarded into parent frame`
`   arguments['noshift'] = args['noshift'] -- argument forwarded into parent frame`
`   `
`   return frame:expandTemplate{title = ':' .. title, args = arguments}`

end

\--[A helper for mocking TNT in Special:TemplateSandbox. TNT breaks TemplateSandbox; mocking it with this method means templates won't be localized but at least TemplateSandbox substitutions will work properly. Won't work with complex uses.](https://zh.wikipedia.org/wiki/A_helper_for_mocking_TNT_in_Special:TemplateSandbox._TNT_breaks_TemplateSandbox;_mocking_it_with_this_method_means_templates_won't_be_localized_but_at_least_TemplateSandbox_substitutions_will_work_properly._Won't_work_with_complex_uses. "wikilink") function this.mockTNT(frame)

`   local pargs = (frame:getParent() or {}).args`
`   local arguments = {}`
`   for k, v in pairs(pargs) do`
`       -- numbered args >= 1 need to be shifted`
`       local n = tonumber(k) or 0`
`       if (n > 0)`
`       then`
`           if (n >= 2)`
`           then`
`               arguments[n - 1] = v`
`           end`
`       else`
`           arguments[k] = v`
`       end`
`   end`
`   if not pargs[1]`
`   then`
`       return ''`
`   end`
`   return frame:expandTemplate{title = 'Template:' .. pargs[1], args = arguments}`

end

return this