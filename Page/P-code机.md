在[計算機科學中](https://zh.wikipedia.org/wiki/計算機科學 "wikilink")，**P-code機**（）是一種被設計來執行P-code的[虛擬機器](../Page/虛擬機器.md "wikilink")。P-code是一種被設計來運行在虛擬[CPU上的](https://zh.wikipedia.org/wiki/CPU "wikilink")[匯編語言](https://zh.wikipedia.org/wiki/匯編語言 "wikilink")，即是我們現代所稱[Bytecode的前身](https://zh.wikipedia.org/wiki/Bytecode "wikilink")。P-code机这个词可用于形容所有这类机器（例如[Java虚拟机](../Page/Java虚拟机.md "wikilink")和[MATLAB](../Page/MATLAB.md "wikilink")预编译的代码），或者特指最有名的P-code机，來自於[Pascal語言](../Page/Pascal_\(程式語言\).md "wikilink")，特別是[UCSD Pascal實作](https://zh.wikipedia.org/wiki/UCSD_Pascal "wikilink")。

虽然這個概念在1966左右年就已首次实现（于[BCPL](../Page/BCPL.md "wikilink")的O-code与Euler语言的P - a code），\[1\]但P-code这个词直到70年代初才首次出现。 1973年Nori, Ammann, Jensen, Hageli和Jacobi编写的Pascal-P編譯器\[2\] 和1975年[尼克劳斯·维尔特](../Page/尼克劳斯·维尔特.md "wikilink")写的Pascal-S編譯器是早期的两个生成P-code的[编译器](https://zh.wikipedia.org/wiki/编译器 "wikilink")。

P-code可以是一種與特定硬體平台無關的[中間碼](../Page/中間語言.md "wikilink")，一種虛擬[機器碼](https://zh.wikipedia.org/wiki/機器碼 "wikilink")。程式原始碼會先被轉換成P-code；轉換成P-code的程序，之後會由一個軟體來進行[直譯](../Page/直譯器.md "wikilink")。這個軟體可以[模擬出一個假想的CPU來讀取p](https://zh.wikipedia.org/wiki/模擬器 "wikilink")-code，之後將p-code轉換成實體機器碼來執行。但如果有足够的商业利益，可能可以實作做出该规格CPU的硬件实现（例如Pascal MicroEngine和Java处理器）。

## UCSD p-Machine

### 架构

如很多其他p-code机一样，UCSD p-Machine是一个[堆疊結構機器](https://zh.wikipedia.org/wiki/堆疊結構機器 "wikilink")，这意味着大多数指令从堆栈中获取它们的操作数，并将结果放回堆栈上面。因此，“add”指令将堆栈最顶部的两个元素替换成它们的和。有几条指令就取一个参数。像Pascal一样，p-code是强类型语言，原生支持boolean (b), character (c), integer (i), real (r), set (s)和pointer (a)类型。

一些简单的指令：

`Insn.   Stack   Stack   Description`
`        before  after`
` `
`adi      i1 i2   i1+i2   add two integers`
`adr      r1 r2   r1+r2   add two reals`
`dvi      i1 i2   i1/i2   integer division`
`inn      i1 s1   b1      set membership; b1 = whether i1 is a member of s1`
`ldci     i1      i1      load integer constant`
`mov      a1      a2      move`
`not      b1      ~b1     boolean negation`

### 环境

与其他基于堆栈的环境（如[Forth](../Page/Forth.md "wikilink")和[Java虚拟机](../Page/Java虚拟机.md "wikilink")）不同的是，p-系统非常类似于真正的目标CPU，它只有一个堆栈供过程栈帧（提过[返回地址等](https://zh.wikipedia.org/wiki/返回地址 "wikilink")）和局部指令参数共享。机器的其中三个[寄存器](../Page/寄存器.md "wikilink")指向这个堆栈（向上增加）：

  - SP 指向堆栈顶部（[堆栈指针](https://zh.wikipedia.org/wiki/堆栈指针 "wikilink")）。
  - MP 标记活动的栈帧的开始（[标记指针](https://zh.wikipedia.org/wiki/标记指针 "wikilink"))。
  - EP 指向当前过程的最高堆栈位置（[极端指针](https://zh.wikipedia.org/wiki/极端指针 "wikilink")）。

第五个寄存器 PC 指向当前指令的代码区。

### 调用约定

栈帧是这样的：

`EP ->`
`      local stack`
`SP -> ...`
`      locals`
`      ...`
`      parameters`
`      ...`
`      return address (previous PC)`
`      previous EP`
`      dynamic link (previous MP)`
`      static link (MP of surrounding procedure)`
`MP -> function return value`

程序调用序列的工作方式如下：下面指令引入调用

` mst n`

其中 *n* 指定嵌套级别的差异（记得Pascal支持过程嵌套）。这个指令会*标记*这个堆栈，即在上述栈帧中保留起始地5个格子，并初始化前面的 EP、动态链接和静态链接。

## 范例机器

尼克劳斯·维尔特在他1976年出的书*《算法+数据结构=程序》*中详述了一个简单的P-code机。这个机器有3个寄存器——一个[程序计数器](https://zh.wikipedia.org/wiki/程序计数器 "wikilink") p，一个[基寄存器](https://zh.wikipedia.org/wiki/调用栈 "wikilink") b，和一个[栈顶寄存器](../Page/堆栈.md "wikilink") t。一共有8个指令，其中一个（opr）有多种形式。

这是机器的Pascal代码：

``` pascal
const
    levmax=3;
    amax=2047;
type
    fct=(lit,opr,lod,sto,cal,int,jmp,jpc);
    instruction=packed record
        f:fct;
        l:0..levmax;
        a:0..amax;
    end;

procedure interpret;

  const stacksize = 500;

  var
    p, b, t: integer; {program-, base-, topstack-registers}
    i: instruction; {instruction register}
    s: array [1..stacksize] of integer; {datastore}

  function base(l: integer): integer;
    var b1: integer;
  begin
    b1 := b; {find base l levels down}
    while l > 0 do begin
      b1 := s[b1];
      l := l - 1
    end;
    base := b1
  end {base};

begin
  writeln(' start pl/0');
  t := 0; b := 1; p := 0;
  s[1] := 0; s[2] := 0; s[3] := 0;
  repeat
    i := code[p]; p := p + 1;
    with i do
      case f of
        lit: begin t := t + 1; s[t] := a end;
        opr:
          case a of {operator}
            0:
              begin {return}
                t := b - 1; p := s[t + 3]; b := s[t + 2];
              end;
            1: s[t] := -s[t];
            2: begin t := t - 1; s[t] := s[t] + s[t + 1] end;
            3: begin t := t - 1; s[t] := s[t] - s[t + 1] end;
            4: begin t := t - 1; s[t] := s[t] * s[t + 1] end;
            5: begin t := t - 1; s[t] := s[t] div s[t + 1] end;
            6: s[t] := ord(odd(s[t]));
            8: begin t := t - 1; s[t] := ord(s[t] = s[t + 1]) end;
            9: begin t := t - 1; s[t] := ord(s[t] <> s[t + 1]) end;
            10: begin t := t - 1; s[t] := ord(s[t] < s[t + 1]) end;
            11: begin t := t - 1; s[t] := ord(s[t] >= s[t + 1]) end;
            12: begin t := t - 1; s[t] := ord(s[t] > s[t + 1]) end;
            13: begin t := t - 1; s[t] := ord(s[t] <= s[t + 1]) end;
          end;
        lod: begin t := t + 1; s[t] := s[base(l) + a] end;
        sto: begin s[base(l)+a] := s[t]; writeln(s[t]); t := t - 1 end;
        cal:
          begin {generate new block mark}
            s[t + 1] := base(l); s[t + 2] := b; s[t + 3] := p;
            b := t + 1; p := a
          end;
        int: t := t + a;
        jmp: p := a;
        jpc: begin if s[t] = 0 then p := a; t := t - 1 end
      end {with, case}
  until p = 1;
  writeln(' end pl/0');
end {interpret};
```

这个机器是用来运行维尔特的[PL/0的](https://zh.wikipedia.org/wiki/PL/0 "wikilink")，一个为教学开发的Pascal子集编译器。

## 注释

## 延伸阅读

  - [Steven Pemberton](https://zh.wikipedia.org/wiki/Steven_Pemberton "wikilink") and Martin Daniels: [Pascal Implementation: The P4 Compiler and Interpreter](http://www.cwi.nl/~steven/pascal/book/). ISBN 0-85312-358-6; ISBN 0-13-653031-1
  - [Steven Pemberton关于Pascal的网页](http://homepages.cwi.nl/~steven/pascal/)上有P4编译器和解释器的Pascal源代码、使用说明和[编译器的p-code](https://web.archive.org/web/20020228000352/http://www.cwi.nl/ftp/pascal/pcom.code4.Z) （自身生成的）。
  - [The Jefferson Computer Museum's page on the UCSD p-System](http://www.threedee.com/jcm/psystem/)
  - [开源实现](http://ucsd-psystem-vm.sourceforge.net/)，包含打包和预编译的二进制文件；[Klebsch的实现版本](http://www.klebsch.de)的一个友好的fork
  - *Compiling with C\# and Java*, Pat Terry, 2005, ISBN 0-321-26360-X, 624
  - *[Algorithms + Data Structures = Programs](https://zh.wikipedia.org/wiki/Algorithms_+_Data_Structures_=_Programs "wikilink")*, Niklaus Wirth, 1975, ISBN 0-13-022418-9
  - *Compiler Construction*, Niklaus Wirth, 1996, ISBN 0-201-40353-6
  - *The Byte Book of Pascal*, Blaise W. Liffick, Editor, 1979, ISBN 0-07-037823-1
  - *PASCAL - The Language and its Implementation*, Edited by D.W. Barron, 1981, ISBN 0-471-27835-1. 尤其参见文章*Pascal-P Implementation Notes*和*Pascal-S: A Subset and its Implementation*.

[Category:Pascal](https://zh.wikipedia.org/wiki/Category:Pascal "wikilink") [Category:编译器软件](https://zh.wikipedia.org/wiki/Category:编译器软件 "wikilink")

1.
2.