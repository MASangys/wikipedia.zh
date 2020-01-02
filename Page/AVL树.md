> 本文内容由[AVL树](https://zh.wikipedia.org/wiki/AVL树)转换而来。


[Unbalanced_binary_tree.svg](https://zh.wikipedia.org/wiki/File:Unbalanced_binary_tree.svg "fig:Unbalanced_binary_tree.svg")

在[计算机科学](../Page/计算机科学.md "wikilink")中，**AVL树**是最早被发明的[自平衡二叉查找树](https://zh.wikipedia.org/wiki/自平衡二叉查找树 "wikilink")。在AVL树中，任一节点对应的两棵子树的最大高度差为1，因此它也被称为**高度平衡树**。查找、插入和删除在平均和最坏情况下的[時間複雜度都是](https://zh.wikipedia.org/wiki/時間複雜度 "wikilink")\(O(\log{n})\)。增加和删除元素的操作则可能需要藉由一次或多次[树旋转](../Page/树旋转.md "wikilink")，以实现树的重新平衡。AVL树得名于它的发明者[G. M. Adelson-Velsky和](https://zh.wikipedia.org/wiki/格奥尔吉·阿杰尔松-韦利斯基 "wikilink")，他们在1962年的论文《An algorithm for the organization of information》中公开了这一数据结构。

节点的**平衡因子**是它的左子树的高度减去它的右子树的高度（有時相反）。带有平衡因子1、0或 -1的节点被认为是平衡的。带有平衡因子 -2或2的节点被认为是不平衡的，并需要重新平衡这个树。平衡因子可以直接存储在每个节点中，或从可能存储在节点中的子树高度计算出来。

[AVLtreef.svg](https://zh.wikipedia.org/wiki/File:AVLtreef.svg "fig:AVLtreef.svg")

## 操作

AVL树的基本操作一般涉及运作同在不平衡的[二叉查找树所运作的同样的算法](https://zh.wikipedia.org/wiki/二叉查找树 "wikilink")。但是要进行预先或随后做一次或多次所谓的"AVL旋转"。

以下图表以四列表示四种情况，每行表示在该种情况下要进行的操作。在左左和右右的情况下，只需要进行一次旋转操作；在左右和右左的情况下，需要进行两次旋转操作。

[Tree_Rebalancing.png](https://zh.wikipedia.org/wiki/File:Tree_Rebalancing.png "fig:Tree_Rebalancing.png")

### 删除

从AVL树中删除，可以通过把要删除的节点向下旋转成一个葉子節點，接着直接移除这个叶子节点来完成。因为在旋转成葉子節點期间最多有log *n*个节点被旋转，而每次AVL旋转耗费固定的时间，所以删除处理在整体上耗费O(log *n*) 时间。

### 搜尋

可以像普通二叉查找树一样的进行，所以耗费O(log *n*)时间，因为AVL树总是保持平衡的。不需要特殊的准备，树的结构不会由于查找而改变。（这是与[伸展樹搜尋相对立的](https://zh.wikipedia.org/wiki/伸展樹 "wikilink")，它会因为搜尋而变更树结构。）

## 实现描述

假設平衡因子是左子樹的高度減去右子樹的高度所得到的值，又假设由于在二叉排序树上插入节点而失去平衡的最小子树根节点的指针为a（即a是离插入点最近，且平衡因子绝对值超过1的祖先节点），则失去平衡后进行的规律可归纳为下列四种情况：

1.  单向右旋平衡处理LL：由于在\*a的左子树根节点的左子树上插入节点，\*a的平衡因子由1增至2，致使以\*a为根的子树失去平衡，则需进行一次右旋转操作；
2.  单向左旋平衡处理RR：由于在\*a的右子树根节点的右子树上插入节点，\*a的平衡因子由-1变为-2，致使以\*a为根的子树失去平衡，则需进行一次左旋转操作；
3.  双向旋转（先左后右）平衡处理LR：由于在\*a的左子树根节点的右子树上插入节点，\*a的平衡因子由1增至2，致使以\*a为根的子树失去平衡，则需进行两次旋转（先左旋后右旋）操作。
4.  双向旋转（先右后左）平衡处理RL：由于在\*a的右子树根节点的左子树上插入节点，\*a的平衡因子由-1变为-2，致使以\*a为根的子树失去平衡，则需进行两次旋转（先右旋后左旋）操作。

在平衡的二叉排序树BBST (Balancing Binary Search Tree)上插入一个新的数据元素e的递归算法可描述如下：

1.  若BBST为空树，则插入一个数据元素为e的新节点作为BBST的根节点，树的深度增1；
2.  若e的关键字和BBST的根节点的关键字相等，则不进行；
3.  若e的关键字小于BBST的根节点的关键字，而且在BBST的左子树中不存在和e有相同关键字的节点，则将e插入在BBST的左子树上，并且当插入之后的左子树深度增加（+1）时，分别就下列不同情况处理之：
    1.  BBST的根节点的平衡因子为-1（右子树的深度大于左子树的深度，则将根节点的平衡因子更改为0，BBST的深度不变；
    2.  BBST的根节点的平衡因子为0（左、右子树的深度相等）：则将根节点的平衡因子更改为1，BBST的深度增1；
    3.  BBST的根节点的平衡因子为1（左子树的深度大于右子树的深度）：则若BBST的左子树根节点的平衡因子为1：则需进行单向右旋平衡处理，并且在右旋处理之后，将根节点和其右子树根节点的平衡因子更改为0，树的深度不变；
4.  若e的关键字大于BBST的根节点的关键字，而且在BBST的右子树中不存在和e有相同关键字的节点，则将e插入在BBST的右子树上，并且当插入之后的右子树深度增加（+1）时，分别就不同情况处理之。

AVL树的调平（Erlang的实现）

``` erlang numberLines
balance(null) -> null;
balance({null, _, null}=Tree) -> Tree;
balance({Left, Value, Right}=Tree) ->
    Diff = count(Left)-count(Right),
    if (Diff < 2) and (Diff > -2)   ->  {balance(Left), Value, balance(Right)};
       (Diff > 1)               ->  balance(rotate_right(Tree));
       (Diff< -1)               ->  balance(rotate_left(Tree));
       true                 ->  exit('This is impossible!')
    end.

rotate_right({Left, Value, Right}) ->
    merge_max(Left, {null, Value, Right}).

rotate_left({Left, Value, Right}) ->
    merge_min(Right, {Left, Value, null}).

merge_min({null, Value, Right}, Tree2) ->
    {Tree2, Value, Right};
merge_min({Left, _, _}, Tree2) ->
    merge_min(Left, Tree2).

merge_max({Left , Value, null}, Tree2) ->
    {Left, Value, Tree2};
merge_max({_, _, Right}, Tree2) ->
    merge_max(Right, Tree2).
```

## AVL節點數計算

高度為h的AVL樹，總節點數N最多\(2^h -1\)； 最少節點數\(N_h\)如以[斐波那契數列可以用數學歸納法證明](https://zh.wikipedia.org/wiki/斐波那契數列 "wikilink")：
\(N_h\) = \(F_{h+2}\) - 1 (\(F_{h+2}\)是[斐波那契数列](../Page/斐波那契数列.md "wikilink")的第h+2项，根据斐波那契多项式得来)。
即:
\(N_0\) = 0 (表示AVL Tree高度為0的節點總數)
\(N_1\) = 1 (表示AVL Tree高度為1的節點總數)
\(N_2\) = 2 (表示AVL Tree高度為2的節點總數)
\(N_h\) = \(N_{h-1}\) + \(N_{h-2}\) + 1 (表示AVL Tree高度為h的節點總數)
換句話說，當節點數為N時，高度h最多為\(log_{\Phi} ( \sqrt{5} *(N+1)) -2\)。

## 参见

  - [樹旋轉](https://zh.wikipedia.org/wiki/樹旋轉 "wikilink")
  - [伸展樹](https://zh.wikipedia.org/wiki/伸展樹 "wikilink")
  - [紅黑樹](https://zh.wikipedia.org/wiki/紅黑樹 "wikilink")
  - [B樹](https://zh.wikipedia.org/wiki/B樹 "wikilink")

## 引用

  - G. Adelson-Velskii and E.M. Landis, "An algorithm for the organization of information." *Doklady Akademii Nauk SSSR*, 146:263–266, 1962（[Russian](https://zh.wikipedia.org/wiki/Russian_language "wikilink")）. [English](https://zh.wikipedia.org/wiki/English_language "wikilink") translation by Myron J. Ricci in *Soviet Math. Doklady*, 3:1259–1263, 1962.

## 外部链接

  - [Description from the Dictionary of Algorithms and Data Structures](http://www.nist.gov/dads/HTML/avltree.html)
  - [AVL Tree Traversal](http://www.auto.tuwien.ac.at/~blieb/woop/avl.html)
  - [Linked AVL tree](https://web.archive.org/web/20050410150229/http://www.elude.ca/aapl/doc/classAvliTree.html)
  - [C++ AVL Tree Template](https://web.archive.org/web/20060110102932/http://geocities.com/wkaras/gen_cpp/avl_tree.html) and [C AVL TREE "Generic Package"](https://web.archive.org/web/20050221060634/http://geocities.com/wkaras/gen_c/cavl_tree.html) by Walt Karas
  - [A Visual Basic AVL Tree Container Class](http://vbwm.com/art_2001/avltree08/) by Jim Harris
  - [AVL Trees: Tutorial and C++ Implementation](http://cmcrossroads.com/bradapp/ftp/src/libs/C++/AvlTrees.html) by Brad Appleton
  - [Ulm's Oberon Library: AVLTrees](http://www.mathematik.uni-ulm.de/oberon/0.5/lib/man/AVLTrees.html)
  - [The AVL TREE Data Type](https://web.archive.org/web/20051120135525/http://www-old.physik.fu-berlin.de/edv_docu/documentation/xemacs-21.1.4/elib_toc.html#SEC21)
  - [CNAVLTree Class Reference](http://www.comnets.rwth-aachen.de/doc/cncl/classCNAVLTree.html)
  - [GNU libavl](http://www.stanford.edu/~blp/avl/)
  - [AVL-trees - balanced binary trees](https://web.archive.org/web/20051101013055/http://home.earthlink.net/~akonshin/delphi_components.htm) by Alex Konshin
  - [Simulation of AVL Trees](https://web.archive.org/web/20051101013400/http://www.informatik.uni-mannheim.de/~cjk/publications/ed-media98/node11.html)
  - [AVL tree applet](http://www.csi.uottawa.ca/~stan/csi2514/applets/avl/BT.html)
  - [Simulation of AVL Trees (DYNAMIC)](https://web.archive.org/web/20050801080205/http://webpages.ull.es/users/jriera/Docencia/AVL/AVL%20tree%20applet.htm)
  - [AVL, Splay and Red/Black Applet](https://web.archive.org/web/20050801080205/http://webpages.ull.es/users/jriera/Docencia/AVL/AVL%20tree%20applet.htm)

[Category:树结构](https://zh.wikipedia.org/wiki/Category:树结构 "wikilink")