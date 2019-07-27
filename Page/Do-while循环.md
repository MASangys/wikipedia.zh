[thumb](https://zh.wikipedia.org/wiki/文件:Do-while-loop-diagram.svg "wikilink")

**do-while循环**（），也有称**do循环**，是[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")[编程语言](../Page/编程语言.md "wikilink")中的一种[控制流程](../Page/控制流程.md "wikilink")语句。主要由一个代码块（作为循环体）和一个表达式（作为循环条件）组成，表达式为[布尔](https://zh.wikipedia.org/wiki/布尔 "wikilink")（boolean）型。循环体内的代码执行一次后，程序会去判断这个表达式的返回值，如果这个表达式的返回值为“true”（即满足循环条件）时，则循环体内的代码会反复执行，直到表达式的返回值为“false”（即不满足循环条件）时终止。程序会在每次循环体每执行一次后，进行一次表达式的判断。

一般情况下，do-while循环与[while循环相似](https://zh.wikipedia.org/wiki/while循环 "wikilink")。兩者唯一的分別：do-while循环将先会执行一次循环体内的代码，再去判断循环条件。所以无论循环条件是否满足，do-while循环体内的代码至少会执行一次。因此，do-while循環屬於後測循環(post-test
loop)。

一些語言有其他的表達方式。例如[Pascal就提供](../Page/Pascal_\(程式語言\).md "wikilink")
*repeat until* 循环，運作方法剛剛相反。 *repeat* 部分不斷重複，直到 *until* 條件滿足。換言之， *until*
條件是 *false* 的時候，循环會繼續執行。

## 程序示例

### Java

``` Java
int i = 5;
do {
       i = i - 1;  /*循环体*/
} while (i > 0); /*循环条件 */
System.out.println(i);
```

[分类:控制流程](https://zh.wikipedia.org/wiki/分类:控制流程 "wikilink")

### C/C++

``` c
#include<stdio.h>
#include<stdlib.h>
int main()
{
    int a;/*宣告整數a*/
    scanf("%d",&a)/*輸入a*/
    do{
        printf("嗨");/*輸出嗨*/
    }while(a==1);
    system("pause")
    return 0;
}
```