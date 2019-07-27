local getArgs = require('Module:Arguments').getArgs local p = {} --
module's table

local am = {} -- Elements with wiki links
am.H="[H](../Page/氢.md "wikilink")";am.He="[He](../Page/氦.md "wikilink")";
am.Li="[Li](../Page/锂.md "wikilink")";am.Be="[Be](../Page/铍.md "wikilink")";am.B="[B](../Page/硼.md "wikilink")";am.C="[C](../Page/碳.md "wikilink")";am.N="[N](../Page/氮.md "wikilink")";am.O="[O](../Page/氧.md "wikilink")";am.F="[F](../Page/氟.md "wikilink")";am.Ne="[Ne](../Page/氖.md "wikilink")";
am.Na="[Na](../Page/钠.md "wikilink")";am.Mg="[Mg](../Page/镁.md "wikilink")";am.Al="[Al](../Page/铝.md "wikilink")";am.Si="[Si](../Page/硅.md "wikilink")";am.P="[P](../Page/磷.md "wikilink")";am.S="[S](../Page/硫.md "wikilink")";am.Cl="[Cl](../Page/氯.md "wikilink")";am.Ar="[Ar](../Page/氩.md "wikilink")";
am.K="[K](../Page/钾.md "wikilink")";am.Ca="[Ca](../Page/钙.md "wikilink")";am.Sc="[Sc](../Page/钪.md "wikilink")";am.Ti="[Ti](../Page/钛.md "wikilink")";am.V="[V](../Page/钒.md "wikilink")";am.Cr="[Cr](../Page/铬.md "wikilink")";am.Mn="[Mn](../Page/锰.md "wikilink")";am.Fe="[Fe](https://zh.wikipedia.org/wiki/铁 "wikilink")";am.Co="[Co](../Page/钴.md "wikilink")";am.Ni="[Ni](../Page/镍.md "wikilink")";am.Cu="[Cu](../Page/铜.md "wikilink")";am.Zn="[Zn](../Page/锌.md "wikilink")";am.Ga="[Ga](../Page/镓.md "wikilink")";am.Ge="[Ge](../Page/锗.md "wikilink")";am.As="[As](../Page/砷.md "wikilink")";am.Se="[Se](../Page/硒.md "wikilink")";am.Br="[Br](../Page/溴.md "wikilink")";am.Kr="[Kr](../Page/氪.md "wikilink")";am.Rb="[Rb](../Page/铷.md "wikilink")";
am.Sr="[Sr](../Page/锶.md "wikilink")";am.Y="[Y](../Page/钇.md "wikilink")";am.Zr="[Zr](../Page/锆.md "wikilink")";am.Nb="[Nb](../Page/铌.md "wikilink")";am.Mo="[Mo](../Page/钼.md "wikilink")";am.Tc="[Tc](../Page/锝.md "wikilink")";am.Ru="[Ru](../Page/钌.md "wikilink")";am.Rh="[Rh](../Page/铑.md "wikilink")";am.Pd="[Pd](../Page/钯.md "wikilink")";am.Ag="[Ag](../Page/銀.md "wikilink")";am.Cd="[Cd](../Page/镉.md "wikilink")";am.In="[In](../Page/铟.md "wikilink")";am.Sn="[Sn](../Page/锡.md "wikilink")";am.Sb="[Sb](../Page/锑.md "wikilink")";am.Te="[Te](../Page/碲.md "wikilink")";am.I="[I](../Page/碘.md "wikilink")";am.Xe="[Xe](../Page/氙.md "wikilink")";
am.Cs="[Cs](../Page/铯.md "wikilink")";am.Ba="[Ba](../Page/钡.md "wikilink")";am.La="[La](../Page/镧.md "wikilink")";am.Ce="[Ce](../Page/铈.md "wikilink")";am.Pr="[Pr](../Page/镨.md "wikilink")";am.Nd="[Nd](../Page/钕.md "wikilink")";am.Pm="[Pm](https://zh.wikipedia.org/wiki/钷 "wikilink")";am.Sm="[Sm](https://zh.wikipedia.org/wiki/钐 "wikilink")";am.Eu="[Eu](../Page/铕.md "wikilink")";am.Gd="[Gd](../Page/钆.md "wikilink")";am.Tb="[Tb](../Page/铽.md "wikilink")";am.Dy="[Dy](../Page/镝.md "wikilink")";am.Ho="[Ho](../Page/钬.md "wikilink")";am.Er="[Er](../Page/铒.md "wikilink")";am.Tm="[Tm](../Page/铥.md "wikilink")";am.Yb="[Yb](../Page/镱.md "wikilink")";am.Lu="[Lu](../Page/镥.md "wikilink")";am.Hf="[Hf](../Page/铪.md "wikilink")";am.Ta="[Ta](../Page/钽.md "wikilink")";am.W="[W](../Page/钨.md "wikilink")";am.Re="[Re](../Page/铼.md "wikilink")";am.Os="[Os](../Page/锇.md "wikilink")";am.Ir="[Ir](../Page/铱.md "wikilink")";am.Pt="[Pt](../Page/铂.md "wikilink")";am.Au="[Au](../Page/金.md "wikilink")";am.Hg="[Hg](../Page/汞.md "wikilink")";am.Tl="[Tl](../Page/铊.md "wikilink")";am.Pb="[Pb](../Page/铅.md "wikilink")";am.Bi="[Bi](../Page/铋.md "wikilink")";am.Po="[Po](../Page/钋.md "wikilink")";am.At="[At](../Page/砹.md "wikilink")";am.Rn="[Rn](../Page/氡.md "wikilink")";
am.Fr="[Fr](../Page/钫.md "wikilink")";am.Ra="[Ra](../Page/镭.md "wikilink")";am.Ac="[Ac](https://zh.wikipedia.org/wiki/锕 "wikilink")";am.Th="[Th](../Page/钍.md "wikilink")";am.Pa="[Pa](https://zh.wikipedia.org/wiki/镤 "wikilink")";am.U="[U](../Page/鈾.md "wikilink")";am.Np="[Np](../Page/镎.md "wikilink")";am.Pu="[Pu](../Page/钚.md "wikilink")";am.Am="[Am](https://zh.wikipedia.org/wiki/镅 "wikilink")";am.Cm="[Cm](https://zh.wikipedia.org/wiki/锔 "wikilink")";am.Bk="[Bk](https://zh.wikipedia.org/wiki/锫 "wikilink")";am.Cf="[Cf](../Page/锎.md "wikilink")";am.Es="[Es](https://zh.wikipedia.org/wiki/锿 "wikilink")";am.Fm="[Fm](../Page/镄.md "wikilink")";am.Md="[Md](../Page/钔.md "wikilink")";am.No="[No](../Page/锘.md "wikilink")";am.Lr="[Lr](../Page/鐒.md "wikilink")";am.Rf="[Rf](../Page/鑪.md "wikilink")";am.Db="[Db](../Page/𨧀.md "wikilink")";am.Sg="[Sg](../Page/𨭎.md "wikilink")";am.Bh="[Bh](../Page/𨨏.md "wikilink")";am.Hs="[Hs](../Page/𨭆.md "wikilink")";am.Mt="[Mt](../Page/䥑.md "wikilink")";am.Ds="[Ds](../Page/鐽.md "wikilink")";am.Rg="[Rg](../Page/錀.md "wikilink")";am.Cp="[Cp](../Page/鎶.md "wikilink")";am.Nh="[Nh](https://zh.wikipedia.org/wiki/鉨 "wikilink")";am.Fl="[Fl](../Page/鈇.md "wikilink")";am.Mc="[Mc](../Page/镆.md "wikilink")";am.Lv="[Lv](../Page/鉝.md "wikilink")";am.Ts="[Ts](../Page/鿬.md "wikilink")";am.Og="[Og](../Page/鿫.md "wikilink")";

local T_ELEM = 0 -- token types local T_NUM = 1 -- number local
T_OPEN = 2 -- open '(' local T_CLOSE = 3 -- close ')' local
T_PM_CHARGE = 4 -- + or – local T_WATER = 6 -- .xH2O x number local
T_CRYSTAL = 9 -- .x local T_CHARGE = 8 -- charge (x+), (x-) local
T_SUF_CHARGE = 10 -- suffix and charge e.g. 2+ from H2+ local
T_SUF_CHARGE2 = 12 -- suffix and (charge) e.g. 2(2+) from He2(2+)
local T_SPECIAL = 14 -- starting with \\ e.g. \\d for double bond (=)
local T_SPECIAL2 = 16 -- starting with \\y{x} e.g. \\i{12} for isotope
with mass number 12 local T_ARROW_R = 17 -- match: -\> local
T_ARROW_EQ = 18 -- match: \<-\> local T_UNDERSCORE = 19 -- _{ ... }
local T_CARET = 20 -- ^{ ... } local T_NOCHANGE = 30 -- Anything else
like ☃

function su(up, down) -- like template:su

` if (down == "") then `
`   return "<span style=\"display:inline-block; margin-bottom:-0.3em; vertical-align:0.8em; line-height:1.2em; font-size:70%; text-align:left;\">" .. up .. "`
</span>`";`
` else`
`   return "<span style=\"display:inline-block; margin-bottom:-0.3em; vertical-align:-0.4em; line-height:1.2em; font-size:70%; text-align:left;\">" .. up .. "`
`" .. down .. "`</span>`";`
` end`

end

function DotIt()

` return ' `<span style="font-weight:bold;">`·`</span>` '`

end

function item(f) -- (iterator) returns one token (type, value) at a time
from the formula 'f'

`  local i = 1`
`  local first = "true";`

`  return function ()`
`   local t, x = nil, nil`

`       if (first == "true" and f:match('^[0-9]', i)) then `
`                x = f:match('^[%d.]+', i); t = T_NOCHANGE; i = i + x:len();   -- matching coefficient (need a space first)`

`       elseif i <= f:len() then`
`      `