<span>在[计算机科学](../Page/计算机科学.md "wikilink")中，**X算法**可用来求解[精确覆盖问题](../Page/精确覆盖问题.md "wikilink")。此名称最早在</span>[高德纳](../Page/高德纳.md "wikilink")的论文《舞蹈链》中出现，他认为此算法是“[试错法中最显而易见](https://zh.wikipedia.org/wiki/试错 "wikilink")”的。\[1\] 就技术而言，X算法是一个[深度优先的](../Page/深度优先搜索.md "wikilink")[不确定性](https://zh.wikipedia.org/wiki/不确定性算法 "wikilink")[回溯算法](https://zh.wikipedia.org/wiki/回溯 "wikilink")。由于X算法是一个解决精确覆盖问题的简洁方法，高德纳希望通过该算法体现[舞蹈链](../Page/舞蹈链.md "wikilink")数据结构的高效性，他把使用后者的X算法称为DLX。\[2\]

X算法用由0和1组成的矩阵*A*来表示精确覆盖问题，目标是选出矩阵的若干行，使得其中的1在所有列中出现且仅出现一次。

X算法的步骤如下：

  -
    {| border="1" cellpadding="5" cellspacing="0"

|

1.  如果矩阵*A*为空（没有任何列），则当前局部解即为问题的一个解，返回成功；否则继续。
2.  根据[一定方法选择第](https://zh.wikipedia.org/wiki/确定性算法 "wikilink")*c*列。如果某一列中没有1，则返回失败，并去除当前局部解中最新加入的行。
3.  选择第*r*行，使得*A*<sub>*r*, *c*</sub> = 1（该步是[不确定的](https://zh.wikipedia.org/wiki/不确定性算法 "wikilink")）。
4.  将第*r*行加入当前局部解中。
5.  对于满足*A*<sub>*r*, *j*</sub> = 1的每一列j，从矩阵*A*中删除所有满足*A*<sub>*i*, *j*</sub> = 1的行，最后再删除第j列。
6.  对所得比*A*小的新矩阵[递归](../Page/递归.md "wikilink")地执行此算法。

|} 选择*r*的不确定性意味着算法将衍生出若干独立的子算法，每个子算法都从其父算法中继承了去除部分行列的*A*矩阵。如果其中有一列全为零，则当前情况无解，子算法返回失败，但不一定意味整个问题无解。

实际上，所有子算法形成了一棵[搜索树](https://zh.wikipedia.org/wiki/搜索树 "wikilink")，其中原问题为根节点，树的第*k*层由子算法在第*k*次所选择的行组成。整个算法即用[回溯法对搜索树](https://zh.wikipedia.org/wiki/回溯法 "wikilink")[深度优先遍历](../Page/深度优先搜索.md "wikilink")。

第二步中，无论用什么方法选择列最终都可以得到解，但有的方法效率明显较高。为减少迭代次数，高德纳建议每次都选取1最少的列。

## 例子

例如，考虑以下精确覆盖问题：全集*U* = {1, 2, 3, 4, 5, 6, 7} ，现有U的六个子集\(\mathcal{S}\) = {*A*, *B*, *C*, *D*, *E*, *F*}，其中：

:\* *A* = {1, 4, 7}；

:\* *B* = {1, 4}；

:\* *C* = {4, 5, 7}；

:\* *D* = {3, 5, 6}；

:\* *E* = {2, 3, 6, 7}；

:\* *F* = {2, 7}。 此问题可用矩阵表示为：

  -
    {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 1 \!\! 2 \!\! 3 \!\! 4 \!\! 5 \!\! 6 \!\! 7 |- \! A | 1 || 0 || 0 || 1 || 0 || 0 || 1 |- \! B | 1 || 0 || 0 || 1 || 0 || 0 || 0 |- \! C | 0 || 0 || 0 || 1 || 1 || 0 || 1 |- \! D | 0 || 0 || 1 || 0 || 1 || 1 || 0 |- \! E | 0 || 1 || 1 || 0 || 0 || 1 || 1 |- \! F | 0 || 1 || 0 || 0 || 0 || 0 || 1 |} 根据高德纳的建议，每次都选取1最少的列，则X算法的执行步骤如下：

**第0层**

第一步：矩阵非空，故算法继续执行。

第二步：1最少的列为第一列，含有两个1。所以选择第一列：

  -
    {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 1 \!\! 2 \!\! 3 \!\! 4 \!\! 5 \!\! 6 \!\! 7 |- \! A | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || 1 || 0 || 0 || 1 |- \! B | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || 1 || 0 || 0 || 0 |- \! C | 0 || 0 || 0 || 1 || 1 || 0 || 1 |- \! D | 0 || 0 || 1 || 0 || 1 || 1 || 0 |- \! E | 0 || 1 || 1 || 0 || 0 || 1 || 1 |- \! F | 0 || 1 || 0 || 0 || 0 || 0 || 1 |} 第三步：A行和B行第一列均为1，所以依次选择这两行继续搜索。

于是算法开始搜索树的第1层第一个分支：

  -
    **第1层：选择第A行**

<!-- end list -->

  -
    第四步：将第A行加入当前局部解。

<!-- end list -->

  -
    第五步：第A行第1、4、7列均为1：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! <span style="color:blue">1</span> \!\! 2 \!\! 3 \!\! <span style="color:blue">4</span> \!\! 5 \!\! 6 \!\! <span style="color:blue">7</span> |- \! <span style="color:red">A</span> | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> |- \! B | 1 || 0 || 0 || 1 || 0 || 0 || 0 |- \! C | 0 || 0 || 0 || 1 || 1 || 0 || 1 |- \! D | 0 || 0 || 1 || 0 || 1 || 1 || 0 |- \! E | 0 || 1 || 1 || 0 || 0 || 1 || 1 |- \! F | 0 || 1 || 0 || 0 || 0 || 0 || 1 |}

  -
    第1列中第A行和第B行为1，第4列中第A、B、C行为1，第7列中第A、C、E、F行为1。所以移除第A、B、C、E、F行和第1、4、7列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! <span style="color:red">1</span> \!\! 2 \!\! 3 \!\! <span style="color:red">4</span> \!\! 5 \!\! 6 \!\! <span style="color:red">7</span> |- \! <span style="color:blue">A</span> | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> |- \! <span style="color:blue">B</span> | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 0 || 0 || 0 |- \! <span style="color:blue">C</span> | 0 || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 1 || 0 || <span style="color:red;font-weight:bold">1</span> |- \! *D* | 0 || 0 || 1 || 0 || 1 || 1 || 0 |- \! <span style="color:blue">E</span> | 0 || 1 || 1 || 0 || 0 || 1 || <span style="color:red;font-weight:bold">1</span> |- \! <span style="color:blue">F</span> | 0 || 1 || 0 || 0 || 0 || 0 || <span style="color:red;font-weight:bold">1</span> |}

  -
    第六步：递归执行算法，回到第一步。矩阵*A*现在只剩下第D行的第2、3、5、6列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 2 \!\! 3 \!\! 5 \!\! 6 |- \! D | 0 || 1 || 1 || 1 |}

  -
    第一步：矩阵非空，故算法继续执行。

<!-- end list -->

  -
    第二步：1最少的列为全是零的第二列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! <span style="color:red">2</span> \!\! 3 \!\! 5 \!\! 6 |- \! D | 0 || 1 || 1 || 1 |}

  -
    所以该分支上算法返回失败，从当前局部解中移除A。

<!-- end list -->

  -
    算法继续搜索第1层的下一个分支：

<!-- end list -->

  -
    **第1层：选择第B行**

<!-- end list -->

  -
    第四步：将第B行加入当前局部解。

<!-- end list -->

  -
    第B行第1列和第4列为1：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! <span style="color:blue">1</span> \!\! 2 \!\! 3 \!\! <span style="color:blue">4</span> \!\! 5 \!\! 6 \!\! 7 |- \! A | 1 || 0 || 0 || 1 || 0 || 0 || 1 |- \! <span style="color:red">B</span> | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 0 || 0 || 0 |- \! C | 0 || 0 || 0 || 1 || 1 || 0 || 1 |- \! D | 0 || 0 || 1 || 0 || 1 || 1 || 0 |- \! E | 0 || 1 || 1 || 0 || 0 || 1 || 1 |- \! F | 0 || 1 || 0 || 0 || 0 || 0 || 1 |}

  -
    第一列中第A行和第B行为1，第4列中第A、B、C、行为1。所以移除第A、B、C行和第1、4列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! <span style="color:red">1</span> \!\! 2 \!\! 3 \!\! <span style="color:red">4</span> \!\! 5 \!\! 6 \!\! 7 |- \! <span style="color:blue">A</span> | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 0 || 0 || 1 |- \! <span style="color:blue">B</span> | <span style="color:red;font-weight:bold">1</span> || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 0 || 0 || 0 |- \! <span style="color:blue">C</span> | 0 || 0 || 0 || <span style="color:red;font-weight:bold">1</span> || 1 || 0 || 1 |- \! D | 0 || 0 || 1 || 0 || 1 || 1 || 0 |- \! E | 0 || 1 || 1 || 0 || 0 || 1 || 1 |- \! F | 0 || 1 || 0 || 0 || 0 || 0 || 1 |}

  -
    递归执行算法，回到第一步。回到矩阵*A*中现在剩下第D、E、F行和第2、3、5、6、7列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 2 \!\! 3 \!\! 5 \!\! 6 \!\! 7 |- \! D | 0 || 1 || 1 || 1 || 0 |- \! E | 1 || 1 || 0 || 1 || 1 |- \! F | 1 || 0 || 0 || 0 || 1 |}

  -
    第一步：矩阵非空，故算法继续执行。

<!-- end list -->

  -
    第二步：1最少的列为第5列，含有一个1。所以选择第5列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 2 \!\! 3 \!\! <span style="color:red">5</span> \!\! 6 \!\! 7 |- \! D | 0 || 1 || <span style="color:red;font-weight:bold">1</span> || 1 || 0 |- \! E | 1 || 1 || 0 || 1 || 1 |- \! F | 1 || 0 || 0 || 0 || 1 |}

  -
    第三步：第5列中第D行为1，所以选择第D行继续搜索。

<!-- end list -->

  -
    算法继续搜索第2层第一个分支：

<!-- end list -->

  -

      -
        **第2层：选择第D行**

<!-- end list -->

  -

      -
        第四步：将第D行加入当前局部解。

<!-- end list -->

  -

      -
        第五步：第D行第3、5、6列为1:

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 2 \!\! <span style="color:blue">3</span> \!\! <span style="color:blue">5</span> \!\! <span style="color:blue">6</span> \!\! 7 |- \! <span style="color:red">D</span> | 0 || <span style="color:red;font-weight:bold">1</span> || <span style="color:red;font-weight:bold">1</span> || <span style="color:red;font-weight:bold">1</span> || 0 |- \! E | 1 || 1 || 0 || 1 || 1 |- \! F | 1 || 0 || 0 || 0 || 1 |}

  -

      -
        第3列中第D、E行为1，第5列中第D行为1，第6列中第D、E行为1。所以移除第D、E行和第3、5、6列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 2 \!\! <span style="color:red">3</span> \!\! <span style="color:red">5</span> \!\! <span style="color:red">6</span> \!\! 7 |- \! <span style="color:blue">D</span> | 0 || <span style="color:red;font-weight:bold">1</span> || <span style="color:red;font-weight:bold">1</span> || <span style="color:red;font-weight:bold">1</span> || 0 |- \! <span style="color:blue">E</span> | 1 || <span style="color:red;font-weight:bold">1</span> || 0 || <span style="color:red;font-weight:bold">1</span> || 1 |- \! F | 1 || 0 || 0 || 0 || 1 |}

  -

      -
        递归执行算法，回到第一步。矩阵*A*现在剩下第F行和第2、7列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 2 \!\! 7 |- \! F | 1 || 1 |}

  -

      -
        第一步：矩阵非空，故算法继续执行。

<!-- end list -->

  -

      -
        第二步：1最少的列为第2列，含有1个1。所以选择第2列。

<!-- end list -->

  -

      -
        第2列中第F行为1，所以选择第F行继续搜索。

<!-- end list -->

  -

      -
        算法继续搜索第3层第一个分支：

<!-- end list -->

  -

      -
        **第3层：选择第F行**

<!-- end list -->

  -

      -
        第四步：将第F行加入当前局部解。

<!-- end list -->

  -

      -
        第F行第2列和第7列为1：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! <span style="color:blue">2</span> \!\! <span style="color:blue">7</span> |- \! <span style="color:red">F</span> | <span style="color:red;font-weight:bold">1</span> || <span style="color:red;font-weight:bold">1</span> |}

  -

      -
        第2列中第F行和第7列中第F行均为1。所以移除第F行和第2、7列：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! <span style="color:red">2</span> \!\! <span style="color:red">7</span> |- \! <span style="color:blue">F</span> | <span style="color:red;font-weight:bold">1</span> || <span style="color:red;font-weight:bold">1</span> |}

  -

      -
        递归执行算法，回到第一步。
        第一步：矩阵*A*为空，算法结束，返回成功。

<!-- end list -->

  -

      -
        当前局部解为第B、D、F行，所以最终解即为：

<!-- end list -->

  -

      -
        {| border="1" cellpadding="5" cellspacing="0"

\! \!\! 1 \!\! 2 \!\! 3 \!\! 4 \!\! 5 \!\! 6 \!\! 7 |- \! B | 1 || 0 || 0 || 1 || 0 || 0 || 0 |- \! D | 0 || 0 || 1 || 0 || 1 || 1 || 0 |- \! F | 0 || 1 || 0 || 0 || 0 || 0 || 1 |}

  -

      -
        也就是说子集{*B*, *D*, *F*}就是全集*U*的一个精确覆盖，每个元素都恰好只出现了一次：*B* = {1, 4}，*D* = {3, 5, 6}，*F* = {2, 7}。

<!-- end list -->

  -

      -
        如果继续搜索，则第3层没有其他可选择的行，算法返回第2层下一个分支。

<!-- end list -->

  -

      -
        第2层没有其他可选择的行，算法返回第1层下一个分支。

<!-- end list -->

  -
    第1层没有其他可选择的行，算法返回第0层下一个分支。

第0层没有其他可选择的行，算法最终停止。

综上所述，用X算法得出本问题只有一个解：\(\mathcal{S}^*\) = {*B*, *D*, *F*}。

## 实现

[高德纳](../Page/高德纳.md "wikilink")主要想通过X算法体现[舞蹈链](../Page/舞蹈链.md "wikilink")的实用性。他发现了使用舞蹈链的X算法效率极高，并把这一过程称为DLX。DLX用矩阵来表示精确覆盖问题，在内部的存储结构为舞蹈链。舞蹈链是一个[双向环形链表](../Page/双向链表.md "wikilink")，每个矩阵中的1都有一个[指针指向其左](../Page/指標_\(電腦科學\).md "wikilink")、右、上、下的1。因为精确覆盖问题中的矩阵一般都是稀疏的，所以舞蹈链中的元素很少，既很省时间，又很省空间。可见使用舞蹈链的DLX算法无论在选择行时还是回溯错误的选择时效率都很高。\[3\]

## 参见

  - [精确覆盖问题](../Page/精确覆盖问题.md "wikilink")
  - [双向链表](../Page/双向链表.md "wikilink")
  - [舞蹈链](../Page/舞蹈链.md "wikilink")

## 参考文献

  - `|ISBN=`和`|isbn=`只需其一 ([帮助](https://zh.wikipedia.org/wiki/Help:引文格式1错误#redundant_parameters "wikilink")) .

## 外部链接

  - [Free Software implementation of Algorithm X in C](https://github.com/blynn/dlx) - uses the Dancing Links optimization. Includes examples for using the library to solve sudoku and logic grid puzzles.
  - [Polycube solver](https://github.com/mlepage/polycube-solver) Program (with Lua source code) to fill boxes with polycubes using Algorithm X.
  - [Knuth's Paper describing the Dancing Links optimization](http://www-cs-faculty.stanford.edu/~uno/papers/dancing-color.ps.gz) - Gzip'd postscript file.

[Category:含有冗余参数的引用的页面](https://zh.wikipedia.org/wiki/Category:含有冗余参数的引用的页面 "wikilink") [Category:搜尋演算法](https://zh.wikipedia.org/wiki/Category:搜尋演算法 "wikilink")

1.
2.
3.