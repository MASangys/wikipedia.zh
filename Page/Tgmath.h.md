> 本文内容由[Tgmath.h](https://zh.wikipedia.org/wiki/Tgmath.h)转换而来。


**`tgmath.h`**是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，提供了数学函数的类型通用的宏定义。使用这些宏调用数学函数时，会根据参数自动对应到类型适合的数学函数，其效果类似于[C++](../Page/C++.md "wikilink")的[函数重载](../Page/函数重载.md "wikilink")，使得编程者不必繁琐地去调用数学库函数的单精度、双精度、长双精度、单精度复数、双精度复数、长双精度复数等各个版本。

## 宏定义

### math.h与complex.h共有

一些常见数学函数既在`math.h`有实数版本，也在`complex.h`有复数版本。`tgmath.h`提供了下述类型通用的宏定义：

  - acos
  - asin
  - atan
  - acosh
  - asinh
  - atanh
  - cos
  - sin
  - tan
  - cosh
  - sinh
  - tanh
  - exp
  - log
  - pow
  - sqrt
  - fabs

### math.h专用

对于包含在`math.h`中，但在`complex.h`中没有对应的函数，提供了下述通用类型的宏：

  - atan2
  - cbrt
  - ceil
  - copysign
  - erf
  - erfc
  - exp2
  - expm1
  - fdim
  - floor
  - fma
  - fmax
  - fmin
  - fmod
  - frexp
  - hypot
  - ilogb
  - ldexp
  - lgamma
  - llrint
  - llround
  - log10
  - log1p
  - log2
  - logb
  - lrint
  - lround
  - nearbyint
  - nextafter
  - nexttoward
  - remainder
  - remquo
  - rint
  - round
  - scalbn
  - scalbln
  - tgamma
  - trunc

### complex.h专用

对于包含在`complex.h`中，但在`math.h`中没有对应的函数，提供了下述通用类型的宏：

  - carg
  - cimag
  - conj
  - cproj
  - creal

## 例子

``` cpp
#include <tgmath.h>
int n;
float f;
double d;
long double ld;
float complex fc;
double complex dc;
long double complex ldc;

              //实际调用了：
exp(n);   //exp(n)
acosh(f);   // acoshf(f)
sin(d);   // sin(d)
atan(ld);   // atanl(ld)
log(fc);   // clogf(fc)
sqrt(dc);   // csqrt(dc)
pow(ldc, f);   // cpowl(ldc, f)
remainder(n, n);   // remainder(n, n)
nextafter(d, f);   // nextafter(d, f)
nexttoward(f, ld);   // nexttowardf(f, ld)
copysign(n, ld);   // copysignl(n, ld)
ceil(fc);   // 未定义
rint(dc);   // 未定义
fmax(ldc, ld);   // 未定义
carg(n);   // carg(n)
cproj(f);   // cprojf(f)
creal(d);   // creal(d)
cimag(ld);   // cimagl(ld)
cabs(fc);   // cabsf(fc)
carg(dc);   // carg(dc)
cproj(ldc);   // cprojl(ldc)
```

## 参考文献

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")