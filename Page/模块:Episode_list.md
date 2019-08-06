local p = {}

\-- This module requires the use of the following modules: local colorContrastModule = require('Module:Color contrast') local htmlColor = mw.loadData('Module:Color contrast/colors') local delinkModule = require('Module:Delink') local langModule = require("Module:Lang") local mathModule = require('Module:Math') local tableEmptyCellModule = require('Module:Table empty cell') local yesNoModule = require('Module:Yesno')

\-- mw.html object for the generated row. local row

\-- Variable that will decide the colspan= of the Short Summary cell. local nonNilParams = 0

\-- Variable that will keep track if a TBA value was entered. local cellValueTBA = false

\-- Variable that handles the assigned tracking categories. local trackingCategories = ""

\-- List of tracking categories. local trackingCategoryList = {

`   ["air_dates"] = "",`
`   ["alt_air_dates"] = "",`
`   ["faulty_line_colors"] = "",`
`   ["non_compliant_line_colors"] = "",`
`   ["default_line_colors"] = "",`
`   ["row_deviations"] = "",`
`   ["invalid_top_colors"] = "",`
`   ["tba_values"] = "",`
`   ["nonmatching_numbered_parameters"] = ""`

}

\-- List of parameter names in this order. local cellNameList = {

`   'Aux1',`
`   'DirectedBy',`
`   'WrittenBy',`
`   'Aux2',`
`   'Aux3',`
`   'OriginalAirDate',`
`   'AltDate',`
`   'ProdCode',`
`   'Viewers',`
`   'Aux4'`

}

\-- List of cells that have parameter groups local parameterGroupCells = {} local firstParameterGroupCell

\-- List of title parameter names in this order. -- List used for multi title lists. local titleList = {

`   'Title',`
`   'RTitle',`
`   'AltTitle',`
`   'RAltTitle',`
`   'NativeTitle',`
`   'TranslitTitle',`

}

\-- Local function which is used to retrieve the episode number or production code number, -- without any additional text. local function idTrim(val, search)

`   local valFind = string.find(val, search)`

`   if (valFind == nil) then`
`       return val`
`   else`
`       return string.sub(val, 0, valFind-1)`
`   end`

end

\-- Local function which is used to validate that a parameter has an actual value. local function hasValue(param)

`   if (param ~= nil and param ~= "") then`
`       return true`
`   else`
`       return false`
`   end`

end

\-- Local function which is used to create a table data cell. local function createTableData(text, rowSpan, textAlign)

`   if (rowSpan ~= nil and tonumber(rowSpan) > 1) then`
`       row:tag('td')`
`           :attr('rowspan', rowSpan)`
`           :wikitext(text)`
`   else`
`       row:tag('td')`
`           :css('text-align', textAlign)`
`           :wikitext(text)`
`   end`

end

\-- Local function which is used to add a tracking category to the page. local function addTrackingCategory(category)

`   trackingCategories = trackingCategories .. category`

end

\-- Local function which is used to create a Short Summary row. local function createShortSummaryRow(args, lineColor)

`   -- fix for lists in the Short Summary`
`   local shortSummaryText = args.ShortSummary`

`   if (shortSummaryText:match('^[*:;#]') or shortSummaryText:match('^{|')) then`
`       shortSummaryText = '`<span></span>`\n' .. shortSummaryText`
`   end`

`   if (shortSummaryText:match('\n[*:;#]')) then`
`       shortSummaryText = shortSummaryText .. '\n`<span></span>`'`
`   end`

`   local shortSummaryCell = mw.html.create('td')`
`               :addClass('description')`
`               :css('border-bottom', 'solid 3px ' .. lineColor)`
`               :attr('colspan', nonNilParams)`
`               :newline()`
`               :wikitext(shortSummaryText)`

`   return mw.html.create('tr')`
`                   :addClass('expand-child')`
`                   :node(shortSummaryCell)`

end

\-- Local function which is used to add tracking categories for Top Color issues. local function addTopColorTrackingCategories(args)

`   if (hasValue(args.TopColor)) then`
`       addTrackingCategory(trackingCategoryList["row_deviations"])`

`       -- Track top colors that have a color contrast rating below AAA with`
`       -- respect to text color, link color, or visited link color. See`
`       -- `[`WP:COLOR`](https://zh.wikipedia.org/wiki/WP:COLOR "wikilink")` for more about color contrast requirements.`
`       local textContrastRatio = colorContrastModule._ratio{args.TopColor, 'black', ['error'] = 0}`
`       local linkContrastRatio = colorContrastModule._ratio{args.TopColor, '#0B0080', ['error'] = 0}`
`       local visitedLinkContrastRatio = colorContrastModule._ratio{args.TopColor, '#0645AD', ['error'] = 0}`

`       if (textContrastRatio < 7 or linkContrastRatio < 7 or visitedLinkContrastRatio < 7) then`
`           addTrackingCategory(trackingCategoryList["invalid_top_colors"])`
`       end`
`   end`

end

\-- Local function which is used to add tracking categories for Line Color issues. local function addLineColorTrackingCategories(args)

`   if (hasValue(args.LineColor)) then`
`       local blackContrastRatio = colorContrastModule._ratio{args.LineColor, 'black', ['error'] = 0}`
`       local whiteContrastRatio = colorContrastModule._ratio{'white', args.LineColor, ['error'] = 0}`

`       if (colorContrastModule._lum(args.LineColor) == '') then`
`           addTrackingCategory(trackingCategoryList["faulty_line_colors"])`
`       elseif (blackContrastRatio < 7 and whiteContrastRatio < 7) then`
`           addTrackingCategory(trackingCategoryList["non_compliant_line_colors"])`
`       end`
`   else`
`       addTrackingCategory(trackingCategoryList["default_line_colors"])`
`   end`

end

\-- Local function which is used to remove wiki-links from repated information in rowspans. -- Used for Doctor Who serials, where the director and writer are the same for each part of serial. local function removeWikilinks(args, v)

`   return delinkModule._delink{args[v]}`

end

\-- Local function which is used to set the text of an empty cell -- with either "TBD" or "N/A". -- Set to N/A if viewers haven't been available for four weeks, else set it as TBD. local function setTBDStatus(args)

`   local month, day, year = args.OriginalAirDate:gsub(" ", " "):match("(%a+) (%d+), (%d+)")`

`   if (month == nil) then`
`       day, month, year = args.OriginalAirDate:gsub(" ", " "):match("(%d+) (%a+) (%d+)")`
`   end`

`   if (day == nil) then`
`       return tableEmptyCellModule._main({alt_text = "待定"})`
`   else`
`       -- List of months.`
`       local monthList = {`
`           ['January'] = 1,`
`           ['February'] = 2,`
`           ['March'] = 3,`
`           ['April'] = 4,`
`           ['May'] = 5,`
`           ['June'] = 6,`
`           ['July'] = 7,`
`           ['August'] = 8,`
`           ['September'] = 9,`
`           ['October'] = 10,`
`           ['November'] = 11,`
`           ['December'] = 12`
`       }`

`       local seconds = os.time() - os.time({year = year, month = monthList[month], day = day, hour = 0, min = 0, sec = 0})`

`       if (seconds >= 60 * 60 * 24 * 7 * 4) then`
`           return tableEmptyCellModule._main({alt_text = "不適用"})`
`       else`
`           return tableEmptyCellModule._main({alt_text = "待定"})`
`       end`
`   end`

end

\-- Local function which is used to create an empty cell. local function createEmptyCell(args, v, unsetParameterGroup)

`   if (unsetParameterGroup) then`
`       args[v] = tableEmptyCellModule._main({alt_text = "不適用"})`
`   elseif (v == 'Viewers' and hasValue(args.OriginalAirDate)) then`
`       args[v] = setTBDStatus(args)`
`   else`
`       args[v] = tableEmptyCellModule._main({})`
`   end`

end

\-- Air dates that don't use  local function checkUsageOfDateTemplates(args, v, onInitialPage, title)

`   if (v == 'OriginalAirDate'`
`       and args[v] ~= ''`
`       and string.match(args[v], '%d%d%d%d') ~= nil`
`       and string.match(args[v], '2C2C2C') == nil`
`       and string.find(args[v], 'dtstart') == nil`
`       and not onInitialPage`
`       and title.namespace == 0)`
`   then`
`       addTrackingCategory(trackingCategoryList["air_dates"])`
`   end`

`   -- Alternate air dates that do use `
`   if (v == 'AltDate' and args[v] ~= '' and string.find(args[v], 'dtstart') ~= nil and onInitialPage and title.namespace == 0) then`
`       addTrackingCategory(trackingCategoryList["alt_air_dates"])`
`   end`

end

\-- Local function which is used to create a Production Code cell. local function createProductionCodeCell(args, v)

`   if (hasValue(args.ProdCode) and string.find(args.ProdCode, 'TBA') == nil) then`
`       row:tag('td')`
`           :attr('id', 'pc' .. idTrim(idTrim(args.ProdCode, ' ----'), '<'))`
`           :css('text-align', 'center')`
`           :wikitext(args.ProdCode)`
`   elseif (args.ProdCode == '') then`
`       createEmptyCell(args, v, false)`
`       createTableData(args.ProdCode, 1, "center")`
`   else`
`       -- ProductionCode parameter not used; Do nothing.`
`   end`

`   nonNilParams = nonNilParams + 1`

end

\--[Local function which is used to extract data from the numbered serial parameters (Title1, Aux1, etc.), and then convert them to use the non-numbered prameter names (Title, Aux). The function returns the args as non-numbered prameter names.](https://zh.wikipedia.org/wiki/Local_function_which_is_used_to_extract_data_from_the_numbered_serial_parameters_\(Title1,_Aux1,_etc.\),_and_then_convert_them_to_use_the_non-numbered_prameter_names_\(Title,_Aux\)._The_function_returns_the_args_as_non-numbered_prameter_names. "wikilink")-- local function extractDataFromNumberedSerialArgs(args, i, numberOfParameterGroups, title)

`   for _, v in ipairs(cellNameList) do`
`       local parameter = v`
`       local numberedParameter = v .. "_" .. i`
`       if (not hasValue(args[numberedParameter]) and hasValue(parameterGroupCells[parameter])) then`
`           if (v ~= 'ProdCode') then`
`               createEmptyCell(args, parameter, true)`
`           else`
`               args[parameter] = ''`
`           end`
`           if (title.namespace == 0) then`
`               addTrackingCategory(trackingCategoryList["nonmatching_numbered_parameters"])`
`           end`
`       elseif (hasValue(args[numberedParameter])) then`
`           args[parameter] = args[numberedParameter]`
`       end`
`   end`

`   return args`

end

\--[Local function which is used to create column cells. EpisodeNumber, EpisodeNumber2 and Title are created in different functions as they require some various if checks. See: -- createEpisodeNumberCell() -- createEpisodeNumberCell2() -- createTitleCell()](https://zh.wikipedia.org/wiki/Local_function_which_is_used_to_create_column_cells._EpisodeNumber,_EpisodeNumber2_and_Title_are_created_in_different_functions_as_they_require_some_various_if_checks._See:_--_createEpisodeNumberCell\(\)_--_createEpisodeNumberCell2\(\)_--_createTitleCell\(\) "wikilink")-- local function createCells(args, isSerial, currentRow, onInitialPage, title, numberOfParameterGroups)

`   for k, v in ipairs(cellNameList) do`
`       if (v == 'ProdCode') then`
`           createProductionCodeCell(args, v)`
`       elseif (args[v]) then`
`           -- Set empty cells to TBA/TBD`
`           if (args[v] == '') then`
`               createEmptyCell(args, v, false)`
`           end`

`           -- If serial titles need to be centered and not left, then this should be removed.`
`           local textAlign = "center"`
`           if (v == 'Aux1' and isSerial) then`
`               textAlign = "left"`
`           end`

`           -- Remove wikilinks from links in serial rowspans rows after the first.`
`           -- if (currentRow > 1) then`
`               -- args[v] = removeWikilinks(args, v)`
`           -- end`

`           local thisRowspan`
`           if (firstParameterGroupCell and k < firstParameterGroupCell) then`
`               thisRowspan = numberOfParameterGroups`
`           else`
`               thisRowspan = 1`
`           end`

`           if (currentRow == 1 or (currentRow > 1 and k >= (firstParameterGroupCell or 0))) then`
`               createTableData(args[v], thisRowspan, textAlign)`
`           end`
`           nonNilParams = nonNilParams + 1`
`           checkUsageOfDateTemplates(args, v, onInitialPage, title)`
`       end`

`       if (args[v] == "TBA") then`
`           cellValueTBA = true`
`       end`
`   end`

end

\--[Local function which is used to create the Title cell text. The title text will be handled in the following way: Line 1: \<Title\>\<RTitle\> (with no space between) Line 2: \<AltTitle\>\<RAltTitle\> (with no space between) OR Line 2: Transcription: \<TranslitTitle\> (\<Language\>: \<NativeTitle\>)\<RAltTitle\> (with space between first two parameters) If \<Title\> or \<RTitle\> are empty, then the values of line 2 will be placed on line 1 instead. --](https://zh.wikipedia.org/wiki/Local_function_which_is_used_to_create_the_Title_cell_text._The_title_text_will_be_handled_in_the_following_way:_Line_1:_\<Title\>\<RTitle\>_\(with_no_space_between\)_Line_2:_\<AltTitle\>\<RAltTitle\>_\(with_no_space_between\)_OR_Line_2:_Transcription:_\<TranslitTitle\>_\(\<Language\>:_\<NativeTitle\>\)\<RAltTitle\>_\(with_space_between_first_two_parameters\)_If_\<Title\>_or_\<RTitle\>_are_empty,_then_the_values_of_line_2_will_be_placed_on_line_1_instead._-- "wikilink") local function createTitleText(args)

`   local titleString = ''`
`   local isCellPresent = false`
`   local useSecondLine = false`
`   local lineBreakUsed = false`

`   -- Surround the Title with quotes; No quotes if empty.`
`   if (args.Title ~= nil) then`
`       if (args.Title == "") then`
`           isCellPresent = true`
`       else`
`           titleString = args.Title`
`           useSecondLine = true`
`           isCellPresent = true`
`       end`
`   end`

`   if (args.RTitle ~= nil) then`
`       if (args.RTitle == "") then`
`           isCellPresent = true`
`       else`
`           titleString = titleString .. args.RTitle`
`           useSecondLine = true`
`           isCellPresent = true`
`       end`
`   end`

`   -- Surround the AltTitle/TranslitTitle with quotes; No quotes if empty.`
`   if (args.AltTitle or args.TranslitTitle) then`

`       isCellPresent = true`

`       if (useSecondLine) then`
`           titleString = titleString .. "`
`"`
`           lineBreakUsed = true`
`       end`

`       if (hasValue(args.AltTitle)) then`
`           titleString = titleString .. '`<small>`'..args.AltTitle..'`</small>`'`
`       elseif (hasValue(args.TranslitTitle)) then`
`           if (hasValue(args.NativeTitleLangCode)) then`
`               titleString = titleString .. '轉寫：' .. langModule._transl({args.NativeTitleLangCode, args.TranslitTitle, italic = 'no'})`
`           else`
`               titleString = titleString .. '轉寫：' .. args.TranslitTitle`
`           end`
`       end`
`   end`

`   if (args.NativeTitle ~= nil) then`
`       if (args.NativeTitle == "") then`
`           isCellPresent = true`
`       else`
`           isCellPresent = true`

`           if (useSecondLine and lineBreakUsed == false) then`
`               titleString = titleString .. "`
`"`
`           end`

`           if (hasValue(args.NativeTitleLangCode)) then`
`               local languageCode = "Lang-" .. args.NativeTitleLangCode`
`               titleString = titleString .. "（" .. langModule._lang_xx_inherit({code = args.NativeTitleLangCode, args.NativeTitle}) .. "）"`
`           else`
`               titleString = titleString .. "（" .. args.NativeTitle .. "）"`
`           end`
`       end`
`   end`

`   if (args.RAltTitle ~= nil) then`
`       if (args.RAltTitle == "") then`
`           isCellPresent = true`
`       else`
`           isCellPresent = true`

`           if (useSecondLine and lineBreakUsed == false) then`
`               titleString = titleString .. "`
`"`
`           end`

`           titleString = titleString .. args.RAltTitle`
`       end`
`   end`

`   return titleString, isCellPresent`

end

\--[Local function which is used to extract data from the numbered title parameters (Title1, RTitle2, etc.), and then convert them to use the non-numbered prameter names (Title, RTitle). The function returns two results: -- The args parameter table. -- A boolean indicating if the title group has data.](https://zh.wikipedia.org/wiki/Local_function_which_is_used_to_extract_data_from_the_numbered_title_parameters_\(Title1,_RTitle2,_etc.\),_and_then_convert_them_to_use_the_non-numbered_prameter_names_\(Title,_RTitle\)._The_function_returns_two_results:_--_The_args_parameter_table._--_A_boolean_indicating_if_the_title_group_has_data. "wikilink")-- local function extractDataFromNumberedTitleArgs(args, i)

`   local nextGroupValid = false`

`   for _, v in ipairs(titleList) do`
`       local parameter = v`
`       local numberedParameter = v .. "_" .. i`
`       args[parameter] = args[numberedParameter]`

`       if (nextGroupValid == false and hasValue(args[numberedParameter])) then`
`           nextGroupValid = true`
`       end`
`   end`

`   return args, nextGroupValid`

end

\-- Local function which is used to process the multi title list. local function processMultiTitleList(args, numberOfParameterGroups)

`   local nativeTitleLangCode = args.NativeTitleLangCode`
`   local titleText = ""`
`   local isCellPresent = false`
`   local isFirstTitleGroup = true -- Making sure that the title cell is created at least once and isn't created again if other #N titles are empty.`

`   for i = 1, numberOfParameterGroups do`
`       local args, nextGroupValid = extractDataFromNumberedTitleArgs(args, i)`
`       if (nextGroupValid) then`
`           if (isFirstTitleGroup == false) then`
`               titleText = titleText .. "`

<hr />

"

`           end`

`           local titleTextRow`
`           titleTextRow = createTitleText(args)`
`           titleText = titleText .. titleTextRow`
`           isFirstTitleGroup = false`
`       else`
`           if (isFirstTitleGroup) then`
`               titleText, isCellPresent = createTitleText(args)`
`           end`

`           -- Valid titles have to be in succession (#1, #2, #3 and not #1, #4 #5), so exit for loop if next group is empty.`
`           return titleText, isCellPresent`
`       end`
`   end`

`   return titleText`

end

\-- Local function which is used to create a Title cell. local function createTitleCell(args, numberOfParameterGroups, multiTitleListEnabled, isSerial)

`   local titleText`
`   local isCellPresent`

`   if (multiTitleListEnabled) then`
`       titleText, isCellPresent = processMultiTitleList(args, numberOfParameterGroups)`
`   else`
`       titleText, isCellPresent = createTitleText(args)`
`   end`

`   if (isCellPresent == false) then`
`       return nil`
`   end`

`   local textAlign = "left"`

`   -- If Title is blank, then set Raw Title to TBA`
`   if (hasValue(titleText) == false) then`
`       titleText = tableEmptyCellModule._main({})`
`       textAlign = "left"`
`   end`

`   -- If title is the first cell, create it with a !scope="row"`
`   if (nonNilParams == 0) then`
`       if (isSerial) then`
`           row:tag('th')`
`               :addClass('summary')`
`               :attr('scope', 'row')`
`               :attr('rowspan', numberOfParameterGroups)`
`               :css('text-align', textAlign)`
`               :wikitext(titleText)`
`       else`
`           row:tag('th')`
`               :addClass('summary')`
`               :attr('scope', 'row')`
`               :css('text-align', textAlign)`
`               :wikitext(titleText)`
`       end`
`   else`
`       if (isSerial) then`
`           row:tag('td')`
`               :addClass('summary')`
`               :attr('rowspan', numberOfParameterGroups)`
`               :css('text-align', textAlign)`
`               :wikitext(titleText)`
`       else`
`           row:tag('td')`
`               :addClass('summary')`
`               :css('text-align', textAlign)`
`               :wikitext(titleText)`
`       end`
`   end`

`   nonNilParams = nonNilParams + 1`

end

\-- Local function which is used to create a table row header for either the -- EpisodeNumber or EpisodeNumber2 column cells. local function createTableRowEpisodeNumberHeader(episodeNumber, numberOfParameterGroups, episodeText)

`       row:tag('th')`
`           :attr('scope', 'row')`
`           :attr('rowspan', numberOfParameterGroups)`
`           :attr('id', 'ep' .. idTrim(idTrim(episodeNumber, ' ----'), '<'))`
`           :css('text-align', 'center')`
`           :wikitext(episodeText)`

end

\--[Local function which is used to extract the text from the EpisodeNumber or EpisodeNumber2 parameters and format them into a correct MoS compliant version. Styles supported: -- A number range of two numbers, indicating the start and end of the range, seperated by an en-dash (–) with no spaces in between. Example: "1 - 2" -\> "1–2"; "1-2-3" -\> "1–3". -- An alphanumeric or letter range, similar to the above. Example: "A - B" -\> "A–B"; "A-B-C" -\> "A–C". Example: "A1 - B1" -\> "A1–B1"; "A1-B1-C1" -\> "A1–C1". -- A number range of two numbers, indicating the start and end of the range, seperated by a visual \<hr /\> (divider line). -- An alphanumeric or letter range, similar to the above.](https://zh.wikipedia.org/wiki/Local_function_which_is_used_to_extract_the_text_from_the_EpisodeNumber_or_EpisodeNumber2_parameters_and_format_them_into_a_correct_MoS_compliant_version._Styles_supported:_--_A_number_range_of_two_numbers,_indicating_the_start_and_end_of_the_range,_seperated_by_an_en-dash_\(–\)_with_no_spaces_in_between._Example:_"1_-_2"_-\>_"1–2";_"1-2-3"_-\>_"1–3"._--_An_alphanumeric_or_letter_range,_similar_to_the_above._Example:_"A_-_B"_-\>_"A–B";_"A-B-C"_-\>_"A–C"._Example:_"A1_-_B1"_-\>_"A1–B1";_"A1-B1-C1"_-\>_"A1–C1"._--_A_number_range_of_two_numbers,_indicating_the_start_and_end_of_the_range,_seperated_by_a_visual_\<hr_/\>_\(divider_line\)._--_An_alphanumeric_or_letter_range,_similar_to_the_above. "wikilink")-- local function getEpisodeText(episodeNumber)

`   if (episodeNumber == '') then`
`       return tableEmptyCellModule._main({})`
`   else`

`       local episodeNumber1`
`       local episodeNumber2`

`       -- Used for double episodes that need a visual "–"" or "`

<hr />

"" added.

`       local divider`

`       episodeNumber = episodeNumber:gsub('%s*<br%s*/?%s*>%s*', '`

<hr />

')

`       if (episodeNumber:match('^(%w+)%s*<hr */%s*>%s*(%w+)$')) then`
`           episodeNumber1, episodeNumber2 = episodeNumber:match('^(%w+)%s*<hr */%s*>%s*(%w+)$')`
`           divider = "`

<hr />

"

`       elseif (episodeNumber:match('^(%w+)%s*<hr */%s*>.-<hr */%s*>%s*(%w+)$')) then  -- 3 or more elements`
`           episodeNumber1, episodeNumber2 = episodeNumber:match('^(%w+)%s*<hr */%s*>.-<hr */%s*>%s*(%w+)$')`
`           divider = "`

<hr />

"

`       elseif (mw.ustring.match(episodeNumber, '^(%w+)%s*[%s%-–,/&]%s*(%w+)$')) then`
`           episodeNumber1, episodeNumber2 = mw.ustring.match(episodeNumber, '^(%w+)%s*[%s%-–,/&]%s*(%w+)$')`
`           divider = "–"`
`       else`
`           episodeNumber1, episodeNumber2 = mw.ustring.match(episodeNumber, '^(%w+)%s*[%s%-–,/&].-[%s%-–,/&]%s*(%w+)$')  -- 3 or more elements`
`           divider = "–"`
`       end`

`       if (not episodeNumber1) then`
`           return episodeNumber`
`       elseif (not episodeNumber2) then`
`           return string.match(episodeNumber, '%w+')`
`       else`
`           return episodeNumber1 .. divider .. episodeNumber2`
`       end`
`   end`

end

\-- Local function which is used to create an EpisodeNumber2 cell. local function createEpisodeNumberCell2(args, numberOfParameterGroups)

`   if (args.EpisodeNumber2) then`
`       local episodeText = getEpisodeText(args.EpisodeNumber2)`

`       if (nonNilParams == 0) then`
`           createTableRowEpisodeNumberHeader(args.EpisodeNumber2, numberOfParameterGroups, episodeText)`
`       else`
`           createTableData(episodeText, numberOfParameterGroups, "center")`
`       end`

`       nonNilParams = nonNilParams + 1`

`   end`

end

\-- Local function which is used to create an EpisodeNumber cell. local function createEpisodeNumberCell(args, numberOfParameterGroups)

`   if (args.EpisodeNumber) then`
`       local episodeText = getEpisodeText(args.EpisodeNumber)`
`       createTableRowEpisodeNumberHeader(args.EpisodeNumber, numberOfParameterGroups, episodeText)`
`       nonNilParams = nonNilParams + 1`
`   end`

end

\-- Local function which is used to create a single row of cells. -- This is the standard function called. local function createSingleRowCells(args, numberOfParameterGroups, multiTitleListEnabled, onInitialPage, title)

`   createEpisodeNumberCell(args, 1)`
`   createEpisodeNumberCell2(args, 1)`
`   createTitleCell(args, numberOfParameterGroups, multiTitleListEnabled, false)`
`   createCells(args, false, 1, onInitialPage, title, numberOfParameterGroups)`

end

\-- Local function which is used to create a multiple row of cells. -- This function is called when part of the row is rowspaned. -- Current use is for Doctor Who serials. local function createMultiRowCells(args, numberOfParameterGroups, onInitialPage, title, topColor)

`   createEpisodeNumberCell(args, numberOfParameterGroups)`
`   createEpisodeNumberCell2(args, numberOfParameterGroups)`
`   createTitleCell(args, numberOfParameterGroups, false, true)`

`   for i = 1, numberOfParameterGroups do`
`       args = extractDataFromNumberedSerialArgs(args, i, numberOfParameterGroups, title)`
`       createCells(args, true, i, onInitialPage, title, numberOfParameterGroups)`
`       if (i ~= numberOfParameterGroups) then`
`           row = row:done()  -- Use done() to close the 'tr' tag in rowspaned rows.`
`               :tag('tr')`
`               :css('background', topColor)`
`       end`
`   end`

end

\-- Local function which is used to retrieve the NumParts value. local function getnumberOfParameterGroups(args)

`   for k, v in ipairs(cellNameList) do`
`       local numberedParameter = v .. "_" .. 1`
`       if (args[numberedParameter]) then`
`           parameterGroupCells[v] = true`
`           if not firstParameterGroupCell then`
`               firstParameterGroupCell = k`
`           end`
`       end`
`   end`

`   if (hasValue(args.NumParts)) then`
`       return args.NumParts, true`
`   else`
`       return 1, false`
`   end`

end

\-- Local function which is used to retrieve the Top Color value. local function getTopColor(args, rowColorEnabled, onInitialPage)

`   local episodeNumber = mathModule._cleanNumber(args.EpisodeNumber) or 1`
`   if (args.TopColor) then`
`       if (string.find(args.TopColor, "#")) then`
`           return args.TopColor`
`       else`
`           return '#' .. args.TopColor`
`       end`
`   elseif (rowColorEnabled and onInitialPage and mathModule._mod(episodeNumber, 2) == 0) then`
`       return '#E9E9E9'`
`   elseif (not onInitialPage and args.ShortSummary) then`
`       return '#F2F2F2'`
`   else`
`       return 'inherit'`
`   end`

end

\-- Local function which is used to retrieve the Row Color value. local function isRowColorEnabled(args)

`   local rowColorEnabled = yesNoModule(args.RowColor, false)`

`   if (args.RowColor and string.lower(args.RowColor) == 'on') then`
`       rowColorEnabled = true`
`   end`

`   return rowColorEnabled`

end

\-- Local function which is used to retrieve the Line Color value. local function getLineColor(args)

`   -- Default color to light blue`
`   local lineColor = args.LineColor or 'CCCCFF'`

`   -- Add # to color if necessary, and set to default color if invalid`
`   if (htmlColor[lineColor] == nil) then`
`       lineColor = '#' .. (mw.ustring.match(lineColor, '^[%s#]*([a-fA-F0-9]*)[%s]*$') or '')`
`       if (lineColor == '#') then`
`           lineColor = '#CCCCFF'`
`       end`
`   end`

`   return lineColor`

end

\-- Local function which is used to check if the table is located on the page -- currently viewed, or on a transcluded page instead. -- If it is on a transcluded page, the episode summary should not be shown. local function isOnInitialPage(args, sublist, pageTitle, initiallistTitle)

`   -- This should be the only check needed, however, it was previously implemented with two templates`
`   -- with one of them not requiring an article name, so for backward compatability, the whole sequence is kept.`
`   local onInitialPage`

`   -- Only sublist had anything about hiding, so only it needs to even check`
`   if (sublist) then`
`       onInitialPage = mw.uri.anchorEncode(pageTitle) == mw.uri.anchorEncode(initiallistTitle)`
`       -- avoid processing ghost references`
`       if (onInitialPage) then`
`           args.ShortSummary = nil`
`       end`
`   else`
`       if (initiallistTitle == "") then`
`           onInitialPage = false`
`       else`
`           onInitialPage = mw.uri.anchorEncode(pageTitle) == mw.uri.anchorEncode(initiallistTitle)`
`       end`
`   end`

`   return onInitialPage`

end

\-- Local function which does the actual main process. local function _main(args, sublist)

`   local title = mw.title.getCurrentTitle()`
`   local pageTitle = title.text`
`   local initiallistTitle = args['1'] or ''`

`   -- Is this list on the same page as the page directly calling the template?`
`   local onInitialPage = isOnInitialPage(args, sublist, pageTitle, initiallistTitle)`

`   -- Need just this parameter removed if blank, no others`
`   if (hasValue(args.ShortSummary) == false) then`
`       args.ShortSummary = nil`
`   end`

`   local lineColor = getLineColor(args)`
`   local rowColorEnabled = isRowColorEnabled(args)`
`   local topColor = getTopColor(args, rowColorEnabled, onInitialPage)`

`   local root = mw.html.create()                           -- Create the root mw.html object to return`
`   row = root:tag('tr')                                    -- Create the table row and store it globally`
`               :addClass('vevent')`
`               :css('text-align', 'center')`
`               :css('background', topColor)`

`   local numberOfParameterGroups, multiTitleListEnabled = getnumberOfParameterGroups(args)`

`   if (multiTitleListEnabled and not args.Title_2) then`
`       createMultiRowCells(args, numberOfParameterGroups, onInitialPage, title, topColor)`
`   else`
`       createSingleRowCells(args, numberOfParameterGroups, multiTitleListEnabled, onInitialPage, title)`
`   end`

`   -- add these categories only in the mainspace and only if they are on the page where the template is used`
`   if (onInitialPage and title.namespace == 0) then`
`       addLineColorTrackingCategories(args)`
`       addTopColorTrackingCategories(args)`
`   end`

`   if (cellValueTBA == true and title.namespace == 0) then`
`       addTrackingCategory(trackingCategoryList["tba_values"])`
`   end`

`   -- Do not show the summary if this is being transcluded on the initial list page`
`   -- Do include it on all other lists`
`   if (not onInitialPage and args.ShortSummary) then`
`       local bottomWrapper = createShortSummaryRow(args, lineColor)`
`       return tostring(root) .. tostring(bottomWrapper) .. trackingCategories`
`   else`
`       return tostring(root) .. trackingCategories`
`   end`

end

\-- Local function which handles both module entry points. local function main(frame, sublist)

`   local getArgs = require('Module:Arguments').getArgs`
`   local args`

`   -- Most parameters should still display when blank, so don't remove blanks`
`   if (sublist) then`
`       args = getArgs(frame, {removeBlanks = false, wrappers = 'Template:Episode list/sublist'})`
`   else`
`       args = getArgs(frame, {removeBlanks = false, wrappers = 'Template:Episode list'})`
`   end`

`   -- args['1'] = mw.getCurrentFrame():getParent():getTitle()`
`   return _main(args, sublist, frame)`

end

\--\[\[ Public function which is used to create an Episode row for an Episode Table used for lists of episodes where each table is on a different page, usually placed on individual season articles.

For tables which are all on the same page see p.list().

Parameters:

`   -- |1=                  — required; The title of the article where the Episode Table is located at.`
`   -- |EpisodeNumber=      — suggested; The overall episode number in the series.`
`   -- |EpisodeNumber2=     — suggested; The episode number in the season.`
`   -- |Title=              — suggested; The English title of the episode.`
`   -- |RTitle=             — optional; Unformatted parameter that can be used to add a reference after "Title",`
`                                           or can be used as a "raw title" to replace "Title" completely.`
`   -- |AltTitle=           — optional; An alternative title, such as the title of a foreign show's episode in its native language,`
`                                           or a title that was originally changed.`
`   -- |TranslitTitle=      — optional; The title of the episode transliteration (Romanization) to Latin characters.`
`   -- |RAltTitle=          — optional; Unformatted parameter that can be used to add a reference after "AltTitle",`
`                                           or can be used as a "raw title" to replace "AltTitle" completely.`
`   -- |NativeTitle=        — optional; The title of the episode in the native language.`
`   -- |NativeTitleLangCode — optional; The language code of the native title language.`
`   -- |Aux1=               — optional; General purpose parameter. The meaning is specified by the column header.`
`                                       This parameter is also used for Serial episode titles, such as those used in Doctor Who.`
`   -- |DirectedBy=         — optional; Name of the episode's director. May contain links.`
`   -- |WrittenBy=          — optional; Primary writer(s) of the episode. May include links.`
`   -- |Aux2=               — optional; General purpose parameter. The meaning is specified by the column header.`
`   -- |Aux3=               — optional; General purpose parameter. The meaning is specified by the column header.`
`   -- |OriginalAirDate=    — optional; This is the date the episode first aired on TV, or is scheduled to air.`
`   -- |AltDate=            — optional; The next notable air date, such as the first air date of an anime in English.`
`   -- |ProdCode=           — optional; The production code in the series. When defined, this parameter also creates a link anchor,`
`                                           prefixed by "pc"; for example, List of episodes#pc01.`
`   -- |Viewers=            — optional; Number of viewers who watched the episode. Should include a reference.`
`   -- |Aux4=               — optional; General purpose parameter. The meaning is specified by the column header.`
`   -- |ShortSummary=       — optional; A short 100–200 word plot summary of the episode.`
`   -- |LineColor=          — optional; Colors the separator line between episode entries. If not defined the color defaults to "#CCCCFF"`
`                                           and the article is placed in Category:Episode list using the default LineColor.`
`                                           Use of "#", or anything but a valid hex code will result in an invalid syntax.`
`   -- |TopColor=           — discouraged; Colors the main row of information (that is, not the ShortSummary row).`
`                                           Articles using this parameter are placed in Category:Episode lists with row deviations.`
`   -- |RowColor=           — optional; Switch parameter that must only be defined when the EpisodeNumber= entry is not a regular number`
`                                           (e.g. "12–13" for two episodes described in one table entry).`
`                                           If the first episode number is even, define pass "on". If the first episode number is odd, pass "off".`

\--\]\] function p.sublist(frame)

`   return main(frame, true)`

end

\--[Public function which is used to create an Episode row for an Episode Table used for lists of episodes where all tables are on the same page. For tables which are on different pages see p.sublist(). For complete parameter documentation, see the documentation at p.sublist(). --](https://zh.wikipedia.org/wiki/Public_function_which_is_used_to_create_an_Episode_row_for_an_Episode_Table_used_for_lists_of_episodes_where_all_tables_are_on_the_same_page._For_tables_which_are_on_different_pages_see_p.sublist\(\)._For_complete_parameter_documentation,_see_the_documentation_at_p.sublist\(\)._-- "wikilink") function p.list(frame)

`   return main(frame, false)`

end

return p

[Category:劇集列表中存在不規則的播出日期](https://zh.wikipedia.org/wiki/Category:劇集列表中存在不規則的播出日期 "wikilink") [Category:劇集列表中存在不規則的備用播出日期](https://zh.wikipedia.org/wiki/Category:劇集列表中存在不規則的備用播出日期 "wikilink") [Category:劇集列表中存在不正確的線條顏色](https://zh.wikipedia.org/wiki/Category:劇集列表中存在不正確的線條顏色 "wikilink") [Category:劇集列表中存在不合規則的線條顏色](https://zh.wikipedia.org/wiki/Category:劇集列表中存在不合規則的線條顏色 "wikilink") [Category:使用默认线条颜色的剧集列表](https://zh.wikipedia.org/wiki/Category:使用默认线条颜色的剧集列表 "wikilink") [Category:行偏差的剧集列表](https://zh.wikipedia.org/wiki/Category:行偏差的剧集列表 "wikilink") [Category:劇集列表中存在無效的頂部顏色](https://zh.wikipedia.org/wiki/Category:劇集列表中存在無效的頂部顏色 "wikilink") [Category:劇集列表中存在未確定的參數](https://zh.wikipedia.org/wiki/Category:劇集列表中存在未確定的參數 "wikilink") [Category:劇集列表中存在不匹配的數值參數](https://zh.wikipedia.org/wiki/Category:劇集列表中存在不匹配的數值參數 "wikilink")