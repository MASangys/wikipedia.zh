**C++ Technical Report 1 (TR1)**[（英文）是](https://zh.wikipedia.org/wiki/:en:C++_Technical_Report_1 "wikilink")**ISO/IEC TR 19768, C++ Library Extensions（函式庫擴充）**的一般名稱。TR1是一份文件，內容提出了對[C++標準函式庫](../Page/C++標準函式庫.md "wikilink")的追加項目。這些追加項目包括了[正则表达式](../Page/正则表达式.md "wikilink")、[智能指针](../Page/智能指针.md "wikilink")、[哈希表](../Page/哈希表.md "wikilink")、[随机数生成器等](https://zh.wikipedia.org/wiki/随机数生成器 "wikilink")。TR1自己並非標準，他是一份草稿文件。然而他所提出的項目大多数已成為下次的官方標準（C++11）的一部分。這份文件的目標在於「為擴充的C++標準函式庫建立更為廣泛的現成實作品」。

## 概要

[編譯器](../Page/編譯器.md "wikilink")並不需要保證包含TR1的組件，因為TR1并非官方标准的一部分。順帶一提，[Boost提供了TR](../Page/Boost_C++_Libraries.md "wikilink")1大部分的實作，數個編譯器／[函式庫](../Page/函式庫.md "wikilink")開發商也已提供了各自的實作版本。

TR1並不代表下一屆標準的全部；舉例而言，下一屆的標準[C++11](../Page/C++11.md "wikilink")包含了[线程](../Page/线程.md "wikilink")的支援。

新的組件被放置在`std::tr1`的[命名空間](https://zh.wikipedia.org/wiki/命名空間 "wikilink")（*[namespace](https://zh.wikipedia.org/wiki/:en:namespace "wikilink")*）裡，以和現在的標準函式庫做區別。

## TR1的內容

TR1包含以下組件：

### 一般用途

#### 引用包装器(Reference Wrapper)

  - 來自Boost.Ref <sup>[1](http://www.boost.org/doc/html/ref.html)</sup>
  - 在<functional> [头文件](../Page/头文件.md "wikilink")中增加了 - `cref`、`ref`、`reference_wrapper`
  - 可以对算法（*algorithms*）或仿函数（*function objects*）传递[引用](../Page/引用.md "wikilink")（*[references](https://zh.wikipedia.org/wiki/:en:Reference#Computer_science "wikilink")*），而不是传递副本。

一個wrapper reference是由模板类`reference_wrapper`產生的實體（*instance*）獲得。wrapper reference近似於C++語言中的引用。

使用`ref`以獲得任何实例的wrapper reference（對常数引用const &使用`cref`）。

wrapper reference對模板函数(template function)尤其有用，當模板参数推導不出引用的時候（範例如下：）

``` cpp
void f( int &r ) { r++; }

template< class Funct, class Arg >
void g( Funct f, Arg t )
{
  f(t);
}

int main()
{
  int i = 0;
  g( f, i );          // 'g< void(int &r), int >' 被实例化
  cout << i << endl;  // 輸出：0

  g( f, ref(i) );     // 'g< void(int &r), reference_wrapper<int> >' 被实例化
  cout << i << endl;  // 輸出：1
}
```

#### 智能指针(Smart Pointers)

  - 基于Boost Smart Pointer library <sup>[2](http://www.boost.org/libs/smart_ptr/smart_ptr.htm)</sup>
  - 由<memory>头文件增加了 - `shared_ptr`、`weak_ptr`等
  - 将*[Resource Acquisition Is Initialization](https://zh.wikipedia.org/wiki/:en:Resource_Acquisition_Is_Initialization "wikilink")*(RAII)手法用於内存管理和異常安全性。

### 仿函数

以下四個模組被加進<functional>標頭檔之中：

#### 多形態的函式包裝器(Polymorphic Function Wrapper)

  - `function`
  - 基於Boost.Function <sup>[3](http://www.boost.org/doc/html/function.html)</sup>
  - 儲存任何使用特定函式簽名的"可呼叫物"（函数指针、成員函式指针、仿函数），不需要可呼叫物確切的型別。

#### 仿函数綁定器(Function Object Binders)

  - `bind`
  - 採納自Boost Bind library <sup>[4](http://www.boost.org/libs/bind/bind.html)</sup>
  - 標準`std::bind1st`和`std::bind2nd`的通用版
  - 將參數綁定給仿函数，並且允許函式的結合。

#### 函式返回型別(Function Return Types)

  - `result_of`
  - 採納自Boost
  - 決定函式呼叫的返回型別

#### mem_fn

  - `mem_fn`
  - 採納自Boost Mem Fn library <sup>[5](http://www.boost.org/libs/bind/mem_fn.html)</sup>
  - 標準`std::mem_fun`和`std::mem_fun_ref`的加強版
  - 允許成員函式指针能夠像仿函数一樣

### 元編程和型別特性(Type Traits)

  - 新的<type_traits>头文件 - `is_pod`、`has_virtual_destructor`、`remove_extent`等
  - 採納自Boost Type Traits library <sup>[6](http://www.boost.org/doc/libs/1_37_0/libs/type_traits/doc/html/index.html)</sup>
  - 允許类编查询以及类别間的轉換，可促進元編程

### 數值工具

#### 随机数產生器

  - 新的<random>头文件 - `variate_generator`、`mersenne_twister`、`poisson_distribution`等
  - 採納自Boost Random Number Library<sup>[7](http://www.boost.org/libs/random/)</sup>

#### 數學函式

  - 新的<cmath>/`<math.h>`头文件 - `beta`、`legendre`等

<!-- end list -->

  - 23種數學函式

| 函数名                                                                                                                       | 函数原型                                                               | 数学表达式                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [连带拉盖尔多项式](https://zh.wikipedia.org/wiki/拉盖尔多项式#广义拉盖尔多项式 "wikilink")                                                      | double **assoc_laguerre**( unsigned n, unsigned m, double x ) ;   | \({L_n}^m(x) = (-1)^m \frac{d^m}{dx^m} L_{n+m}(x), \text{ for } x \ge 0\)                                                                                                                                                                                                                                                                                                                                                                                                             |
| [连带勒让德多项式](https://zh.wikipedia.org/wiki/连带勒让德多项式 "wikilink")                                                             | double **assoc_legendre**( unsigned l, unsigned m, double x ) ;   | \({P_l}^m(x) = (1-x^2)^{m/2} \frac{d^m}{dx^m} P_l(x), \text{ for } x \ge 0\)                                                                                                                                                                                                                                                                                                                                                                                                          |
| [Beta 函数](../Page/Β函数.md "wikilink")                                                                                      | double **beta**( double x, double y ) ;                            | \(\Beta(x,y)=\frac{\Gamma(x) \Gamma(y)}{\Gamma(x+y)}\)                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [第一类完全椭圆积分](https://zh.wikipedia.org/wiki/椭圆积分#第一类完全椭圆积分 "wikilink")                                                      | double **comp_ellint_1**( double k ) ;                           | \(K(k) = F\left(k, \textstyle \frac{\pi}{2}\right) = \int_0^{\frac{\pi}{2}} \frac{d\theta}{\sqrt{1 - k^2 \sin^2 \theta}}\)                                                                                                                                                                                                                                                                                                                                                            |
| [第二类完全椭圆积分](https://zh.wikipedia.org/wiki/椭圆积分#第二类完全椭圆积分 "wikilink")                                                      | double **comp_ellint_2**( double k ) ;                           | \(E\left(k, \textstyle \frac{\pi}{2}\right) = \int_0^{\frac{\pi}{2}} \sqrt{1 - k^2 \sin^2 \theta}\; d\theta\)                                                                                                                                                                                                                                                                                                                                                                         |
| [第三类完全椭圆积分](https://zh.wikipedia.org/wiki/椭圆积分#第三类完全椭圆积分 "wikilink")                                                      | double **comp_ellint_3**( double k , double nu ) ;               | \(\Pi\left(\nu, k, \textstyle \frac{\pi}{2}\right) = \int_0^{\frac{\pi}{2}} \frac{d\theta}{(1 - \nu \sin^2 \theta)\sqrt{1 - k^2 \sin^2 \theta}}\)                                                                                                                                                                                                                                                                                                                                     |
| [合流超几何函数](../Page/合流超几何函数.md "wikilink")                                                                                  | double **conf_hyperg**( double a, double c, double x ) ;          | \(F(a, c, x) = \frac{\Gamma(c)}{\Gamma(a)} \sum_{n = 0}^\infty \frac{\Gamma(a + n) x^n}{\Gamma(c + n) n!}\)                                                                                                                                                                                                                                                                                                                                                                           |
| [第一类变形贝塞尔函数](https://zh.wikipedia.org/wiki/第一类变形贝塞尔函数 "wikilink")                                                         | double **cyl_bessel_i**( double nu, double x ) ;                 | \(I_\nu(x) = i^{-\nu} J_\nu(ix) = \sum_{k = 0}^\infty \frac{(x/2)^{\nu + 2k}}{k! \; \Gamma(\nu + k + 1)}, \text{ for } x \ge 0\)                                                                                                                                                                                                                                                                                                                                                      |
| [第二类变形贝塞尔函数](https://zh.wikipedia.org/wiki/第二类变形贝塞尔函数 "wikilink")                                                         | double **cyl_bessel_j**( double nu, double x ) ;                 | \(J_\nu(x) = \sum_{k = 0}^\infty \frac{(-1)^k \; (x/2)^{\nu + 2k}}{k! \; \Gamma(\nu + k + 1)}, \text{ for } x \ge 0\)                                                                                                                                                                                                                                                                                                                                                                 |
| [第三类变形贝塞尔函数](https://zh.wikipedia.org/wiki/第三类变形贝塞尔函数 "wikilink")                                                         | double **cyl_bessel_k**( double nu, double x ) ;                 | \(\begin{align}
K_\nu(x) & = \textstyle\frac{\pi}{2} i^{\nu+1} \big(J_\nu(ix) + i N_\nu(ix)\big) \\
         & = \begin{cases}
                 \displaystyle \frac{I_{-\nu}(x) - I_\nu(x)}{\sin \nu\pi}, & \text{for } x \ge 0 \text{ and } \nu \notin \mathbb{Z} \\[10pt]
                 \displaystyle \frac{\pi}{2} \lim_{\mu \to \nu} \frac{I_{-\mu}(x) - I_\mu(x)}{\sin \mu\pi}, & \text{for } x < 0 \text{ and } \nu \in \mathbb{Z} \\
             \end{cases}
\end{align}\) |
| [柱诺依曼函数](https://zh.wikipedia.org/wiki/柱诺依曼函数 "wikilink") [第二类柱贝塞尔函数](https://zh.wikipedia.org/wiki/第二类柱贝塞尔函数 "wikilink") | double **cyl_neumann**( double nu, double x ) ;                   | \(N_\nu(x) = \begin{cases}
                 \displaystyle \frac{J_\nu(x)\cos \nu\pi - J_{-\nu}(x)}{\sin \nu\pi}, & \text{for } x \ge 0 \text{ and } \nu \notin \mathbb{Z} \\[10pt]
                 \displaystyle \lim_{\mu \to \nu} \frac{J_\mu(x)\cos \mu\pi - J_{-\mu}(x)}{\sin \mu\pi}, & \text{for } x < 0 \text{ and } \nu \in \mathbb{Z} \\
             \end{cases}\)                                                                                                         |
| [第一类不完全椭圆积分](https://zh.wikipedia.org/wiki/椭圆积分#第一类不完全椭圆积分 "wikilink")                                                    | double **ellint_1**( double k, double phi ) ;                     | \(F(k,\phi)=\int_0^\phi\frac{d\theta}{\sqrt{1-k^2\sin^2\theta}}, \text{ for } \left|k\right| \le 1\)                                                                                                                                                                                                                                                                                                                                                                                  |
| [第二类不完全椭圆积分](https://zh.wikipedia.org/wiki/椭圆积分#第二类不完全椭圆积分 "wikilink")                                                    | double **ellint_2**( double k, double phi ) ;                     | \(\displaystyle E(k,\phi)=\int_0^\phi\sqrt{1-k^2\sin^2\theta}d\theta, \text{ for } \left|k\right| \le 1\)                                                                                                                                                                                                                                                                                                                                                                             |
| [第三类不完全椭圆积分](https://zh.wikipedia.org/wiki/椭圆积分#第三类不完全椭圆积分 "wikilink")                                                    | double **ellint_3**( double k, double nu, double phi ) ;          | \(\Pi(k,\nu,\phi)=\int_0^\phi\frac{d\theta}{\left(1-\nu\sin^2\theta\right)\sqrt{1-k^2\sin^2\theta}}, \text{ for } \left|k\right| \le 1\)                                                                                                                                                                                                                                                                                                                                              |
| [指数积分](../Page/指数积分.md "wikilink")                                                                                        | double **expint**( double x ) ;                                    | \(\mbox{E}i(x)=-\int_{-x}^{\infty} \frac{e^{-t}}{t}\, dt\)                                                                                                                                                                                                                                                                                                                                                                                                                            |
| [埃爾米特多項式](https://zh.wikipedia.org/wiki/埃爾米特多項式 "wikilink")                                                               | double **hermite**( unsigned n, double x ) ;                       | \(H_n(x)=(-1)^n e^{x^2}\frac{d^n}{dx^n}e^{-x^2}\,\!\)                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [超几何级数](https://zh.wikipedia.org/wiki/超几何级数 "wikilink")                                                                   | double **hyperg**( double a, double b, double c, double x ) ;      | \(F(a,b,c,x)=\frac{\Gamma(c)}{\Gamma(a)\Gamma(b)}\sum_{n = 0}^\infty\frac{\Gamma(a+n)\Gamma(b+n)}{\Gamma(c+n)}\frac{x^n}{n!}\)                                                                                                                                                                                                                                                                                                                                                        |
| [拉盖尔多项式](../Page/拉盖尔多项式.md "wikilink")                                                                                    | double **laguerre**( unsigned n, double x ) ;                      | \(L_n(x)=\frac{e^x}{n!}\frac{d^n}{dx^n}\left(x^n e^{-x}\right), \text{ for } x \ge 0\)                                                                                                                                                                                                                                                                                                                                                                                                |
| [勒让德多项式](../Page/勒让德多项式.md "wikilink")                                                                                    | double **legendre**( unsigned l, double x ) ;                      | \(P_l(x) = {1 \over 2^l l!} {d^l \over dx^l } (x^2 -1)^l, \text{ for } \left|x\right| \le 1\)                                                                                                                                                                                                                                                                                                                                                                                         |
| [黎曼zeta函数](https://zh.wikipedia.org/wiki/黎曼zeta函数 "wikilink")                                                             | double **riemann_zeta**( double x ) ;                             | \(\Zeta(x) =
          \begin{cases}
                 \displaystyle \sum_{k = 1}^\infty k^{-x}, & \text{for } x > 1 \\[10pt]
                 \displaystyle 2^x\pi^{x-1}\sin\left(\frac{x\pi}{2}\right)\Gamma(1-x)\zeta(1-x), & \text{for } x < 1 \\
             \end{cases}\)                                                                                                                                                                                                       |
| [第一类球贝塞尔函数](https://zh.wikipedia.org/wiki/第一类球贝塞尔函数 "wikilink")                                                           | double **sph_bessel**( unsigned n, double x ) ;                   | \(j_n(x) = \sqrt{\frac{\pi}{2x}} J_{n+1/2}(x), \text{ for } x \ge 0\)                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [球谐函数](../Page/球谐函数.md "wikilink")                                                                                        | double **sph_legendre**( unsigned l, unsigned m, double theta ) ; | \(Y_{l}^{m}(\theta, 0) \text{ where } Y_{l}^{m}(\theta, \phi) = (-1)^{m}\left[\frac{(2l+1)}{4\pi}\frac{(l-m)!}{(l+m)!}\right]^{1 \over 2} P_{l}^{m}(\cos \theta)e^{\mathrm{i}m\phi}, \text{ for } |m| \leq l\)                                                                                                                                                                                                                                                                        |
| [球诺依曼函数](https://zh.wikipedia.org/wiki/球诺依曼函数 "wikilink") [第二类球贝塞尔函数](https://zh.wikipedia.org/wiki/第二类球贝塞尔函数 "wikilink") | double **sph_neumann**( unsigned n, double x ) ;                  | \(n_n(x) = \left(\frac{\pi}{2x}\right)^{\frac{1}{2}}N_{n+\frac{1}{2}}(x), \text{ for } x \ge 0\)                                                                                                                                                                                                                                                                                                                                                                                      |

### 容器

#### 多元組型別(Tuple Types)

  - 新<tuple>標頭檔 - `tuple`
  - 採納自Boost Tuple library <sup>[8](https://web.archive.org/web/20060526205142/http://www.boost.org/libs/tuple/doc/tuple_users_guide.html)</sup>
  - 標準`std::pair`的擴充
  - 固定尺寸的元素集合，元素可以是不同的[类型](../Page/类型.md "wikilink")

#### 定量陣列(Fixed Size Array)

  - 新<array>標頭檔 - `array`
  - 來自Boost Array library <sup>[9](http://www.boost.org/doc/html/array.html)</sup>
  - 与動態陣列型別，像是標準的`std::vector`相反，是静态的矩阵，但是能够享受类似于begin()等与`std::vector`相似的接口。

#### 哈希表(Hash Tables)

  - 新<unordered_set>、<unordered_map>標頭檔
  - 完全是新的實作，不衍生自既有之程式庫。與既有之程式庫[API並不完全相容](https://zh.wikipedia.org/wiki/API "wikilink")
  - 就如同所有的[哈希表](../Page/哈希表.md "wikilink")提供常數時間的元素查找，但最壞情況查找時間與容器的大小呈線性關係。

### 正規表示式(Regular Expressions)

  - 新<regex>標頭檔 - `regex`、`regex_match`、 `regex_search`、`regex_replace`等
  - 来自Boost RegEx library <sup>[10](http://www.boost.org/doc/libs/1_36_0/libs/regex/doc/html/index.html)</sup>
  - pattern matching library

### C的兼容性

[C++](../Page/C++.md "wikilink")被設計成與[C語言兼容](https://zh.wikipedia.org/wiki/C語言 "wikilink")，但由於不同的標準，C++並不是C的嚴格超集合。TR1試圖調和這些差異，透過對各種標頭檔，如<complex>、<locale>、<cmath>等進行擴充。 這些改變幫助C++能夠與[C99版本的C標準更為一致](https://zh.wikipedia.org/wiki/C99 "wikilink")（並非所有C99都包含於TR1）。

## 關聯項目

  - [C++11](../Page/C++11.md "wikilink")，C++新標準
  - [C99](https://zh.wikipedia.org/wiki/C99 "wikilink")，C語言標準
  - [Boost library](../Page/Boost_C++_Libraries.md "wikilink")，提供大量的C++程式庫，數個包含於TR1
  - [STL標準模板庫](../Page/标准模板库.md "wikilink")，現行[C++標準程式庫的一部分](https://zh.wikipedia.org/wiki/C++標準程式庫 "wikilink")

## 参考文献

  -
  -
## 外部連結

  - [Scott Meyers' Effective C++: TR1 Information](http://aristeia.com/EC3E/TR1_info_frames.html) - 包含TR1提案文件的連結，提供了TR1程式庫的背景以及理由。

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")