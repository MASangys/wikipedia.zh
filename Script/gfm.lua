function Link(el)

  local function starts_with(str, start)
    return str:sub(1, #start) == start
  end

  if starts_with(el.target, "Category:") then   
    el.target = string.gsub(el.target, "%Category:", "../Category/")
  else
    el.target = "../Page/" .. el.target
  end
  el.target = el.target .. ".md"
  return el
end
