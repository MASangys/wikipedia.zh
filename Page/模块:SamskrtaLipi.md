> 本文内容由[模块:SamskrtaLipi](https://zh.wikipedia.org/wiki/模块:SamskrtaLipi)转换而来。


local export = {}

local DN2SiddhamRules = {

`   -- 輔音字母`
`   ["क"]="𑖎", ["ख"]="𑖏", ["ग"]="𑖐", ["घ"]="𑖑", ["ङ"]="𑖒", `
`   ["च"]="𑖓", ["छ"]="𑖔", ["ज"]="𑖕", ["झ"]="𑖖", ["ञ"]="𑖗", `
`   ["ट"]="𑖘", ["ठ"]="𑖙", ["ड"]="𑖚", ["ढ"]="𑖛", ["ण"]="𑖜", `
`   ["त"]="𑖝", ["थ"]="𑖞", ["द"]="𑖟", ["ध"]="𑖠", ["न"]="𑖡", ["ऩ"]="𑖡𑗀`[`ऩ𑖡`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", `
`   ["प"]="𑖢", ["फ"]="𑖣", ["ब"]="𑖤", ["भ"]="𑖥", ["म"]="𑖦", `
`   ["य"]="𑖧", ["र"]="𑖨", ["ल"]="𑖩", ["व"]="𑖪", `
`   ["ऱ"]="𑖨𑗀`[`ऱ𑖨`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ळ"]="𑖩𑗀`[`ळ𑖩`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ऴ"]="𑖩𑗀`[`ऴ𑖩`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", `
`   ["श"]="𑖫", ["ष"]="𑖬", ["स"]="𑖭", ["ह"]="𑖮", `
`   -- 元音附標符號`
`   ["ा"]="𑖯", ["ि"]="𑖰", ["ी"]="𑖱", ["ु"]="𑖲", ["ू"]="𑖳", `
`   ["ृ"]="𑖴", ["ॄ"]="𑖵", ["े"]="𑖸", ["ै"]="𑖹", ["ो"]="𑖺", ["ौ"]="𑖻", ["्"]="𑖿", `
`   ["ऺ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ऻ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॅ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॆ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॉ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॊ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॎ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॏ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॕ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॖ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", ["ॗ"]="轉換出錯`[`元`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")`", `
`   -- 獨立元音字母`
`       --["𑖀"]="अ", ["𑖁"]="आ", ["𑖂"]="इ", ["𑖃"]="ई", ["𑖄"]="उ", ["𑖅"]="ऊ", `
`   ["अ"]="𑖀", ["आ"]="𑖁", ["इ"]="𑖂", ["ई"]="𑖃", ["उ"]="𑖄", ["ऊ"]="𑖅", `
`   ["ऋ"]="𑖆", ["ऌ"]="𑖈", ["ए"]="𑖊", ["ऐ"]="𑖋", ["ओ"]="𑖌", ["औ"]="𑖍", ["ॐ"]="𑖌𑖼", `
`   -- 特殊符號`
`   ["़"]="𑗀", ["ँ"]="𑖼", ["ं"]="𑖽", ["ः"]="𑖾", ["​"]="𑗄", ["‍"]="𑗄", `
`       --ऀऽॐ ॒॑ `[`吠陀`](https://zh.wikipedia.org/wiki/分類:可能有錯的梵文轉換 "wikilink")

}

function export.DN2Siddham(text)

`   local text = text.args[1]`
`   text = mw.ustring.toNFC(text)`
`   return (mw.ustring.gsub(text, '.', DN2SiddhamRules))`

end

return export