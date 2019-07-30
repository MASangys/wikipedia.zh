[返回](https://zh.wikipedia.org/wiki/ECT理论 "wikilink") 在[牛顿引力场中](https://zh.wikipedia.org/wiki/牛顿引力场 "wikilink")，粒子运动的[拉格朗日量](../Page/拉格朗日量.md "wikilink")为：

  - \(L=\frac{1}{2}m\vec{v}\cdot \vec{v}-m\varphi (\vec{x})\)

其中 \(\vec{v}\)—粒子速度， \(\varphi (\vec{x})\)—牛顿引力势 粒子运动方程由[最小作用量原理](../Page/最小作用量原理.md "wikilink")\(\delta S=\int\limits_{t1}^{t2}{\delta L}dt=0\)决定：

  -
    \(0=\delta S=\int\limits_{t1}^{t2}{\delta L}dt\)
    \(=\int\limits_{t1}^{t2}{\delta \left( \frac{1}{2}m\vec{v}\cdot \vec{v}-m\varphi (\vec{x}) \right)}dt\)
    \(=\int\limits_{t1}^{t2}{\left( m\vec{v}\cdot \delta \vec{v}-m\delta \varphi (\vec{x}) \right)}dt\)
    \(=\int\limits_{t1}^{t2}{\left( m\vec{v}\cdot \frac{d\delta \vec{x}}{dt}-m\nabla \varphi (\vec{x})\cdot \delta \vec{x} \right)}dt\)
    \(=m\vec{v}\cdot \delta \vec{x}|_{t1}^{t2}-\int\limits_{t1}^{t2}{\left( m\frac{d\vec{v}}{dt}\cdot \delta \vec{x}+m\nabla \varphi (\vec{x})\cdot \delta \vec{x} \right)}dt\)
    \(=-\int\limits_{t1}^{t2}{\left( m\frac{d\vec{v}}{dt}+m\nabla \varphi (\vec{x}) \right)}\cdot \delta \vec{x}dt\)

因此有：\(m\frac{d\vec{v}}{dt}+m\nabla \varphi (\vec{x})=0\)即：\(\vec{a}=-\nabla \varphi (\vec{x})\)，这是牛顿引力场中的粒子运动方程。 考虑在[牛顿引力场中无压](https://zh.wikipedia.org/wiki/牛顿引力场 "wikilink")[理想流体](../Page/理想流体.md "wikilink")的运动，则[拉格朗日量](../Page/拉格朗日量.md "wikilink")变为：

  - \(L=\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x}) \right)dV}\)

其中： \(\rho\)—流体质量密度， \(dV\)—体积元。 牛顿引力场本身的拉格朗日量为：

  - \({{L}_{g}}=\int{\left( -\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV}\)

同时考虑[引力场和无压](https://zh.wikipedia.org/wiki/引力场 "wikilink")[理想流体](../Page/理想流体.md "wikilink")，其总[拉格朗日量](../Page/拉格朗日量.md "wikilink")为：

  - \(L=\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x})-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV}\)

为了得到引力场的运动方程，只对\(\varphi (\vec{x})\)取变分我们有：

  -
    \(0=\delta S=\int\limits_{t1}^{t2}{\delta Ldt}\)
    \(=\int\limits_{t1}^{t2}{\delta \int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x})-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV}dt}\)
    \(=\int\limits_{t1}^{t2}{\int{\left( -\rho \delta \varphi (\vec{x})-\frac{1}{4\pi G}\nabla \varphi \cdot \delta (\nabla \varphi ) \right)dV}dt}\)
    \(=\int\limits_{t1}^{t2}{\int{\left( -\rho \delta \varphi (\vec{x})-\frac{1}{4\pi G}\nabla \varphi \cdot \nabla (\delta \varphi ) \right)dV}dt}\)
    \(=\int\limits_{t1}^{t2}{\int{\left( -\rho \delta \varphi (\vec{x})-\frac{1}{4\pi G}(\nabla \cdot (\delta \varphi \nabla \varphi )-\delta \varphi {{\nabla }^{2}}\varphi ) \right)dV}dt}\)
    \(=\int\limits_{t1}^{t2}{\int\limits_{\Sigma }{\left( -\frac{1}{4\pi G}\delta \varphi \nabla \varphi \cdot d\vec{S} \right)}+\int{\left( -\rho \delta \varphi (\vec{x})+\frac{1}{4\pi G}\delta \varphi {{\nabla }^{2}}\varphi  \right)dV}dt}\)，其中\(\Sigma\)-包围体积V的边界
    \(=\int{\left( -\rho +\frac{1}{4\pi G}{{\nabla }^{2}}\varphi  \right)\delta \varphi (\vec{x})dV}dt\)

因此有[引力场运动方程](https://zh.wikipedia.org/wiki/引力场 "wikilink")\({{\nabla }^{2}}\varphi =4\pi G\rho\) 。 这样，我们有包含引力场和无压[理想流体](../Page/理想流体.md "wikilink")的总[拉格朗日密度为](https://zh.wikipedia.org/wiki/拉格朗日密度 "wikilink")：

  - \(\not{L}=\frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x})-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi\)

按照[分析力学原理](https://zh.wikipedia.org/wiki/分析力学 "wikilink")，我们有守恒量---[哈密顿量](https://zh.wikipedia.org/wiki/哈密顿量 "wikilink")（其中：\(\dot{\varphi }=\frac{\partial \varphi }{\partial t}\)）为：

  -
    <math>\\begin{align}

` & H=\int{\left( \sum\limits_{i=1}^{3}``}+\dot{\varphi }\frac{\partial \not{L}}{\partial \dot{\varphi }}-\not{L} \right)}dV \\ `
`& =\int{\sum\limits_{i=1}^{3}``\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x})-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)}dV} \\ `
`& \mathop{{}}^{{}}+\int{\dot{\varphi }\frac{\partial }{\partial \dot{\varphi }}\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x})-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV} \\ `
`& \mathop{{}}^{{}}-\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x})-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV} \\ `
`& =\int{\left( \rho \vec{v}\cdot \vec{v} \right)dV}-\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\rho \varphi (\vec{x})-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV} \\ `
`& =\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}+\rho \varphi (\vec{x})+\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV} \\ `

\\end{align}</math>

其中\(\rho \varphi (\vec{x})\)代表[理想流体](../Page/理想流体.md "wikilink")与[引力场的相互作用能](https://zh.wikipedia.org/wiki/引力场 "wikilink")，可以将它归为[理想流体](../Page/理想流体.md "wikilink")的[能量](../Page/能量.md "wikilink")，也可以把它归为[引力场的能量](https://zh.wikipedia.org/wiki/引力场 "wikilink")，我们现在把它归为引力场的能量，这时需要从引力场运动方程解出：\(\rho =\frac{1}{4\pi G}{{\nabla }^{2}}\varphi\)，代入上式得：

  -
    <math>\\begin{align}

` & H=\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}+\frac{1}{4\pi G}\varphi {{\nabla }^{2}}\varphi +\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV} \\ `
`& =\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}+\frac{1}{4\pi G}\nabla (\varphi \nabla \varphi )-\frac{1}{4\pi G}\nabla \varphi \cdot \nabla \varphi +\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV} \\ `

\\end{align}</math>

  -
    \(=\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV}+\frac{1}{4\pi G}\int\limits_{\Sigma }{\varphi \nabla \varphi \cdot d\vec{S}}\)

其中： \(\Sigma\)为包围体积V边界。体积V是全空间。 一般我们考虑有限区域的[理想流体](../Page/理想流体.md "wikilink")和[引力场的情况](https://zh.wikipedia.org/wiki/引力场 "wikilink")，这时边界是无限远处，无限远处的边界条件是 \(\varphi \nabla \varphi \to O(\frac{1}{{{r}^{3}}})\)，\(d\vec{S}\to O({{r}^{2}})\) ，其积\(\varphi \nabla \varphi \cdot d\vec{S}\to O(\frac{1}{r})\) ，因此\(\int\limits_{\Sigma }{\varphi \nabla \varphi \cdot d\vec{S}}=0\) .考虑到有限区域的理想流体和引力场以及边界条件，我们有：

  - \(H=\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV}\)

在分析力学中我们称[哈密顿量为](https://zh.wikipedia.org/wiki/哈密顿量 "wikilink")[能量](../Page/能量.md "wikilink")，因此又可写为：

  - \(E=\int{\left( \frac{1}{2}\rho \vec{v}\cdot \vec{v}-\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi  \right)dV}\)

哈密顿量是守恒量即\(\frac{dH}{dt}=0\) 也即\(\frac{dE}{dt}=0\) 。 从上面的结果我们看到： \(\frac{1}{2}\rho \vec{v}\cdot \vec{v}\)代表[理想流体](../Page/理想流体.md "wikilink")的[动能密度](https://zh.wikipedia.org/wiki/动能密度 "wikilink")\({{T}_{m}}\) ， \(\frac{1}{8\pi G}\nabla \varphi \cdot \nabla \varphi\)代表[引力能密度](https://zh.wikipedia.org/wiki/引力能密度 "wikilink")\({{T}_{g}}\) ，这时我们看到总[能量密度](../Page/能量密度.md "wikilink")是 \(\varepsilon ={{T}_{m}}-{{T}_{g}}\)，引力能贡献的是[负能](https://zh.wikipedia.org/wiki/负能 "wikilink")。当然，如果将相互作用能归为[理想流体](../Page/理想流体.md "wikilink")的能量，则[引力能贡献的是正能](https://zh.wikipedia.org/wiki/引力能 "wikilink")，数值仍然是\({{T}_{g}}\) 。 [返回](https://zh.wikipedia.org/wiki/ECT理论 "wikilink")

[Category:力學](https://zh.wikipedia.org/wiki/Category:力學 "wikilink")