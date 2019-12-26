在电气工程、计算机科学、统计计算和生物信息学中，Baum-Welch算法是用于寻找隐马尔可夫模型(HMM)未知参数的一种[EM算法](../Page/最大期望算法.md "wikilink")，它利用前向-后向算法来计算E-Step的统计信息。

## 历史

Baum-Welch算法是以其发明者Leonard E. Baum和Lloyd R. Welch的名字命名的。Baum-Welch算法和隐马尔可夫模型在20世纪60年代末和70年代初由Baum和他的同事在国防分析研究所的一系列文章中首次描述。HMMs最初主要应用于语音处理领域。20世纪80年代，HMMs开始成为分析生物系统和信息，特别是遗传信息的有用工具。此后，它们成为基因组序列概率建模的重要工具。

## 介绍

[隐马尔可夫模型](../Page/隐马尔可夫模型.md "wikilink")描述了一组“隐含”变量和可观测到的离散随机变量的联合概率。它依赖于假设：第\(i\)个隐藏变量只与第\(i-1\)个隐含变量相关，而与其他先前的隐藏变量无关，而当前观测到的状态仅依赖于当前的隐藏状态。

Baum-Welch算法利用EM算法，在给定一组观测特征向量的情况下，求出隐马尔可夫模型参数的最大似然估计。

记离散的隐含随机变量为\(X_t\)，它总共有\(N\)种状态(\(X_t\)有\(N\)个不同的值)。设\(P(X_t|X_{t-1})\)与时间无关，得到与时间无关的随机变量转移矩阵：

\(A=\{a_{ij}\}=P(X_t=j|X_{t-1}=i)\)
初始的状态(即\(t=1\))分布由下式给出：

\(\pi_i=P(X_1=i)\)

记观测到的变量为\(Y_t\)，总共有\(K\)种取值。同样假设由隐含变量得到的可观测变量与时间无关。在时间\(t\)，由隐含变量\(X_t=j\)得到的可观察变量\(Y_t=y_i\)的概率是:

\(b_j(y_i)=P(Y_t=y_i|X_t=j)\)

由所有可能得\(X_t\)和\(Y_t\)的取值，我们可以得到\(N\times K\)的矩阵\(B=\{b_j(y_i)\}\)，其中\(b_j\)属于所有可能得隐含状态，\(y_i\)属于所有的可观测状态。

给出可观测序列：\(Y=(Y_1=y_1, Y_2=y_2, \cdots, Y_T=y_T)\)。

我们可以用\(\theta(A, B, \pi)\)描述隐马尔科夫链，Baum-Welch算法寻找\(\theta^*=\arg \underset{\theta}{max}P(Y|\theta)\)的局部极大值，也就是能够使得观测到的序列出现的概率最大的HMM的参数\(\theta\)。

## 算法

初始化参数\(\theta(A, B, \pi)\)，可以随机初始化，或者根据先验知识初始化。

#### 前向过程

记\(\alpha_i(t)=P(Y_1=y_1, Y_2=y_2, \cdots, Y_t=y_t, X_t=i|\theta)\)是参数\(\theta\)的条件下，观测的序列是\(y_1, y_2, \cdots, y_t\)，时刻\(t\)的状态是\(i\)的概率。可以通过递归计算：

1.  \(a_i(1)=\pi_i b_i(y_1)\)
2.  \(\alpha_i(t+1) = b_i (y_{t+1})\sum_{j=1}^N\alpha_j(t)a_{ji}\)

#### 后向过程

记\(\beta_i(t) = P(Y_{t+1}=y_{t+1}, \cdots, Y_T=y_T|X_t=i, \theta)\)是参数是\(\theta\)，在时刻\(t\)的状态是\(i\)的条件下，余下部分的观测序列是\(y_{t+1}, \cdots, y_{T}\)的概率。

1.  \(\beta_i(T)=1\)
2.  \(\beta_i(t) = \sum_{j=1}^N \beta_j(t+1)a_{ij}b_j(y_{t+1})\)

#### 更新

  - 根据贝叶斯公式计算临时变量。
      - 在给定观测序列\(Y\)和参数\(\theta\)的情况下，在时间\(t\)状态是\(i\)的概率\[\gamma_i(t) = P(X_t=i|Y, \theta) = \frac{P(X_t=i, Y|\theta)}{P(Y|\theta)}=\frac{\alpha_i(t)\beta_i(t)}{\sum_{j=1}^N \alpha_j(t)\beta_j(t)}\]
      - 在给定观测序列\(Y\)和参数\(\theta\)的情况下，在时间\(t\)状态是\(i\)，在时间\(t+1\)状态是\(j\)的概率\[\xi_{ij}(t) = P(X_t=i, X_{t+1}=j|Y, \theta) = \frac{P(X_t=t, X_{t+1}=j, Y|\theta)}{P(Y|\theta)}=\frac{\alpha_i(t)\alpha_{ij}\beta_j(t+1)b_j(y_t+1)}{\sum_{i=1}^N\sum_{j=1}^N\alpha_i(t) \alpha_{ij} \beta_j(y_{t+1})}\]
      - \(\gamma_i(t)\)和\(\xi_{ij}(t)\)的分母一样，表示给定参数\(\theta\)得到观测序列\(Y\)的概率。

<!-- end list -->

  - 然后更新参数：
      - \(\pi_i^*=\gamma_i(1)\)，在时间\(1\)状态是\(i\)的概率
      - \(\alpha_{ij}^* = \frac{\sum_{t-1}^{T-1}\xi_{ij}(t)}{\sum_{t=1}^{T-1}\gamma_i(t)}\)，等于期望的从状态\(i\)转换到状态\(j\)的数量除以从状态\(i\)开始的转换的总数。
      - \(b_i^*(v_k) = \frac{\sum_{t=1}^T 1_{y_t=v_k} \gamma_i(t)}{\sum_{t=1}^T\gamma_i(t)}\)，其中<math>1_{y_t=v_k} =

\\begin{cases} 1\\text{ if } y_t=v_k, \\\\ 0\\text{ otherwise} \\end{cases}</math>，\(b_i^*(v_k)\)是期望的从状态\(i\)得到的观察值等于\(v_k\)的数量除以从 状态\(i\)开始的转换的总数。

  - 重复上面的步骤直到收敛。算法可能过拟合，也不保证收敛到全局最大值。
  - 其中计算\(\gamma_i(t)\)和\(\xi_{ij}(t)\)相当于EM算法的E-Step，而更新\(\pi_i^* \alpha_{ij}^*, b_i^*(v_k)\)的过程相当于EM算法的M-Step。

## 例子

假设我们有一只会下蛋的鸡，每天中午我们都会去拾取鸡蛋。而鸡是否下蛋依赖于一些未知的隐含状态，这里我们简单的假设只有两种隐含状态会决定它是否下蛋。我们不知道这些隐含状态的初始值，不知道他们之间的转换概率，也不知道在每种状态下鸡会下蛋的概率。我们随机初始化他们来开始猜测。

<table>
<tbody>
<tr class="odd">
<td><table>
<caption>Transition</caption>
<thead>
<tr class="header">
<th></th>
<th><p>State 1</p></th>
<th><p>State 2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.5</p></td>
<td><p>0.5</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>0.3</p></td>
<td><p>0.7</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<caption>Emission</caption>
<thead>
<tr class="header">
<th></th>
<th><p>No Eggs</p></th>
<th><p>Eggs</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.3</p></td>
<td><p>0.7</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>0.8</p></td>
<td><p>0.2</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<caption>Initial</caption>
<thead>
<tr class="header">
<th><p>State 1</p></th>
<th><p>0.2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 2</p></td>
<td><p>0.8</p></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

假设我们得到的观测序列是(E=eggs, N=no eggs): N, N, N, N, N, E, E, N, N, N。

这样我们同时也得到了观测状态的转移：NN, NN, NN, NN, NE, EE, EN, NN, NN。

通过上面的信息来重新估计状态转移矩阵。

| Observed sequence | Probability of sequence and state is  then | Highest Probability of observing that sequence |
| ----------------- | ------------------------------------------ | ---------------------------------------------- |
| NN                | 0.024                                      | 0.3584                                         |
| NN                | 0.024                                      | 0.3584                                         |
| NN                | 0.024                                      | 0.3584                                         |
| NN                | 0.024                                      | 0.3584                                         |
| NE                | 0.006                                      | 0.1344                                         |
| EE                | 0.014                                      | 0.0490                                         |
| EN                | 0.056                                      | 0.0896                                         |
| NN                | 0.024                                      | 0.3584                                         |
| NN                | 0.024                                      | 0.3584                                         |
| Total             | 0.22                                       | 2.4234                                         |

重新估计\(S_1\)到\(S_2\)的转移概率为\(\frac{0.22}{2.4234} = 0.0908\)(下表中的"Pseudo probabilities")，重新计算所有的转移概率，得到下面的转移矩阵：

<table>
<tbody>
<tr class="odd">
<td><table>
<caption>Old Transition Matrix</caption>
<thead>
<tr class="header">
<th></th>
<th><p>State 1</p></th>
<th><p>State 2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.5</p></td>
<td><p>0.5</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>0.3</p></td>
<td><p>0.7</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<caption>New Transition Matrix (Pseudo Probabilities)</caption>
<thead>
<tr class="header">
<th></th>
<th><p>State 1</p></th>
<th><p>State 2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.0598</p></td>
<td><p>0.0908</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>0.2179</p></td>
<td><p>0.9705</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<caption>New Transition Matrix (After Normalization)</caption>
<thead>
<tr class="header">
<th></th>
<th><p>State 1</p></th>
<th><p>State 2</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.3973</p></td>
<td><p>0.6027</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>0.1833</p></td>
<td><p>0.8167</p></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

接下来重新估计Emission Matrix:

<table>
<thead>
<tr class="header">
<th><p>Observed Sequence</p></th>
<th><p>Highest probability of observing that sequence<br />
if E is assumed to come from </p></th>
<th><p>Highest Probability of observing that sequence</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>NE</p></td>
<td><p>0.1344</p></td>
<td><p>,</p></td>
</tr>
<tr class="even">
<td><p>EE</p></td>
<td><p>0.0490</p></td>
<td><p>,</p></td>
</tr>
<tr class="odd">
<td><p>EN</p></td>
<td><p>0.0560</p></td>
<td><p>,</p></td>
</tr>
<tr class="even">
<td><p>Total</p></td>
<td><p>0.2394</p></td>
<td></td>
</tr>
</tbody>
</table>

重新估计从隐含状态\(S_1\)得到观察结果E的概率是\(\frac{0.2394}{0.2730} = 0.8769\)，得到新的Emission Matrix

<table>
<tbody>
<tr class="odd">
<td><table>
<caption>Old Emission Matrix</caption>
<thead>
<tr class="header">
<th></th>
<th><p>No Eggs</p></th>
<th><p>Eggs</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.3</p></td>
<td><p>0.7</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>0.8</p></td>
<td><p>0.2</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<caption>New Emission Matrix (Estimates)</caption>
<thead>
<tr class="header">
<th></th>
<th><p>No Eggs</p></th>
<th><p>Eggs</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.0876</p></td>
<td><p>0.8769</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>1.0000</p></td>
<td><p>0.7385</p></td>
</tr>
</tbody>
</table></td>
<td><table>
<caption>New Emission Matrix (After Normalization)</caption>
<thead>
<tr class="header">
<th></th>
<th><p>No Eggs</p></th>
<th><p>Eggs</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>State 1</p></td>
<td><p>0.0908</p></td>
<td><p>0.9092</p></td>
</tr>
<tr class="even">
<td><p>State 2</p></td>
<td><p>0.5752</p></td>
<td><p>0.4248</p></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

为了估计初始状态的概率，我们分别假设序列的开始状态是\(S_1\)和\(S_2\)，然后求出最大的概率，再归一化之后更新初始状态的概率。

一直重复上面的步骤，直到收敛。

## 代码

``` python3 numberLines
from hmmlearn import hmm
import numpy as np

X = np.array([1, 1, 1, 1, 1, 0, 0, 1, 1, 1]).reshape(-1, 1)
model = hmm.GaussianHMM(n_components=2, covariance_type='full')
model.fit(X)

model.monitor_.history

# pi
model.startprob_

# state transform matrix
model.transmat_

# emission_matrix
np.power(np.e, model._compute_log_likelihood(np.unique(X).reshape(-1, 1)))
```

[Category:估计理论](https://zh.wikipedia.org/wiki/Category:估计理论 "wikilink") [Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")