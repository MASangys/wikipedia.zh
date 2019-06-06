**AKS質數測試**（又被稱為 **Agrawal–Kayal–Saxena質數測試** 和 **Cyclotomic AKS
test**）是一個[決定型](https://zh.wikipedia.org/wiki/確定性演算法 "wikilink")[質數測試](https://zh.wikipedia.org/wiki/素性測試 "wikilink")[演算法](https://zh.wikipedia.org/wiki/演算法 "wikilink")
，由三個來自的計算機科學家，、和，在2002年8月6日發表於一篇題為**質數屬於P**的論文。\[1\]作者們因此獲得了許多獎項，包含了2006年的[哥德爾獎和](https://zh.wikipedia.org/wiki/哥德爾獎 "wikilink")2006年的。這個演算法可以在[多項式時間之內](../Page/多項式時間.md "wikilink")，決定一個給定整數是[質數或者](https://zh.wikipedia.org/wiki/質數 "wikilink")[合數](https://zh.wikipedia.org/wiki/合數 "wikilink")。

## 重要性

AKS最關鍵的重要性在於它是第一個被發表的**一般的**、**多項式的**、**確定性的**和**無仰賴的**質數判定算法。先前的算法至多達到了其中三點，但從未達到全部四個。

  - AKS算法可以被用於檢測任何**一般的**給定數字是否為質數。很多已知的高速判定算法只適用於滿足特定條件的質數。例如，[卢卡斯-莱默检验法僅對](../Page/卢卡斯-莱默检验法.md "wikilink")[梅森質數適用](https://zh.wikipedia.org/wiki/梅森質數 "wikilink")，而[Pépin測試僅對](https://zh.wikipedia.org/wiki/Pépin測試 "wikilink")[費馬數適用](https://zh.wikipedia.org/wiki/費馬質數 "wikilink")。
  - 算法的最長運行時間可以被表為一個目標數字長度的**[多項式](../Page/多項式.md "wikilink")**。[ECPP和](https://zh.wikipedia.org/wiki/橢圓曲線質數測試 "wikilink")[APR能夠判斷一個給定數字是否為質數](https://zh.wikipedia.org/wiki/Adleman–Pomerance–Rumely質數測試 "wikilink")，但無法對所有輸入給出多項式時間範圍。
  - 算法可以**[確定性](https://zh.wikipedia.org/wiki/确定性算法 "wikilink")**地判斷一個給定數字是否為質數。隨機測試演算法，例如[米勒-拉宾检验和](../Page/米勒-拉宾检验.md "wikilink")[Baillie–PSW](https://zh.wikipedia.org/wiki/Baillie–PSW "wikilink")，可以在多項式時間內對給定數字進行校驗，但只能給出概率性的結果。
  - AKS算法並未“仰賴”任何未證明[猜想](../Page/猜想.md "wikilink")。一個反例是[确定性米勒检验](../Page/米勒-拉宾检验.md "wikilink")：該算法可以在多項式時間內對所有輸入給出確定性結果，但其正確性卻基於尚未被證明的[廣義黎曼猜想](https://zh.wikipedia.org/wiki/廣義黎曼猜想 "wikilink")。

## 概念

AKS 質數測試主要是基於以下定理：整數*n* (≥ 2)是質數，若且唯若

這個[同餘多項式對所有與](../Page/同餘.md "wikilink")*n*[互質的整數](../Page/互質.md "wikilink")*a*均成立。
這個定理是[費馬小定理的一般化](https://zh.wikipedia.org/wiki/費馬小定理 "wikilink")，並且可以簡單的使用[二項式定理跟](https://zh.wikipedia.org/wiki/二項式定理 "wikilink")[二項式係數的這個特徵](../Page/二項式係數.md "wikilink"):

\[{n \choose k} \equiv 0 \pmod{n}\] ，對任何 \(0<k<n\) ，若且唯若 *n* 是質數
來證明出此定理。

雖然說關係式 (1)
基本上構成了整個質數測試，但是驗證花費的時間卻是[指數時間](https://zh.wikipedia.org/wiki/指數時間 "wikilink")。因此，為了減少[計算複雜度](../Page/計算複雜性理論.md "wikilink"),
AKS改為使用以下的同餘多項式：  這個多項式與存在多項式 *f* 與 *g*，令:  意義是等同的。

這個同餘式可以在多項式時間之內檢查完畢。這裡我們要注意所有的質數必定滿足此條件式 (令 *g* = 0 則 (3) 等於 (1)，因此符合
*n* 必定是質數)。
然而，有一些合數也會滿足這個條件式。有關AKS正確性的證明包含了推導出存在一個夠小的*r*以及一個夠小的整數集合*A*，令如果此同餘式對所有*A*裡面的整數都滿足，則*n*必定為質數。

## 歷史以及運算時間

在上文引用的論文的第一版本中，作者們證明了算法的漸近時間為[O](https://zh.wikipedia.org/wiki/大O符號 "wikilink")\((\log^{12}(n))\)。換言之，算法使用少於*n*的[二進制數字長度的十二次方](https://zh.wikipedia.org/wiki/二進制 "wikilink")。但是，論文證明的時間上界卻過於寬鬆；事實上，一個被普遍相信的關於[索菲熱爾曼質數分佈的假設如果為真](https://zh.wikipedia.org/wiki/索菲熱爾曼質數 "wikilink")，則會立即將最壞情況減至O\((\log^6(n))\)。

在這一發現後的幾個月中，新的變體陸續出現（Lenstra 2002, Pomerance 2002, Berrizbeitia 2003,
Cheng 2003, Bernstein 2003a/b, Lenstra和Pomerance
2003）並依次提高了算法的速度（以改進幅度為序）。由於這些變體的出現，Crandall和Papadopoulos在其科學論文“AKS-類質數測試的實現”（2003年三月發表）中將其稱為算法的“AKS-類”。

出於對這些變體和其他回复的回應，論文“質數屬於P”稍後被進行了更新，新版本包括了一個AKS算法的正規公式化表述和其正確性證明。（這一版本在[数学年刊上發表](https://zh.wikipedia.org/wiki/数学年刊 "wikilink")。）雖然基本思想沒有變化，\(r\)卻被採用了新方法進行選擇，而正確性證明也變得更加緊緻有序。與舊證明依賴於許多不同的方法不同，新版本幾乎只依賴於[有限域上的分圓多項式的特徵](../Page/有限域.md "wikilink")。新版本同時也優化了時間複雜度的邊界到O\((\log^{10.5}(n))\)。通過[篩法獲得的其他結果可以將其進一步簡化到O](https://zh.wikipedia.org/wiki/篩法 "wikilink")\((\log^{7.5}(n))\)。

在2005年，[Carl
Pomerance和](https://zh.wikipedia.org/wiki/Carl_Pomerance "wikilink")[H.
W. Lenstra,
Jr.展示了一個AKS的變體](https://zh.wikipedia.org/wiki/endrik_Lenstra "wikilink")，可以在\(O(log^6(n))\)次操作內完成測試（\(n\)是被測試數）。對於原算法的\(O(log^{12}(n))\)邊界而言，這是一個顯著的改進。\[2\]

## 演算法

整個演算法的操作如下：\[3\]

  -
    輸入：整數 *n* \> 1

<!-- end list -->

1.  若存在整數*a* \> 0 且*b* \> 1 ，令 *n* = *a*<sup>*b*</sup> ；則輸出*合數*
2.  找出最小的 *r* 令 *ord*<sub>*r*</sub>(*n*) \> log<sup>2</sup>(*n*).
3.  若 對某些*a* ≤
    *r*，1 \< gcd(*a*,*n*) \< *n*，輸出*合數*。(gcd是指[最大公因數](../Page/最大公因數.md "wikilink"))。
4.  若 *n* ≤ *r*, 輸出*質數*。
5.  對 *a* = 1 到
    \(\scriptstyle\lfloor \scriptstyle\sqrt{\varphi(r)}\log(n) \scriptstyle\rfloor\)的所有數，
      -
        如果 (*X*+*a*)<sup>*n*</sup>≠ *X*<sup>*n*</sup>+*a* (mod
        *X*<sup>*r*</sup> − 1,*n*), 輸出*合數*。
6.  輸出 *質數*。

這裡的 *ord*<sub>*r*</sub>(*n*)是*n* [mod](../Page/同餘.md "wikilink") *r*的阶。
另外，這裡的*log*
代表以二為底的對數，\(\scriptstyle\varphi(r)\)則是*r*的[歐拉函數](https://zh.wikipedia.org/wiki/歐拉函數 "wikilink")。

下面說明若*n*是個質數，那麼算法總是會返回*質數*：由於*n*是質數，步驟1和3永遠不會返回*合數*。步驟5也不會返回*合數*，因為(2)對所有質數*n*為真。因此，算法一定會在步驟4或6返回*質數*。

對應地，如果*n*是合數，那麼算法一定返回*合數*：如果算法返回*質數*，那麼則一定是從步驟4或6返回。對於前者，因為*n* ≤ *r*，
*n*必然有因子*a* ≤ *r*符合1 \< gcd(*a*,*n*) \<
*n*，因此會返回*合數*。剩餘的可能性就是步驟6，在文章\[4\]中，這種情況被證明不會發生，因為在步驟5中檢驗的多個等式可以確保輸出一定是*合數*。

\=== 例子：*n*=31為質數===

  -
    輸入：整數*n* = 31 \> 1。

 n<sup>k</sup>%r==0);

`      }`
`    }`
`    // r = 29`

</div>

|3=

<div>

`  若 對某些`*`a`*` ≤ `*`r`*`，1 < gcd(`*`a`*`,`*`n`*`) < `*`n`*`，輸出「合數」。`
`    for ( a=r; a > 1; a-- ){`
`      If ( 1 < gcd(`*`a`*`,`*`n`*`) < `*`n`*` ) 輸出「合數」;`
`    }`
`     `
`    // gcd(29,31)=1, gcd(28,31)=1, ..., gcd(2,31)=1`

</div>

|4=

<div>

`  若 `*`n`*` ≤ `*`r`*`, 輸出「質數」。`
`    If ( n ≤ r ) 輸出「質數」;`
`     `
`    // 31 > 29`

</div>

|5=

<div>

`  對 `*`a`*` = 1 到 `\(\scriptstyle\lfloor \scriptstyle\sqrt{\varphi(r)}\log(n) \scriptstyle\rfloor\)`的所有數，`
`     如果 (`*`X`*`+`*`a`*`)`<sup>*`n`*</sup>`≠ `*`X`*<sup>*`n`*</sup>`+`*`a`*` (mod `*`X`*<sup>*`r`*</sup>` − 1,`*`n`*`), 輸出「合數」。`
`     `
`    for ( a=1; a ≤ `\(\scriptstyle\lfloor \scriptstyle\sqrt{\varphi(r)}\log(n) \scriptstyle\rfloor\)`, a++ )`
`      if ( ((`*`X`*`+`*`a`*`)`<sup>*`n`*</sup>`-(`*`X`*<sup>*`n`*</sup>`+`*`a`*`))%(`*`X`*<sup>*`r`*</sup>`−1,`*`n`*`) ≠ 0 ) 輸出「合數」。`
`    }`
`     `
`    /***`
`    (x+a)`<sup>`31`</sup>`%(x`<sup>`29`</sup>`-1,31)`
`      = (((x+a)`<sup>`29`</sup>`%(x`<sup>`29`</sup>`-1,31))*(x+a)`<sup>`2`</sup>`%31)%(x`<sup>`29`</sup>`-1,31)`
`      = ((1+a`<sup>`29`</sup>`+29a`<sup>`28`</sup>`x+(406%31)a`<sup>`27`</sup>`x`<sup>`2`</sup>`+(3654%31)a`<sup>`26`</sup>`x`<sup>`3`</sup>`+(23751%31)a`<sup>`25`</sup>`x`<sup>`4`</sup>`+(118755%31)a`<sup>`24`</sup>`x`<sup>`5`</sup>`+(475020%31)a`<sup>`23`</sup>`x`<sup>`6`</sup>`+(1560780%31)a`<sup>`22`</sup>`x`<sup>`7`</sup>`+(4292145%31)a`<sup>`21`</sup>`x`<sup>`8`</sup>`+(10015005%31)a`<sup>`20`</sup>`x`<sup>`9`</sup>`+(20030010%31)a`<sup>`19`</sup>`x`<sup>`10`</sup>`+(34597290%31)a`<sup>`18`</sup>`x`<sup>`11`</sup>`+(51895935%31)a`<sup>`17`</sup>`x`<sup>`12`</sup>`+(67863915%31)a`<sup>`16`</sup>`x`<sup>`13`</sup>`+(77558760%31)a`<sup>`15`</sup>`x`<sup>`14`</sup>`+(77558760%31)a`<sup>`14`</sup>`x`<sup>`15`</sup>`+(67863915%31)a`<sup>`13`</sup>`x`<sup>`16`</sup>`+(51895935%31)a`<sup>`12`</sup>`x`<sup>`17`</sup>`+(34597290%31)a`<sup>`11`</sup>`x`<sup>`18`</sup>`+(20030010%31)a`<sup>`10`</sup>`x`<sup>`19`</sup>`+(10015005%31)a`<sup>`9`</sup>`x`<sup>`20`</sup>`+(4292145%31)a`<sup>`8`</sup>`x`<sup>`21`</sup>`+(1560780%31)a`<sup>`7`</sup>`x`<sup>`22`</sup>`+(475020%31)a`<sup>`6`</sup>`x`<sup>`23`</sup>`+(118755%31)a`<sup>`5`</sup>`x`<sup>`24`</sup>`+(23751%31)a`<sup>`4`</sup>`x`<sup>`25`</sup>`+(3654%31)a`<sup>`3`</sup>`x`<sup>`26`</sup>`+(406%31)a`<sup>`2`</sup>`x`<sup>`27`</sup>`+29ax`<sup>`28`</sup>`)*(a`<sup>`2`</sup>`+2ax+x`<sup>`2`</sup>`))%(x`<sup>`29`</sup>`-1,31)`
`      = ((1+a`<sup>`29`</sup>`+29a`<sup>`28`</sup>`x+3a`<sup>`27`</sup>`x`<sup>`2`</sup>`+27a`<sup>`26`</sup>`x`<sup>`3`</sup>`+5a`<sup>`25`</sup>`x`<sup>`4`</sup>`+25a`<sup>`24`</sup>`x`<sup>`5`</sup>`+7a`<sup>`23`</sup>`x`<sup>`6`</sup>`+23a`<sup>`22`</sup>`x`<sup>`7`</sup>`+9a`<sup>`21`</sup>`x`<sup>`8`</sup>`+21a`<sup>`20`</sup>`x`<sup>`9`</sup>`+11a`<sup>`19`</sup>`x`<sup>`10`</sup>`+19a`<sup>`18`</sup>`x`<sup>`11`</sup>`+13a`<sup>`17`</sup>`x`<sup>`12`</sup>`+17a`<sup>`16`</sup>`x`<sup>`13`</sup>`+15a`<sup>`15`</sup>`x`<sup>`14`</sup>`+15a`<sup>`14`</sup>`x`<sup>`15`</sup>`+17a`<sup>`13`</sup>`x`<sup>`16`</sup>`+13a`<sup>`12`</sup>`x`<sup>`17`</sup>`+19a`<sup>`11`</sup>`x`<sup>`18`</sup>`+11a`<sup>`10`</sup>`x`<sup>`19`</sup>`+21a`<sup>`9`</sup>`x`<sup>`20`</sup>`+9a`<sup>`8`</sup>`x`<sup>`21`</sup>`+23a`<sup>`7`</sup>`x`<sup>`22`</sup>`+7a`<sup>`6`</sup>`x`<sup>`23`</sup>`+ 25a`<sup>`5`</sup>`x`<sup>`24`</sup>`+5a`<sup>`4`</sup>`x`<sup>`25`</sup>`+27a`<sup>`3`</sup>`x`<sup>`26`</sup>`+3a`<sup>`2`</sup>`x`<sup>`27`</sup>`+29ax`<sup>`28`</sup>`)*(a`<sup>`2`</sup>`+2ax+x`<sup>`2`</sup>`))%(x`<sup>`29`</sup>`-1,31)`
`      = ((1+2*29+3)%31)a`<sup>`2`</sup>`+a`<sup>`31`</sup>`+((2+29)%31)ax+((29+2*1)%31)a`<sup>`30`</sup>`x+x`<sup>`2`</sup>`+((3+2*29+1)%31)a`<sup>`29`</sup>`x`<sup>`2`</sup>`+((27+2*3+29)%31)a`<sup>`28`</sup>`x`<sup>`3`</sup>`+((5+2*27+3)%31)a`<sup>`27`</sup>`x`<sup>`4`</sup>`+((25+2*5+27)%31)a`<sup>`26`</sup>`x`<sup>`5`</sup>`+((7+2*25+5)%31)a`<sup>`25`</sup>`x`<sup>`6`</sup>`+((23+2*7+25)%31)a`<sup>`24`</sup>`x`<sup>`7`</sup>`+((9+2*23+7)%31)a`<sup>`23`</sup>`x`<sup>`8`</sup>`+((21+2*9+23)%31)a`<sup>`22`</sup>`x`<sup>`9`</sup>`+((11+2*21+9)%31)a`<sup>`21`</sup>`x`<sup>`10`</sup>`+((19+2*11+21)%31)a`<sup>`20`</sup>`x`<sup>`11`</sup>`+((13+2*19+11)%31)a`<sup>`19`</sup>`x`<sup>`12`</sup>`+((17+2*13+19)%31)a`<sup>`18`</sup>`x`<sup>`13`</sup>`+((15+2*17+13)%31)a`<sup>`17`</sup>`x`<sup>`14`</sup>`+((15+2*15+17)%31)a`<sup>`16`</sup>`x`<sup>`15`</sup>`+((17+2*15+15)%31)a`<sup>`15`</sup>`x`<sup>`16`</sup>`+((13+2*17+15)%31)a`<sup>`14`</sup>`x`<sup>`17`</sup>`+((19+2*13+17)%31)a`<sup>`13`</sup>`x`<sup>`18`</sup>`+((11+2*19+13)%31)a`<sup>`12`</sup>`x`<sup>`19`</sup>`+((21+2*11+19)%31)a`<sup>`11`</sup>`x`<sup>`20`</sup>`+((9+2*21+11)%31)a`<sup>`10`</sup>`x`<sup>`21`</sup>`+((23+2*9+21)%31)a`<sup>`9`</sup>`x`<sup>`22`</sup>`+((7+2*23+9)%31)a`<sup>`8`</sup>`x`<sup>`23`</sup>`+((25+2*7+23)%31)a`<sup>`7`</sup>`x`<sup>`24`</sup>`+((5+2*25+7)%31)a`<sup>`6`</sup>`x`<sup>`25`</sup>`+((27+2*5+25)%31)a`<sup>`5`</sup>`x`<sup>`26`</sup>`+((3+2*27+5)%31)a`<sup>`4`</sup>`x`<sup>`27`</sup>`+((29+2*3+27)%31)a`<sup>`3`</sup>`x`<sup>`28`</sup>
`      = a`<sup>`31`</sup>`+x`<sup>`2`</sup>
`     `
`    (x`<sup>`31`</sup>`+a)%(x`<sup>`29`</sup>`-1,31) = a+x`<sup>`2`</sup>
`     `
`    (a`<sup>`31`</sup>`+x`<sup>`2`</sup>`)-(a+x`<sup>`2`</sup>`) = a`<sup>`31`</sup>`-a`
`     `
`    `\(\sqrt{\varphi(r)}\log_2(n) = \sqrt{28}*log_2(31) = 26.215\)
`     `
`    (1`<sup>`31`</sup>`-1)%31=0, (2`<sup>`31`</sup>`-2)%31=0, (3`<sup>`31`</sup>`-3)%31=0, ..., (26`<sup>`31`</sup>`-26)%31=0`
`    ***/`

</div>

|6=

<div>

`  輸出「質數」。`
`    31必為質數。`

</div>

}}

## 註釋

## 延伸閱讀

  -
## 外部連結

  -
  - [R. Crandall, Apple ACG, and J. Papadopoulos (March 18, 2003): On
    the implementation of AKS-class primality
    tests](https://web.archive.org/web/20140219064936/http://www.dm.unito.it/~cerruti/ac/aks-crandall.pdf)
    (PDF)

  - [Article by Borneman, containing photos and information about the
    three Indian
    scientists](http://www.ams.org/notices/200305/fea-bornemann.pdf)
    (PDF)

  - [Andrew Granville: It is easy to determine whether a given integer
    is
    prime](http://www.ams.org/bull/2005-42-01/S0273-0979-04-01037-7/home.html)

  - [The Prime Facts: From Euclid to
    AKS](http://www.scottaaronson.com/writings/prime.pdf), by [Scott
    Aaronson](https://zh.wikipedia.org/wiki/Scott_Aaronson "wikilink")
    (PDF)

  - [The PRIMES is in P little
    FAQ](http://www.instantlogic.net/publications/PRIMES%20is%20in%20P%20little%20FAQ.htm)
    by Anton Stiglic

  - [2006 Gödel Prize
    Citation](https://web.archive.org/web/20150327071905/http://www.sigact.org/Prizes/Godel/2006.html)

  - [2006 Fulkerson Prize
    Citation](http://www.ams.org/notices/200611/comm-fulkerson.pdf)

  - [The AKS "PRIMES in P" Algorithm
    Resource](http://fatphil.org/maths/AKS)

  - \[the video describes the exponential time relation (1), which it
    calls AKS\]

[Category:素性测试](https://zh.wikipedia.org/wiki/Category:素性测试 "wikilink")
[Category:有限域](https://zh.wikipedia.org/wiki/Category:有限域 "wikilink")
[Category:带有伪代码示例的条目](https://zh.wikipedia.org/wiki/Category:带有伪代码示例的条目 "wikilink")

1.  Manindra Agrawal, Neeraj Kayal, Nitin Saxena, "[PRIMES is in
    P](http://www.cse.iitk.ac.in/users/manindra/algebra/primality_v6.pdf)",
    *Annals of Mathematics* 160 (2004), no. 2, pp. 781–793.

2.  [亨德里克·倫斯特拉](https://zh.wikipedia.org/wiki/亨德里克·倫斯特拉 "wikilink") and
    [Carl
    Pomerance](https://zh.wikipedia.org/wiki/Carl_Pomerance "wikilink"),
    "[Primality Testing with Gaussian
    Periods](http://www.math.dartmouth.edu/~carlp/PDF/complexity12.pdf)",
    preliminary version July 20, 2005.

3.
4.