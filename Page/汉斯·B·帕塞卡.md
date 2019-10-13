**汉斯·巴斯蒂安·帕塞卡**（，\[1\]）是一名车辆动力学专家，尤其是在轮胎动力学领域，他的理论已经成为行业标准。\[2\]\[3\] 他是荷兰[代尔夫特理工大学](../Page/代尔夫特理工大学.md "wikilink")的名誉教授。\[4\]

## 帕塞卡“魔术公式”轮胎模型

[Magic_Formula_Curve.png](https://zh.wikipedia.org/wiki/File:Magic_Formula_Curve.png "fig:Magic_Formula_Curve.png") 帕塞卡在过去的20多年中提出了一系列 [轮胎](https://zh.wikipedia.org/wiki/轮胎 "wikilink") 模拟模型。它们被称为“魔术公式”，因为这些公式的构造并无具体的物理学依据，但却能在很大范围内准确拟合轮胎结构和操控性能的关系，像魔术一样神奇。对于每个轮胎接地面中产生的力或力矩，魔术公式使用10-20个[系数进行描述](https://zh.wikipedia.org/wiki/系数 "wikilink")，形成对实验数据的精确拟合，特别是对横向力，纵向力和回正力矩。在给定的垂直载荷，[外倾角和](https://zh.wikipedia.org/wiki/外倾角 "wikilink")[侧偏角下](https://zh.wikipedia.org/wiki/侧偏角 "wikilink")，这些参数将生成一系列公式，预测接地面中产生的力和力矩的大小。\[5\] 帕塞卡轮胎模型广泛应用与专业车辆动力学仿真和赛车游戏中，因为它们足够精确，易于编程，并且易于求解。\[6\] 帕塞卡模型的一个缺陷是当它嵌入计算程序时，它无法解决低速问题，因为分母中的一个速度项导致公式发散。\[7\]帕塞卡模型的一个替代模型是刷子模型，这是一个可以通过解析方法推导而出的模型，但是要获得好的拟合效果，仍然需要经验曲线，\[8\]\[9\]并且它也没有魔术公式精确。\[10\] 求解一个基于高频魔术公式曲线的模型也是一个问题，这取决与曲线的参数是如何计算的。\[11\] 滑移速度（车辆速度和轮胎接地面速度的差）会发生快速变化，导致模型变成一个[刚性方程](../Page/刚性方程.md "wikilink")，这个能会需要特殊的求解器。

魔术公式的一般形式是：

\[R(k) = d \cdot \sin \left\{ c \cdot \arctan \left[ b\left(1 - e\right)k + e \cdot \arctan\left(bk\right)\right]\right\} \,\]

其中*b*, *c*, *d* ,*e* 是拟合常数，*R*是侧偏量*k*产生的力或力矩。

## 参见

  - [车辆动力学](../Page/车辆动力学.md "wikilink")
  - [郭孔辉](https://zh.wikipedia.org/wiki/郭孔辉 "wikilink")

## 参考文献

[Category:车辆动力学](https://zh.wikipedia.org/wiki/Category:车辆动力学 "wikilink")

1.
2.
3.
4.
5.
6.  <http://www.tut.fi/plastics/tyreschool/moduulit/moduuli_10/hypertext/index.html> MF is "easy to handle, accurate, low effort"
7.  Beckman, Brian (2007) [*Brian Beckman: The Physics in Games - Real-Time Simulation Explained*](http://channel9.msdn.com/Blogs/Charles/Brian-Beckman-The-Physics-in-Games-Real-Time-Simulation-Explained), at *channel9.msdn.com*, Jun 08, 2007, [min. 29:53-33:45](http://mschnlnine.vo.llnwd.net/d1/ch9/4/7/8/4/1/3/Beckman_GamePhysics.wmv) quotation:
8.  Jacob Svendenius, Björn Wittenmark (2003) [*Brush Tire Model with increased Flexibility*](http://www.nt.ntnu.no/users/skoge/prost/proceedings/ecc03/pdfs/317.pdf), In *European Control Conference*, September 2003.
9.
10. <http://www.tut.fi/plastics/tyreschool/moduulit/moduuli_10/hypertext/index.html> "These models are not expected to give a very accurate correspondence with measurement but should predict the qualitative trends."
11. <https://www.edy.es/dev/2011/12/facts-and-myths-on-the-pacejka-curves/>