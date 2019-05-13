[For-loop-diagram.png](https://zh.wikipedia.org/wiki/File:For-loop-diagram.png "fig:For-loop-diagram.png")

**for迴圈**（）在計算機科學是一種[程式語言的](https://zh.wikipedia.org/wiki/程式語言 "wikilink")[迭代](../Page/迭代.md "wikilink")[陳述](https://zh.wikipedia.org/wiki/陳述_\(程式\) "wikilink")，能夠讓程式碼反覆的執行。

它跟其他的[迴圈](../Page/迴圈.md "wikilink")，如[while迴圈](../Page/while迴圈.md "wikilink")，最大的不同，是它擁有一個[迴圈計數器](https://zh.wikipedia.org/wiki/迴圈計數器 "wikilink")，或是迴圈變數。這使得for迴圈能夠知道在迭代過程中的執行順序。

## for 迴圈的種類

### 傳統的 for 迴圈 for-loops

[C語言中傳統的for](https://zh.wikipedia.org/wiki/C語言 "wikilink")-loop包含三個部分：初始化、條件、遞增，這三個部分都是可有可無的。\[1\]

  -
    以Java為例：

<!-- end list -->

``` java
for (INITIALIZATION; CONDITION; AFTERTHOUGHT)
{
    // Code for the for-loop's body goes here.
}
```

初始化是宣告（或者賦值）任何需要的變數的動作。如果你要使用多個變數，則變數的種類要一致。條件的部分則是檢查是否離開這個迴圈，也就是讓程式碼往下執行。如果條件判斷為假，則離開迴圈。遞增在每跑一次迴圈都會重複執行一次。

  -
    在此以Java為例：

<!-- end list -->

``` java
for (int i=0; i<100; i++)   // Prints the numbers 0 to 99 (and not 100), each separated by a space.
{
    System.out.print(i);
    System.out.print(' ');
}
System.out.println();
```

### 使用指標的for迴圈

這種形式的for迴圈是大多數其他for迴圈的變革：他允許除了數字以外的計數方式。他通常用隱含或外顯指標的方式呈現，而在此迴圈變數會依序表示。以下是一個代表性的例子(語言：[Python](../Page/Python.md "wikilink"))：

``` python
for item in some_iterable_object:
    do Something
    do Something Else
```

### 矩陣化for迴圈

有一些語言支援比較特別的for迴圈，如同它可以同時處理所有的指標[in
parallel](https://zh.wikipedia.org/wiki/Automatic_vectorization "wikilink")，像是在[FORTRAN
95中的](https://zh.wikipedia.org/wiki/FORTRAN_95 "wikilink")`for all`語法。
舉例來說，在以下的for迴圈[虛擬碼片段](https://zh.wikipedia.org/wiki/虛擬碼 "wikilink")，當計算`A(i)`的新的值，除了第一個(也就是
`i = 2`)，`A(i - 1)`的參照會得到新的值。 然而，在`for all` 版本，每個計算都會使用一開始的值，不會更改 `A`.

**`for`**`     i := 2 : N - 1 `**`do`**` A(i) := [A(i - 1) + A(i) + A(i + 1)] / 3; `**`next`**` i;`
**`for``
 ``all`**` i := 2 : N - 1 `**`do`**` A(i) := [A(i - 1) + A(i) + A(i + 1)] / 3;`

和一般的for迴圈可能差距比較大。

## 應用範例

以c語言為例：

### 作為[無窮迴圈](https://zh.wikipedia.org/wiki/無窮迴圈 "wikilink")

``` C
for (;;)
   printf("just keep going on!");
```

這個程式碼會不斷的印出"just keep going on\!"。

### 配合[矩陣](https://zh.wikipedia.org/wiki/矩陣 "wikilink")

矩陣賦值：

``` C
for(int i=0;i<bound_of_matrix;i++)
   matrix[i] = i;
```

以上給予矩陣 matrix 依序從0到bound_of_matrix-1 的值。

### [巢狀迴圈](https://zh.wikipedia.org/wiki/巢狀迴圈 "wikilink")

就像巢穴一樣，一層包覆一層，所以以下這個程式碼一共會執行(bound_of_x)乘上(bound_of_y)次。

``` C
for(int i=0;i<bound_of_x;i++)
   for(int j=0;j<bound_of_y;j++)
      matrix[i][j] = j;
```

## 常見的錯誤

### 無窮迴圈

這裡指的是無意產生的無窮迴圈，容易導致當機。

  -
    以C語言為例：

<!-- end list -->

``` C
for (int i=0;i<10;i--)
   printf("confused");
```

### 超出界限

[編譯器會顯示out](../Page/編譯器.md "wikilink") of bound，通常是指嘗試取矩陣界限外的值。

### 迴圈內的變數

迴圈內的變數在出迴圈之後，便無法使用。

## 發展概論

主要緣起為許多需要重複執行的程式碼，而不一樣的程式語言也會有不一樣的語法型式。

### 1957: FORTRAN

在Fortran 的`DO` 迴圈 同等於for迴圈。 Fortran的 `DO` 迴圈語法為：

``` FORTRAN
         DO label counter = first, last, step
         statements
  label  statement

```

接下來的兩個例子做出來的結果等同於其他語言的三個參數的for迴圈。其中變數COUNTER被初始化為1，以1遞增，並且到5的時候停下。

``` FORTRAN
   DO 9, COUNTER = 1, 5, 1
     WRITE (6,8) COUNTER
8    FORMAT( I2 )
9  CONTINUE
```

Fortran 77 獲之後的版本，也可能寫成：

``` FORTRAN
do counter = 1, 5
  write(*, '(i2)') counter
end do
```

如果遞增為1，則遞增的部分可以省略。例如：

``` FORTRANfixed
* DO loop example.
       PROGRAM MAIN
         SUM SQ = 0
         DO 199 I = 1, 9999999
           IF (SUM SQ.GT.1000) GO TO 200
199        SUM SQ = SUM SQ + I**2
200      PRINT 206, SUMSQ
206      FORMAT( I2 )
       END
```

### 1958: Algol

[Algol](../Page/ALGOL.md "wikilink") 在Algo158首次正式格式化。

### 1960: COBOL

[COBOL在許多努力之下](../Page/COBOL.md "wikilink")，在1959年終正式格式化。他使用PERFORM
動詞，而PERFORM動詞有很多功能，像是後來加上的＂結構化＂的語法，像是
END-PERFORM。忽略宣告和初始化變數的必要，類似for迴圈的語法為：

``` COBOL
      PERFORM VARYING I FROM 1 BY 1 UNTIL I > 1000
             ADD I**2 TO SUM-SQ.
      END-PERFORM
```

如果PERFORM有TEST AFTER，這個迴圈的執行的結果會有點不同：迴圈內的程式會被執行至少一次。

### 1964: BASIC

[BASIC](../Page/BASIC.md "wikilink") 中的迴圈有時稱為 for-next迴圈。

``` freebasic
For I = 1 to 5;
 Print I;
Next I
```

### 1964: PL/I

由IBM公司在1950年代發明的第三代高級程式語言，
有些類似[PASCAL語言](https://zh.wikipedia.org/wiki/PASCAL "wikilink")。

  -
    以下為[PLI使用例](https://zh.wikipedia.org/wiki/PLI "wikilink")：

<!-- end list -->

``` PLI
do counter = 1 to 5 by 1; /* "by 1" is the default if not specified */
  /*statements*/;
  end;
```

*LEAVE* 指令可以用來結束迴圈，像c語言的break，而*ITERATE*則像continue。

### 1968: Algol 68

[Algol68](https://zh.wikipedia.org/wiki/Algol68 "wikilink")
很類似現在的for語言了：

``` Algol68
FOR i FROM 1 BY 2 TO 3 WHILE i≠4 DO ~ OD
```

### 1970: Pascal

``` Pascal
for Counter := 1 to 5 do
  (*statement*);
```

### 1972: C/C++

``` C
for (initialization; condition; increment/decrement)
    statement
```

### 1972: Smalltalk

### 1980: Ada

``` ada
for Counter in 1 .. 5 loop
   -- statements
end loop;
```

### 1980: Maple

Maple有兩種型式的for迴圈，一個是指標一定範圍的值，另一個是指標一定大小的容器。 第一種：

**`for`**` `*`i`*` `**`from`**` `*`f`*` `**`by`**` `*`b`*` `**`to`**` `*`t`*` `**`while`**` `*`w`*` `**`do`**
`    `*`#``   ``loop``   ``body`*
**`od`**`;`

第二種：

**`for`**` `*`e`*` `**`in`**` `*`c`*` `**`while`**` `*`w`*` `**`do`**
`    `*`#``   ``loop``   ``body`*
**`od`**`;`

### 1982: PostScript

他的for迴圈 `[initial] [increment] [limit] { ... } for` 初始化一個內部的變數,
並且執行到他不大於限制的值(若遞增為負則以此類推)。\[2\]

``` AppleScript
1 1 6 {STATEMENTS} for
```

### 1983: Ada 83 and above

``` ADA
procedure Main is
  Sum_Sq : Integer := 0;
begin
  for I in 1 .. 9999999 loop
    if Sum_Sq <= 1000 then
      Sum_Sq := Sum_Sq + I**2
    end if;
  end loop;
end;
```

### 1984: MATLAB

``` MATLAB
for i = 1:5
     -- statements
end
```

### 1987: Perl

``` Perl
for ($counter = 1; $counter <= 5; $counter++) { # implictly or predefined variable
  # statements;
}
for (my $counter = 1; $counter <= 5; $counter++) { # variable private to the loop
  # statements;
}
for (1..5) { # variable impicitly called $_; 1..5 creates a list of these 5 elements
  # statements;
}
statement for 1..5; # almost same (only 1 statement) with natural language order
for my $counter (1..5) { # variable private to the loop
  # statements;
}
```

### 1988: Mathematica

``` Ruby
Do[f[x], {x, 0, 1, 0.1}]
```

``` Ruby
For[x= 0 , x <= 1, x += 0.1,
    f[x]
]
```

### 1989: Bash

``` bash
*第一種
for i in 1 2 3 4 5
do
    # must have at least one command in loop
    echo $i  # just print value of i
done
```

``` bash
*第二種
for (( i = 1; i <= 5; i++ ))
do
    # must have at least one command in loop
    echo $i  # just print value of i
done
```

### 1990: Haskell

``` haskell
forM_ [1..5] $ \indx -> do statements
```

如果你想要用更正式的方式存 \[1..5\]的內容，一個比較官方的方式為：

``` haskell
import Control.Monad as M

forLoopM_ :: Monad m => a -> (a -> Bool) -> (a -> a) -> (a -> m ()) -> m ()
forLoopM_ indx prop incr f = do
        f indx
        M.when (prop next) $ forLoopM_ next prop incr f
  where
    next = incr indx
```

並且可以這樣使用：

``` haskell
  forLoopM_ (0::Int) (< len) (+1) $ \indx -> do -- whatever with the index
```

### 1991: Oberon-2, Oberon-07, or Component Pascal

``` Oberon2
FOR Counter := 1 TO 5 DO
  (* statement sequence *)
END
```

### 1991: Python

``` Python
for counter in range(1, 6):  # range(1, 6) gives values from 1 to 5 inclusive (but not 6)
  # statements
```

### 1993: AppleScript

``` AppleScript
repeat with i from 1 to 5
    -- statements
    log i
end repeat
```

### 1993: Lua

``` Lua
for i = start, stop, interval do
     -- statements
end
```

這個程式碼

``` Lua
for i = 1, 5, 2 do
     print(i)
end
```

即會印出：

``` Lua
1 3 5
```

### 1995: Java

``` Java
for (int i = 0; i < 5; i++) {
    //perform functions within the loop;
    //can use the statement 'break;' to exit early;
    //can use the statement 'continue;' to skip the current iteration
}
```

### 1995: JavaScript

JavaScript 支援像是C語言的三個參數的迴圈，並且支援break和continue。

``` JavaScript
for (var i = 0; i < 5; i++) {
    // ...
}
```

### 1995: PHP

``` PHP
for ($i = 0; $i <= 5; $i++)
{
  for ($j = 0; $j <= $i; $j++)
  {
    echo "*";
  }
  echo "<br>";
}
```

### 1995: Ruby

``` Ruby
for counter in 1..5
  # statements
end

5.times do |counter|  # counter iterates from 0 to 4
  # statements
end

1.upto(5) do |counter|
  # statements
end
```

### 1996: OCaml

請參考\[3\]

``` ocaml
 (* for_statement := "for" ident '='  expr  ( "to" ∣  "downto" ) expr "do" expr "done" *)

for i = 1 to 5 do
    (* statements *)
  done ;;

for j = 5 downto 0 do
    (* statements *)
  done ;;
```

### 1998: ActionScript 3

``` actionscript3
for (var counter:uint = 1; counter <= 5; counter++){
  //statement;
}
```

## 參考文獻

<http://terms.naer.edu.tw/detail/2337520/>

## 參見

  - [Foreach循环](../Page/Foreach循环.md "wikilink")

[Category:控制流程](https://zh.wikipedia.org/wiki/Category:控制流程 "wikilink")

1.
2.
3.  [OCaml expression
    syntax](http://caml.inria.fr/pub/docs/manual-ocaml-4.00/expr.html)