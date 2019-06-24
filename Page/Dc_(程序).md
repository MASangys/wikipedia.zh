**dc**（desk
calculator：桌面计算器）是采用[逆波兰表示法的](../Page/逆波兰表示法.md "wikilink")[跨平台计算器](https://zh.wikipedia.org/wiki/跨平台 "wikilink")，它支持[任意精度算术](../Page/高精度计算.md "wikilink")\[1\]。它是最老的[Unix实用工具](https://zh.wikipedia.org/wiki/Unix "wikilink")，先于[C语言的发明](https://zh.wikipedia.org/wiki/C语言 "wikilink")。像那个年代的其他实用工具一样，它有着一组强力的特征和简洁的语法\[2\]\[3\]。传统上，采用[中缀表示法的](https://zh.wikipedia.org/wiki/中缀表示法 "wikilink")[bc计算器程序是在dc之上实现的](https://zh.wikipedia.org/wiki/bc_\(编程语言\) "wikilink")。

## 历史

dc是幸存的最老的[Unix语言](https://zh.wikipedia.org/wiki/Unix "wikilink")。在[贝尔实验室收到第一台](../Page/贝尔实验室.md "wikilink")[PDP-11的时候](../Page/PDP-11.md "wikilink")，用[B语言写成的dc是在这个新机器上运行的第一个语言](https://zh.wikipedia.org/wiki/B语言 "wikilink")，甚至在汇编器之前\[4\]。

## 基本操作

在dc中要做4和5的乘法：

``` console
$ dc
4 5 *
p
20
q
```

这可转译为“把4和5压入栈顶，通过乘法算符，从栈中弹出两个元素，将二者相乘并把结果压回栈顶”。接着使用`p`命令打印栈顶的元素。使用`q`命令退出此次调用的dc实例。注意数值相互间必须以空白分隔，但某些算符可以不必如此。
还可以用如下命令得到这个结果：

``` console
$ dc -e '4 5 * p'
20
$ echo "4 5 * p" |dc
20
$ dc -
4 5*pq
20
$ cat <<EOF > cal.txt
4 5 *
p
EOF
$ dc cal.txt
20
```

使用命令`k`来变更[算术精度](../Page/有效数字.md "wikilink")，它设置算术运算的小数位数。因为缺省精度是`0`，例如：

``` console
$ dc -e "2 3 / p"
0
```

通过使用命令`k`调整精度，可以产生任意数目的小数数位，例如：

``` console
$ dc -e "5 k 2 3 / p"
.66666
```

dc有科学计算器的基本运算功能，比如求\(\sqrt{12 + (-3)^4\over11}-22\)的值：

``` console
$ dc -e "2k 12 _3 4 ^ + 11 / v 22 - p"
-19.10
```

其中，`_`用于输入负数，`^`计算幂，`v`计算平方根。

使用`d`命令复制栈顶元素。使用`r`命令对栈顶和仅次栈顶的两个元素进行对换。使用`z`命令压入当前栈深度，即执行`z`命令前栈中元素的数目。

## 输入/输出

使用`?`命令，从[stdin读取一行并执行它](https://zh.wikipedia.org/wiki/stdin "wikilink")。这允许从宏中向用户要求输入，故而此输入必须是语法上正确的，并且这有潜在的安全问题，因为dc的`!`命令可以执行任意系统命令。

前面提及过，`p`命令打印栈顶元素，带有随后的一个换行。`n`命令弹出栈顶元素并输出它，没有尾随换行。`f`命令打印整个栈，一项一行。

dc还支持控制输入和输出的[基数](../Page/进位制.md "wikilink")。`i`命令弹出栈顶元素并将它用作输入基数。十六进制数字必须大写以避免和dc命令冲突，输入基数必须在2和16之间，输出基数必须大于等于2。`o`命令设置输出基数，要记住输入基数将影响对后面的所有数值的分析，所以通常建议先设置输出基数。例如将二进制转换成十六进制：

``` console
$ echo 16o2i 11011110101011011011111011101111p | dc
DEADBEEF
```

要读取设置的这些数值，`K`、`I`和`O`命令将压入当前精度、输入基数和输出基数到栈顶。

## 语言特征

除了上述的基本算术和栈操作，dc包括了对[宏](https://zh.wikipedia.org/wiki/宏 "wikilink")、条件和存储结果用于以后检索的支持。

### 寄存器

寄存器在dc中是有着单一字符名字的存贮位置，它可以通过命令来存储和检索，它是宏和条件的底层机制：`sc`弹出栈顶元素并将它存储入寄存器`c`，而`lc`将寄存器`c`的值压入栈顶。例如：

```
 3 sc 4 lc * p
```

寄存器还被当作次要栈，可以使用`S`和`L`命令在它们和主要栈之间压入和弹出数值。存储栈顶元素到寄存器中并把这个元素留在栈顶，需要联合使用`ds`命令。

### 字符串

字符串是包围在`[`和`]`之中的字符，可以被压入栈顶和存入寄存器。使用`x`命令从栈顶弹出字符串并执行它，使用`P`命令从栈顶弹出并打印字符串，无尾随换行。`a`命令可以把数值的低位字节转换成[ASCII字符](https://zh.wikipedia.org/wiki/ASCII#ASCII可打印字符 "wikilink")，或者在栈顶是字符串时把它替换为这个字符串的第一个字符。此外没有方法去建造字符串或进行字符串操纵。

`#`字符开始一个注释直到此行结束。

### 宏

通过允许寄存器和栈项目像数值一样存储字符串，从而实现了[宏](https://zh.wikipedia.org/wiki/宏 "wikilink")。一个字符串可以被打印，也可以被执行，就是说作为dc命令的序列而传递。例如可以把一个宏“加1并接着乘以2”存储到一个寄存器`m`中：

```
 [1 + 2 *] sm
```

通过使用`x`命令弹出栈顶的字符串并执行之，如下这样使用存储的宏：

```
 3 lm x p
```

`Q`命令从栈顶弹出一个值作为退出宏的层数，比如`2Q`命令退出2层宏，它永不导致退出dc。`q`命令退出2层宏，如果宏少于2层则退出dc。

### 条件

最后提供了有条件执行宏的机制。命令`=r`将从栈顶弹出两个值，如果二者相等，则执行存储在寄存器`r`中的宏。如下命令序列将在原栈顶元素等于5的条件下打印字符串`equal`。

    [[equal]p] sm d 5 =m

这里使用了`d`命令保留原栈顶元素。其他条件有`>`、`!>`、`<`、`!<`、`!=`，如果栈顶元素分别大于、不大于（小于等于）、小于、不小于（大于等于）、不等于仅次于栈顶的元素，则执行指定宏。

### 迭代

通过定义有条件的调用自身的[递归宏](../Page/递归.md "wikilink")，[迭代也是可行的](../Page/迭代.md "wikilink")。一个简单的对栈顶元素的[阶乘](https://zh.wikipedia.org/wiki/阶乘 "wikilink")[过程](../Page/子程序.md "wikilink")：

```
 # F(x): return x!
 # if x-1 > 1
 #    return x * F(x-1)
 # otherwise
 #    return x
```

可实现为：

```
 [d1-d1<F*]dsFxp
```

这里宏中的第一个`d`命令相当于分配了一个局部变量。

## 例子

[Unix](https://zh.wikipedia.org/wiki/Unix "wikilink")
[V7手册页举出的编程实例为打印](https://zh.wikipedia.org/wiki/Version_7_Unix "wikilink")[阶乘](https://zh.wikipedia.org/wiki/阶乘 "wikilink")`n!`的前10个值：

``` console
$ dc
[la1+dsa*pla10>y]sy
0sa1
lyx
1
2
6
24
120
720
5040
40320
362880
3628800
```

这个程序实现了[For循环](https://zh.wikipedia.org/wiki/For循环 "wikilink")，将作为循环体的宏`[la1+dsa*pla10>y]`存储在寄存器`y`中；把寄存器`a`作为[循环计数器](https://zh.wikipedia.org/wiki/循环计数器 "wikilink")，设其初始值为`0`，将`0!`的值`1`压入栈顶；从寄存器`y`中取出宏并执行之。宏中的`la1+dsa`将计数器`a`的数值加`1`，并将这个值留在栈顶；随后`*p`从栈中弹出两个元素进行乘法并把结果压入栈中，打印这个结果；随后`la10>y`将计数器`a`的数值和数值`10`压入栈中，判断位于栈顶的`10`是否大于计数器的数值，即计数器的数值是否小于`10`，弹出二者并在判断成立的条件下再次执行存储在寄存器`y`中的宏。计数器`a`的数值从`0`增加到`10`，宏一共被执行了`10`次。

## 参见

  - [bc](https://zh.wikipedia.org/wiki/bc_\(编程语言\) "wikilink")
  - [计算器输入方法](https://zh.wikipedia.org/wiki/计算器输入方法 "wikilink")
  - [堆栈机器](https://zh.wikipedia.org/wiki/堆栈机器 "wikilink")

## 引用

## 外部链接

  - 软件包[dc](http://packages.debian.org/search?keywords=dc&searchon=names&exact=1&suite=all&section=all)在[Debian
    GNU/Linux仓库中](https://zh.wikipedia.org/wiki/Debian_GNU/Linux "wikilink")
  - [bc的](https://zh.wikipedia.org/wiki/bc_\(编程语言\) "wikilink")[原生Windows移植](http://gnuwin32.sourceforge.net/packages/bc.htm)包括了dc
  - [嵌入到网页中的dc](http://dc.pr0.uk)
  - [The unix dc(1) command, this is the esoteric language that "made it
    big".](https://esolangs.org/wiki/Dc)

[Category:跨平台软件](https://zh.wikipedia.org/wiki/Category:跨平台软件 "wikilink")
[Category:Unix软件](https://zh.wikipedia.org/wiki/Category:Unix软件 "wikilink")
[Category:软件计算器](https://zh.wikipedia.org/wiki/Category:软件计算器 "wikilink")
[Category:自由数学软件](https://zh.wikipedia.org/wiki/Category:自由数学软件 "wikilink")
[Category:数值分析语言](https://zh.wikipedia.org/wiki/Category:数值分析语言 "wikilink")

1.
2.
3.
4.