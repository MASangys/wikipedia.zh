管理員可以使用這個特殊頁面來禁止一個特定的IP地址或用戶的編輯。

只有在防止蓄意破壞，及符合[方針與指引](../Page/維基百科:方針與指引.md "wikilink")，或是用戶違反[封禁方針的情况下才可採取此行動](https://zh.wikipedia.org/wiki/Wikipedia:封禁方針 "wikilink")。请在下面输入一个具体的理由（例如引述一个被破坏的页面）。所有的封禁將會記錄在[封禁日誌](../Page/Special:Log/block.md "wikilink")。

如果是以下的原因執行封禁，請**務必在理由欄加上這些模板**（如須要另寫理由，模板請加在理由後面）：

  - 用戶名稱不適當：{{[uw-ublock](../Page/Template:uw-ublock.md "wikilink")}}
      -
        請在該用戶的用戶頁或用戶討論頁也加上此模板並設置保護。
        如果這個用戶名有侮辱字眼或指名道姓，則請不要仅移除封禁日志，而应寻找监督员执行[监督](../Page/WP:OS.md "wikilink")。
  - 動態IP破壞：{{[range
    block](../Page/Template:range_block.md "wikilink")}}（僅用於[廣域封禁](../Page/mw:Range_blocks.md "wikilink")）
      -
        請謹慎使用，建議先用[封禁地址段計算器得出應封鎖的範圍](https://zh.wikipedia.org/wiki/Wikipedia:封禁方针#参见 "wikilink")。
  - 開放式代理服務器：{{[blocked
    proxy](../Page/Template:blocked_proxy.md "wikilink")}}
  - 3RR：{{[3rr](../Page/Template:3rr.md "wikilink")|條目名稱}}
  - 用户核查后封禁IP：{{[checkuserblock](../Page/Template:checkuserblock.md "wikilink")}}

以方便這些用戶點選「編輯本頁」時，看到這些告示，讓用戶知道他們被封禁的詳細原因。
請務必指定封禁期間。也可以選擇「其他」自行輸入。唯输入格式須遵守GNU标准格式，详细资料請参閱[tar手册](http://www.gnu.org/software/tar/manual/html_node/tar_115.html)。

### 後續處理

  - 對於永久封禁的用戶，請在其用戶頁（沒建立的話請建立）上加上{{[indefblockeduser](../Page/Template:indefblockeduser.md "wikilink")}}模板标识并设置永久全保护（可简写{{[indef](../Page/Template:indef.md "wikilink")}}）。
  - 對於已確認的傀儡，請在其用戶頁上加上以下模板並設置永久全保护：
      -
        {{[sockpuppetProven](../Page/template:sockpuppetProven.md "wikilink")|本體|evidence=證據}}（沒有填写evidence則會自動顯示貢獻链接）

查看自动封禁情况可以访问[被查封的IP地址和用户列表](../Page/Special:Ipblocklist.md "wikilink")，解除封禁可以访问[Special:解除封禁](../Page/Special:解除封禁.md "wikilink")。