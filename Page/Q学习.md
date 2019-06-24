**Q-学习**是强化学习的一种方法。Q-学习就是要記錄下学习過的政策，因而告诉智能体什么情况下采取什么行动會有最大的獎勵值。Q-学习不需要对环境进行建模，即使是对带有随机因素的转移函数或者奖励函数也不需要进行特别的改动就可以进行。

对于任何有限的[馬可夫決策過程](https://zh.wikipedia.org/wiki/馬可夫決策過程 "wikilink")（FMDP），Q-学习可以找到一个可以最大化所有步骤的奖励期望的策略。\[1\]，在给定一个部分随机的策略和无限的探索时间，Q-学习可以给出一个最佳的动作选择策略。

「Q」这个字母在强化学习中表示一个动作的品质（quality)。\[2\]

## 强化学习

强化学习涉及一个[智慧型代理人](https://zh.wikipedia.org/wiki/智能代理 "wikilink")（），一组「状态」和每个状态下的动作集合。通过执行一个行动\(\,a \in A\)，该智慧型代理人从一个状态转移到另一个状态。在一个特定的状态下执行一个动作时，智慧型代理人可以得到一个奖励。

智慧型代理人的目标是最大化其奖励的總和。这个潜在的奖励是所有未来可以拿到的奖励值的期望的加权和。

例如，假设现在你要上地铁，奖励就是你所花的时间的相反数。一种策略就是车门一开就往上挤，但是还有很多人要下车，逆着人流往上挤也会花费不少时间，这个时候你花的总时间可能是：

  - 0秒钟等待时间+15秒挤上去的时间

在接下来的一天，很巧合，你决定先让别人下车。虽然这个时候看起来等待的时间稍微增加了，但是下车的人也会下的更顺畅，这个时候你可能花的时间是：

  - 5秒等待时间+0秒挤上去的时间。

## 算法

[Q-Learning_Matrix_Initialized_and_After_Training.png](https://zh.wikipedia.org/wiki/File:Q-Learning_Matrix_Initialized_and_After_Training.png "fig:Q-Learning_Matrix_Initialized_and_After_Training.png")

Q-學習演算法，主要內容為計算狀態與行為對應的**品質函式**\(Q\)：

\[Q: S \times A \to \mathbb{R}\] .

在演算法初始化階段，\(Q\)初始值為零(由設計者設計)。在時間\(t\)時，環境的狀態為\(s_{t}\)，智慧型代理人選擇一個行為\(a_t\)，並且獲得獎勵\(r_t\)，環境因為代理人的行為導致狀態改變為新的狀態\(s_{t+1}\)，此時便可根據以下公式更新\(Q\)值。演算法的核心為簡單的利用過去與最近的權重平均值來迭代更新數值。

\[Q^{new}(s_{t},a_{t}) \leftarrow (1-\alpha) \cdot \underbrace{Q(s_{t},a_{t})}_{\text{old value}} + \underbrace{\alpha}_{\text{learning rate}} \cdot  \overbrace{\bigg( \underbrace{r_{t}}_{\text{reward}} + \underbrace{\gamma}_{\text{discount factor}} \cdot \underbrace{\max_{a}Q(s_{t+1}, a)}_{\text{estimate of optimal future value}} \bigg) }^{\text{learned value}}\]

其中 \(r_{t}\) 代表從狀態 \(s_{t}\) 到狀態 \(s_{t+1}\) 所得到的獎勵值, \(\alpha\)
為[學習率](https://zh.wikipedia.org/wiki/學習率 "wikilink")(\(0 < \alpha \le 1\))。\(\gamma\)
為衰減系數(\(0 \le \gamma \le 1\))，當 \(\gamma\) 數值越大時，智慧型代理人便更加重視未來獲得的長期獎勵，
\(\gamma\) 數值越小時，智慧代理人便更加短視近利，只在乎目前可獲得的獎勵。

## 实现

*Q*-学习最简单的实现方式就是将獎勵值存储在一个表格（Q-table）中，但是这种方式受限于状态和动作空间的数目。

### 函数逼近

*Q*-学习可以结合函数逼近。\[3\] 这使得在更大的状态空间中使用 Q-学习，即使状态空间是连续的。

一个解决方案是以使用[人工神经网络来进行函数逼近](../Page/人工神经网络.md "wikilink")。\[4\]。函数逼近的方法在一些问题中会有很好的加速效果，某些时候算法可以通过早期经验的总结可以在一些未出现的状态中依然可以有很好的效果。

## 变种

### 深度Q-学习

该DeepMind系统使用一个深度[卷积神经网络](../Page/卷积神经网络.md "wikilink")。在使用非线性函数逼近的时候，强化学习经常会有不稳定性或者发散性：这种不稳定性来于当前的观测中有比较强的自相关。DeepMind
通过使用经历回放，也就是每次学习的时候并不直接从最近的经历中学习，而是从之前的经历中随机采样来进行训练。

## 参见

  - [强化学习](../Page/强化学习.md "wikilink")

  -
  -
  - [囚徒困境](../Page/囚徒困境.md "wikilink")

  - [博弈论](../Page/博弈论.md "wikilink")

## 参考文献

## 外部链接

  - [Watkins, C.J.C.H. (1989). Learning from Delayed Rewards. PhD
    thesis, Cambridge University, Cambridge,
    England.](http://www.cs.rhul.ac.uk/~chrisw/thesis.html)
  - [Strehl, Li, Wiewiora, Langford, Littman (2006). PAC model-free
    reinforcement
    learning](http://portal.acm.org/citation.cfm?id=1143955)
  - [*Reinforcement Learning: An
    Introduction*](https://web.archive.org/web/20050806080008/http://www.cs.ualberta.ca/~sutton/book/the-book.html)
    by Richard Sutton and Andrew S. Barto, an online textbook. See ["6.5
    Q-Learning: Off-Policy TD
    Control"](https://web.archive.org/web/20081202105235/http://www.cs.ualberta.ca/~sutton/book/ebook/node65.html).
  - [Piqle: a Generic Java Platform for Reinforcement
    Learning](http://sourceforge.net/projects/piqle/)
  - [Reinforcement Learning
    Maze](http://ccl.northwestern.edu/netlogo/models/community/Reinforcement%20Learning%20Maze),
    a demonstration of guiding an ant through a maze using *Q*-learning.
  - [*Q*-learning work by Gerald
    Tesauro](http://www.research.ibm.com/infoecon/paps/html/ijcai99_qnn/node4.html)
  - [*Q*-learning work by Tesauro Citeseer
    Link](https://web.archive.org/web/20080529074412/http://citeseer.comp.nus.edu.sg/352693.html)
    - Doesn't work
  - [*Q*-learning algorithm implemented in processing.org
    language](https://web.archive.org/web/20090616122437/http://github.com/sandropaganotti/processing.org-q-learning-td-lambda-/tree/master)
    - Doesn't work
  - [JavaScript Example with Reward Driven RNN
    learning](https://web.archive.org/web/20180420073911/https://gammastorm.github.io/SinglePages/Brain.html)
  - [A Brain
    Library](https://github.com/gammastorm/gammastorm.github.io/blob/master/myjs/Brain.js)
  - [A Genetics Library used by the
    Brain](https://github.com/gammastorm/gammastorm.github.io/blob/master/myjs/SelfGenetics.js)

[Category:機器學習演算法](https://zh.wikipedia.org/wiki/Category:機器學習演算法 "wikilink")

1.  Francisco S. Melo, ["Convergence of Q-learning: a simple
    proof"](http://users.isr.ist.utl.pt/~mtjspaan/readingGroup/ProofQlearning.pdf)
2.   Computational Neuroscience Lab|date=December 19,
    2015|last=Matiisen|first=Tambet|language=en-US|website=neuro.cs.ut.ee|access-date=2018-04-06}}
3.
4.