**Quex** 是一个[词法分析](../Page/词法分析.md "wikilink")器的产生器，它能创建[C或者](https://zh.wikipedia.org/wiki/C语言 "wikilink")[C++](../Page/C++.md "wikilink")语言的词法分析器。Quex的一个显著特征是它能支持基于[Unicode字符串的输入](https://zh.wikipedia.org/wiki/Unicode "wikilink")，而且创建的分析器代码是直接编码格式的（而非查表格式），具有较高的分词速度。另外，Quex在描述词法分析的语法上采用了类似于C++的继承语法和分模块语法，这使得语法的复用非常简单，语法结构更为清晰。

## 特性

### 直接编码词法分析器

Quex使用传统的汤普森创造法，从从[正则表达式](../Page/正则表达式.md "wikilink")首先创建[不确定性有限状态机](https://zh.wikipedia.org/wiki/不确定性有限状态机 "wikilink"),然后通过压缩和归并转换为[确定性有限状态机](https://zh.wikipedia.org/wiki/确定性有限状态机 "wikilink")，通过Hopcroft优化算法，使得确定性有限状态机的状态个数达到最小。通过这些机制，使得构建词法分析器的计算时间可以大大减少。相比其他词法分析器生成器只能处理\[ASCII\]字符串的情况，Quex还可以支持Unicode字符集，并可以产生合理的运算时间的词法分析器。 相比基于查表结构的词法分析器，Quex产生的直接编码方式的代码具有更高的运算速度，而且直接编码方式的代码更接近于人类手工书写的词法分析器代码，因此比查表结构的代码具有良好的可读性。

### 支持Unicode字符输入

Quex可以处理包含完整的Unicode代码点范围（0至10FFFFh）的字符输入，同时Quex的词法语法提供了支持Unicode的正则表达式格式。例如，与二进制属性XID_Start的Unicode代码点可以用表达式指定的`\P{XID_Start}`或`\P{XIDS}`来描述。Quex还可以生成代码来调用[iconv库或](https://zh.wikipedia.org/wiki/iconv "wikilink")[ICU的字符格式转换程序](https://zh.wikipedia.org/wiki/International_Components_for_Unicode "wikilink")。Quex遵循[Unicode Consortium提出的Unicode标准](https://zh.wikipedia.org/wiki/Unicode_Consortium "wikilink")，若Unicode标准更新，则只需要将新版本的标准文件复制到到Quex相应的目录即可完成Quex对Unicode的支持更新。

### 词法分析模式

和传统的词法分析器（如[LEX和](https://zh.wikipedia.org/wiki/LEX（软件） "wikilink")[Flex](https://zh.wikipedia.org/wiki/Flex的词法分析器 "wikilink")），Quex支持词法分析器中存在多个词法分析子模块（子模式）。除了传统的正则表达式的模式匹配外，Quex还可以指定事件动作：例如代码执行期间进入或退出一个模块或发现任何模式匹配时。Quex这种模块设计可以通过继承方式，让派生和继承模块很容易共享基类模块的匹配模式和事件操作。

### 先进的缓冲处理

Quex提供了先进的数据缓冲和重新装载，保证了运行时的高效和灵活。Quex以插件的方式提供字符转换的用户接口，允许用户使用自定义的字符集转换程序。当需要新的缓冲区填充的时候，转换程序被激活。默认情况下Quex使用的是[iconv字符转换库](https://zh.wikipedia.org/wiki/iconv "wikilink")，能够提供多种字符编码集之间的转换。

## 范例

`can be translated into Quex source code as follows:`

Quex使用的字符串匹配语法和经典lex和FLEX的词法生成器工具采用的正则表达式语法类似。[Flex中的例子程序可以很容易的转换为Quex的语法](https://zh.wikipedia.org/wiki/Flex_lexical_analyser "wikilink")。

``` cpp

header {
   #include <cstdlib>  // C++ version of 'stdlib.h'
}

define {
   digit     [0-9]
   letter    [a-zA-Z]
}

mode X :
<skip:     [ \t\n\r]>
{
    "+"                  => QUEX_TKN_PLUS;
    "-"                  => QUEX_TKN_MINUS;
    "*"                  => QUEX_TKN_TIMES;
    "/"                  => QUEX_TKN_SLASH;
    "("                  => QUEX_TKN_LPAREN;
    ")"                  => QUEX_TKN_RPAREN;
    ";"                  => QUEX_TKN_SEMICOLON;
    ","                  => QUEX_TKN_COMMA;
    "."                  => QUEX_TKN_PERIOD;
    ":="                 => QUEX_TKN_BECOMES;
    "="                  => QUEX_TKN_EQL;
    "<>"                 => QUEX_TKN_NEQ;
    "<"                  => QUEX_TKN_LSS;
    ">"                  => QUEX_TKN_GTR;
    "<="                 => QUEX_TKN_LEQ;
    ">="                 => QUEX_TKN_GEQ;
    "begin"              => QUEX_TKN_BEGINSYM;
    "call"               => QUEX_TKN_CALLSYM;
    "const"              => QUEX_TKN_CONSTSYM;
    "do"                 => QUEX_TKN_DOSYM;
    "end"                => QUEX_TKN_ENDSYM;
    "if"                 => QUEX_TKN_IFSYM;
    "odd"                => QUEX_TKN_ODDSYM;
    "procedure"          => QUEX_TKN_PROCSYM;
    "then"               => QUEX_TKN_THENSYM;
    "var"                => QUEX_TKN_VARSYM;
    "while"              => QUEX_TKN_WHILESYM;

    {letter}({letter}|{digit})* => QUEX_TKN_IDENT(strdup(Lexeme));
    {digit}+                    => QUEX_TKN_NUMBER(atoi(Lexeme));
    .                           => QUEX_TKN_UNKNOWN(Lexeme);
}
```

通过使用符号“=\>”操作符，可以将特定的匹配字符串和对应的词法的Token的ID进行关联。尖括号中的语法表示词法分析器将跳过由空格和tab等组成的字符，圆括号内表示字符串匹配后，可调用C函数进行相应的处理。

对于更复杂的处理，可使用花括号包含所需要的处理语句，如下所示：

``` cpp
    ...
    {digit}+       {
           if( is_prime_number(Lexeme) )     ++prime_number_counter;
           if( is_fibonacci_number(Lexeme) ) ++fibonacci_number_counter;
           self.send(QUEX_TKN_NUMBER(atoi(Lexeme)));
    }
    ...
```

以上的代码，可以被用来统计处理字符串中的数值的个数。

## 另外可查阅

  - [Lexical analysis](https://zh.wikipedia.org/wiki/Lexical_analysis "wikilink")
  - 关于托马斯构建法和Hopcroft优化方法，可查阅书籍例如 *[Compilers: Principles, Techniques, and Tools](https://zh.wikipedia.org/wiki/Compilers:_Principles,_Techniques,_and_Tools "wikilink")*.

## 外部链接

  - [Quex](http://quex.sourceforge.net/), 官方网页

  -
[Category:Free_compilers_and_interpreters](https://zh.wikipedia.org/wiki/Category:Free_compilers_and_interpreters "wikilink") [Category:Parser_generators](https://zh.wikipedia.org/wiki/Category:Parser_generators "wikilink")