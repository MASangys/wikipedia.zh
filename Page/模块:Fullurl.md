local fullurl = {} local yesno = require('Module:Yesno') local mError = require('Module:Error').error

function fullurl.fullurl(frame)

`   if frame == mw.getCurrentFrame() then`
`       args = frame.args`
`   else`
`       args = frame`
`       if type(args) ~= type({}) then args = {frame} end`
`   end`
`   local title = args['title'] or args['1'] or tostring(mw.title.getCurrentTitle())`
`   local linktext = args['text'] or args['2'] or title`
`   local action = (args['action'] and 'action=' or '') .. (args['action'] or '')`
`   local viewpaid = ''`
`   local editpaid = (args['oldid'] and '&oldid=' or '') .. (args['oldid'] or '') ..`
`                    (args['section'] and '&section=' or '') .. (args['section'] or '') ..`
`                    (args['summary'] and '&summary=' or '') .. (args['summary'] or '') ..`
`                    (args['preload'] and '&preload=' or '') .. (args['preload'] or '') .. `
`                    (args['preloadtitle'] and '&preloadtitle=' or '') .. (args['preloadtitle'] or '')`
`   local historypaid = ''`
`   local deletepaid = ''`
`   local protectpaid = ''`
`   local other = args['other'] or ''`
`   local paid = ((args['action'] == '') and viewpaid or '') .. ((args['action'] == 'view') and viewpaid or '') ..`
`                ((args['action'] == 'edit') and editpaid or '') .. `
`                ((args['action'] == 'history') and historypaid or '') .. `
`                ((args['action'] == 'delete') and deletepaid or '') .. `
`                ((args['action'] == 'protect') and protectpaid or '')`
`   local text = ''`
`   if yesno(args['onlyurl']) then`
`       text = tostring(mw.uri.fullUrl(title,action .. paid .. other))`
`   else`
`       text = '`<span class="plainlinks">`[' .. tostring(mw.uri.fullUrl(title,action .. paid .. other)) .. ' ' .. linktext .. ']`</span>`'`
`   end`
`   if (args['action'] == 'submit') then`
`       text = mError{'`[`Module:Fullur錯誤`](https://zh.wikipedia.org/wiki/Module:Fullur "wikilink")`：|action=submin不是有效的值，請使用|action=edit。'}`
`   else`
`       if ((action == '') or `
`       (action == 'action=view') or `
`       (action == 'action=edit') or `
`       (action == 'action=history') or `
`       (action == 'action=delete') or `
`       (action == 'action=protect')) then`
`       else`
`       text = mError{'`[`Module:Fullurl錯誤`](https://zh.wikipedia.org/wiki/Module:Fullurl "wikilink")`：|action=' .. (args['action'] or '') .. '不是有效的值。若有誤歡迎`<span class="plainlinks">`[' .. tostring(mw.uri.fullUrl('模块:Fullurl','action=edit')) .. ' 點此進行更新]`</span>`。'} .. text`
`       end`
`   end`
`   return text`

end

return fullurl