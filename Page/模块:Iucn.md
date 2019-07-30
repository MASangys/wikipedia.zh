local p = {}

local data = { -- these data entries will ultimately go in data subpage or series of data subpages \*\*NOT USED\*\*

`   iucn = {`
`       ['_template'] = "cite journal", -- use cite journal`
`       ['_exclude'] = "amended, url" ,  -- do not pass these to `
`               --_alias-map: associate ``-specific parameter names with cs1|2-standard parameter names`
`       ['_alias-map'] =  "assessors : authors, vassessors : vauthors, assessor# : last#, assessor#-link : author#-link,assessor-link# : author-link#, assessorlink# : authorlink#, assessor#-mask : author#-mask, assessor-mask# : author-mask#, assessormask# : authormask#, display-assessors : display-authors, displayassessors : displayauthors, last-assessor-amp : last-author-amp, lastassessoramp : lastauthoramp, assessment_year : year, taxon : title, downloaded : access-date"`
`   }`

}

local function getArgs (frame, args)

`   local parents = mw.getCurrentFrame():getParent()`

`   for k,v in pairs(parents.args) do`
`       --check content`
`       if v and v ~= "" then`
`           args[k]=v --parents.args[k]`
`       end`
`   end`

end --\[\[ function p.cite() - function wrapping

`    takes cite journal parameters but updates old style url using electronic page number`
`    page should be in format e.T13922A45199653`
`    the url uses                13922/45199653`
`    so we need to extract the number between T and A and the number after A`
`    the target url is `<https://www.iucnredlist.org/species/13922/45199653>
`    usage: {{#invoke:iucn|cite}}`
`    template: `

\--\]\] function p.cite(frame)

`   --local parents = mw.getCurrentFrame():getParent()`

`   local templateArgs = {}`
`   getArgs (frame, templateArgs)`

`   --we only want to make changes if there is old-style url, i.e. one containing "/details/"`
`   local url = templateArgs['url'] or ""`
`   local old = string.find( url, "details" , 1, true)`
`   if old then`
`       local page = templateArgs['page'] or ""`
`       local speciesID = string.match( page, "T(%d+)A" )`
`       local speciesAssessment = string.match( page, "A(%d+)" )`
`       if speciesID  and speciesAssessment then -- set new style url`
`           templateArgs['url'] = "`<https://www.iucnredlist.org/species/>`" .. speciesID .. '/' .. speciesAssessment`
`       end`
`   end`
`   if templateArgs['amended'] then templateArgs['trans-title']=templateArgs['amended'] end -- use translated title parameter to add amended text, e.g. "amended version of 2016 assessment", which will be added in square brackets after title`

`   return frame:expandTemplate{ title = 'cite journal', args = templateArgs }`
`   --return frame:expandTemplate{ title = 'cite journal', args = parents.args }`

end -- version using template wrapper for cite journal function p.cite2(frame)

`   -- now use wrapper template`

`   --[[this doesn't work`
`   frame.args['_alias-map'] =  "assessors : authors, vassessors : vauthors, assessor# : last#, assessor#-link : author#-link,assessor-link# : author-link#, assessorlink# : authorlink#, assessor#-mask : author#-mask, assessor-mask# : author-mask#, assessormask# : authormask#, display-assessors : display-authors, displayassessors : displayauthors, last-assessor-amp : last-author-amp, lastassessoramp : lastauthoramp, assessment_year : year, taxon : title, downloaded : access-date"`
`   frame.args['_template'] = "cite journal"`
`   but the following does ]]`

`   local wrapperArgs ={}`
`   wrapperArgs['_template'] = "cite journal"`
`   --|_exclude=id, version, new, IUCN_Year, iucn_year, criteria-version `
`   wrapperArgs['_exclude'] = "amended, url" -- exclude url (from parent) as we wanted updated version`
`   --|_alias-map= `
`   wrapperArgs['_alias-map'] =  "assessors : authors, vassessors : vauthors, assessor# : last#, assessor#-link : author#-link,assessor-link# : author-link#, assessorlink# : authorlink#, assessor#-mask : author#-mask, assessor-mask# : author-mask#, assessormask# : authormask#, display-assessors : display-authors, displayassessors : displayauthors, last-assessor-amp : last-author-amp, lastassessoramp : lastauthoramp, assessment_year : year, taxon : title, downloaded : access-date"`

`   local templateArgs = {}   -- need a copy to alter and pass to citation template`
`   getArgs (frame, templateArgs)`

`   --we only want to make changes if there is old-style url, i.e. one containing "/details/"`
`   local url = templateArgs['url'] or ""`
`   local replace = string.find( url, "details" , 1, true)    -- replace url if contains "details"`
`   if url == "" and templateArgs['page'] then replace = true end -- if no url and page number available,`

`   if replace  then`
`       local page = templateArgs['page'] or ""`
`       local speciesID = string.match( page, "T(%d+)A" )`
`       local speciesAssessment = string.match( page, "A(%d+)" )`
`       if speciesID  and speciesAssessment then -- set new style url`
`           wrapperArgs['url'] = "`<https://www.iucnredlist.org/species/>`" .. speciesID .. '/' .. speciesAssessment`
`       end`
`   else`
`       wrapperArgs['url']=templateArgs['url']`
`   end`
`   if url == "" and templateArgs['id'] then -- use oldstyle url`
`       wrapperArgs['url'] = "`<http://oldredlist.iucnredlist.org/details/>`" .. templateArgs['id']`
`       wrapperArgs['journal'] = '`[`IUCN``   ``Red``   ``List``   ``of``   ``Threatened``   ``Species`](https://zh.wikipedia.org/wiki/IUCN_Red_List_of_Threatened_Species "wikilink")`'`
`       wrapperArgs['volume'] = 'Version ' .. templateArgs['version']`
`   end`
`   if templateArgs['amended'] then wrapperArgs['trans-title']=templateArgs['amended'] end -- use translated title parameter to add amended text, e.g. "amended version of 2016 assessment", which will be added in square brackets after title`
`   --wrapperArgs['trans-title'] = templateArgs['trans-title']`

`   frame.args=wrapperArgs --set the wrapper arguments`

`   local wrapper = require("Module:Template wrapper/sandbox")`

`   --local xframe = frame --mw.clone(frame)  --mw.getCurrentFrame()`
`   --frame.args.metatable['_template'] = "cite journal"`
`   --local parents = xframe:getParent() --mw.getCurrentFrame():getParent()`
`   --parents.args['_template'] = "cite journal"`

`   --mw.logObject(frame)`
`   --return  mw.dumpObject(wrapperArgs)`
`   return wrapper.wrap(frame)`

end --[main}} --](https://zh.wikipedia.org/wiki/function_to_replace_iucn_templates_test_template:_Template:IUCN/sandbox/lua_usage:_{{#invoke:iucn "wikilink") function p.main(frame)

`   local templateArgs = {}   -- need a copy to alter and pass to citation template`
`   getArgs (frame, templateArgs)`

\-- local parents = mw.getCurrentFrame():getParent()

`   local reference = ""`
`   local taxon =templateArgs['taxon']`

`   reference = '``'`

`   return frame:preprocess(reference)`
`   --return reference`

end

return p