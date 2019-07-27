**GAMESS (美国版)**
是一个常用的[计算化学](../Page/计算化学.md "wikilink")[软件](../Page/软件.md "wikilink")，其全名为**通用原子分子电子结构系统**（**General
Atomic and Molecular Electronic Structure
System**）。\[1\]\[2\]\[3\]\[4\]<ref>2010年3月GAMESS列出的贡献成员包括: Michael
Schmidt, Kimberly Baldridge, Jerry Boatz, Stephen Elbert, Mark Gordon,
Jan Jensen, Shiro Koseki, Nikita Matsunaga, Kiet Nguyen, Shujun Su,
Theresa Windus, Michel Dupuis, John Montgomery, Ivana Adamovic,
Christine Aikens, Yuri Alexeev, Pooja Arora,

`Andrey Asadchev, Rob Bell, Pradipta Bandyopadhyay, Jonathan Bentz,`
`Brett Bode, Galina Chaban, Wei Chen, Cheol Ho Choi, Paul Day, Tim Dudley,`
`Dmitri Fedorov, Graham Fletcher, Mark Freitag, Kurt Glaesemann, Dan Kemp,`
`Grant Merrill, Jonathan Mullin, Takeshi Nagata, Sean Nedd,`
`Heather Netzloff, Bosiljka Njegic, Ryan Olson, Mike Pak, Jim Shoemaker,`
`Lyudmila Slipchenko, Sarom Sok, Jie Song, Tetsuya Taketsugu,`
`Simon Webb, Soohaeng Yoo, Federico Zahariev, Joe Ivanic, Laimutis Bytautas,`
`Klaus Ruedenberg,Kimihiko Hirao, Takahito Nakajima,`
`Takao Tsuneda, Muneaki Kamiya, Susumu Yanagisawa,`
`Kiyoshi Yagi, Mahito Chiba, Seiken Tokura, Naoaki Kawakami,`

Frank Jensen, Visvaldas Kairys, Hui Li, Walt Stevens, David Garmer,

`Benedetta Mennucci, Jacopo Tomasi,`
`Henry Kurtz, Prakashan Korambath,`
`Toby Zeng, Mariusz Klobukowski,`
`Mark Spackman,`
`Hiroaki Umeda,`
`Karol Kowalski, Marta Wloch, Jeffrey Gour, Jesse Lutz, Piotr Piecuch,`
`Monika Musial, Stanislaw Kucharski,`
`Olivier Quinet, Benoit Champagne,`
`Bernard Kirtman,`
`Kazuya Ishimura And Shigeru Nagase,`
`Dan Chipman,`
`Haruyuki Nakano,`
`Feng Long Gu, Jacek Korchowiec, Marcin Makowski, And Yuriko Aoki,`
`Hirotoshi Mori And Eisaku Miyoshi,`
`Tzvetelin Iordanov, Chet Swalina, Jonathan Skone,`
`Sharon Hammes-Schiffer,`
`Masato Kobayashi, Tomoko Akama, Hiromi Nakai,`
`Peifeng Su, Dejun Si, Yali Wang, Hui Li`

</ref>作为美国国家化学计算资源（NRCC，National Resources for Computations in
Chemistry）项目的一部分，GAMESS的代码于1977年10月1日开始编写。\[5\]1981年，源码分裂为两个分支，即美国版与英国版。时至今日，两个版本之间已经有很大差异。
其中美国版的源代码由美国爱荷华大学的[Gordon研究组](http://www.msg.chem.iastate.edu)维护。
GAMESS美国版的源码是免费的，但由于[软件许可证](../Page/软件许可证.md "wikilink")方面的限制，GAMESS
并非[开源软件](../Page/开源软件.md "wikilink")。

## 计算能力

<table>
<caption>GAMESS (US) 基本计算能力汇总<br />
(C - 传统积分存储, D - direct <a href="https://zh.wikipedia.org/wiki/atomic_orbital" title="wikilink">AO</a> integration, p - 并行计算, F - 计算)</caption>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td><p>SCFTYP=</p></td>
<td><p><a href="../Page/哈特里－福克方程.md" title="wikilink">RHF</a></p></td>
<td><p><a href="../Page/哈特里－福克方程.md" title="wikilink">ROHF</a></p></td>
<td><p><a href="../Page/哈特里－福克方程.md" title="wikilink">UHF</a></p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/广义价键法" title="wikilink">GVB</a></p></td>
<td><p><a href="../Page/多组态自洽场方法.md" title="wikilink">MCSCF</a></p></td>
</tr>
<tr class="even">
<td><p>能量</p></td>
<td><p>CDpF</p></td>
<td><p>CDpF</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>CDpF</p></td>
</tr>
<tr class="odd">
<td><p>解析计算梯度</p></td>
<td><p>CDpF</p></td>
<td><p>CDpF</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>CDpF</p></td>
</tr>
<tr class="even">
<td><p>数值计算<a href="../Page/海森矩阵.md" title="wikilink">海森矩阵</a></p></td>
<td><p>CDpF</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
</tr>
<tr class="odd">
<td><p>解析计算<a href="../Page/海森矩阵.md" title="wikilink">海森矩阵</a></p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>-</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/多体微扰理论.md" title="wikilink">MP2</a> 能量</p></td>
<td><p>CDpF</p></td>
<td><p>CDpF</p></td>
<td><p>CDp</p></td>
<td><p>-</p></td>
<td><p>CDp</p></td>
</tr>
<tr class="odd">
<td><p>MP2 梯度</p></td>
<td><p>CDpF</p></td>
<td><p>Dp</p></td>
<td><p>CDp</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/组态相互作用方法.md" title="wikilink">CI</a> 能量</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>-</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
</tr>
<tr class="odd">
<td><p>CI 梯度</p></td>
<td><p>CD</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p><a href="../Page/耦合簇方法.md" title="wikilink">CC</a> 能量</p></td>
<td><p>CDpF</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="odd">
<td><p>EOM 能量</p></td>
<td><p>CD</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/密度泛函理论" title="wikilink">DFT</a> 能量</p></td>
<td><p>CDpF</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="odd">
<td><p>DFT 梯度</p></td>
<td><p>CDpF</p></td>
<td><p>CDp</p></td>
<td><p>CDp</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p>MOPAC 能量</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><p>-</p></td>
</tr>
<tr class="odd">
<td><p>MOPAC 梯度</p></td>
<td></td>
<td></td>
<td></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

## 参见

  - [计算化学](../Page/计算化学.md "wikilink")

## 参考文献

## 外部链接

  -
  -
  -
  -
[Category:化学软件](https://zh.wikipedia.org/wiki/Category:化学软件 "wikilink")

1.
2.   [This is one of the most cited chemistry
    articles](http://www.cas.org/spotlight/bchem05/bchem05.html)
3.
4.
5.