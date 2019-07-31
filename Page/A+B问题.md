**A+B问题**是一个基础的[程序设计](../Page/程序设计.md "wikilink")问题。通常是信息学在线评测系统用来测试提交和输入输出方法的题目。\[1\]

## 一般描述

输入两个数\(A\)和\(B\)（一般是在[整数范围内](../Page/整数_\(计算机科学\).md "wikilink")），输出\(A+B\)。

## 範例程式碼

### [JAVA](https://zh.wikipedia.org/wiki/JAVA "wikilink")

``` java
import java.util.*;
public class AB {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int a,b;
        a=sc.nextInt();
        b=sc.nextInt();
        System.out.println(a+b);
    } //main end
} //AB end
```

### [C](https://zh.wikipedia.org/wiki/C語言 "wikilink")

``` c
#include <stdio.h>

int main(void)
{
    int a, b;
    scanf("%d %d", &a, &b);
    printf("%d\n", a + b);
    return 0;
}
```

### [C++](../Page/C++.md "wikilink")

``` cpp
#include <iostream>

int main()
{
    int a, b;
    std::cin >> a >> b;
    std::cout << a + b << std::endl;
    return 0;
}
```

或

``` cpp
#include <iostream>

using namespace std;

int main()
{
    int a, b;
    cin >> a >> b;
    cout << a + b << endl;
    return 0;
}
```

### [Pascal](../Page/Pascal_\(程式語言\).md "wikilink")

``` pascal
var a,b:longint;
begin
    readln(a,b);
    writeln(a+b)
end.
```

### [Ruby](../Page/Ruby.md "wikilink")

``` ruby
gets.strip.split.map(&:to_i).reduce(:+)
```

### [Python](../Page/Python.md "wikilink")

适用于 Python 3 ：

``` python
print(sum(map(int, input().split())))
```

### [Fortran](../Page/Fortran.md "wikilink")

``` Fortran
PROGRAM P1000
        IMPLICIT NONE
        INTEGER :: A, B
        READ(*,*) A, B
        WRITE(*, "(I0)") A + B
    END PROGRAM P1000
```

## 要注意的问题

1.  在有的版本的A+B问题中，虽然输入的A和B都在[整数的范围之内](../Page/整数_\(计算机科学\).md "wikilink")，结果A+B的值不一定也在这个范围。这时候就要使用数值范围更广的[数据类型](https://zh.wikipedia.org/wiki/数据类型 "wikilink")。
2.  这个题库可能会使用特殊的输入输出方法（例如文件输入），也可能要求提交的时候加入一些附加信息，如果没在这个题库做过题目也没有看帮助，或者以前完全没有使用文件的经验，这可能出错。
3.  另外对于一些不自带数字输入输出功能的语言（例如[Brainfuck](../Page/Brainfuck.md "wikilink")），自己写数字输入输出可能也是比较困难的地方。

## 扩展

而这道题目的扩展通常是加入数据范围之类的陷阱，如[高精度加法](https://zh.wikipedia.org/wiki/高精度加法 "wikilink")、不使用[十进制](../Page/十进制.md "wikilink")或\(A\)或\(B\)的其中一個夾帶數字如：「AA123BB」等。

## 参考文献

## 参见

  - [Hello World](../Page/Hello_World.md "wikilink")，跟A+B问题相比，它只考察了[字符串](../Page/字符串.md "wikilink")输出，而不存在[变量的输入输出](../Page/变量_\(程序设计\).md "wikilink")。

[Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink") [Category:程序设计竞赛](https://zh.wikipedia.org/wiki/Category:程序设计竞赛 "wikilink")

1.  北京大学在线评测系统「POJ」中的[A+B Problem](http://poj.org/problem?id=1000)