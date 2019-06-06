**NumPy**是[Python語言的一個擴充程式庫](../Page/Python.md "wikilink")。支援高階大量的[維度](../Page/維度.md "wikilink")[陣列與](https://zh.wikipedia.org/wiki/陣列 "wikilink")[矩陣運算](https://zh.wikipedia.org/wiki/矩陣 "wikilink")，此外也針對陣列運算提供大量的[數學](https://zh.wikipedia.org/wiki/數學 "wikilink")[函數](https://zh.wikipedia.org/wiki/函數 "wikilink")[函式庫](../Page/函式庫.md "wikilink")。NumPy的前身**Numeric**最早是由Jim
Hugunin與其它協作者共同開發，2005年，Travis
Oliphant在Numeric中結合了另一個同性質的程式庫Numarray的特色，並加入了其它擴充功能而開發了NumPy。NumPy為開放原始碼並且由許多協作者共同維護開發。

## 特色

NumPy參考[CPython](../Page/CPython.md "wikilink")(一個使用[位元組碼的](https://zh.wikipedia.org/wiki/位元組碼 "wikilink")[直譯器](../Page/直譯器.md "wikilink"))，而在這個Python實作直譯器上所寫的數學[演算法程式碼通常遠比](https://zh.wikipedia.org/wiki/演算法 "wikilink")[編譯過的相同程式碼要來得慢](https://zh.wikipedia.org/wiki/編譯 "wikilink")。為了解決這個難題，NumPy引入了多維陣列以及可以直接有效率地操作多維陣列的[函式與運算子](https://zh.wikipedia.org/wiki/函式 "wikilink")。因此在NumPy上只要能被表示為針對陣列或矩陣運算的演算法，其執行效率幾乎都可以與編譯過的等效[C語言程式碼一樣快](https://zh.wikipedia.org/wiki/C語言 "wikilink")。\[1\]

NumPy提供了與[MATLAB相似的功能與操作方式](../Page/MATLAB.md "wikilink")，因為兩者皆為直譯語言，並且都可以讓使用者在針對陣列或矩陣運算時提供較[純量運算更快的效能](https://zh.wikipedia.org/wiki/純量 "wikilink")。兩者相較之下，MATLAB提供了大量的擴充工具箱(例如[Simulink](../Page/Simulink.md "wikilink"))；而NumPy則是根基於Python這個更現代、完整並且開放原始碼的程式語言之上。此外NumPy也可以結合其它的Python擴充函式庫。例如[SciPy](../Page/SciPy.md "wikilink")，這個函式庫提供了更多與MATLAB相似的功能；以及[Matplotlib](https://zh.wikipedia.org/wiki/Matplotlib "wikilink")，這是一個與MATLAB內建繪圖功能類似的函式庫。而從本質上來說，NumPy與MATLAB同樣是利用[BLAS與](../Page/BLAS.md "wikilink")[LAPACK來提供高效率的線性代數運算](../Page/LAPACK.md "wikilink")。

### ndarray 数据結構

NumPy的核心功能是"ndarray"(即*n*-dimensional
array，多維陣列)数据結構。這是一個表示多維度、同質並且固定大小的陣列物件。而由一個與此陣列相關聯的資料型態物件來描述其陣列元素的資料格式(例如其字元組順序、在記憶體中佔用的字元組數量、整數或者浮點數等等)。

## 語法

  - 建立陣列

<!-- end list -->

``` numpy
>>> import numpy as np
>>> x = np.array([1, 2, 3])
>>> x
array([1, 2, 3])
>>> y = np.arange(10)  # 類似 Python 的 range, 但是回傳 array
>>> y
array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
```

  - 基本運算

<!-- end list -->

``` numpy
>>> a = np.array([1, 2, 3, 6])
>>> b = np.linspace(0, 2, 4)  # 建立一個array, 在0與2的範圍之間讓4個點等分
>>> c = a - b
>>> c
array([ 1.        ,  1.33333333,  1.66666667,  4.        ])
>>> a**2
array([ 1,  4,  9, 36])
```

  - 全域方法

<!-- end list -->

``` numpy
>>> a = np.linspace(-np.pi, np.pi, 100)
>>> b = np.sin(a)
>>> c = np.cos(a)
```

  - 線性代數

<!-- end list -->

``` numpy
>>> from numpy.random import rand
>>> from numpy.linalg import solve, inv
>>> a = np.array([[1,_2,_3],_[3,_4,_6.7],_[5,_9.0,_5|1, 2, 3], [3, 4, 6.7], [5, 9.0, 5]])
>>> a.transpose()
array([[ 1. ,  3. ,  5. ],
       [ 2. ,  4. ,  9. ],
       [ 3. ,  6.7,  5. ]])
>>> inv(a)
array([[-2.27683616,  0.96045198,  0.07909605],
       [ 1.04519774, -0.56497175,  0.1299435 ],
       [ 0.39548023,  0.05649718, -0.11299435]])
>>> b =  np.array([3, 2, 1])
>>> solve(a, b)  # 解方程式 ax = b
array([-4.83050847,  2.13559322,  1.18644068])
>>> c = rand(3, 3)  # 建立一個 3x3 隨機矩陣
>>> c
array([[  3.98732789,   2.47702609,   4.71167924],
       [  9.24410671,   5.5240412 ,  10.6468792 ],
       [ 10.38136661,   8.44968437,  15.17639591]])
>>> np.dot(a, c)  # 矩陣相乘
array([[  53.61964114,   38.8741616 ,   71.53462537],
       [ 118.4935668 ,   86.14012835,  158.40440712],
       [ 155.04043289,  104.3499231 ,  195.26228855]])
```

## 参考资料

## 扩展阅读

  -
  -
## 外部連結

  -
[Category:陣列編程語言](https://zh.wikipedia.org/wiki/Category:陣列編程語言 "wikilink")
[Category:Python库](https://zh.wikipedia.org/wiki/Category:Python库 "wikilink")
[Category:Python科学库](https://zh.wikipedia.org/wiki/Category:Python科学库 "wikilink")

1.