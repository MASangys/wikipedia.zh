require('Module:No globals')

local p = {} local ac_conf = require('Module:Authority control').conf local currentTitle = mw.title.getCurrentTitle() local title = currentTitle.text local isCat = (currentTitle.namespace == 14)

local function whichTOC( frame )

`   local pageCount = mw.site.stats.pagesInCategory(title, 'pages')`
`   if pageCount >= 5000 then`
`       return frame:expandTemplate{ title = 'Large category TOC' }`
`   elseif pageCount > 400 then`
`       return frame:expandTemplate{ title = 'Category TOC', args = { align = 'center' } }`
`   end`
`   return ''`

end

\--For use in , -- i.e. on local function pages( frame, id )

`   for _, conf in pairs( ac_conf ) do`
`       if conf[1] == id or (conf[1] == 'MBA' and id == 'MusicBrainz') then`
`           local link = conf[2] --not used locally yet`
`           local txCatMore = frame:expandTemplate{ title = 'Cat more', args = {':en:Wikipedia:Authority control'} }`
`           local txWPCat = frame:expandTemplate{ title = 'Wikipedia category' }`
`           local outString = txCatMore..txWPCat..'\n'..`
`                   ''`
`           return outString`
`       end`
`   end`
`   return ''`

end

\--For use in , -- i.e. on local function misc( frame, id )

`   for _, conf in pairs( ac_conf ) do`
`       if conf[1] == id or (conf[1] == 'MBA' and id == 'MusicBrainz') then`
`           local link = conf[2]`
`           local txCatExplain = frame:expandTemplate{ title = 'Category explanation', `
`                   args = { '含有{{`[`规范控制`](https://zh.wikipedia.org/wiki/Template:Authority_control "wikilink")`}}标识符'..link..'的页面。' } }`
`           local txCatMore = frame:expandTemplate{ title = 'Cat more', args = {':en:Wikipedia:Authority control'} }`
`           local txEmptyCat = frame:expandTemplate{ title = 'Possibly empty category' }`
`           local txWPCat = frame:expandTemplate{ title = 'Wikipedia category', args = { hidden = 'yes', tracking = 'yes' } }`
`           local txTOC = whichTOC( frame )`
`           local outString = txCatExplain..txCatMore..txEmptyCat..txWPCat..txTOC..'\n'..`
`                   '本分类中的页面应该只能由`[`Module:Authority``   ``control添加`](https://zh.wikipedia.org/wiki/Module:Authority_control "wikilink")`。'..`
`                   ''..`
`                   ''`
`           return outString`
`       end`
`   end`
`   return ''`

end

\--For use in , -- i.e. on local function user( frame, id )

`   for _, conf in pairs( ac_conf ) do`
`       if conf[1] == id or (conf[1] == 'MBA' and id == 'MusicBrainz') then`
`           local link = conf[2] --not used locally yet`
`           local txCatMore = frame:expandTemplate{ title = 'Cat more', args = {':en:Wikipedia:Authority control'} }`
`           local txEmptyCat = frame:expandTemplate{ title = 'Possibly empty category' }`
`           local txWPCat = frame:expandTemplate{ title = 'Wikipedia category', args = { hidden = 'yes', tracking = 'yes' } }`
`           local txTOC = whichTOC( frame )`
`           local outString = txCatMore..txEmptyCat..txWPCat..txTOC..'\n'..`
`                   '本分类中的页面应该只能由`[`Module:Authority``   ``control添加`](https://zh.wikipedia.org/wiki/Module:Authority_control "wikilink")`。'..`
`                   ''..`
`                   ''`
`           return outString`
`       end`
`   end`
`   return ''`

end

\--For use in , -- i.e. on local function wp( frame, id )

`   for _, conf in pairs( ac_conf ) do`
`       if conf[1] == id or (conf[1] == 'MBA' and id == 'MusicBrainz') then`
`           local link = conf[2]`
`           local txCatExplain = frame:expandTemplate{ title = 'Category explanation', args = {'包含'..link..'标识符的条目。请不要添加`[`子分类`](https://zh.wikipedia.org/wiki/Wikipedia:分类#子分类 "wikilink")`'} }`
`           local txCatMore = frame:expandTemplate{ title = 'Cat more', args = {':en:Wikipedia:Authority control'} }`
`           local txEmptyCat = frame:expandTemplate{ title = 'Possibly empty category' }`
`           local txWPCat = frame:expandTemplate{ title = 'Wikipedia category', args = { hidden = 'yes', tracking = 'yes' } }`
`           local txTOC = whichTOC( frame )`
`           local outString = txCatExplain..txCatMore..txEmptyCat..txWPCat..txTOC..'\n'..`
`                   '本分类中的页面应该只能由`[`Module:Authority``   ``control添加`](https://zh.wikipedia.org/wiki/Module:Authority_control "wikilink")`。'..`
`                   ''..`
`                   ''`
`           return outString`
`       end`
`   end`
`   return ''`

end

\--For use in , -- i.e. on local function wpfaulty( frame, id )

`   for _, conf in pairs( ac_conf ) do`
`       if conf[1] == id or (conf[1] == 'MBA' and id == 'MusicBrainz') then`
`           local link = conf[2] --not used locally yet`
`           local param = conf[3]`
`           local txCatMore = frame:expandTemplate{ title = 'Cat more', args = {':en:Wikipedia:Authority control', 'd:Property:P'..param} }`
`           local txEmptyCat = frame:expandTemplate{ title = 'Possibly empty category' }`
`           local txWPCat = frame:expandTemplate{ title = 'Wikipedia category', args = { hidden = 'yes', tracking = 'yes' } }`
`           local txDirtyCat = frame:expandTemplate{ title = 'Polluted category' }`
`           local txTOC = whichTOC( frame )`
`           local outString = txCatMore..txEmptyCat..txWPCat..txDirtyCat..txTOC..'\n'..`
`                   '本分类中的页面应该只能由`[`Module:Authority``   ``control添加`](https://zh.wikipedia.org/wiki/Module:Authority_control "wikilink")`。'..`
`                   ''..`
`                   ''`
`           return outString`
`       end`
`   end`
`   return ''`

end

\--Main/external call function p.autoDetect( frame )

`   if isCat then`
`       local pagesID    = mw.ustring.match(title, '包含([%w%.%-]+)标识符的页面')`
`       local miscID     = mw.ustring.match(title, '包含([%w%.%-]+)标识符的其他页面')`
`       local userID     = mw.ustring.match(title, '包含([%w%.%-]+)标识符的用户页')`
`       local wpID       = mw.ustring.match(title, '包含([%w%.%-]+)标识符的维基百科条目')`
`       local wpfaultyID = mw.ustring.match(title, '包含错误规范控制信息的维基百科条目 %(([%w%.%-]+)%)')`

`       if     pagesID    then return pages( frame, pagesID )`
`       elseif miscID     then return misc( frame, miscID )`
`       elseif userID     then return user( frame, userID )`
`       elseif wpID       then return wp( frame, wpID )`
`       elseif wpfaultyID then return wpfaulty( frame, wpfaultyID )`
`       end`
`   end`
`   return ''`

end

return p

[Category:Pages_with_authority_control_information](https://zh.wikipedia.org/wiki/Category:Pages_with_authority_control_information "wikilink") [Category:Pages_with_VIAF_identifiers](https://zh.wikipedia.org/wiki/Category:Pages_with_VIAF_identifiers "wikilink") [Category:包含规范控制信息的页面](https://zh.wikipedia.org/wiki/Category:包含规范控制信息的页面 "wikilink") [Category:Miscellaneous_pages_with_authority_control_information](https://zh.wikipedia.org/wiki/Category:Miscellaneous_pages_with_authority_control_information "wikilink") [Category:Miscellaneous_pages_with_VIAF_identifiers](https://zh.wikipedia.org/wiki/Category:Miscellaneous_pages_with_VIAF_identifiers "wikilink") [Category:包含'..id..'标识符的页面](https://zh.wikipedia.org/wiki/Category:包含'..id..'标识符的页面 "wikilink") [Category:包含规范控制信息的其他页面](https://zh.wikipedia.org/wiki/Category:包含规范控制信息的其他页面 "wikilink") [Category:User_pages_with_authority_control_information](https://zh.wikipedia.org/wiki/Category:User_pages_with_authority_control_information "wikilink") [Category:User_pages_with_VIAF_identifiers](https://zh.wikipedia.org/wiki/Category:User_pages_with_VIAF_identifiers "wikilink") [Category:包含'..id..'标识符的页面](https://zh.wikipedia.org/wiki/Category:包含'..id..'标识符的页面 "wikilink") [Category:包含规范控制信息的用户页](https://zh.wikipedia.org/wiki/Category:包含规范控制信息的用户页 "wikilink") [Category:Wikipedia_articles_with_authority_control_information](https://zh.wikipedia.org/wiki/Category:Wikipedia_articles_with_authority_control_information "wikilink") [Category:Wikipedia_articles_with_VIAF_identifiers](https://zh.wikipedia.org/wiki/Category:Wikipedia_articles_with_VIAF_identifiers "wikilink") [Category:包含'..id..'标识符的页面](https://zh.wikipedia.org/wiki/Category:包含'..id..'标识符的页面 "wikilink") [Category:包含规范控制信息的维基百科条目](https://zh.wikipedia.org/wiki/Category:包含规范控制信息的维基百科条目 "wikilink") [Category:Wikipedia_articles_with_faulty_authority_control_information](https://zh.wikipedia.org/wiki/Category:Wikipedia_articles_with_faulty_authority_control_information "wikilink") [Category:Wikipedia_articles_with_faulty_authority_control_identifiers_(VIAF)](https://zh.wikipedia.org/wiki/Category:Wikipedia_articles_with_faulty_authority_control_identifiers_\(VIAF\) "wikilink") [Category:包含'..id..'标识符的页面](https://zh.wikipedia.org/wiki/Category:包含'..id..'标识符的页面 "wikilink") [Category:包含错误规范控制信息的维基百科条目](https://zh.wikipedia.org/wiki/Category:包含错误规范控制信息的维基百科条目 "wikilink")