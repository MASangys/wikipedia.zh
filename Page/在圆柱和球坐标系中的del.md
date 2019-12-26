下面是常用于[正交](https://zh.wikipedia.org/wiki/正交坐标系 "wikilink")中的一些[向量微积分公式](https://zh.wikipedia.org/wiki/向量微积分 "wikilink")。

## 注释

  - 本文对[球坐标使用标准符号](https://zh.wikipedia.org/wiki/球坐标系 "wikilink")[ISO 80000-2](https://zh.wikipedia.org/wiki/ISO_80000-2 "wikilink")，它取代了[ISO 31-11](https://zh.wikipedia.org/wiki/ISO_31-11#坐标系 "wikilink")，（部分其他来源可能有着颠倒θ和φ的定义）：
      - 极角表示为θ：它是在z轴与连接原点和目标点的径向向量之间的角度。
      - [方位角表示为φ](https://zh.wikipedia.org/wiki/方位角 "wikilink")：它是在x轴与径向向量在xy面上的投影之间的角度。
  - 函数可以用于替代数学函数。这是由于它的[定义域](../Page/定义域.md "wikilink")和[像的缘故](https://zh.wikipedia.org/wiki/像_\(数学\) "wikilink")，经典arctan函数的像为，而atan2定义的像为。

## 坐标转换

|    | 从                                                                                                                                                                                |
| -- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 直角 | 圆柱                                                                                                                                                                               |
| 到  | 直角                                                                                                                                                                               |
| 圆柱 | \(\begin{align}
  \rho &= \sqrt{x^2 + y^2} \\
  \varphi &= \arctan\left(\frac{y}{x}\right) \\
  z &= z
\end{align}\)                                                             |
| 球  | \(\begin{align}
        r &= \sqrt{x^2 + y^2 + z^2} \\
   \theta &= \arctan\left(\frac{\sqrt{x^2 + y^2}}{z}\right) \\
  \varphi &= \arctan\left(\frac{y}{x}\right)
\end{align}\) |

在直角、圆柱和球坐标间的变换\[1\]

## 单位向量转换

<table>
<caption>在直角、圆柱和球坐标系间的单位向量转换，从目的坐标的角度。[2]</caption>
<thead>
<tr class="header">
<th></th>
<th><p>直角</p></th>
<th><p>圆柱</p></th>
<th><p>球</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>直角</p></td>
<td></td>
<td><p><span class="math inline">$\begin{align}
  \hat{\mathbf x} &amp;= \cos\varphi \hat{\boldsymbol \rho} - \sin\varphi \hat{\boldsymbol \varphi} \\
  \hat{\mathbf y} &amp;= \sin\varphi \hat{\boldsymbol \rho} + \cos\varphi \hat{\boldsymbol \varphi} \\
  \hat{\mathbf z} &amp;= \hat{\mathbf z}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
  \hat{\mathbf x} &amp;= \sin\theta \cos\varphi \hat{\mathbf r} + \cos\theta \cos\varphi \hat{\boldsymbol \theta} - \sin\varphi \hat{\boldsymbol \varphi} \\
  \hat{\mathbf y} &amp;= \sin\theta \sin\varphi \hat{\mathbf r} + \cos\theta \sin\varphi \hat{\boldsymbol \theta} + \cos\varphi \hat{\boldsymbol \varphi} \\
  \hat{\mathbf z} &amp;= \cos\theta \hat{\mathbf r} - \sin\theta \hat{\boldsymbol \theta}
\end{align}$</span></p></td>
</tr>
<tr class="even">
<td><p>圆柱</p></td>
<td><p><span class="math inline">$\begin{align}
     \hat{\boldsymbol \rho} &amp;= \frac{x \hat{\mathbf x} + y \hat{\mathbf y}}{\sqrt{x^2 + y^2}} \\
  \hat{\boldsymbol \varphi} &amp;= \frac{-y \hat{\mathbf x} + x \hat{\mathbf y}}{\sqrt{x^2 + y^2}} \\
            \hat{\mathbf z} &amp;= \hat{\mathbf z}
\end{align}$</span></p></td>
<td></td>
<td><p><span class="math inline">$\begin{align}
     \hat{\boldsymbol \rho} &amp;= \sin\theta \hat{\mathbf r} + \cos\theta \hat{\boldsymbol \theta} \\
  \hat{\boldsymbol \varphi} &amp;= \hat{\boldsymbol \varphi} \\
            \hat{\mathbf z} &amp;= \cos\theta \hat{\mathbf r} - \sin\theta \hat{\boldsymbol \theta}
\end{align}$</span></p></td>
</tr>
<tr class="odd">
<td><p>球</p></td>
<td><p><span class="math inline">$\begin{align}
            \hat{\mathbf r} &amp;= \frac{x \hat{\mathbf x} + y \hat{\mathbf y} + z \hat{\mathbf z}}{\sqrt{x^2 + y^2 + z^2}} \\
   \hat{\boldsymbol \theta} &amp;= \frac{\left(x \hat{\mathbf x} + y \hat{\mathbf y}\right) z - \left(x^2 + y^2\right) \hat{\mathbf z}}{\sqrt{x^2 + y^2 + z^2} \sqrt{x^2 + y^2}} \\
  \hat{\boldsymbol \varphi} &amp;= \frac{-y \hat{\mathbf x} + x \hat{\mathbf y}}{\sqrt{x^2 + y^2}}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
            \hat{\mathbf r} &amp;= \frac{\rho \hat{\boldsymbol \rho} + z \hat{\mathbf z}}{\sqrt{\rho^2 + z^2}} \\
   \hat{\boldsymbol \theta} &amp;= \frac{z \hat{\boldsymbol \rho} - \rho \hat{\mathbf z}}{\sqrt{\rho^2 + z^2}} \\
  \hat{\boldsymbol \varphi} &amp;= \hat{\boldsymbol \varphi}
\end{align}$</span></p></td>
<td></td>
</tr>
</tbody>
</table>

<table>
<caption>在直角、圆柱和球坐标系间的单位向量转换，从源坐标的角度。</caption>
<thead>
<tr class="header">
<th></th>
<th><p>直角</p></th>
<th><p>圆柱</p></th>
<th><p>球</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>直角</p></td>
<td></td>
<td><p><span class="math inline">$\begin{align}
  \hat{\mathbf x} &amp;= \frac{x \hat{\boldsymbol \rho} - y \hat{\boldsymbol \varphi}}{\sqrt{x^2 + y^2}} \\
  \hat{\mathbf y} &amp;= \frac{y \hat{\boldsymbol \rho} + x \hat{\boldsymbol \varphi}}{\sqrt{x^2 + y^2}} \\
  \hat{\mathbf z} &amp;= \hat{\mathbf z}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
  \hat{\mathbf x} &amp;= \frac{x \left(\sqrt{x^2 + y^2} \hat{\mathbf r} + z \hat{\boldsymbol \theta}\right) - y \sqrt{x^2 + y^2 + z^2} \hat{\boldsymbol \varphi}}{\sqrt{x^2 + y^2} \sqrt{x^2 + y^2 + z^2}} \\
  \hat{\mathbf y} &amp;= \frac{y \left(\sqrt{x^2 + y^2} \hat{\mathbf r} + z \hat{\boldsymbol \theta}\right) + x \sqrt{x^2 + y^2 + z^2} \hat{\boldsymbol \varphi}}{\sqrt{x^2 + y^2} \sqrt{x^2 + y^2 + z^2}} \\
  \hat{\mathbf z} &amp;= \frac{z \hat{\mathbf r} - \sqrt{x^2 + y^2} \hat{\boldsymbol \theta}}{\sqrt{x^2 + y^2 + z^2}}
\end{align}$</span></p></td>
</tr>
<tr class="even">
<td><p>圆柱</p></td>
<td><p><span class="math inline">$\begin{align}
     \hat{\boldsymbol \rho} &amp;= \cos\varphi \hat{\mathbf x} + \sin\varphi \hat{\mathbf y} \\
  \hat{\boldsymbol \varphi} &amp;= -\sin\varphi \hat{\mathbf x} + \cos\varphi \hat{\mathbf y} \\
            \hat{\mathbf z} &amp;= \hat{\mathbf z}
\end{align}$</span></p></td>
<td></td>
<td><p><span class="math inline">$\begin{align}
     \hat{\boldsymbol \rho} &amp;= \frac{\rho \hat{\mathbf r} + z \hat{\boldsymbol \theta}}{\sqrt{\rho^2 + z^2}} \\
  \hat{\boldsymbol \varphi} &amp;= \hat{\boldsymbol \varphi} \\
            \hat{\mathbf z} &amp;= \frac{z \hat{\mathbf r} - \rho \hat{\boldsymbol \theta}}{\sqrt{\rho^2 + z^2}}
\end{align}$</span></p></td>
</tr>
<tr class="odd">
<td><p>球</p></td>
<td><p><span class="math inline">$\begin{align}
            \hat{\mathbf r} &amp;= \sin\theta \left(\cos\varphi \hat{\mathbf x} + \sin\varphi \hat{\mathbf y}\right) + \cos\theta \hat{\mathbf z} \\
   \hat{\boldsymbol \theta} &amp;= \cos\theta \left(\cos\varphi \hat{\mathbf x} + \sin\varphi \hat{\mathbf y}\right) - \sin\theta \hat{\mathbf z} \\
  \hat{\boldsymbol \varphi} &amp;= -\sin\varphi \hat{\mathbf x} + \cos\varphi \hat{\mathbf y}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
            \hat{\mathbf r} &amp;= \sin\theta \hat{\boldsymbol \rho} + \cos\theta \hat{\mathbf z} \\
   \hat{\boldsymbol \theta} &amp;= \cos\theta \hat{\boldsymbol \rho} - \sin\theta \hat{\mathbf z} \\
  \hat{\boldsymbol \varphi} &amp;= \hat{\boldsymbol \varphi}
\end{align}$</span></p></td>
<td></td>
</tr>
</tbody>
</table>

## Del公式

<table>
<caption>在直角、圆柱和球坐标下的<a href="https://zh.wikipedia.org/wiki/del" title="wikilink">del算子的表格</a></caption>
<thead>
<tr class="header">
<th><p>运算</p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/直角坐标" title="wikilink">直角坐标</a> </p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/圆柱坐标" title="wikilink">圆柱坐标</a> </p></th>
<th><p><a href="https://zh.wikipedia.org/wiki/球坐标" title="wikilink">球坐标</a> ，这里的θ是极角而是方位角</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/向量场" title="wikilink">向量场</a> <span style="font-weight: normal"></span></p></td>
<td><p><span class="math inline">$A_x      \hat{\mathbf x}         + A_y      \hat{\mathbf y}         + A_z    \hat{\mathbf z}$</span></p></td>
<td><p><span class="math inline">$A_\rho   \hat{\boldsymbol \rho}   + A_\varphi   \hat{\boldsymbol \varphi}   + A_z    \hat{\mathbf z}$</span></p></td>
<td><p><span class="math inline">$A_r      \hat{\mathbf r}     + A_\theta \hat{\boldsymbol \theta} + A_\varphi \hat{\boldsymbol \varphi}$</span></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/梯度.md" title="wikilink">梯度</a> <span style="font-weight: normal"></span>[3]</p></td>
<td><p><span class="math inline">${\partial f \over \partial x}\hat{\mathbf x} + {\partial f \over \partial y}\hat{\mathbf y}
+ {\partial f \over \partial z}\hat{\mathbf z}$</span></p></td>
<td><p><span class="math inline">${\partial f \over \partial \rho}\hat{\boldsymbol \rho}
+ {1 \over \rho}{\partial f \over \partial \varphi}\hat{\boldsymbol \varphi}
+ {\partial f \over \partial z}\hat{\mathbf z}$</span></p></td>
<td><p><span class="math inline">${\partial f \over \partial r}\hat{\mathbf r}
+ {1 \over r}{\partial f \over \partial \theta}\hat{\boldsymbol \theta}
+ {1 \over r\sin\theta}{\partial f \over \partial \varphi}\hat{\boldsymbol \varphi}$</span></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/散度.md" title="wikilink">散度</a> <span style="font-weight: normal"></span>[4]</p></td>
<td><p><span class="math inline">${\partial A_x \over \partial x} + {\partial A_y \over \partial y} + {\partial A_z \over \partial z}$</span></p></td>
<td><p><span class="math inline">${1 \over \rho}{\partial \left( \rho A_\rho  \right) \over \partial \rho}
+ {1 \over \rho}{\partial A_\varphi \over \partial \varphi}
+ {\partial A_z \over \partial z}$</span></p></td>
<td><p><span class="math inline">${1 \over r^2}{\partial \left( r^2 A_r \right) \over \partial r}
+ {1 \over r\sin\theta}{\partial \over \partial \theta} \left(  A_\theta\sin\theta \right)
+ {1 \over r\sin\theta}{\partial A_\varphi \over \partial \varphi}$</span></p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/旋度.md" title="wikilink">旋度</a> <span style="font-weight: normal"></span>[5]</p></td>
<td><p><span class="math inline">$\begin{align}
  \left(\frac{\partial A_z}{\partial y} - \frac{\partial A_y}{\partial z}\right) &amp;\hat{\mathbf x} \\
+ \left(\frac{\partial A_x}{\partial z} - \frac{\partial A_z}{\partial x}\right) &amp;\hat{\mathbf y} \\
+ \left(\frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}\right) &amp;\hat{\mathbf z}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
  \left(
    \frac{1}{\rho} \frac{\partial A_z}{\partial \varphi}
  - \frac{\partial A_\varphi}{\partial z}
  \right) &amp;\hat{\boldsymbol \rho} \\
+ \left(
    \frac{\partial A_\rho}{\partial z}
  - \frac{\partial A_z}{\partial \rho}
  \right) &amp;\hat{\boldsymbol \varphi} \\
{}+ \frac{1}{\rho} \left(
    \frac{\partial \left(\rho A_\varphi\right)}{\partial \rho}
  - \frac{\partial A_\rho}{\partial \varphi}
  \right) &amp;\hat{\mathbf z}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
  \frac{1}{r\sin\theta} \left(
    \frac{\partial}{\partial \theta} \left(A_\varphi\sin\theta \right)
  - \frac{\partial A_\theta}{\partial \varphi}
  \right) &amp;\hat{\mathbf r} \\
{}+ \frac{1}{r} \left(
    \frac{1}{\sin\theta} \frac{\partial A_r}{\partial \varphi}
  - \frac{\partial}{\partial r} \left( r A_\varphi \right)
  \right) &amp;\hat{\boldsymbol \theta}  \\
{}+ \frac{1}{r} \left(
    \frac{\partial}{\partial r} \left( r A_{\theta} \right)
  - \frac{\partial A_r}{\partial \theta}
  \right) &amp;\hat{\boldsymbol \varphi}
\end{align}$</span></p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/拉普拉斯算子.md" title="wikilink">拉普拉斯算子</a> <span style="font-weight: normal"></span>[6]</p></td>
<td><p><span class="math inline">${\partial^2 f \over \partial x^2} + {\partial^2 f \over \partial y^2} + {\partial^2 f \over \partial z^2}$</span></p></td>
<td><p><span class="math inline">${1 \over \rho}{\partial \over \partial \rho}\left(\rho {\partial f \over \partial \rho}\right)
+ {1 \over \rho^2}{\partial^2 f \over \partial \varphi^2}
+ {\partial^2 f \over \partial z^2}$</span></p></td>
<td><p><span class="math inline">${1 \over r^2}{\partial \over \partial r}\!\left(r^2 {\partial f \over \partial r}\right)
\!+\!{1 \over r^2\!\sin\theta}{\partial \over \partial \theta}\!\left(\sin\theta {\partial f \over \partial \theta}\right)
\!+\!{1 \over r^2\!\sin^2\theta}{\partial^2 f \over \partial \varphi^2}$</span></p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/向量拉普拉斯算子" title="wikilink">向量拉普拉斯算子</a> <span style="font-weight: normal"></span></p></td>
<td><p><span class="math inline">$\nabla^2 A_x \hat{\mathbf x} + \nabla^2 A_y \hat{\mathbf y} + \nabla^2 A_z \hat{\mathbf z}$</span></p></td>
<td></td>
<td><p>\right) &amp;\hat{\mathbf r} \\ + \left(\nabla^2 A_\theta - \frac{A_\theta}{r^2\sin^2\theta}</p>
<p><code> + \frac{2}{r^2} \frac{\partial A_r}{\partial \theta}</code><br />
<code> - \frac{2 \cos\theta}{r^2\sin^2\theta} \frac{\partial A_\varphi}{\partial \varphi}\right) &amp;\hat{\boldsymbol \theta} \\</code></p>
<p>+ \left(\nabla^2 A_\varphi - \frac{A_\varphi}{r^2\sin^2\theta}</p>
<p><code> + \frac{2}{r^2\sin\theta} \frac{\partial A_r}{\partial \varphi}</code><br />
<code> + \frac{2 \cos\theta}{r^2\sin^2\theta} \frac{\partial A_\theta}{\partial \varphi}\right) &amp;\hat{\boldsymbol \varphi}</code></p>
<p>\end{align}</math> }}</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/物质导数" title="wikilink">物质导数</a>[7] <span style="font-weight: normal"></span></p></td>
<td><p><span class="math inline">$\mathbf{A} \cdot \nabla B_x \hat{\mathbf x} + \mathbf{A} \cdot \nabla B_y \hat{\mathbf y} + \mathbf{A} \cdot \nabla B_z \hat{\mathbf{z}}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
  \left(A_\rho \frac{\partial B_\rho}{\partial \rho}+\frac{A_\varphi}{\rho}\frac{\partial B_\rho}{\partial \varphi}+A_z\frac{\partial B_\rho}{\partial z}-\frac{A_\varphi B_\varphi}{\rho}\right)
  &amp;\hat{\boldsymbol \rho} \\
+ \left(A_\rho \frac{\partial B_\varphi}{\partial \rho} + \frac{A_\varphi}{\rho}\frac{\partial B_\varphi}{\partial \varphi} + A_z\frac{\partial B_\varphi}{\partial z} + \frac{A_\varphi B_\rho}{\rho}\right)
  &amp;\hat{\boldsymbol \varphi}\\
+ \left(A_\rho \frac{\partial B_z}{\partial \rho}+\frac{A_\varphi}{\rho}\frac{\partial B_z}{\partial \varphi}+A_z\frac{\partial B_z}{\partial z}\right)
  &amp;\hat{\mathbf z}
\end{align}$</span></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/张量散度" title="wikilink">张量散度</a> <span style="font-weight: normal"></span></p></td>
<td><p>{\partial x}+\frac{\partial T_{yx}}{\partial y}+\frac{\partial T_{zx}}{\partial z}\right)&amp;\hat{\mathbf x} \\ +\left(\frac{\partial T_{xy}}{\partial x}+\frac{\partial T_{yy}}{\partial y}+\frac{\partial T_{zy}}{\partial z}\right)&amp;\hat{\mathbf y} \\ +\left(\frac{\partial T_{xz}}{\partial x}+\frac{\partial T_{yz}}{\partial y}+\frac{\partial T_{zz}}{\partial z}\right)&amp;\hat{\mathbf z} \end{align}</math> }}</p></td>
<td><p>{\partial\rho}+\frac1\rho\frac{\partial T_{\varphi\rho}}{\partial\varphi}+\frac{\partial T_{z\rho}}{\partial z}+\frac1\rho(T_{\rho\rho}-T_{\varphi\varphi})\right]&amp;\hat{\boldsymbol\rho} \\ +\left[\frac{\partial T_{\rho\varphi}}{\partial\rho}+\frac1\rho\frac{\partial T_{\varphi\varphi}}{\partial\varphi}+\frac{\partial T_{z\varphi}}{\partial z}+\frac1\rho(T_{\rho\varphi}+T_{\varphi\rho})\right]&amp;\hat{\boldsymbol\varphi} \\ +\left[\frac{\partial T_{\rho z}}{\partial\rho}+\frac1\rho\frac{\partial T_{\varphi z}}{\partial\varphi}+\frac{\partial T_{zz}}{\partial z}+\frac{T_{\rho z}}\rho\right]&amp;\hat{\mathbf z} \end{align}</math> }}</p></td>
<td><p>{\partial r}+2\frac{T_{rr}}r+\frac1r\frac{\partial T_{\theta r}}{\partial\theta}+\frac{\cot\theta}rT_{\theta r}+\frac1{r\sin\theta}\frac{\partial T_{\varphi r}}{\partial\varphi}-\frac1r(T_{\theta\theta}+T_{\varphi\varphi})\right]&amp;\hat{\mathbf r} \\ +\left[\frac{\partial T_{r\theta}}{\partial r}+2\frac{T_{r\theta}}r+\frac1r\frac{\partial T_{\theta\theta}}{\partial\theta}+\frac{\cot\theta}rT_{\theta\theta}+\frac1{r\sin\theta}\frac{\partial T_{\varphi\theta}}{\partial\varphi}+\frac{T_{\theta r}}r-\frac{\cot\theta}rT_{\varphi\varphi}\right]&amp;\hat{\boldsymbol\theta} \\ +\left[\frac{\partial T_{r\varphi}}{\partial r}+2\frac{T_{r\varphi}}r+\frac1r\frac{\partial T_{\theta\varphi}}{\partial\theta}+\frac1{r\sin\theta}\frac{\partial T_{\varphi\varphi}}{\partial\varphi}+\frac {T_{\varphi r}}{r}+\frac{\cot\theta}{r} (T_{\theta\varphi}+T_{\varphi\theta})\right]&amp;\hat{\boldsymbol\varphi} \end{align}</math> }}</p></td>
</tr>
<tr class="odd">
<td><p>微分位移 <span style="font-weight: normal"></span>[8]</p></td>
<td><p><span class="math inline">$dx \, \hat{\mathbf x} + dy \, \hat{\mathbf y} + dz \, \hat{\mathbf z}$</span></p></td>
<td><p><span class="math inline">$d\rho \, \hat{\boldsymbol \rho} + \rho \, d\varphi \, \hat{\boldsymbol \varphi} + dz \, \hat{\mathbf z}$</span></p></td>
<td><p><span class="math inline">$dr \, \hat{\mathbf r} + r \, d\theta \, \hat{\boldsymbol \theta} + r \, \sin\theta \, d\varphi \, \hat{\boldsymbol \varphi}$</span></p></td>
</tr>
<tr class="even">
<td><p>微分正规面积 <span style="font-weight: normal"></span></p></td>
<td><p><span class="math inline">$\begin{align}
  dy \, dz &amp;\, \hat{\mathbf x} \\
{} + dx \, dz &amp;\, \hat{\mathbf y} \\
{} + dx \, dy &amp;\, \hat{\mathbf z}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
  \rho \, d\varphi \, dz &amp;\, \hat{\boldsymbol \rho} \\
{} + d\rho \, dz &amp;\, \hat{\boldsymbol \varphi} \\
{} + \rho \, d\rho \, d\varphi &amp;\, \hat{\mathbf z}
\end{align}$</span></p></td>
<td><p><span class="math inline">$\begin{align}
  r^2 \sin\theta \, d\theta \, d\varphi &amp;\, \hat{\mathbf r} \\
{} + r \sin\theta \, dr \, d\varphi &amp;\, \hat{\boldsymbol \theta} \\
{} + r \, dr \, d\theta &amp;\, \hat{\boldsymbol \varphi}
\end{align}$</span></p></td>
</tr>
<tr class="odd">
<td><p>微分体积 <span style="font-weight: normal"></span>[9]</p></td>
<td><p><span class="math inline"><em>d</em><em>x</em> <em>d</em><em>y</em> <em>d</em><em>z</em></span></p></td>
<td><p><span class="math inline"><em>ρ</em> <em>d</em><em>ρ</em> <em>d</em><em>φ</em> <em>d</em><em>z</em></span></p></td>
<td><p><span class="math inline"><em>r</em><sup>2</sup>sin <em>θ</em> <em>d</em><em>r</em> <em>d</em><em>θ</em> <em>d</em><em>φ</em></span></p></td>
</tr>
</tbody>
</table>

  -

    本页对极角采用\(\theta\)对方位角采用\(\varphi\)，这是在物理学中常用的符号。某些来源在这些公式中对方位角采用\(\theta\)对极角采用\(\varphi\)，这是常用数学符号，如果需要这种数学公式，可对换上表公式中的\(\theta\)和\(\varphi\)。

### 非平凡的演算规则

1.  \(\operatorname{div}  \, \operatorname{grad} f          \equiv \nabla \cdot  \nabla f \equiv \nabla^2 f\)
2.  \(\operatorname{curl} \, \operatorname{grad} f          \equiv \nabla \times \nabla f = \mathbf 0\)
3.  \(\operatorname{div}  \, \operatorname{curl} \mathbf{A} \equiv \nabla \cdot  (\nabla \times \mathbf{A}) = 0\)
4.  \(\operatorname{curl} \, \operatorname{curl} \mathbf{A} \equiv \nabla \times (\nabla \times \mathbf{A}) = \nabla (\nabla \cdot \mathbf{A}) - \nabla^2 \mathbf{A}\)（del的[拉格朗日公式](https://zh.wikipedia.org/wiki/三重积#向量三重积 "wikilink")）
5.  \(\nabla^2 (f g) = f \nabla^2 g + 2 \nabla f \cdot \nabla g + g \nabla^2 f\)

## 直角坐标系推导

[<File:Nabla> cartesian.svg](https://zh.wikipedia.org/wiki/File:Nabla_cartesian.svg "fig:File:Nabla cartesian.svg")

\(\begin{align}\operatorname{div} \mathbf A = \lim_{V\to 0} \frac{\iint_{\partial V} \mathbf A \cdot d\mathbf{S}}{\iiint_V dV}

&= \frac{A_x(x+dx)dydz - A_x(x)dydz + A_y(y+dy)dxdz - A_y(y)dxdz + A_z(z+dz)dxdy - A_z(z)dxdy}{dxdydz} \\

&= \frac{\partial A_x}{\partial x} + \frac{\partial A_y}{\partial y} + \frac{\partial A_z}{\partial z}\end{align}\)

\(\begin{align}(\operatorname{curl} \mathbf A)_x = \lim_{S^{\perp \mathbf{\hat x}}\to 0} \frac{\int_{\partial S} \mathbf A \cdot d\mathbf{\ell}}{\iint_{S} dS}
&= \frac{A_z(y+dy)dz - A_z(y)dz + A_y(z)dy - A_y(z+dz)dy }{dydz} \\
&= \frac{\partial A_z}{\partial y} - \frac{\partial A_y}{\partial z}\end{align}\)

\((\operatorname{curl} \mathbf A)_y\)和\((\operatorname{curl} \mathbf A)_z\)的表达式可以同理得出。

## 圆柱坐标系推导

[<File:Nabla> cylindrical2.svg](https://zh.wikipedia.org/wiki/File:Nabla_cylindrical2.svg "fig:File:Nabla cylindrical2.svg")

\[\begin{align}
\operatorname{div} \mathbf A &= \lim_{V\to 0} \frac{\iint_{\partial V} \mathbf A \cdot d\mathbf{S}}{\iiint_V dV} \\
&= \frac{A_\rho(\rho+d\rho)(\rho+d\rho)d\phi dz - A_\rho(\rho)\rho d\phi dz + A_\phi(\phi+d\phi)d\rho dz - A_\phi(\phi)d\rho dz + A_z(z+dz)d\rho (\rho +d\rho/2)d\phi - A_z(z)d\rho (\rho +d\rho/2) d\phi}{\rho d\phi d\rho dz} \\
&= \frac 1 \rho \frac{\partial (\rho A_\rho)}{\partial \rho} + \frac 1 \rho \frac{\partial A_\phi}{\partial \phi} + \frac{\partial A_z}{\partial z}
\end{align}\]

\[\begin{align}
(\operatorname{curl} \mathbf A)_\rho &= \lim_{S^{\perp \boldsymbol{\hat \rho}}\to 0} \frac{\int_{\partial S} \mathbf A \cdot d\mathbf{\ell}}{\iint_{S} dS} \\
&= \frac{A_\phi (z)(\rho+d\rho)d\phi - A_\phi(z+dz)(\rho+d\rho)d\phi + A_z(\phi + d\phi)dz - A_z(\phi)dz}{(\rho+d\rho)d\phi dz} \\
&= -\frac{\partial A_\phi}{\partial z} + \frac{1}{\rho} \frac{\partial A_z}{\partial \phi}
\end{align}\]

\[\begin{align}
(\operatorname{curl} \mathbf A)_\phi &= \lim_{S^{\perp \boldsymbol{\hat \phi}}\to 0} \frac{\int_{\partial S} \mathbf A \cdot d\mathbf{\ell}}{\iint_{S} dS} \\
&= \frac{A_z (\rho)dz - A_z(\rho + d\rho)dz + A_\rho(z+dz)d\rho - A_\rho(z)d\rho}{d\rho dz} \\
&= -\frac{\partial A_z}{\partial \rho} + \frac{\partial A_\rho}{\partial z}
\end{align}\]

\[\begin{align}
(\operatorname{curl} \mathbf A)_z &= \lim_{S^{\perp \boldsymbol{\hat z}}\to 0} \frac{\int_{\partial S} \mathbf A \cdot d\mathbf{\ell}}{\iint_{S} dS} \\
&= \frac{A_\rho(\phi)d\rho - A_\rho(\phi + d\phi)d\rho + A_\phi(\rho + d\rho)(\rho + d\rho)d\phi - A_\phi(\rho)\rho d\phi}{\rho d\rho d\phi} \\
&= -\frac{1}{\rho}\frac{\partial A_\rho}{\partial \phi} + \frac{1}{\rho} \frac{\partial (\rho A_\phi)}{\partial \rho}
\end{align}\]

\[\begin{align}
\operatorname{curl} \mathbf A &= (\operatorname{curl} \mathbf A)_\rho \hat{\boldsymbol \rho} + (\operatorname{curl} \mathbf A)_\phi \hat{\boldsymbol \phi} + (\operatorname{curl} \mathbf A)_z \hat{\boldsymbol z} \\
&= \left(\frac{1}{\rho} \frac{\partial A_z}{\partial \phi} -\frac{\partial A_\phi}{\partial z} \right) \hat{\boldsymbol \rho} + \left(\frac{\partial A_\rho}{\partial z}-\frac{\partial A_z}{\partial \rho} \right) \hat{\boldsymbol \phi} + \frac{1}{\rho}\left(\frac{\partial (\rho A_\phi)}{\partial \rho} - \frac{\partial A_\rho}{\partial \phi} \right) \hat{\boldsymbol z}
\end{align}\]

## 球坐标系推导

[<File:Nabla> spherical2.svg](https://zh.wikipedia.org/wiki/File:Nabla_spherical2.svg "fig:File:Nabla spherical2.svg")

\(\begin{align}\operatorname{div} \mathbf A &= \lim_{V\to 0} \frac{\iint_{\partial V} \mathbf A \cdot d\mathbf{S}}{\iiint_V dV} \\
&= \frac{A_r(r+dr)(r+dr)d\theta\, (r+dr)\sin\theta d\phi - A_r(r)rd\theta\, r\sin\theta d\phi + A_\theta(\theta+d\theta)\sin(\theta + d\theta)\,r dr d\phi - A_\theta(\theta)\sin(\theta)\,r dr d\phi + A_\phi(\phi + d\phi) (r + dr/2)dr d\theta - A_\phi(\phi)(r + dr/2)dr d\theta}{dr\,rd\theta\,r\sin\theta d\phi} \\
&= \frac{1}{r^2}\frac{\partial (r^2A_r)}{\partial r} + \frac{1}{r \sin\theta} \frac{\partial(A_\theta\sin\theta)}{\partial \theta} + \frac{1}{r \sin\theta} \frac{\partial A_\phi}{\partial \phi}
\end{align}\)

\(\begin{align}(\operatorname{curl} \mathbf A)_r = \lim_{S^{\perp \boldsymbol{\hat r}}\to 0} \frac{\int_{\partial S} \mathbf A \cdot d\mathbf{\ell}}{\iint_{S} dS}
&= \frac{A_\theta(\phi)\,r d\theta + A_\phi(\theta + d\theta)\,r \sin(\theta + d\theta) d\phi
  - A_\theta(\phi + d\phi)\,r d\theta - A_\phi(\theta)\,r\sin(\theta) d\phi}{r d\theta\,r\sin\theta d\phi} \\
&= \frac{1}{r\sin\theta}\frac{\partial(A_\phi \sin\theta)}{\partial \theta}
  - \frac{1}{r\sin\theta} \frac{\partial A_\theta}{\partial \phi}\end{align}\)

\(\begin{align}(\operatorname{curl} \mathbf A)_\theta = \lim_{S^{\perp \boldsymbol{\hat \theta}}\to 0} \frac{\int_{\partial S} \mathbf A \cdot d\mathbf{\ell}}{\iint_{S} dS}
&= \frac{A_\phi(r)\,r \sin\theta d\phi + A_r(\phi + d\phi)dr
  - A_\phi(r+dr)(r+dr)\sin\theta d\phi - A_r(\phi)dr}{dr \, r \sin \theta d\phi} \\
&= \frac{1}{r\sin\theta}\frac{\partial A_r}{\partial \phi}
  - \frac{1}{r} \frac{\partial (rA_\phi)}{\partial r}\end{align}\)

\(\begin{align}(\operatorname{curl} \mathbf A)_\phi = \lim_{S^{\perp \boldsymbol{\hat \phi}}\to 0} \frac{\int_{\partial S} \mathbf A \cdot d\mathbf{\ell}}{\iint_{S} dS}
&= \frac{A_r(\theta)dr + A_\theta(r+dr)(r+dr)d\theta
  - A_r(\theta+d\theta)dr - A_\theta(r)\, r d\theta}{(r+dr/2) dr d\theta} \\
&= \frac{1}{r}\frac{\partial(rA_\theta)}{\partial r}
  - \frac{1}{r} \frac{\partial A_r}{\partial \theta}\end{align}\)

\(\operatorname{curl} \mathbf A = (\operatorname{curl} \mathbf A)_r \, \hat{\boldsymbol r} + (\operatorname{curl} \mathbf A)_\theta \, \hat{\boldsymbol \theta} + (\operatorname{curl} \mathbf A)_\phi \, \hat{\boldsymbol \phi} = \frac{1}{r\sin\theta} \left(\frac{\partial(A_\phi \sin\theta)}{\partial \theta}-\frac{\partial A_\theta}{\partial \phi} \right) \hat{\boldsymbol r} +\frac{1}{r} \left(\frac{1}{\sin\theta}\frac{\partial A_r}{\partial \phi} - \frac{\partial (rA_\phi)}{\partial r} \right) \hat{\boldsymbol \theta} + \frac{1}{r}\left(\frac{\partial(rA_\theta)}{\partial r} - \frac{\partial A_r}{\partial \theta} \right) \hat{\boldsymbol \phi}\)

## 单位向量转换公式

坐标参数*u*的单位向量以如下方式定义，*u*的小的正值改变导致位置向量\(\boldsymbol\vec{r}\)在\(\boldsymbol\hat{u}\)方向上的改变。因此：

\[{\partial\boldsymbol\vec{r} \over \partial u}={\partial{s} \over \partial u}{\boldsymbol\hat{u}}\]

这里的*s*是[弧长](../Page/弧长.md "wikilink")参数。

对于两组坐标系\(u_i\)和\(v_j\)，依据[链式法则](../Page/链式法则.md "wikilink")：

\[d\boldsymbol\vec{r}=\sum_{i}{\partial{\boldsymbol\vec{r}}\over\partial u_i}du_i=\sum_{i}{\partial{s}\over\partial u_i}\boldsymbol\hat{u_i}du_i=\sum_{j}{\partial{s}\over\partial v_j}\boldsymbol\hat{v_j}dv_j=\sum_{j}{\partial{s}\over\partial v_j}\boldsymbol\hat{v_j}\sum_{i}{\partial{v_j}\over\partial u_i}du_i=\sum_{i}\sum_{j}{\partial{s}\over\partial v_j}{\partial{v_j}\over\partial u_i}\boldsymbol\hat{v_j}du_i\]

现在，使除了一个之外的所有\(du_i=0\)并在两边除以对应的坐标参数的微分，得到：

\[{\partial{s}\over\partial u_i}\boldsymbol\hat{u_i}=\sum_{j}{\partial{s}\over\partial v_j}{\partial{v_j}\over\partial u_i}\boldsymbol\hat{v_j}\]

## 参见

  - [Del算子](../Page/Nabla算子.md "wikilink")
  - [正交坐标系](https://zh.wikipedia.org/wiki/正交坐标系 "wikilink")
  - [曲线坐标系](https://zh.wikipedia.org/wiki/曲线坐标系 "wikilink")
  - [在圆柱和球坐标中的向量场](https://zh.wikipedia.org/wiki/在圆柱和球坐标中的向量场 "wikilink")

## 引用

## 外部链接

  - [Maxima Computer Algebra system scripts](http://www.csulb.edu/~woollett/) to generate some of these operators in cylindrical and spherical coordinates.
  - [Curl, Divergence, and Gradient in Cylindrical and Spherical Coordinate Systems](https://ece.illinois.edu/webooks/nnrao2009/12%20Rao%20Fundamentals%202009%20appB.pdf).

[Category:向量分析](https://zh.wikipedia.org/wiki/Category:向量分析 "wikilink") [Category:坐标系](https://zh.wikipedia.org/wiki/Category:坐标系 "wikilink")

1.
2.
3.
4.
5.
6.
7.
8.
9.