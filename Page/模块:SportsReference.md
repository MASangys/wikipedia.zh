\-- This is the code to insert a template to indicate that the link is
in English: -- frame:expandTemplate{ title = "LANGUAGETEMPLATENAME",
args = { "en" } } -- It is obviously not used in the English Wikipedia
itself. local function linktext(s)

`   entity = mw.wikibase.getEntityObject()`
`   if not entity then`
`       label = mw.title.getCurrentTitle().text`
`   else`
`       label = mw.wikibase.label(entity.id) or mw.title.getCurrentTitle().text`
`   end`
`   if (s == nil) or (s == "") then`
`       -- This text returns an error that says that the Sports Reference ID is neither`
`       -- present on Wikidata nor in the article, and categorises the page as missing`
`       -- the Wikidata property.`
`       return "`<span class='error'>`Sports Reference ID is neither present in Wikidata nor the article!`</span>` \`
`       `[`How``   ``do``   ``I``   ``fix``
 ``this?`](https://zh.wikipedia.org/wiki/Template:Sports-reference#Add_ID_in_Wikidata "wikilink")`\`
`       "`
`   else`
`       -- This is the text that is returned if there is a Sports Reference ID on Wikidata or in the article.`
`       return "[`<http://www.sports-reference.com/olympics/athletes/>`" .. s .. ".html " .. label .. "] at `[`Sports``
 ``Reference`](https://zh.wikipedia.org/wiki/Sports_Reference "wikilink")`"`
`   end`

end

local p = {}

function p.link(frame)

`   -- This is a check to see if the optional first parameter contains ".html". If it does, remove it.`
`   id = string.gsub((frame.args[1] or ""), ".html", "")`
`   if not mw.wikibase then`
`       return linktext(id)`
`   end`
`   local entity = mw.wikibase.getEntityObject()`
`   if not entity then`
`       -- This is the place to insert a category for articles that don't have items in Wikidata.`
`       -- enwiki doesn't seem to have such a category, so in this case it is empty.`
`       -- For other wikis, just remove the two comment dashes and insert the correct category name.`
`       return linktext(id) -- .. ""`
`   end`
`   local claims = entity.claims or {}`
`   local hasProp = claims["P1447"]`
`   if not hasProp then`
`       -- Category for articles that don't have the Sports Reference property on Wikidata.`
`       return linktext(id) .. ""`
`   end`
`   local propValue = hasProp[1].mainsnak.datavalue.value`
`   return linktext(propValue)`

end

return p

[Category:Sports_Reference_not_on_Wikidata](https://zh.wikipedia.org/wiki/Category:Sports_Reference_not_on_Wikidata "wikilink")
[Category:Articles_without_Wikidata_item](https://zh.wikipedia.org/wiki/Category:Articles_without_Wikidata_item "wikilink")
[Category:Sports_Reference_not_on_Wikidata](https://zh.wikipedia.org/wiki/Category:Sports_Reference_not_on_Wikidata "wikilink")