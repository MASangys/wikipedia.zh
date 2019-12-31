> 本文内容由[模块:Protected edit request](https://zh.wikipedia.org/wiki/模块:Protected_edit_request)转换而来。


require('Module:No globals')

local yesno = require('Module:Yesno') local makeMessageBox = require('Module:Message box').main local getArgs

local activeBox -- lazily initialized if we get an active request

-----

\-- Box class definition

-----

local box = {} box.__index = box

function box.new(protectionType, args)

`   local obj = {}`
`   setmetatable(obj, box)`
`   obj.tmboxArgs = {} -- Used to store arguments to be passed to tmbox by the box:export method.`
`   -- Set data fields.`
`   obj.tmboxArgs.attrs = { ['data-origlevel'] = protectionType }`
`   return obj`

end

function box:setArg(key, value)

`   -- This sets a value to be passed to tmbox.`
`   if key then`
`       self.tmboxArgs[key] = value`
`   end`

end

function box:export()

`   if not mw.title.getCurrentTitle().isTalkPage and not self.demo then`
`       return '`<span class="error">`錯誤：保護頁面編輯請求僅能在討論頁提出。`</span>`'`
`   end`
`   self:setArg('smalltext', "本次`[`編輯請求已得到回應`](https://zh.wikipedia.org/wiki/Wikipedia:編輯請求 "wikilink")`。請將 <code style=\"white-space: nowrap;\">|answered=`</code>` 或 <code style=\"white-space: nowrap;\">|ans=`</code>` 參數刪除來重啟您的請求。")`
`   self:setArg('small', true)`
`   self:setArg('class', 'editrequest')`
`   return makeMessageBox('tmbox', self.tmboxArgs)`

end

-----

\-- Process arguments and initialise objects

-----

local p = {}

function p._main(protectionType, args)

`   local boxType = box`
`   if not yesno(args.answered or args.ans, true) then`
`       if not activeBox then`
`           activeBox = require('Module:Protected edit request/active')(box, yesno, makeMessageBox)`
`       end`
`       boxType = activeBox`
`   end`
`   local requestBox = boxType.new(protectionType, args)`
`   return requestBox:export()`

end

local mt = {}

function mt.__index(t, k)

`   if not getArgs then`
`       getArgs = require('Module:Arguments').getArgs`
`   end`
`   return function (frame)`
`       return t._main(k, getArgs(frame, {wrappers = {'Template:Editprotected'}}))`
`   end`

end

return setmetatable(p, mt)

[Category:有編輯請求模板的非討論頁面](https://zh.wikipedia.org/wiki/Category:有編輯請求模板的非討論頁面 "wikilink")