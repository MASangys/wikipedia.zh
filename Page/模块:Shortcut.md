> 本文内容由[模块:Shortcut](https://zh.wikipedia.org/wiki/模块:Shortcut)转换而来。


\-- This module implements .

\-- Set constants local CONFIG_MODULE = 'Module:Shortcut/config'

\-- Load required modules local checkType = require('libraryUtil').checkType local yesno = require('Module:Yesno')

local p = {}

function p._getshortname(frame)

`   return frame:expandTemplate{title = "Lan",args = {["zh-hans"]="快捷方式",["zh-hant"]="捷徑"}}`

end

function p.getshortlink(frame)

`   return "`[`"``   ``..``   ``p._getshortname(frame)``   ``..``   ``"`](https://zh.wikipedia.org/wiki/Wikipedia:捷徑 "wikilink")`"`

end

function p.getshortlink_policy(frame)

`   return "`[`方針"``   ``..``   ``p._getshortname(frame)``   ``..``   ``"`](https://zh.wikipedia.org/wiki/Wikipedia:捷徑 "wikilink")`"`

end

local function message(msg, ...)

`   return mw.message.newRawMessage(msg, ...):plain()`

end

local function makeCategoryLink(cat)

`   return string.format('`[`%s:%s`](https://zh.wikipedia.org/wiki/%s:%s "wikilink")`', mw.site.namespaces[14].name, cat)`

end

function p._main(shortcuts, options, frame, cfg)

`   checkType('_main', 1, shortcuts, 'table')`
`   checkType('_main', 2, options, 'table', true)`
`   options = options or {}`
`   frame = frame or mw.getCurrentFrame()`
`   cfg = cfg or mw.loadData(CONFIG_MODULE)`
`   local isCategorized = yesno(options.category) ~= false`

`   -- Validate shortcuts`
`   for i, shortcut in ipairs(shortcuts) do`
`       if type(shortcut) ~= 'string' or #shortcut < 1 then`
`           error(message(cfg['invalid-shortcut-error'], i), 2)`
`       end`
`   end`

`   -- Make the list items. These are the shortcuts plus any extra lines such`
`   -- as options.msg.`
`   local listItems = {}`
`   for i, shortcut in ipairs(shortcuts) do`
`       listItems[i] = frame:expandTemplate{`
`           title = 'No redirect',`
`           args = {shortcut}`
`       }`
`   end`
`   table.insert(listItems, options.msg)`

`   -- Return an error if we have nothing to display`
`   if #listItems < 1 then`
`       local msg = cfg['no-content-error']`
`       msg = string.format('`<strong class="error">`%s`</strong>`', msg)`
`       if isCategorized and cfg['no-content-error-category'] then`
`           msg = msg .. makeCategoryLink(cfg['no-content-error-category'])`
`       end`
`       return msg`
`   end`

`   local root = mw.html.create()`
`   root:wikitext(frame:extensionTag{ name = 'templatestyles', args = { src = 'Shortcut/styles.css'} })`
`   -- Anchors`
`   local anchorDiv = root`
`       :tag('div')`
`           :addClass('module-shortcutanchordiv')`
`   for i, shortcut in ipairs(shortcuts) do`
`       local anchor = mw.uri.anchorEncode(shortcut)`
`       anchorDiv:tag('span'):attr('id', anchor)`
`   end`

`   -- Shortcut heading`
`   local shortcutHeading`
`   do`
`       local nShortcuts = #shortcuts`
`       if nShortcuts > 0 then`
`           shortcutHeading = message(p.getshortlink(frame), nShortcuts)`
`           shortcutHeading = frame:preprocess(shortcutHeading)`
`       end`
`   end`
`   if yesno(options.policy) then`
`       shortcutHeading = p.getshortlink_policy(frame)`
`   end`

`   -- Shortcut box`
`   local shortcutList = root`
`       :tag('div')`
`           :addClass('module-shortcutboxplain plainlist noprint')`
`           :attr('role', 'note')`
`   if options.float == 'left' then`
`       shortcutList:addClass('module-shortcutboxplain-left')`
`   end`
`   if shortcutHeading then`
`       shortcutList`
`           :tag('div')`
`               :addClass('module-shortcutlist')`
`               :wikitext(shortcutHeading)`
`   end`
`   local list = shortcutList:tag('ul')`
`   for i, item in ipairs(listItems) do`
`       list:tag('li'):wikitext(item)`
`   end`
`   return tostring(root)`

end

function p.main(frame)

`   local args = require('Module:Arguments').getArgs(frame, {`
`       wrappers = 'Template:Shortcut'`
`   })`

`   -- Separate shortcuts from options`
`   local shortcuts, options = {}, {}`
`   for k, v in pairs(args) do`
`       if type(k) == 'number' then`
`           shortcuts[k] = v`
`       else`
`           options[k] = v`
`       end`
`   end`

`   -- Compress the shortcut array, which may contain nils.`
`   local function compressArray(t)`
`       local nums, ret = {}, {}`
`       for k in pairs(t) do`
`           nums[#nums + 1] = k`
`       end`
`       table.sort(nums)`
`       for i, num in ipairs(nums) do`
`           ret[i] = t[num]`
`       end`
`       return ret`
`   end`
`   shortcuts = compressArray(shortcuts)`

`   return p._main(shortcuts, options, frame)`

end

function p._ombx(shortcuts, options, frame, cfg)

`   checkType('_main', 1, shortcuts, 'table')`
`   checkType('_main', 2, options, 'table', true)`
`   options = options or {}`
`   frame = frame or mw.getCurrentFrame()`
`   cfg = cfg or mw.loadData(CONFIG_MODULE)`
`   local isCategorized = yesno(options.category) ~= false`

`   -- Validate shortcuts`
`   for i, shortcut in ipairs(shortcuts) do`
`       if type(shortcut) ~= 'string' or #shortcut < 1 then`
`           error(message(cfg['invalid-shortcut-error'], i), 2)`
`       end`
`   end`

`   -- Make the list items. These are the shortcuts plus any extra lines such`
`   -- as options.msg.`
`   local listItems = {}`
`   for i, shortcut in ipairs(shortcuts) do`
`       listItems[i] = frame:expandTemplate{`
`           title = 'No redirect',`
`           args = {shortcut}`
`       }`
`   end`
`   table.insert(listItems, options.msg)`

`   -- Return an error if we have nothing to display`
`   if #listItems < 1 then`
`       local msg = cfg['no-content-error']`
`       msg = string.format('`<strong class="error">`%s`</strong>`', msg)`
`       if isCategorized and cfg['no-content-error-category'] then`
`           msg = msg .. makeCategoryLink(cfg['no-content-error-category'])`
`       end`
`       return msg`
`   end`

`   local root = mw.html.create()`
`   root:wikitext(frame:extensionTag{ name = 'templatestyles', args = { src = 'Shortcut/styles.css'} })`
`   -- Anchors`
`   local anchorDiv = root`
`       :tag('div')`
`           :addClass('module-shortcutanchordiv')`
`   for i, shortcut in ipairs(shortcuts) do`
`       local anchor = mw.uri.anchorEncode(shortcut)`
`       anchorDiv:tag('span'):attr('id', anchor)`
`   end`

`   -- Shortcut heading`
`   local shortcutHeading`
`   do`
`       local nShortcuts = #shortcuts`
`       if nShortcuts > 0 then`
`           shortcutHeading = message(p.getshortlink(frame), nShortcuts)`
`           shortcutHeading = frame:preprocess(shortcutHeading)`
`       end`
`   end`

`   -- Shortcut box`
`   local shortcutList = root`
`       :tag('div')`
`           :addClass('module-omboxshortcutplain plainlist noprint')`
`           :attr('role', 'note')`
`   if shortcutHeading then`
`       shortcutList`
`           :tag('div')`
`               :addClass('module-shortcutlist')`
`               :wikitext(shortcutHeading)`
`   end`
`   local list = shortcutList:tag('ul')`
`   for i, item in ipairs(listItems) do`
`       list:tag('li'):wikitext(item)`
`   end`
`   return tostring(root)`

end

function p.ombox(frame)

`   local args = require('Module:Arguments').getArgs(frame, {`
`       wrappers = 'Template:Shortcut'`
`   })`

`   -- Separate shortcuts from options`
`   local shortcuts, options = {}, {}`
`   for k, v in pairs(args) do`
`       if type(k) == 'number' then`
`           shortcuts[k] = v`
`       else`
`           options[k] = v`
`       end`
`   end`

`   -- Compress the shortcut array, which may contain nils.`
`   local function compressArray(t)`
`       local nums, ret = {}, {}`
`       for k in pairs(t) do`
`           nums[#nums + 1] = k`
`       end`
`       table.sort(nums)`
`       for i, num in ipairs(nums) do`
`           ret[i] = t[num]`
`       end`
`       return ret`
`   end`
`   shortcuts = compressArray(shortcuts)`

`   return p._ombx(shortcuts, options, frame)`

end

function p._template(shortcuts, options, frame, cfg)

`   checkType('_main', 1, shortcuts, 'table')`
`   checkType('_main', 2, options, 'table', true)`
`   options = options or {}`
`   frame = frame or mw.getCurrentFrame()`
`   cfg = cfg or mw.loadData(CONFIG_MODULE)`
`   local isCategorized = yesno(options.category) ~= false`

`   -- Validate shortcuts`
`   for i, shortcut in ipairs(shortcuts) do`
`       if type(shortcut) ~= 'string' or #shortcut < 1 then`
`           error(message(cfg['invalid-shortcut-error'], i), 2)`
`       end`
`   end`

`   -- Make the list items. These are the shortcuts plus any extra lines such`
`   -- as options.msg.`
`   local listItems = {}`
`   for i, shortcut in ipairs(shortcuts) do`
`       listItems[i] = '{{'`
`               .. frame:expandTemplate{`
`               title = 'Template_shortcut/link',`
`               args = {shortcut}`
`               }..'}}'`
`   end`
`   table.insert(listItems, options.msg)`

`   -- Return an error if we have nothing to display`
`   if #listItems < 1 then`
`       local msg = cfg['no-content-error']`
`       msg = string.format('`<strong class="error">`%s`</strong>`', msg)`
`       if isCategorized and cfg['no-content-error-category'] then`
`           msg = msg .. makeCategoryLink(cfg['no-content-error-category'])`
`       end`
`       return msg`
`   end`

`   local root = mw.html.create()`
`   root:wikitext(frame:extensionTag{ name = 'templatestyles', args = { src = 'Shortcut/styles.css'} })`
`   -- Anchors`
`   local anchorDiv = root`
`       :tag('div')`
`           :addClass('module-shortcutanchordiv')`
`   for i, shortcut in ipairs(shortcuts) do`
`       local anchor = mw.uri.anchorEncode(shortcut)`
`       anchorDiv:tag('span'):attr('id', 'Template:'..anchor)`
`   end`

`   -- Shortcut heading`
`   local shortcutHeading`
`   do`
`       local nShortcuts = #shortcuts`
`       if nShortcuts > 0 then`
`           shortcutHeading = message(cfg['shortcut-heading'], nShortcuts)`
`           shortcutHeading = shortcutHeading`
`       end`
`   end`

`   -- Shortcut box`
`   local shortcutList = root`
`       :tag('div')`
`           :addClass('module-shortcutboxplain plainlist noprint')`
`           :attr('role', 'note')`
`   if options.float == 'left' then`
`       shortcutList:addClass('module-shortcutboxplain-left')`
`   end`
`   if shortcutHeading then`
`       shortcutList`
`           :tag('div')`
`               :addClass('module-shortcutlist')`
`               :wikitext(shortcutHeading)`
`   end`
`   local list = shortcutList:tag('ul')`
`   for i, item in ipairs(listItems) do`
`       list:tag('li'):wikitext(item)`
`   end`
`   return tostring(root)`

end

function p.template(frame)

`   local args = require('Module:Arguments').getArgs(frame, {`
`       wrappers = 'Template:Shortcut'`
`   })`

`   -- Separate shortcuts from options`
`   local shortcuts, options = {}, {}`
`   for k, v in pairs(args) do`
`       if type(k) == 'number' then`
`           shortcuts[k] = v`
`       else`
`           options[k] = v`
`       end`
`   end`

`   -- Compress the shortcut array, which may contain nils.`
`   local function compressArray(t)`
`       local nums, ret = {}, {}`
`       for k in pairs(t) do`
`           nums[#nums + 1] = k`
`       end`
`       table.sort(nums)`
`       for i, num in ipairs(nums) do`
`           ret[i] = t[num]`
`       end`
`       return ret`
`   end`
`   shortcuts = compressArray(shortcuts)`

`   return p._template(shortcuts, options, frame)`

end

function p._ombx_template(shortcuts, options, frame, cfg)

`   checkType('_main', 1, shortcuts, 'table')`
`   checkType('_main', 2, options, 'table', true)`
`   options = options or {}`
`   frame = frame or mw.getCurrentFrame()`
`   cfg = cfg or mw.loadData(CONFIG_MODULE)`
`   local isCategorized = yesno(options.category) ~= false`

`   -- Validate shortcuts`
`   for i, shortcut in ipairs(shortcuts) do`
`       if type(shortcut) ~= 'string' or #shortcut < 1 then`
`           error(message(cfg['invalid-shortcut-error'], i), 2)`
`       end`
`   end`

`   -- Make the list items. These are the shortcuts plus any extra lines such`
`   -- as options.msg.`
`   local listItems = {}`
`   for i, shortcut in ipairs(shortcuts) do`
`       listItems[i] = '{{'`
`               .. frame:expandTemplate{`
`               title = 'Template_shortcut/link',`
`               args = {shortcut}`
`               }..'}}'`
`   end`
`   table.insert(listItems, options.msg)`

`   -- Return an error if we have nothing to display`
`   if #listItems < 1 then`
`       local msg = cfg['no-content-error']`
`       msg = string.format('`<strong class="error">`%s`</strong>`', msg)`
`       if isCategorized and cfg['no-content-error-category'] then`
`           msg = msg .. makeCategoryLink(cfg['no-content-error-category'])`
`       end`
`       return msg`
`   end`

`   local root = mw.html.create()`
`   root:wikitext(frame:extensionTag{ name = 'templatestyles', args = { src = 'Shortcut/styles.css'} })`
`   -- Anchors`
`   local anchorDiv = root`
`       :tag('div')`
`           :addClass('module-shortcutanchordiv')`
`   for i, shortcut in ipairs(shortcuts) do`
`       local anchor = mw.uri.anchorEncode(shortcut)`
`       anchorDiv:tag('span'):attr('id', 'Template:'..anchor)`
`   end`

`   -- Shortcut heading`
`   local shortcutHeading`
`   do`
`       local nShortcuts = #shortcuts`
`       if nShortcuts > 0 then`
`           shortcutHeading = message(p.getshortlink(frame), nShortcuts)`
`           shortcutHeading = frame:preprocess(shortcutHeading)`
`       end`
`   end`

`   -- Shortcut box`
`   local shortcutList = root`
`       :tag('div')`
`           :addClass('module-omboxshortcutplain plainlist noprint')`
`           :attr('role', 'note')`
`   if shortcutHeading then`
`       shortcutList`
`           :tag('div')`
`               :addClass('module-shortcutlist')`
`               :wikitext(shortcutHeading)`
`   end`
`   local list = shortcutList:tag('ul')`
`   for i, item in ipairs(listItems) do`
`       list:tag('li'):wikitext(item)`
`   end`
`   return tostring(root)`

end

function p.ombox_template(frame)

`   local args = require('Module:Arguments').getArgs(frame, {`
`       wrappers = 'Template:Shortcut'`
`   })`

`   -- Separate shortcuts from options`
`   local shortcuts, options = {}, {}`
`   for k, v in pairs(args) do`
`       if type(k) == 'number' then`
`           shortcuts[k] = v`
`       else`
`           options[k] = v`
`       end`
`   end`

`   -- Compress the shortcut array, which may contain nils.`
`   local function compressArray(t)`
`       local nums, ret = {}, {}`
`       for k in pairs(t) do`
`           nums[#nums + 1] = k`
`       end`
`       table.sort(nums)`
`       for i, num in ipairs(nums) do`
`           ret[i] = t[num]`
`       end`
`       return ret`
`   end`
`   shortcuts = compressArray(shortcuts)`

`   return p._ombx_template(shortcuts, options, frame)`

end

return p