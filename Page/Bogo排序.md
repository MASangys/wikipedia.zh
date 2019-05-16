在[计算机科学中](../Page/计算机科学.md "wikilink")，**Bogo排序**（bogo-sort）是個既不實用又原始的[排序演算法](https://zh.wikipedia.org/wiki/排序演算法 "wikilink")，其原理等同將一堆卡片拋起，落在桌上後檢查卡片是否已整齊排列好，若非就再拋一次。其名字源自Quantum
bogodynamics，又稱bozo sort、blort
sort或猴子排序（參見[無限猴子定理](../Page/無限猴子定理.md "wikilink")）。

## 实现

以下是偽代碼：

```
 函數 bogosort(陣列)
    當 非 有序(陣列)
       陣列 := 隨機排列(陣列)
```

其平均時間複雜度是 O(n × n\!)，在最壞情況所需時間是無限。它並非一個穩定的算法。

### C

``` c
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void swap(void *a, void *b) {
    unsigned char *p = a;
    unsigned char *q = b;
    unsigned char tmp;
    tmp = *p;
    *p = *q;
    *q = tmp;
}

void shuffle(void *x, int size_elem, int total_elem) {
    int i = total_elem - 1;
    for(i ; i >= 0; --i) {
        int r = rand() % (i+1);
        swap(x + r*size_elem, x + i*size_elem);
    }
}

int main(int argc, char *argv[]) {
    srand((unsigned)time(NULL));
    int l[] = {5,2,1,3,4};
    int n;
    n = sizeof(l)/sizeof(l[0]);

    int isSort = 0;
    int i;
    while(!isSort) {
        shuffle(l, sizeof(l[0]), n);
        isSort = 1;
        for(i = 0; i < n-1; i++) {
            if (l[i] > l[i+1]) {
                isSort = 0;
                break;
            }
        }
    }
}
```

### Python

``` python
from random import shuffle
from itertools import izip, tee

def in_order(my_list):
    """Check if my_list is ordered"""
    it1, it2 = tee(my_list)
    it2.next()
    return all(a<=b for a,b in izip(it1, it2))

def bogo_sort(my_list):
    """Bogo-sorts my_list in place."""
    while not in_order(my_list):
        shuffle(my_list)
```

### Java

``` java
Random random = new Random();

public void bogoSort(int[] n) {
    while(!inOrder(n))shuffle(n);
}

public void shuffle(int[] n) {
    for (int i = 0; i < n.length; i++) {
        int swapPosition = random.nextInt(i + 1);
        int temp = n[i];
        n[i] = n[swapPosition];
        n[swapPosition] = temp;
    }
}

public boolean inOrder(int[] n) {
    for (int i = 0; i < n.length-1; i++) {
        if (n[i] > n[i+1]) return false;
    }
    return true;
}
```

## 运行时间

这个[排序算法基于](../Page/排序算法.md "wikilink")[可能性](https://zh.wikipedia.org/wiki/可能性 "wikilink")。平均而言，让所有元素都被排好序的期望比较次数[渐近于](https://zh.wikipedia.org/wiki/渐近 "wikilink")\((e-1) n!\)，期望的位置交换次数渐近\((n-1) n!\)。\[1\]
期望的位置交换次数增长地比期望比较次数快，是因为只需要比较几对元素就能发现元素是无序的，但是随机地打乱顺序所需要的交换次数却与数据长度成比例。在最差的情况下，交换和比较次数都是无限的，这就像随机投掷硬币可能连续任意次正面向上。

最好的情况是所给的数据是已经排好序的，这种情况下不需要任何位置交换，而比较次数等于\(n-1\)。

对任何固定长度的数据，算法的预期运行时间像[无限猴子定理一样是无限的](https://zh.wikipedia.org/wiki/无限猴子定理 "wikilink")：总有一些可能性让被正确排好序的序列出现。

## 相关算法

### Bozo排序

**Bozo排序**是另一个基于随机数的算法。如果列表是无序的，就随机交换两个元素的位置再检查列表是否有序。

### 量子Bogo排序

计算机科学家之间的一个笑话说：[量子计算机能够以](../Page/量子计算机.md "wikilink") O(n)
的复杂度更有效地实现Bogo排序。这将使用真正的量子的随机性来随机打乱列表。根据量子物理学的[多世界诠释](../Page/多世界诠释.md "wikilink")，量子的随机性分别在无限的宇宙序列中展开，其中的一些将会提供一个排好序的列表。因为需要重新排列的次数虽然很大但仍然是有限的。这个列表接着就被测试出来（需要*n-1*次比较）。接着，计算机就应该实施“摧毁宇宙”的操作，使得在剩下的宇宙中的观察者能够得到一个排好序的列表。

## 參見

  - [暴力搜尋法](https://zh.wikipedia.org/wiki/暴力搜尋法 "wikilink")

## 参考资料

<references/>

## 外部連結

  - [Jargon
    File上的條目](http://www.catb.org/~esr/jargon/html/B/bogo-sort.html)
  - [Bogosort](http://www.lysator.liu.se/~qha/bogosort/): an
    implementation that runs on
    [Unix-like](https://zh.wikipedia.org/wiki/Unix-like "wikilink")
    systems, similar to the standard
    [sort](https://zh.wikipedia.org/wiki/sort_\(Unix\) "wikilink")
    program.
  - [Bogosort](https://archive.is/20130103015524/http://github.com/versesane/algorithms-and-data-structures-in-c/tree/master/bogosort.c):
    Simple C++ implementation of bogosort algorithm

[Category:排序算法](https://zh.wikipedia.org/wiki/Category:排序算法 "wikilink")

1.  H. Gruber, M. Holzer and O. Ruepp: *[Sorting the Slow Way: An
    Analysis of Perversely Awful Randomized Sorting
    Algorithms](http://www.tcs.ifi.lmu.de/~gruberh/data/fun07-final.pdf)
    *, 4th International Conference on Fun with Algorithms,
    Castiglioncello, Italy, 2007, Lecture Notes in Computer Science
    4475, pp. 183-197.