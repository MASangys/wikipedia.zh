**汉克尔变换**是指对任何给定函数 \(f(r)\) 以第一类[贝塞尔函数](../Page/贝塞尔函数.md "wikilink") \(J_{\nu}(kr)\) 作无穷级数展开，贝塞尔函数 \(J_{\nu}(kr)\) 的阶数不变，级数各项 \(k\) 作变化。各项 \(J_{\nu}(kr)\) 前系数 \(F_{\nu}\) 构成了变换函数。对于函数 \(f(r)\), 其 \(\nu\) 阶贝塞尔函数的汉克尔变换（\(k\) 为自变量）为

\[F_{\nu}(k)=\int_{0}^{\infty}f(r)J_{\nu}(kr)rdr\]

其中，\(J_{\nu}\) 为阶数为 \(\nu\) 的第一类贝塞尔函数，\(\nu\ge-1/2\)。对应的，逆汉克尔变换 \(F_{\nu}(k)\) 定义为

\[f(r)=\int_{0}^{\infty}F_{\nu}(k)J_{\nu}(kr)kdk\]

汉克尔变换是一种[积分变换](../Page/积分变换.md "wikilink")，最早由德国数学家 Hermann Hankel 提出，又被称为傅立叶-贝塞尔变换。

## 正交性

贝塞尔函数构成 [正交函数族](https://zh.wikipedia.org/wiki/正交函数族 "wikilink") 权重因子为 *r*:

\[\int_0^\infty J_\nu(kr)J_\nu(k'r)r~\operatorname{d}r = \frac{\delta (k-k')}{k}\]

其中 \(k\) 与 \(k'\) 大于零。

## 与其他函数变换的关系

### 傅立叶变换

零阶汉克尔函数即为圆对称函数的二维傅立叶变换。给定二维函数 \(F(\boldsymbol{r})\) ，径向矢量为 \(\boldsymbol{r}\)，其傅立叶变换为

\[F(\boldsymbol{k})=\iint f(\boldsymbol{r})e^{i\boldsymbol{k}\cdot\boldsymbol{r}}d\boldsymbol{r}\]

不失一般性，选择极坐标 \((r,\theta)\) ，使得矢量 \(\boldsymbol{k}\) 方向指向 \(\theta=0\) 。极坐标下的傅立叶变换写作

\[F(\boldsymbol{k})=\int_{0}^{\infty}\int_{0}^{2\pi}f(r,\theta)e^{ikr\cos\theta}rdrd\theta\]

其中 \(\theta\) 为矢量 \(\boldsymbol{k}\) 与 \(\boldsymbol{r}\) 间夹角。如果函数 \(f\) 恰为圆对称不依赖角变量 \(\theta\) ，\(f\equiv f(r)\) ，对角度 \(\theta\) 的积分可以提出，傅立叶变换写作

\[F(\boldsymbol{k})=F(k)=2\pi\int_{0}^{\infty}f(r)J_{0}(kr)rdr\] 此式恰为 \(f(r)\) 的零阶汉克尔变换的 \(2\pi\) 倍。

## 常见汉克尔变换函数对

| \(f(r)\,\)                                 | \(F_0(k)\,\)                                                                                                                               |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ |
| \(1\,\)                                    | \(\delta(k)/k\,\)                                                                                                                          |
| \(1/r\,\)                                  | \(1/k\,\)                                                                                                                                  |
| \(r\,\)                                    | \(-1/k^3\,\)                                                                                                                               |
| \(r^3\,\)                                  | \(9/k^5\,\)                                                                                                                                |
| \(r^{m}\,\)                                | \(\frac{2^{m+1}\Gamma(m/2+1)}{k^{m+2}\Gamma(-m/2)}\,\) for -2\<Re(m)\<-1/2                                                                 |
| \(\frac{1}{\sqrt{r^2+z^2}}\,\)             | \(\frac{e^{-k|z|}}{k}=\sqrt{\frac{2|z|}{\pi k}}K_{-1/2}(k|z|)\,\)                                                                          |
| \(\frac{1}{r^2+z^2}\,\)                    | \(K_0(kz)\,\), \(z\)可为复数                                                                                                                   |
| \(e^{iar}/r\,\)                            | \(i/\sqrt{ a^2 - k^2} \quad (a>0, k<a) \,\)                                                                                                |
| \(\,\)                                     | \(1/\sqrt{ k^2 - a^2} \quad (a>0, k>a) \,\)                                                                                                |
| \(e^{-a^2r^2/2}\,\)                        | \(\frac{e^{-k^2/2a^2}}{a^2}\)                                                                                                              |
| \(-r^2 f(r)\,\)                            | \(\frac{\operatorname{d}^2 F_0}{\operatorname{d}k^2}+\frac{1}{k}\frac{\operatorname{d}F_0}{\operatorname{d}k}\)                            |
| \(f(r)\,\)                                 | \(F_{\nu}(k)\,\)                                                                                                                           |
| \(r^s\,\)                                  | \(\frac{\Gamma\left(\frac 1 2 (2+\nu+s)\right)}{\Gamma(\tfrac 1 2 (\nu-s))} \frac{2^{s+1}}{k^{s+2}} \,\)                                   |
| \(r^{\nu-2s}\Gamma\left(s,r^2 h\right)\,\) | \(\frac12 \left(\frac k 2\right)^{2s-\nu-2}\gamma\left(1-s+\nu,\frac{k^2}{4h}\right)\,\)                                                   |
| \(e^{-r^2}r^\nu U\left(a,b,r^2\right)\,\)  | \(\frac{\Gamma(2+\nu-b)}{2\Gamma(2+\nu-b+a)}\left(\frac k 2\right)^\nu e^{-\frac{k^2}4}\,_1F_1\left(a,2+a-b+\nu,\frac{k^2}4\right)\)       |
| \(-r^2 f(r)\,\)                            | \(\frac{\operatorname{d}^2 F_\nu}{\operatorname{d}k^2}+\frac{1}{k}\frac{\operatorname{d}F_\nu}{\operatorname{d}k}-\frac{\nu^2}{k^2}F_\nu\) |

## 参见条目

  - [傅里叶变换](../Page/傅里叶变换.md "wikilink")

[Category:积分变换](https://zh.wikipedia.org/wiki/Category:积分变换 "wikilink")