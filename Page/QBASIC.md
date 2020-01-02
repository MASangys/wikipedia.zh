> 本文内容由[QBASIC](https://zh.wikipedia.org/wiki/QBASIC)转换而来。


**QBASIC**是[BASIC](../Page/BASIC.md "wikilink")（Beginner's All-purpose Symbolic Instruction Code，初学者通用指令代码）语言的一个变种，由美国[微软](../Page/微软.md "wikilink")公司开发，1991年随[MS-DOS](../Page/MS-DOS.md "wikilink") 5.0推出。它不能被编译成独立的可执行文件，源代码在集成开发环境（IDE）中先被编译成中间代码，然后中间代码在IDE中被解释执行。它被设计用来代替[GW-BASIC](../Page/GW-BASIC.md "wikilink")，并被集成在MS-DOS 5.0及其更高版本（包括[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink") 95）中。QBASIC基于微软稍早推出的[QuickBASIC](../Page/QuickBASIC.md "wikilink") 4.5，但去掉了后者的编译和连接部分。

微软在较新版本的Windows中不再集成QBASIC。不过Windows 98的用户可以在光盘的`\TOOLS\OLDMSDOS`目录中找到它，在Windows 95的光盘中，它存放在`\OTHER\OLDMSDOS`目录中。微软网站对它的技术支持只对MS-DOS的授权用户有效。

QBASIC拥有一个值得称道的集成开发环境和一个功能强大的集成调试器，这一切在那个时代让人耳目一新。

## 语法

和Quick BASIC类似而又不同于微软其他BASIC的早期实现版本的是，QBASIC是一种结构化的编程语言。和GW-BASIC相比，QBASIC的主要改进是：

  - 扩充了变量和常量的类型
      - 变量名长度：40个字符　　　　　　　　　
      - 增加了长整型、定长字符型变量　　　　　　　　　
      - 可定义数值常量、字符串常量　　　　　　　　　
  - 提供了新的选择结构　　　　　　　　　
      - 条件语句
        　　IF　 <条件>　 THEN
        　　 　 <语句组1>
        　　ELSE
        　　 　 <语句组2>
        　　END IF
      - 多分支语句SELECT
  - 改进了循环结构
    增加以下两个循环语句：
      - WHILE循环
        　 WHILE <条件>
        　　 <循环体>
        　 WEND
      - DO循环
        　 DO WHILE <条件>
        　　 <循环体>
        　 LOOP
  - 子程序和函数作为单独的模块
  - 不需要行号，雖然依舊支援行號的使用。

## 代码示例

Hello, World\!程序 <code>

``` qbasic
print "Hello, World!"
```

</code>

简单的运算 <code>

``` qbasic
let A=10
let B=20
let C=A+B
Print C
```

</code>

可以进行交互加法的运算 <code>

``` qbasic
input "a=";a
input "b=";b
let c=a+b
print c
```

</code> 对于其他运算，只要将运算符号改变并添加其他需要的自变量即可

## 绘制一个图形

绘制出一条斜线 <code>

``` qbasic
screen 1
line (10,10)-(20,20)
```

</code> 其中的数字可以更改。同样也可以使用这个语句来绘制矩形或者点 绘制一个空心圆形 <code>

``` qbasic
screen 1
CIRCLE (10,10),10
```

</code> 其中，在括号内的数字代表圆心的位置，逗号后的数字是圆形半径

## 快捷键

Ctrl+Break：中断正在运行的程序；
F5：继续运行被中断的程序；
Shift+F5：从第一条语句开始重新运行程序；
F4：当程序中断运行时，查看运行结果屏幕，再按一次F4则切换回代码屏幕；
F1：获得帮助。

## 外部链接

  - [QBASIC/QuickBASIC News](http://www.qbasicnews.com/)

[Category:BASIC程序设计语言家族](https://zh.wikipedia.org/wiki/Category:BASIC程序设计语言家族 "wikilink")