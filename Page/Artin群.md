[數學上](https://zh.wikipedia.org/wiki/數學 "wikilink")，**Artin群**，或稱**廣義辮群**，是指有如下[展示的](../Page/群的展示.md "wikilink")[群](../Page/群.md "wikilink")：

\[\Big\langle x_1,x_2,\ldots,x_n \Big| \langle x_i, x_j \rangle^{m_{i,j}}=\langle x_j, x_i \rangle^{m_{j,i}}, i,j\in \{1,2,\ldots, n\}, i\neq j \Big\rangle\]
其中

\[m_{i,j} = m_{j,i} \in \{2,3,\ldots, \infty\}\].

對\(m < \infty\)，\(\langle x_i, x_j \rangle^m\)表示長度為\(m\)的\(x_i\)和\(x_j\)的交錯積，以\(x_i\)開首。例如：

\[\langle x_i, x_j \rangle^3 = x_ix_jx_i\]，

\[\langle x_i, x_j \rangle^4 = x_ix_jx_ix_j\]。

若\(m=\infty\)，按慣例這表示\(x_i\)和\(x_j\)間沒有關係。

在整數\(m_{i,j}\)中加入\(m_{i,i}=1\)，可以組成一個[對稱矩陣](../Page/對稱矩陣.md "wikilink")，稱為這個群的[考克斯特矩陣](https://zh.wikipedia.org/wiki/考克斯特矩陣 "wikilink")（）。在Artin群中加入所有形為\({x_i}^2=1\)的關係，得到的[商群是](../Page/商群.md "wikilink")[考克斯特群](../Page/考克斯特群.md "wikilink")。這個考克斯特群和原本的Artin群有相同的生成元和[考克斯特矩陣](https://zh.wikipedia.org/wiki/考克斯特矩陣 "wikilink")。從Artin群到對應的考克斯特群的[群同態的](../Page/群同態.md "wikilink")[核](https://zh.wikipedia.org/wiki/核_\(代數\) "wikilink")，稱為**純Artin群**（）。

## Artin群的類

[辮群是Artin群的一種](https://zh.wikipedia.org/wiki/辮群 "wikilink")，其考克斯特矩陣為\(m_{i,i+1} = 3\)，及當\(|i-j|>1\)時\(m_{i,j}=2\)。

用Artin群的考克斯特矩陣，可以定義出數類重要的Artin群：

### 有限型Artin群

若*M*是有限型考克斯特矩陣，使對應的[考克斯特群](../Page/考克斯特群.md "wikilink")*W* =
*A*(*M*)是有限群，那麼Artin群*A* =
*A*(*M*)稱為**有限型Artin群**（）。其「不可約型」標記為*A*<sub>*n*</sub> ,
*B*<sub>*n*</sub> = *C*<sub>*n*</sub> , *D*<sub>*n*</sub> ,
*I*<sub>*2*</sub>(*n*) , *F*<sub>*4*</sub> , *E*<sub>*6*</sub> ,
*E*<sub>*7*</sub> , *E*<sub>*8*</sub> , *H*<sub>*3*</sub> ,
*H*<sub>*4*</sub> 。一個有限型純Artin群，可以表現為**C**<sup>*n*</sup>中一個有限[超平面配置的](https://zh.wikipedia.org/wiki/超平面配置 "wikilink")[補集的](https://zh.wikipedia.org/wiki/補集 "wikilink")[基本群](../Page/基本群.md "wikilink")。[皮埃爾·德利涅和Brieskorn](https://zh.wikipedia.org/wiki/皮埃爾·德利涅 "wikilink")-Saito用了這個幾何描述，算出*A*的[中心](https://zh.wikipedia.org/wiki/中心_\(群論\) "wikilink")、[上同調](../Page/群上同調.md "wikilink")，及解出[字問題和](https://zh.wikipedia.org/wiki/字問題 "wikilink")[共軛問題](https://zh.wikipedia.org/wiki/共軛問題 "wikilink")。

### 直角Artin群

若矩陣*M*中除對角線外的元素都是2或∞，則對應的Artin群稱為**直角Artin群**（）。這類Artin群常用以下的方式標記：任何一個有*n*個頂點的[圖](https://zh.wikipedia.org/wiki/圖_\(數學\) "wikilink")
**Γ**，頂點標記為1, 2, …,
n，都可定義一個矩陣*M*，其中若*i*和*j*在**Γ**中相連，則*m*<sub>*ij*</sub> = 2，否則*m*<sub>*ij*</sub> = ∞。與矩陣*M*對應的直角Artin群*A*(**Γ**)有*n*個生成元*x*<sub>1</sub>,
*x*<sub>2</sub>, …, *x*<sub>n</sub>及關係

  -
    \(x_i x_j = x_j x_i \quad\)若*i*和*j*在\(\Gamma\)中相連。

直角Artin群包括了有限秩的[自由群](../Page/自由群.md "wikilink")，對應無邊線的圖，及有限生成的[自由阿貝爾群](https://zh.wikipedia.org/wiki/自由阿貝爾群 "wikilink")，對應[完全圖](../Page/完全圖.md "wikilink")。事實上每個秩為*r*的直角Artin群都是一個秩為*r*-1的直角Artin群的[HNN擴張](../Page/HNN擴張.md "wikilink")，兩個極端例子是[自由積和](../Page/自由積.md "wikilink")[直積](https://zh.wikipedia.org/wiki/直積 "wikilink")。這個構造法有一個推廣稱為[群的圖積](https://zh.wikipedia.org/wiki/群的圖積 "wikilink")（）。直角Artin群是群的圖積的特例，其中每個頂點群都是秩1自由群（即無限[循環群](../Page/循環群.md "wikilink")）。

Mladen Bestvina和Noel
Brady建構了一個非正曲立方複形（）*K*，其基本群是一個給定的直角Artin群*A*(**Γ**)。他們在Artin群的幾何描述上用[莫爾斯理論來論證](https://zh.wikipedia.org/wiki/莫爾斯理論 "wikilink")，給出具有性質(FP<sub>2</sub>)的[非有限展示群的第一批例子](../Page/群的展示.md "wikilink")。

## 其他Artin群

若一個Artin群或一個[考克斯特群的對應矩陣中](../Page/考克斯特群.md "wikilink")，對所有*i* ≠
*j*都有*m*<sub>*i*, *j*</sub> ≥ 3，稱這個群是大型（）的；若對所有*i* ≠
*j*都有*m*<sub>*i*, *j*</sub> ≥ 4，則稱這個群是超大型（）的。

[凱尼斯·阿佩爾和P](../Page/凱尼斯·阿佩爾.md "wikilink").E.
Schupp探討Artin群的性質，證明了四條定理。這些定理之前已知對考克斯特群成立，而他們證明對Artin群也成立。他們發現可以使用[小消去理論的技巧研究超大型Artin群和考克斯特群](https://zh.wikipedia.org/wiki/小消去理論 "wikilink")，並可以把技巧改進來用在那些大型的群中。

他們證明的定理為：

1.  設*G*為超大型Artin或考克斯特群。若*J* ⊆
    *I*，則*G*<sub>*J*</sub>有一個展示由考克斯特矩陣*M*<sub>*J*</sub>定義，且*G*<sub>*J*</sub>在*G*中的廣義字問題可解。若*J*,
    *K* ⊆ *I*則*G*<sub>*J*</sub> ∩ *G*<sub>*K*</sub> = *G*<sub>(*J* ∩
    *K*)</sub>.
2.  超大型Artin群是[無扭](https://zh.wikipedia.org/wiki/扭元 "wikilink")（即無有限目的元素）的。
3.  設*G*為超大型Artin群，則集合{*a*<sub>*i*</sub><sup>2</sup> : *i* ∈
    *I*}自由生成*G*的一個自由子群。
4.  超大型Artin或考克斯特群的共軛問題可解。

## 參考

<references />

  - [Mladen
    Bestvina](https://zh.wikipedia.org/wiki/Mladen_Bestvina "wikilink"),
    Noel Brady, *Morse theory and finiteness properties of groups*.
    Invent. Math. 129 (1997), no. 3, 445-470.
  - [Pierre
    Deligne](https://zh.wikipedia.org/wiki/Pierre_Deligne "wikilink"),
    *Les immeubles des groupes de tresses généralisés*. Invent. Math. 17
    (1972), 273-302.
  - [Egbert
    Brieskorn](https://zh.wikipedia.org/wiki/Egbert_Brieskorn "wikilink"),
    Kyoji Saito, *Artin-Gruppen und Coxeter-Gruppen*. Invent. Math. 17
    (1972), 245--271.
  - Ruth Charney, [An introduction to right-angled Artin
    groups](http://people.brandeis.edu/~charney/papers/raagfinal.pdf)
  - Montserrat Casals-Ruiz and Ilya V. Kazachkov, [On systems of
    equations over free partially commutative
    groups](http://arxiv.org/pdf/0810.4867v2.pdf)
  - Evgenii S. Esyp, Ilya V. Kazachkov, and Vladimir N. Remeslennikov,
    [Divisibility theory and complexity of algorithms for free partially
    commutative groups](http://arxiv.org/pdf/math/0512401.pdf)
  - Susan Hermiller, John Meier, [Algorithms and geometry for graph
    products of
    groups](http://www.math.unl.edu/~shermiller2/webppr/graphproduct.pdf)
  - Appel, Kenneth I., and P. E. Schupp. *Artin Groups and Infinite
    Coxeter Groups.* Inventiones Mathematicae 72.2 (1983): 201-220

[分類:群論](https://zh.wikipedia.org/wiki/分類:群論 "wikilink")