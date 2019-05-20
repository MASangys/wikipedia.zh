local wiki_prefix = "https://zh.wikipedia.org/wiki/"

local function starts_with(str, start)
  return str:sub(1, #start) == start
end

local function istarts_with(str, start)
  return starts_with(str:lower(), start:lower())
end


function Link(el)
  if el.title ~= "wikilink" then
    return el
  end
  
  if istarts_with(el.target, "Category:") then
    local c = string.sub(el.target, 1 + #"Category:")
    el.target = "https://zh.wikipedia.org/wiki/" .. el.target
    return pandoc.Link("Category:" .. c, "https://zh.wikipedia.org/wiki/Category:" .. c, el.title)
  elseif istarts_with(el.target, ":Category:") then
    local c = string.sub(el.target, 1 + #":Category:")
    el.target = "https://zh.wikipedia.org/wiki/Category:" .. c
    return el
  elseif istarts_with(el.target, "Wikipedia:") or istarts_with(el.target, "WP:") then
    el.target = wiki_prefix .. el.target
    return el
  elseif istarts_with(el.target, "Help:") then
    el.target = wiki_prefix .. el.target
    return el
  else 
    el.target = "../Page/" .. el.target
  end
  el.target = el.target .. ".md"
  return el
end
