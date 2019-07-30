在[程式語言中](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，**while迴圈**（）是一種[控制流程](../Page/控制流程.md "wikilink")的[陳述](https://zh.wikipedia.org/wiki/陳述_\(程式\) "wikilink")。利用一個返回结果为[布林值](https://zh.wikipedia.org/wiki/布爾_\(數據類型\) "wikilink")（Boolean）的表达式作為循环條件，当这个表达式的返回值为“真”（true）时，则反覆執行循环体内的程式碼；若表达式的返回值为“假”（false），则不再执行循环体内的代码，继续执行循环体下面的代码。

因為while迴圈在區塊內代碼被執行之前，先檢查[陳述是否成立](https://zh.wikipedia.org/wiki/陳述_\(程式\) "wikilink")，因此這種[控制流程](../Page/控制流程.md "wikilink")通常被稱為是一種前測試迴圈（pre-test loop）。相對而言[do while迴圈](https://zh.wikipedia.org/wiki/do-while循环 "wikilink")，是在迴圈區塊執行結束之後，再去檢查[陳述是否成立](https://zh.wikipedia.org/wiki/陳述_\(程式\) "wikilink")，被稱為是後測試迴圈。

## 程式範例

[While-loop-diagram.svg](https://zh.wikipedia.org/wiki/File:While-loop-diagram.svg "fig:While-loop-diagram.svg")

### [C](https://zh.wikipedia.org/wiki/C語言 "wikilink")/[C++](../Page/C++.md "wikilink")

``` c
unsigned int counter = 5;
unsigned long factorial = 1;

while (counter > 0)
{
  factorial *= counter--;    /*当满足循环条件（本例为：counter > 0）时会反复执行该条语句 */
}

printf("%lu", factorial);
```

### [VB](../Page/Visual_Basic.md "wikilink")

``` VB
'这是一个用While循环的例子
dim counter as Integer
dim Tick as Integer
counter=5
tick=1
Print "Start"
while counter>0
counter=counter-tick
'循环语句
Wend
Print "End"
```

### [java](https://zh.wikipedia.org/wiki/java "wikilink")

``` java
public static void main(str args[]){
    while true{
        System.out.println("Hello World!") //因为条件已经固定为常量true，所以就会不断执行循环体内的语句
    }
    int counter = 0 ;
    while counter<5{
        System.out.println("已经运行了"+counter+"次")  //因为条件限定为counter不大于5，所以在counter不大于5的情况下会不断重复循环体中的内容
        counter++;
    }
}
```

## 另见

  - [for循环](https://zh.wikipedia.org/wiki/for循环 "wikilink")
  - [迭代](../Page/迭代器.md "wikilink")

[Category:控制流程](https://zh.wikipedia.org/wiki/Category:控制流程 "wikilink") [Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink")