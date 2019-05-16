`math.h`是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")。提供用于常用高级数学运算的运算函数。

## 包含的函数原型

### [三角函数类](../Page/三角函数.md "wikilink")

  - double sin (double);[正弦](../Page/正弦.md "wikilink")
  - double cos
    (double);[余弦](https://zh.wikipedia.org/wiki/余弦 "wikilink")
  - double tan (double);[正切](../Page/正切.md "wikilink")
  - double asin (double);[反正弦](../Page/反正弦.md "wikilink"),结果介于\[-PI/2,
    PI/2\]
  - double acos (double);[反餘弦](../Page/反餘弦.md "wikilink"),结果介于\[0, PI\]
  - double atan (double); [反正切](../Page/反正切.md "wikilink")(主值),
    结果介于\[-PI/2, PI/2\]
  - double atan2 (double, double);
    [反正切](https://zh.wikipedia.org/wiki/atan2 "wikilink")(整圆值),
    结果介于\[-PI, PI\]
  - double sinh
    (double);[双曲正弦](https://zh.wikipedia.org/wiki/双曲正弦 "wikilink")
  - double cosh
    (double);[双曲余弦](https://zh.wikipedia.org/wiki/双曲余弦 "wikilink")
  - double tanh
    (double);[双曲正切](https://zh.wikipedia.org/wiki/双曲正切 "wikilink")

### [指数](https://zh.wikipedia.org/wiki/指數函數 "wikilink")[对数类](https://zh.wikipedia.org/wiki/对数 "wikilink")

  - double exp
    (double);[指數函數](https://zh.wikipedia.org/wiki/指數函數 "wikilink")
  - double sqrt (double);开平方根
  - double log (double);[自然對數](../Page/自然對數.md "wikilink")
  - double log10 (double);[常用對數](../Page/常用對數.md "wikilink")
  - double pow(double x, double
    y）;计算以x为底数的y次[幂](https://zh.wikipedia.org/wiki/幂 "wikilink")
  - float powf(float x, float y);功能等同于pow，只是输入参数与输出参数皆为单浮点数

### [取整函數](https://zh.wikipedia.org/wiki/取整函數 "wikilink")

  - double ceil (double);取上整
  - double floor (double);取下整

### 绝对值

  - int abs(int); 求整型的绝对值
  - double fabs (double);求[绝对值](../Page/绝对值.md "wikilink")
  - double cabs(struct complex znum) ;求复数的绝对值

### 标准化浮点数

  - double frexp (double f, int \*p); 标准化浮点数, f = x \* 2^p, 已知f求x, p (
    x介于\[0.5, 1\] )
  - double ldexp (double x, int p); 与frexp相反, 已知x, p求f

### 取整与取余数

  - double modf (double, double\*); 将参数的整数部分通过指针回传, 返回小数部分
  - double fmod (double, double); 返回两参数相除的余数

### 其他

  - double hypot(double x, double y);已知直角三角形两个直角边长度，求斜边长度
  - double ldexp(double x, int exponent);计算x\*(2的exponent次幂)
  - double poly(double x, int degree, double coeffs \[\] );计算多项式
  - int matherr(struct exception \*e);数学错误计算处理程序

## 参考

  - 《C & C++ Code Capsules》

[Category:C标准库头文件](https://zh.wikipedia.org/wiki/Category:C标准库头文件 "wikilink")