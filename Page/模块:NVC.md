local NVC = {} --\[=\[ 回傳成員人數 \]=\]-- function NVC.Member(frame)

`   local page = frame:expandTemplate{title="Wikipedia:新手會/成員"}`
`   local word = "InfoChip" or "%*"`
`   local count = 0`
`   for _ in string.gmatch(page, word) do`
`       count = count + 1`
`   end`
`   return count`

end

function NVC.MassMessageList(frame)

`   local page = frame.args[1]`
`   local word = "User"`
`   local count = 0`
`   for _ in string.gmatch(page, word) do`
`       count = count + 1`
`   end`
`   return count`

end --\[=\[ 警告 此模組函式需搭配[Template:新手會/公佈欄/styles.css使用](https://zh.wikipedia.org/wiki/Template:新手會/公佈欄/styles.css "wikilink")！ 使用方式：

    <templatestyles src="Template:新手會/公佈欄/styles.css" />
    {{Template:新手會/公佈欄/item|公告|文字}}

\]=\]-- function NVC._getclass(class)

`   local classlist = {`
`       ["公告"] = "Announcement",`
`       ["通知"] = "Notice",`
`       ["投票"] = "Vote",`
`       ["人事"] = "Personnel",`
`       ["評選"] = "Selection",`
`       ["评选"] = "Selection",`
`       ["討論"] = "Discussion",`
`       ["讨论"] = "Discussion",`
`       ["提案"] = "Proposal",`
`       ["調查"] = "Survey",`
`       ["调查"] = "Survey",`
`       ["編輯"] = "Edit",`
`       ["编辑"] = "Edit",`
`       ["協作"] = "Collaboration",`
`       ["协作"] = "Collaboration",`
`       ["幫助"] = "Help",`
`       ["帮助"] = "Help",`
`       ["請求"] = "Request",`
`       ["请求"] = "Request",`
`       ["獎勵"] = "Reward",`
`       ["奖励"] = "Reward",`
`       ["建議"] = "Suggestion",`
`       ["建议"] = "Suggestion",`
`   }`
`   return classlist[class]`

end

function NVC.item( frame )

`   local args = frame:getParent().args`
`       `
`   separator = args["separator"]`
`   if separator == nil then`
`       separator = "、"`
`   end`
`   `
`   conjunction = args["conjunction"]`
`   if conjunction == nil then`
`       conjunction = "及"`
`   end`
`   `
`   type = args[1]`
`   if type == nil then`
`       type = "公告"`
`   end`
`   `
`   local items = {}`
`   local i = 2`
`   local value`
`   while args[i] ~= nil do`
`       value = mw.text.trim( args[i] )`
`       if value ~= "" then`
`           table.insert( items, value )`
`       end`
`       i = i + 1`
`   end`
`   return '<span class="NVC-'..NVC._getclass(type)..'><span class="bulletin-type module.bulletin-type NVCb_'..NVC._getclass(type)..'>[' .. type .. ']`</span>` ' ..`
`       '`<span class="bulletin-item">`' .. mw.text.listToText(`
`           items,`
`           '`</span><span class="bulletin-separator">`' .. separator .. '`</span><span class="bulletin-item">`',`
`           '`</span><span class="bulletin-conjunction">`' .. conjunction .. '`</span><span class="bulletin-item">`'`
`       ) .. '`</span>`' ..`
`       '`<span class="bulletin-suffix">`，'.. frame:expandTemplate{title = "新手會/公布欄/suffix", args = {NVC._getclass(type),}} ..'`</span></span>`'`

end

return NVC