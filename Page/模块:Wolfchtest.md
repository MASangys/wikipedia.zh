> 本文内容由[模块:Wolfchtest](https://zh.wikipedia.org/wiki/模块:Wolfchtest)转换而来。


local p = {} --change from module:Va2_icon function p.main( frame )

`   local data`
`   data = 'Helloworld'`
`   `
`   return data`

end

function p.badges(frame)

`   local site = frame.args[1]`
`   local id = frame.args[2]`
`   if not site then return printError("site-not-found") end`
`   local entity = mw.wikibase.getEntity(id)`
`   if not entity then return printError("entity-not-found") end`
`   local badges = entity.sitelinks[site].badges`
`   if badges then`
`       local result`
`       for idx = 1, #badges do`
`           if result then result = result .. "/" .. badges[idx] else result = badges[idx] end`
`       end`
`       return result`
`   end`

end

function p.zh_badges(frame)

`   local site = "zhwiki"`
`       local page = frame.args[1]`
`   local id = p.pageId(page)`
`   local entity = mw.wikibase.getEntity(id)`
`   if not entity then return printError("entity-not-found") end`
`   local badges = entity.sitelinks[site].badges`
`   if badges then`
`       local result`
`       for idx = 1, #badges do`
`           if result then result = result .. "/" .. badges[idx] else result = badges[idx] end`
`       end`
`       return result`
`   end`

end

function p.pageId(frame)

`   local entity = mw.wikibase.getEntity(frame)`
`   if not entity then return nil else return entity.id end`

end

function p.test_feature(frame)

`   local title = mw.title.new("Special:链入页面/Template:Featured_article")`
`   local content = title:getContent()`
`   local chars = mw.ustring.len( content )`
`   return chars`

end

function p.test_1128(frame)

`   local text = mw.title.new(frame.args[1]):getContent()`
`   local GotFA = string.find(text, "``", 1, true)`
`   local GotGA = string.find(text, "``", 1, true)`
`   if GotGA then`
`       return "GA"`
`   else`
`       if GotFA then`
`           return "FA"`
`       else    `
`           return "none"`
`       end    `
`   end   `

end

return p