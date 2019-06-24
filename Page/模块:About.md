local mArguments --initialize lazily local mHatnote =
require('Module:Hatnote') local mHatList = require('Module:Hatnote
list2') local libraryUtil = require('libraryUtil') local checkType =
libraryUtil.checkType local p = {}

function p.about (frame)

`   -- A passthrough that gets args from the frame and all`
`   mArguments = require('Module:Arguments')`
`   args = mArguments.getArgs(frame)`
`   return p._about(args)`

end

function p._about (args, options)

`   -- Produces "about" hatnote.`

`   -- Type checks and defaults`
`   checkType('_about', 1, args, 'table', true)`
`   args = args or {}`
`   checkType('_about', 2, options, 'table', true)`
`   options = options or {}`
`   local defaultOptions = {`
`       aboutForm = '此%s介紹的是%s。',`
`       PageType = require('Module:Pagetype').main(),`
`       namespace = mw.title.getCurrentTitle().namespace,`
`       otherText = nil, --included for complete list`
`       sectionString = '节'`
`   }`
`   for k, v in pairs(defaultOptions) do`
`       if options[k] == nil then options[k] = v end`
`   end`

`   -- Set initial "about" string`
`   local pageType = (args.section and options.sectionString) or options.PageType`
`   local about = ''`
`   if args[1] then`
`       about = string.format(options.aboutForm, pageType, args[1])`
`   end`
`   `
`   --Allow passing through certain options`
`   local fsOptions = {`
`       otherText = options.otherText,`
`       extratext = args.text`
`   }`
`   local hnOptions = {`
`       selfref = args.selfref`
`   }`

`   -- Set for-see list`
`   local forSee = mHatList._forSee(args, 2, fsOptions)`

`   local image = '`[`Disambig_gray.svg`](https://zh.wikipedia.org/wiki/File:Disambig_gray.svg "fig:Disambig_gray.svg")`'`

`   -- Concatenate and return`
`   return mHatnote._hatnote(image .. '  ' .. about .. forSee, hnOptions)`

end

return p