{{\#ifeq:{{\#switch:

` |move= {{#ifeq:`
`     {{#switch:`
`       |semi`
`       |autoconfirmed=autoconfirmed`
`       |administrator`
`       |full`
`       |sysop=sysop`
`       |undefined=`
`       |#default= }}`
`     |sysop|yes|no`
`   }}`
` |create= {{#if:`
`     {{#switch:`
`       |semi`
`       |autoconfirmed=autoconfirmed`
`       |administrator`
`       |full`
`       |sysop=sysop`
`       |undefined=`
`       |#default= }}`
`     |yes|no`
`   }}`

|\#default = {{\#if:

`     {{#switch:`
`       |semi`
`       |autoconfirmed=autoconfirmed`
`       |administrator`
`       |full`
`       |sysop=sysop`
`       |undefined=`
`       |#default= }}`
`     |{{#ifeq:{{#switch:`
`                |semi`
`                |autoconfirmed=autoconfirmed`
`                |administrator`
`                |full`
`                |sysop=sysop`
`                |#default= }}`
`        |{{#switch:`
`           |semi`
`           |autoconfirmed=autoconfirmed`
`           |administrator`
`           |full`
`           |sysop=sysop`
`           |undefined=`
`           |#default= }}`
`        |no|yes`
`      }}`
`  |no}}`

}}|yes|{{\#ifeq:|yes| <indicator name="protected-icon">\[\[Image:}}

`|full=Full-protection-shackle-block.svg`
`|semi=Semi-protection-shackle.svg`
`|move=Move-protection-shackle.svg`
`|indef=Template-protection-shackle-picture-1.svg`
`|office=Office-protection-shackle-WMFlogo.svg`
`|create=Create-protection-shackle.svg`
`|#default=Transparent.gif`

}}}}}|20px|link=}}}}}|\]\]</indicator> |

`|full=Full-protection-shackle-block.svg`
`|semi=Semi-protection-shackle.svg`
`|move=Move-protection-shackle.svg`
`|indef=Template-protection-shackle-picture-1.svg`
`|office=Office-protection-shackle-WMFlogo.svg`
`|create=Create-protection-shackle.svg`
`|#default=Transparent.gif`

}}}}}|40px|\]\] | text = ''' {{\#if:|，|}}}}

`|full=依據`[`頁面保護方針`](https://zh.wikipedia.org/wiki/Wikipedia:頁面保護方針 "wikilink")`，本``已獲`[`保護`](https://zh.wikipedia.org/wiki/Wikipedia:这个页面被保护 "wikilink")
`|semi=依據`[`頁面保護方針`](https://zh.wikipedia.org/wiki/Wikipedia:頁面保護方針 "wikilink")`，本``已獲`[`半保護`](https://zh.wikipedia.org/wiki/WP:SEMI "wikilink")
`|move=依據`[`頁面保護方針`](https://zh.wikipedia.org/wiki/Wikipedia:頁面保護方針 "wikilink")`，本``不可移動`
`|indef=依據`[`頁面保護方針`](https://zh.wikipedia.org/wiki/Wikipedia:頁面保護方針 "wikilink")`，本``已獲永久保护`
`|office=依據`[`頁面保護方針`](https://zh.wikipedia.org/wiki/Wikipedia:頁面保護方針 "wikilink")`，本``已獲`[`保護`](https://zh.wikipedia.org/wiki/Wikipedia:这个页面被保护 "wikilink")
`|create=依據`[`頁面保護方針`](https://zh.wikipedia.org/wiki/Wikipedia:頁面保護方針 "wikilink")`，本``已獲白纸保护`

}}{{\#ifeq:|indef||{{\#if:|直至{{\#time:Y年Fj日H時i分|}}}}}}。}}} '''
<small>}}|yes|的认可。|color=red}}}}請参閱[页面保护方针及](https://zh.wikipedia.org/wiki/WP:頁面保護方針 "wikilink")\[
保护日志\]以获取更多-{zh-cn:信息; zh-tw:資訊;}-。{{\#switch:

`|full|indef=請在`[`讨论页提交您打算进行的修改`](https://zh.wikipedia.org/wiki/{{TALKPAGENAME}} "wikilink")`。取得共识以后，您可以使用``请求`[`管理员进行修改`](https://zh.wikipedia.org/wiki/WP:SYSOP "wikilink")`，{{#ifeq:``|``
||或 `[`申请解除保护`](https://zh.wikipedia.org/wiki/Wikipedia:请求保护页面 "wikilink")`。}}`
`|semi=如果您不能修改此``，您可以{{#ifeq:``|``||``、`[`在讨论页提出修改提议`](https://zh.wikipedia.org/wiki/{{TALKPAGENAME}} "wikilink")`、}}`[`申请解除保护`](https://zh.wikipedia.org/wiki/Wikipedia:请求保护页面 "wikilink")`、`[`-{zh-hant:登入;zh-hans:登录}-或`](https://zh.wikipedia.org/wiki/Special:Userlogin "wikilink")<span class="plainlinks">`[`` `<span style="color:#002bb8;" title="{{lan|zh-hans=创建账号|zh-hant=創建帳戶}}">`-{zh-hans:创建账号;zh-hant:創建帳戶;}-`</span>`]。`
`|move=如您打算移动本``，请在`[`讨论页提案或`](https://zh.wikipedia.org/wiki/{{TALKPAGENAME}} "wikilink")[`遞交移动請求`](https://zh.wikipedia.org/wiki/Wikipedia:移动请求 "wikilink")`，您亦可以`[`申请解除保护`](https://zh.wikipedia.org/wiki/Wikipedia:请求保护页面 "wikilink")`。`
`|office=无论您能否编辑本``，请務必先提案至`[`讨论页`](https://zh.wikipedia.org/wiki/{{TALKPAGENAME}} "wikilink")`。除非您獲得`[`维基媒体基金会授權`](https://zh.wikipedia.org/wiki/wmf: "wikilink")`，請勿解除保护。`
`|create=请查看{{#if:``|`**[`存废讨论`](https://zh.wikipedia.org/wiki/{{{xfd}}} "wikilink")**`或}} [`` 刪除日志]以获取本页遭刪除之原因。如您打算創建此頁面，請務先申请`[`解除保护或`](https://zh.wikipedia.org/wiki/Wikipedia:请求保护页面 "wikilink")[`恢復已刪除內容`](https://zh.wikipedia.org/wiki/Wikipedia:页面恢复请求 "wikilink")`。`

}}}}}</small> }} }}<includeonly>|}}
{{\#ifeq:|no||}}</includeonly><noinclude>  </noinclude>

[Category:保护状态与保护标志不符的页面](https://zh.wikipedia.org/wiki/Category:保护状态与保护标志不符的页面 "wikilink")