> 本文内容由[Karatsuba算法](https://zh.wikipedia.org/wiki/Karatsuba算法)转换而来。


**Karatsuba算法**是一种快速[相乘算法](https://zh.wikipedia.org/wiki/相乘算法 "wikilink")，它由[Anatolii Alexeevitch Karatsuba于](https://zh.wikipedia.org/wiki/Anatolii_Alexeevitch_Karatsuba "wikilink")1960年提出并于1962年发表。<ref name="kara1962">

` `

</ref><ref name="kara1995">

` `

</ref>\[1\]它将两个\(n\)位数字相乘所需的一位数乘法次数减少到了至多\(3 n^{\log_23}\approx 3 n^{1.585}\)（如果\(n\)是2的乘方，则正好为\(n^{\log_23}\)）。因此它比要\(n^2\)次个位数乘法的[经典算法要快](https://zh.wikipedia.org/wiki/long_multiplication "wikilink")。例如，对于两个1024位的数相乘（\(n = 1024 = 2^{10}\)），Karatsuba算法需要\(3^{10} = 59049\)次个位数乘法，而经典算法需要\((2^{10})^2 = 1048576\)次。[Toom–Cook算法是此算法更快速的泛型](https://zh.wikipedia.org/wiki/Toom–Cook_multiplication "wikilink")。对于充分大的\(n (n \gg 1)\),[Schönhage–Strassen算法甚至更快](https://zh.wikipedia.org/wiki/Schönhage–Strassen算法 "wikilink")，算法的时间复杂度为\(O(n\log n\log \log n)\)。

值得一提的是，Karatsuba算法是**第一个**比小学二次乘法算法渐进快速的算法。

## 算法

### 基本步骤

Karatsuba的算法主要是用于两个大数的乘法，极大提高了运算效率，相较于普通乘法降低了复杂度，并在其中运用了递归的思想。基本的原理和做法是将位数很多的两个大数\(x\)和\(y\)分成位数较少的数，每个数都是原来\(x\)和\(y\)位数的一半。这样处理之后，简化为做三次乘法，并附带少量的加法操作和移位操作。

## 实现

### 伪代码实现

``` pli
procedure karatsuba(num1, num2)
  if (num1 < 10) or (num2 < 10)
    return num1*num2
  /* calculates the size of the numbers */
  m = max(size_base10(num1), size_base10(num2))
  m2 = m/2
  /* split the digit sequences about the middle */
  high1, low1 = split_at(num1, m2)
  high2, low2 = split_at(num2, m2)
  /* 3 calls made to numbers approximately half the size */
  z0 = karatsuba(low1,low2)
  z1 = karatsuba((low1+high1),(low2+high2))
  z2 = karatsuba(high1,high2)
  return (z2*10^(2*m2))+((z1-z2-z0)*10^(m2))+(z0)
```

### Python代码实现

``` python
#version 2.7.6
def karatsuba(num1, num2):
    if (num1 < 10) or (num2 < 10):
        return num1*num2
    num1Str = str(num1)
    num2Str = str(num2)

    maxLength = max(len(num1Str), len(num2Str))
    splitPosition = maxLength / 2
    high1, low1= int(num1Str[:-splitPosition]), int(num1Str[-splitPosition:])
    high2, low2= int(num2Str[:-splitPosition]), int(num2Str[-splitPosition:])
    z0 = karatsuba(low1, low2)
    z1 = karatsuba((low1 + high1), (low2 + high2))
    z2 = karatsuba(high1, high2)

    return (z2*10**(2*splitPosition)) + ((z1-z2-z0)*10**(splitPosition))+z0
```

## 参考文献

  - [Karatsuba's Algorithm for Polynomial Multiplication](http://www.cs.pitt.edu/~kirk/cs1501/animations/Karatsuba.html)

  -
  - Bernstein, D. J., "[Multidigit multiplication for mathematicians](http://cr.yp.to/papers/m3.pdf)". Covers Karatsuba and many other multiplication algorithms.

[Category:计算机算术算法](https://zh.wikipedia.org/wiki/Category:计算机算术算法 "wikilink") [Category:乘法](https://zh.wikipedia.org/wiki/Category:乘法 "wikilink") [Category:带有伪代码示例的条目](https://zh.wikipedia.org/wiki/Category:带有伪代码示例的条目 "wikilink")

1.  Knuth D.E.（1969）*The art of computer programming. v.2.* Addison-Wesley Publ.Co., 724 pp.