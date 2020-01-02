> 本文内容由[BLAST \(生物資訊學\)](https://zh.wikipedia.org/wiki/BLAST_\(生物資訊學\))转换而来。


[生物信息學中](https://zh.wikipedia.org/wiki/生物信息 "wikilink")，**BLAST**（）它是一個用來比對[生物序列的](https://zh.wikipedia.org/wiki/生物序列 "wikilink")[一級結構](https://zh.wikipedia.org/wiki/一級結構 "wikilink")（如不同[蛋白質的](https://zh.wikipedia.org/wiki/蛋白質 "wikilink")[氨基酸](../Page/氨基酸.md "wikilink")序列或不同[基因](../Page/基因.md "wikilink")的[DNA序列](../Page/脱氧核糖核酸.md "wikilink")）的算法。 已知一個包含若干序列的資料庫，BLAST可以讓研究者在其中尋找與其感興趣的序列相同或類似的序列。 例如如果某種非人動物的一個以前未知的基因被發現，研究者一般會在人類基因組中做一個BLAST搜索來確認人類是否包含類似的基因（通過序列的相似性）。BLAST演算法以及實現它的程序由[美國國家生物技術信息中心](https://zh.wikipedia.org/wiki/美國國家生物技術信息中心 "wikilink")（NCBI）的、、、及博士開發\[[http://www.ncbi.nlm.nih.gov/BLAST/\]的](http://www.ncbi.nlm.nih.gov/BLAST/%5D的)。

研究者利用BLAST來解决的其他問题有：

  - 哪個[细菌](../Page/细菌.md "wikilink")[物種包含與](https://zh.wikipedia.org/wiki/物種 "wikilink")[氨基酸](../Page/氨基酸.md "wikilink")序列已知的某[蛋白質有親緣關係的蛋白質](https://zh.wikipedia.org/wiki/蛋白質 "wikilink")？
  - 被測序的一段[DNA來自哪裡](../Page/脱氧核糖核酸.md "wikilink")？
  - 何種基因编碼的蛋白質表現出剛剛被確定的某種結構或[結構模體](https://zh.wikipedia.org/wiki/結構模體 "wikilink")？

……等等。

## 背景

BLAST是一個被廣泛使用於分析生物資訊的程式，因為它可以兼顧我們在做搜尋時的速度以及搜尋結果的精確度。因為當我們所要搜尋的目標資料庫非常龐大的時候，速度就變成一項很需要考量的因素。在像BLAST和這些快速算法被開發之前，我們是使用[动态规划](../Page/动态规划.md "wikilink")算法來作資料庫的序列搜尋，這真的非常的耗時。BLAST使用[啟發式搜索來找出相關的序列](https://zh.wikipedia.org/wiki/啟發式搜索 "wikilink")，在速度上比完全只使用动态规划大約快上50倍左右，不過它不像动态规划能夠保證搜尋到的序列（Database sequence）和所要找的序列（Query sequence）之間的相關性，BLAST的工作就是盡可能找出資料庫中和所要查詢的序列相關的資訊而已，精確度稍微低一點。此外，BLAST比FASTA更快速，因為BLAST只對比較少出現或是較重要的一些關鍵字作更進一步的分析，而FASTA是考慮所有共同出現在所要搜尋的序列和目標序列的字。從下面介紹的演算法可以更進一步的瞭解。

## 算法

這邊我們以蛋白質對蛋白質序列搜尋所用的程式BLASTP之實做的步驟，來了解BLAST這程式的主要思想。\[1\]

1.  **移除Query序列中之低複雜度以及有串接重複現象的區域**
    低複雜度是指由很少種類的元素（如氨基酸）所組成的一個區域；而串接重複現象是指在一個Query序列中，有兩段串連的區域它們組成的方式一模一樣。這兩種在序列中的區域可能會讓BLAST找出一些雖然分數夠高，但是其實和Query序列並不相關之序列，所以在我們執行搜尋之前，要先把Query序列中的這兩種區域濾掉。BLAST的實際作法是，它會把這些區域用符號代替，並且在搜索的時候忽略這些符號。蛋白質序列中，就用X符號標示；而DNA序列中，則用N符號標示。低複雜度區域的部份，BLAST是用一個叫做[SEG](http://www.ncbi.nlm.nih.gov/Education/BLASTinfo/Seg.html)的程式來處理蛋白質序列，而用叫做[DUST](ftp://ftp.ncbi.nlm.nih.gov/pub/agarwala/windowmasker/windowmasker_suppl.pdf)的程式來處理DNA序列。另一方面，蛋白質序列中之串接重複現象的區域則是使用[XNU](https://archive.is/20081209015615/http://bighost.area.ba.cnr.it/BIG/GCGManual/xnu.html)來處理。
2.  **將Query序列中每k個字的組合做成一個表**
    以k=3為例（DNA序列中，我們則常以k=11為例），我們"**依序**"將Query序列中每3個字的組合視為一個**字組**，並將這些字組列在一張字組表上，直到Query序列中最後一個字也被收入進表上為止。由圖一可以更清楚的了解整個作法。[query_word.jpg](https://zh.wikipedia.org/wiki/File:query_word.jpg "fig:query_word.jpg")
3.  **列出我們所關心的所有可能之字組**
    這個步驟就是BLAST和FASTA之間很重要的一點不同處。FASTA關心所有在第二步中所找出的字組表上的每一個字組，它會去搜尋資料庫中的序列，看看這些序列是否含有這些字組；然而，BLAST只對**高分**的一些字組有興趣，而字組的分數是由依序比較字組間的每個字，再配合**得分矩陣（substitution matrix或scoring matrix）**所產生的。因此，對於每一個字組而言，可能有20^3個BLAST可能關心的字組，當然這些字組經過一個門檻分數的篩選後，只有少數的字組會留下，而這些就是BLAST真正所關心的字組。舉例來說，若以[BLOSUM62](http://www.uky.edu/Classes/BIO/520/BIO520WWW/blosum62.htm)為得分矩陣，則PQG分別和PEG以及PQA比較所得的分數是15以及12分，若門檻值是13，則PEG會留下來並被用於之後的步驟，而PQA則不被考慮。（在DNA序列的搜尋中，我們對於匹配的字是加5分，不匹配的則是扣4分。）
4.  **將這些經篩選後剩下的高分字組組織成快速搜尋樹的結構**
    這是為了要讓程式能快速的比對這些高分字組和資料庫中的序列是否有完全匹配（exact match）的情形。
5.  **對每個Query序列中的字組重複步驟1到4，並得到所有相應的高分字組**
6.  **掃瞄資料庫中的序列，看看是否有跟剩下的高分字組完全匹配的情形**
    BLAST會搜尋資料庫序列中是否有高分字組出現，像是在第三步找出來的PEG。若掃瞄到有完全匹配的情形發生，那這個完全匹配的位置就會是我們之後要對Query序列和資料庫序列做無間隙的區域排比（ungapped local alignment）的起點。
7.  **將這些完全匹配的地方擴展為高分序對（high-scoring segment pair, HSP）**
      - 舊版的BLAST會從這個匹配的位置，分別向左右去擴展，直到比對出來的分數開始變小為止。圖2闡述了這個概念。[extension_process.jpg](https://zh.wikipedia.org/wiki/File:extension_process.jpg "fig:extension_process.jpg")
      - 為了更有效率，新版的BLAST被開發出來，叫做BLAST2或是Gapped BLAST。為了要維持搜尋的靈敏度，BLAST2使用比較低的門檻值以留下較多的高分字組，因此第3步的高分字組表會變的比較長。接著，如果在圖3中以X代表的匹配字組是在同一個從左下往右上的對角線上，而且它們的距離是小於一個門檻值A，則這兩個匹配的位置會被結合成一個更長的區域。最後，這個新的區域會用舊版BLAST向左右擴展的方式來延伸成HSP，而這個HSP的分數一樣也是用得分矩陣來評分每一個比對的情形，並將這些分數加總起來，就跟之前找高分字組的方法一樣。[neighbor_HSP.jpg](https://zh.wikipedia.org/wiki/File:neighbor_HSP.jpg "fig:neighbor_HSP.jpg")
8.  **將所有分數夠高的HSP列出來**
    所有分數高於某個由經驗法則推測出來的門檻值S之HSP都將被列出。這個門檻值S是由檢視兩個不相關的序列去作大量無間隙的區域排比得來的分數之分佈，進而推測出S該怎麼制定以保證被留下來的HSP都具有一定程度的意義。
9.  **評估這些留下來的HSP它們的分數是否具有意義**
    BLAST會利用[Gumbel extreme value distribution (EVD)](http://www.itl.nist.gov/div898/handbook/eda/section3/eda366g.htm)這個極值的分佈，來評估每個HSP分數的統計意義（已經有人證明兩個不相關的序列去作區域排比時，不考慮gap的使用，做出來的分數都會呈現Gumbel EVD的情況；考虑gap的使用时，该结论尚未被证明）。根據Gumbel EVD所推測出來的理論，一個分數S大於或等於Gumbel EVD裡面某個值x的機率是
    \(p\left( S\ge x \right)=1-\exp \left( -e^{-\lambda \left(x-\mu  \right)} \right)\)
    ，其中
    \(\mu ={}^{\left[ \log \left( Km'n' \right) \right]}\!\!\diagup\!\!{}_{\lambda }\;\)
    統計變數\(\lambda\)和\(\mathrm{K}\)是由Query序列去和大量被混亂排列（Globeal or local shuffling）的一個資料庫序列作無間隙區域排比所形成的Gumbel EVD，再由這個來評估出這些統計變數。統計變數\(\lambda\)和\(\mathrm{K}\)取決於所使用的得分矩陣以及間隙懲罰值（Gap penalties），還有序列的元素組成成份。至於m’和n’則分別是Query序列和資料庫序列的**有效長度（Effective length）**。有效長度的由來是因為在兩序列的排比中，如果排比的起點靠近其中一個序列的結尾處時，則這個排比很難有機會形成一個好的排比，這稱為**邊際效應**（\[Edge effect <http://www.ncbi.nlm.nih.gov/BLAST/tutorial/Altschul-1.html#head7>\]）。因此，要利用將原始序列的長度經過一些修剪來彌補邊際效應，以達到比較好的統計估測（注意，當序列的長度都大於200時，邊際效應通常可被忽略）。被修正過得長度是
    \(m' \approx m- \frac { \left (\ln {\mathrm{K}mn} \right ) }{ \mathrm{H} }\)
    \(n' \approx n- \frac { \left (\ln {\mathrm{K}mn} \right ) }{ \mathrm{H} }\)（注意n是所有資料庫中序列長度的總和）,
    其中\(\mathrm{H}\)是指兩個不相關的序列去作無間隙區域排比後，每一個排比對平均所得的分數，這和我們所使用的得分矩陣密切相關。Altschul和Gish先生提供了我們這些統計變數的參考值，如\(\lambda = 0.318\)、\(\mathrm{K} = 0.13\)、及\(\mathrm{H} = 0.40\)，這邊使用的得分矩陣是[BLOSUM62](http://www.uky.edu/Classes/BIO/520/BIO520WWW/blosum62.htm)。使用這些參考值去作統計意義的估測其實不是非常準確。經由以上分析，我們可能找出一個和Query序列相關的資料庫序列，接著我們要計算這個資料庫序列的**期望分數E（Expect score）**，它的意義是當我們對非常多個不相關序列其中的兩個作無間隙區域排比時，所得的分數會高於這個資料庫序列和Query序列之間的HSP分數之個數。經由搜尋一個有D個序列的資料庫所得之期望分數E可由下式得到。
    \(\mathrm{E} \approx 1-e^{-\mathbf{p} \left (\mathbf{S} \ge \mathbf{x} \right )}\)
    甚至當\(\mathbf{p} < 0.1\)時，E可以由[泊松分布更進一步簡化為](https://zh.wikipedia.org/wiki/泊松分布 "wikilink")
    \(\mathrm{E} = \mathbf{p} \mathrm{D}\)
    注意這邊用來估測HSP分數（無間隙）的期望分數E和最後一個步驟用來估測具有間隙的區域排比分數的期望分數E是不一樣的。差別就在是否具有間隙（Gap），所以先前的統計變數都要重新計算。
10. **將一個資料庫序列中的多個HSP區域結合成一個更長的排比**
    有時，我們會在一個資料庫序列中找到多個HSP區域，然後將它們結合成一個更長的排比序列，這提供Query序列和資料庫序列之間相關性的另一個證據。當我們要比較這些結合後的區域之間孰輕孰重時，有兩種方法讓我們選擇。一種叫做Poisson法則（Poisson method），另外一種叫做總分法則（sum-of scores method）。假設有兩個新結合出來的區域，它們個別的HSP分數分別是（65, 40）和（52, 45）。Poisson法則是以誰的低分比較高來給予評價，像（52, 45）就比（65, 40）重要，因為45\>40；然而，總分法則就比較重視（65, 40）這組，因為65+40（105）比52+45（97）大。舊版的BLAST是用Poisson法則，而新版的BLAST或是[WU-BLAST](http://blast.wustl.edu/)則是使用總分法則。
11. **
    顯示Query序列和所有之前找到可能相關的資料庫序列之有間隙區域排比**
      - 舊版的BLAST只能顯示出Query序列和之前找到的HSP區域之間的無間隙區域排比，甚至當一個資料庫序列中有多個HSP也是一樣，只會分開顯示。
      - 新版的BLAST就不像舊版那樣，若一個資料庫序列中有多個HSP，則它可以將這些HSP統統包含進一個較大型的有間隙區域排比。這邊再提醒一次，這裡做出來的有間隙區域排比之分數也是用先前提到的Gumbel EVD找出的期望分數E來作評估，但這邊的統計變數要考量到間隙懲罰值，因此和之前的期望分數E是不一樣的。
12. **列出上一步驟中期望分數E低於我們所要求的門檻值之資料庫序列**

## 相關的各種程式

由[NCBI管理的BLAST网站允许任何人使用浏览器来在包含大部分新测序的物种的不停更新的DNA或蛋白质数据库中进行相似性搜索](https://zh.wikipedia.org/wiki/国家生物技术信息中心 "wikilink")。这个服务器包含很多程序，最重要的几个如下：

### 蛋白-蛋白BLAST（blastp）

已知一个蛋白的氨基酸序列，通过这个程序可以找出在用户选择的蛋白质数据库中与其最相似的序列。

### 已轉錄序列-蛋白BLAST（blastx）

已知一段已經轉錄的序列，藉由這個程式對這段序列的6個[ORF對上用戶所選擇的蛋白質資料庫](https://zh.wikipedia.org/wiki/开放阅读框架 "wikilink")， 比對最相似的序列。其功用可以找出在基因體DNA（genomic DNA）上[轉譯出](https://zh.wikipedia.org/wiki/轉譯 "wikilink")[蛋白質的序列](https://zh.wikipedia.org/wiki/蛋白質 "wikilink")。

### 蛋白-已轉錄序列BLAST（tblastn）

已知一段蛋白質的氨基酸序列，藉由這個程式可將此序列，對用戶所選擇的已轉錄序列資料庫（包含這個資料庫的6個ORF），比對出最相似的序列。

### 已轉錄序列-已轉錄序列BLAST（tblastx）

已知一段已轉錄的序列，藉由這個程式對這已知序列的6個ORF，對上用戶所選擇的已轉錄序列資料庫（亦包含6個ORF），比對出最相似的序列，因為這個程式比對來源的6個ORF，與資料庫的6個ORF，所以會執行相當久。

### 位置相关的迭代BLAST（PSI-BLAST）

这个程序用来搜索蛋白质的"远亲".首先，一个用户提交的蛋白质序列的所有"近亲"的列表被建立起来，然后这些蛋白质被结合在一个作为对序列的某种平均的"特征序列"当中。再然后用这个特征序列在蛋白质数据库中进行搜索，就会找出更大的一组蛋白质的列表。这个蛋白质列表有一个不同的特征序列，这个序列被用来迭代地运行上述过程。

通过在搜索中包含相关的蛋白质，PSI-BLAST对于寻找已知蛋白进化上的"远亲"的灵敏度要比一般的blastp高很多。

### PHI-BLAST

Focuses search around pattern (motif)

### megaBLAST

### RPS-BLAST

### IgBLAST

### GEO BLAST

## 参考文献

## 外部链接

  - [NCBI-BLAST 首页](http://www.ncbi.nlm.nih.gov/BLAST/)
  - [NCBI-BLAST 教程](http://www.ncbi.nlm.nih.gov/Education/BLASTinfo/tut1.html)

## 参见

  - [序列比對](../Page/序列比對.md "wikilink")

[Category:生物信息学算法](https://zh.wikipedia.org/wiki/Category:生物信息学算法 "wikilink") [Category:计算系统发生学](https://zh.wikipedia.org/wiki/Category:计算系统发生学 "wikilink") [Category:生物信息学软件](https://zh.wikipedia.org/wiki/Category:生物信息学软件 "wikilink") [Category:实验室软件](https://zh.wikipedia.org/wiki/Category:实验室软件 "wikilink") [Category:公有领域软件](https://zh.wikipedia.org/wiki/Category:公有领域软件 "wikilink")

1.  D.W. Mount (2004). "[Bioinformatics: Sequence and Genome Analysis.](http://www.bioinformaticsonline.org/)". Cold Spring Harbor Press''.