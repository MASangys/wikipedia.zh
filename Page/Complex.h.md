**`complex.h`**是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，提供了[复数算术所需要的宏定义与函数声明](../Page/复数_\(数学\).md "wikilink")。

## 类型

[C99及](https://zh.wikipedia.org/wiki/C99 "wikilink")[C++11](../Page/C++11.md "wikilink")都规定了[关键字](https://zh.wikipedia.org/wiki/关键字 "wikilink")</code>_Complex</code>。因而有3种复数类型：

  - `double _Complex`
  - `float _Complex`
  - `long double _Complex`

次序不是必须遵守的，比如float _Complex也可以写成_Complex float。

`_Complex_I`扩展为类型为`const float _Complex`的常量值，其值为虚数单位。

[C99规定](https://zh.wikipedia.org/wiki/C99 "wikilink")`complex`作为宏扩展为`_Complex`。但C++未定义`complex`宏。

[gcc仅支持complex](https://zh.wikipedia.org/wiki/gcc "wikilink") type，不支持imaginary type。因此宏`I`扩展为`_Complex_I`。

定义复数变量时，可以如此：

``` c
double _Complex v1=3.1+5*I;
double _Complex v2=3.2+5*_Complex_I;
float _Complex v3=4.6f+12.0IF;  //必须先写i，后写f
_Complex float v4=8.2f+2.3if;
long double _Complex v5=1.23456789L+3.456789999iL; //必须先写i，后写L
```

也可以用CMPLX/CMPLXF/CMPLXL宏来表示相应复数表达式。

## 函数

  - [複三角函数](https://zh.wikipedia.org/wiki/三角函數 "wikilink")
      - [反余弦](https://zh.wikipedia.org/wiki/反余弦 "wikilink")
          - cacos [双精度版本](https://zh.wikipedia.org/wiki/双精度 "wikilink")
          - cacosf [单精度版本](https://zh.wikipedia.org/wiki/单精度 "wikilink")
          - cacosl [长双精度版本](https://zh.wikipedia.org/wiki/长双精度 "wikilink")
      - [反正弦](../Page/反正弦.md "wikilink")
          - casin 双精度版本
          - casinf 单精度版本
          - casinl 长双精度版本
      - [反正切](../Page/反正切.md "wikilink")
          - catan 双精度版本
          - catanf 单精度版本
          - catanl 长双精度版本
      - [余弦](https://zh.wikipedia.org/wiki/余弦 "wikilink")
          - ccos 双精度版本
          - ccosf 单精度版本
          - ccosl 长双精度版本
      - [正弦](../Page/正弦.md "wikilink")
          - csin 双精度版本
          - csinf 单精度版本
          - csinl 长双精度版本
      - [正切](../Page/正切.md "wikilink")
          - ctan 双精度版本
          - ctanf 单精度版本
          - ctanl 长双精度版本
  - [复双曲函数](../Page/双曲函数.md "wikilink")
      - 反双曲余弦
          - cacosh 双精度版本
          - cacoshf 单精度版本
          - cacoshl 长双精度版本
      - 反双曲正弦
          - casinh 双精度版本
          - casinhf 单精度版本
          - casinhl 长双精度版本
      - 反双曲正切
          - catanh 双精度版本
          - catanhf 单精度版本
          - catanhl 长双精度版本
      - 双曲余弦
          - ccosh 双精度版本
          - ccoshf 单精度版本
          - ccoshl 长双精度版本
      - 双曲正弦
          - csinh 双精度版本
          - csinhf 单精度版本
          - csinhl 长双精度版本
      - 双曲正切
          - ctanh 双精度版本
          - ctanhf 单精度版本
          - ctanhl 长双精度版本
  - [指数与](https://zh.wikipedia.org/wiki/指数 "wikilink")[对数函数](https://zh.wikipedia.org/wiki/对数 "wikilink")
      - 指数
          - cexp 双精度版本
          - cexpf 单精度版本
          - cexpl 长双精度版本
      - [自然对数](https://zh.wikipedia.org/wiki/自然对数 "wikilink")
          - clog 双精度版本
          - clogf 单精度版本
          - clogl 长双精度版本
  - [幂运算和](https://zh.wikipedia.org/wiki/幂 "wikilink")[绝对值](../Page/绝对值.md "wikilink")
      - 绝对值
          - cabs 双精度版本
          - cabsf 单精度版本
          - cabsl 长双精度版本
      - 幂运算
          - cpow 双精度版本
          - cpowf 单精度版本
          - cpowl 长双精度版本
      - [平方根](../Page/平方根.md "wikilink")
          - csqrt 双精度版本
          - csqrtf 单精度版本
          - csqrtl 长双精度版本
  - 操作
      - [相角](https://zh.wikipedia.org/wiki/相位 "wikilink")
          - carg 双精度版本
          - cargf 单精度版本
          - cargl 长双精度版本
      - [虚部](https://zh.wikipedia.org/wiki/複數_\(數學\) "wikilink")
          - cimag 双精度版本
          - cimagf 单精度版本
          - cimagl 长双精度版本
      - [复共轭](https://zh.wikipedia.org/wiki/复共轭 "wikilink")
          - cong 双精度版本
          - congf 单精度版本
          - congl 长双精度版本
      - [黎曼球面](../Page/黎曼球面.md "wikilink")[投影](../Page/投影.md "wikilink")
          - cproj 双精度版本
          - cprojf 单精度版本
          - cprojl 长双精度版本
      - [实部](https://zh.wikipedia.org/wiki/複數_\(數學\) "wikilink")
          - creal 双精度版本
          - crealf 单精度版本
          - creall 长双精度版本

## 参考文献

  - C11 n1570 标准 7.3节

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")