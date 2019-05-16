以下是用不同语言写成的**[Hello World](../Page/Hello_World.md "wikilink")**程序的列表：
[Hello_World_App.png](https://zh.wikipedia.org/wiki/File:Hello_World_App.png "fig:Hello_World_App.png")的正確輸出示範\]\]

## 打印到终端

### [ActionScript](../Page/ActionScript.md "wikilink")

``` actionscript
trace("Hello, world!");
```

\[1\]

### [Ada](https://zh.wikipedia.org/wiki/Ada程序设计语言 "wikilink")

``` ada
with TEXT_IO;

procedure HELLO is
begin
    TEXT_IO.PUT_LINE ("Hello, world!");
end HELLO;
```

\[2\]

### [-{zh-hans:汇编; zh-hant:組合;}-语言](https://zh.wikipedia.org/wiki/汇编 "wikilink")

#### [x86](https://zh.wikipedia.org/wiki/x86 "wikilink") CPU，[GNU/Linux](https://zh.wikipedia.org/wiki/GNU/Linux "wikilink")，NASM

``` asm
     section .data
 msg     db      'Hello, world!',0xA
 len     equ     $-msg

     section .text
 global  _start
 _start:
         mov     edx,len
         mov     ecx,msg
         mov     ebx,1
         mov     eax,4
         int     0x80

         mov     ebx,0
         mov     eax,1
         int     0x80
```

#### [x86](https://zh.wikipedia.org/wiki/x86 "wikilink") AT\&T、[Gas](https://zh.wikipedia.org/wiki/Gas "wikilink")

    .data
            msg : .string "Hello, world!\n"
            len = . - msg
    .text
    .global _start

    _start:
            movl $len, %edx
            movl $msg, %ecx
            movl $1  , %ebx
            movl $4  , %eax
            int $0x80

            movl $0  , %ebx
            movl $1  , %eax
            int $0x80

\[3\]

#### [x86](https://zh.wikipedia.org/wiki/x86 "wikilink") [CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")、[Windows](https://zh.wikipedia.org/wiki/Windows "wikilink")、[MASM32](../Page/MASM.md "wikilink")

``` ASM
 .386
        .model   flat,stdcall
        option   casemap:none
;==========================================================
    include     windows.inc
    include     user32.inc
    includelib  user32.lib
    include     kernel32.inc
    includelib  kernel32.lib
;==========================================================
        .data
szCaption db "A MessageBox!", 0
szText db "Hello, world!", 0
;==========================================================
        .code
start:
    invoke   MessageBox, NULL, addr szText, addr szCaption, MB_OK
    invoke   ExitProcess, NULL
;==========================================================
    end  start
```

#### [8086作業系統](https://zh.wikipedia.org/wiki/8086 "wikilink")（[NASM](https://zh.wikipedia.org/wiki/NASM "wikilink")）

``` asm
[BITS 16]
org 0x7c00
     mov ax,cs
     mov ds,ax
     mov es,ax
     call DispStr
     jmp $;End Hear
DispStr:
     mov ax, BootMessage
     mov bp, ax
     mov cx, 16;How long is the String
     mov ax, 0x1301
     mov bx, 0x000c
     mov dl, 0
     int 0x10
     ret
BootMessage: db "Hello, world!"
times 510-($-$$) db 0x0
dw 0xaa55; Bootable Mark
```

### [ASP](https://zh.wikipedia.org/wiki/ASP "wikilink")

``` asp
<% Response.Write("Hello, world!") %>
```

\[4\]

  -
    或者簡單地寫成：

<!-- end list -->

``` asp
<%= "Hello, world!" %>
```

### AutoIt

``` autoit
MsgBox(1,'','Hello, world!')
```

### [AWK](../Page/AWK.md "wikilink")

``` text
BEGIN { print "Hello, world!" }
```

\[5\]

### Bash (or sh)

``` bash
 echo 'Hello, world!'
```

或者：

``` bash
 printf 'Hello, world!\n'
```

\[6\]

### [BASIC](https://zh.wikipedia.org/wiki/BASIC编程语言 "wikilink")

**传统版 BASIC（例如
[GWBASIC](https://zh.wikipedia.org/wiki/GWBASIC "wikilink")）：**

``` qbasic
10 PRINT "Hello, world!"
20 END
```

或在提示符輸入：

``` qbasic
? "Hello, world!"
```

**现代版 BASIC（例如 Quick BASIC）：**

``` qbasic
Print "Hello, world!"
```

以下的语句，在 Quick BASIC 中同样有效：

``` qbasic
? "Hello, world!"
```

### [BCPL](../Page/BCPL.md "wikilink")

``` text
GET "LIBHDR"

LET START () BE
$(
    WRITES ("Hello, world!*N")
$)
```

### [Brainfuck](../Page/Brainfuck.md "wikilink")

``` bf
++++++++++[>+++++++>++++++++++>+++>+<<<<-]
>++.>+.+++++++..+++.>++.<<+++++++++++++++.
>.+++.------.--------.>+.>.
```

### [BlitzBasic](https://zh.wikipedia.org/wiki/BlitzBasic "wikilink")

``` BlitzBasic
Print "Hello, world!"
WaitKey
```

### [BOO](../Page/BOO.md "wikilink")

``` python
print "Hello, world!"
```

### [C](https://zh.wikipedia.org/wiki/C编程语言 "wikilink")

``` c
#include <stdio.h>
int main(void)
{
   printf("Hello, world!\n");
   return 0;
}
```

或者：

``` c
#include <stdio.h>
int main(void)
{
   puts("Hello, world!");
   return 0;
}
```

\[7\]

### [CoffeeScript](../Page/CoffeeScript.md "wikilink")

``` coffeescript
console.log 'Hello, world!'
```

或者：

``` coffeescript
alert 'Hello, world!'
```

### [C++](../Page/C++.md "wikilink")

``` cpp
#include <iostream>
int main()
{
    std::cout << "Hello, world!" << std::endl;
    return 0;
}
```

或者：

``` cpp
#include <iostream>
using namespace std;
int main()
{
    cout << "Hello, world!" << endl;
    return 0;
}
```

\[8\]

### [C++/CLI](https://zh.wikipedia.org/wiki/C++/CLI "wikilink")

``` cpp
int main()
{
    System::Control::WriteLine("Hello, world!");
}
```

### [C\# (C Sharp)](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")

``` csharp
class HelloWorldApp
{
    static void Main(string[] args)
    {
        System.Console.WriteLine("Hello, world!");
    }
}
```

\[9\] 或者（僅用於Microsoft Windows）

``` csharp
class HelloWorldApp
{
     [DllImport("user32.dll")]
     static extern MessageBox(string title, string message);
     public static void Main()
     {
          MessageBox(null, "Hello, world!");
     }
}
```

或者（使用附加的Windows Forms）

``` csharp
using System.Windows.Forms;
class HelloWorldApp
{
     public static void Main()
     {
          MessageBox.Show("Hello, world!");
     }
}
```

### [COBOL](../Page/COBOL.md "wikilink")

``` cobol
      IDENTIFICATION DIVISION.
      PROGRAM-ID. HELLO-WORLD.

      ENVIRONMENT DIVISION.

      DATA DIVISION.

      PROCEDURE DIVISION.
      DISPLAY "Hello, world!".
      STOP RUN.
```

\[10\]

### [Common Lisp](../Page/LISP.md "wikilink")

``` lisp
;直接输出
"Hello world!"

;或者
(format t "Hello world!~%")
```

\[11\]

### [DOS批处理](../Page/DOS.md "wikilink")

``` dos
@echo Hello, world!
```

對於MS-DOS 3.0或更低版本：

``` dos
echo off
cls
echo Hello, world!
```

### [Linux Shell](https://zh.wikipedia.org/wiki/Linux_Shell "wikilink")

``` dos
echo Hello, world!
```

\[12\]

### [Eiffel](../Page/Eiffel.md "wikilink")

``` eiffel
class HELLO_WORLD

creation
    make
feature
    make is
    local
        io:BASIC_IO
    do
        !!io
        io.put_string("%N Hello, world!")
    end -- make
end -- class HELLO_WORLD
```

\[13\]

### [Erlang](../Page/Erlang.md "wikilink")

``` text
    -module(hello).
    -export([hello_world/0]).

    hello_world() -> io:fwrite("Hello, World!\n").
```

### Flowgorithm

[<file:Flowgorithm>`   ``Hello``
 ``World.png`](https://zh.wikipedia.org/wiki/file:Flowgorithm_Hello_World.png "wikilink")

{{-}}

### [Forth](../Page/Forth.md "wikilink")

``` text
." Hello, world!" CR
```

\[14\]

### [Fortran](../Page/Fortran.md "wikilink")

``` fortran
    WRITE(*,*) 'Hello, world!'
    STOP
    END
```

\[15\]

### [HTML](../Page/HTML.md "wikilink")

``` html4strict
<!-- 直接輸出... -->
Hello World
<!-- 或者 -->
<html>
<head>
    <title> Hello World </title>
</head>
<body>
Hello World
</body>
</html>
```

\[16\]

### [HQ9+](https://zh.wikipedia.org/wiki/HQ9_Plus "wikilink")

``` hq9plus
H
```

### [INTERCAL](https://zh.wikipedia.org/wiki/INTERCAL编程语言 "wikilink")

``` intercal
PLEASE DO ,1 <- #13
DO ,1 SUB #1 <- #238
DO ,1 SUB #2 <- #112
DO ,1 SUB #3 <- #112
DO ,1 SUB #4 <- #0
DO ,1 SUB #5 <- #64
DO ,1 SUB #6 <- #238
DO ,1 SUB #7 <- #26
DO ,1 SUB #8 <- #248
DO ,1 SUB #9 <- #168
DO ,1 SUB #10 <- #24
DO ,1 SUB #11 <- #16
DO ,1 SUB #12 <- #158
DO ,1 SUB #13 <- #52
PLEASE READ OUT ,1
PLEASE GIVE UP
```

\[17\]

### [Java](https://zh.wikipedia.org/wiki/Java编程语言 "wikilink")

``` java
public class Hello
{
    public static void main(String[] args)
    {
        System.out.print("Hello, world!");
    }
}
```

or in tinystruct2.0:

``` java
package tinystruct.examples;

import org.tinystruct.AbstractApplication;
import org.tinystruct.Application;
import org.tinystruct.ApplicationException;
import org.tinystruct.system.ApplicationManager;

public class hello extends AbstractApplication {

    @Override
    public void init() {
        // TODO Auto-generated method stub
        this.setAction("say", "say");
    }

    @Override
    public String version() {
        // TODO Auto-generated method stub
        return null;
    }

    public String say(String words){
        System.out.println(words);
        return words;
    }

    /**
     * @param args
     * @throws ApplicationException
     */
    public static void main(String[] args) throws ApplicationException {
        // TODO Auto-generated method stub
        // Praise to the Lord!
        ApplicationManager.install(new hello());

        // to print 'Hello World'
        ApplicationManager.call("say/Hello World", null);           // Hello World

        // or...
        Application app=ApplicationManager.get( hello.class.getName());
        app.invoke("say", new Object[]{"<h1>Hello, World!</h1>"});  // <h1>Hello, World!</h1>
        app.invoke("say", new Object[]{"<h2>Bye!</h2>"});           // <h2>Bye!</h2>

        // or...
        // http://localhost:8080/?q=say/Hello World
                // https://github.com/m0ver/tinystruct2.0
    }

}
```

### [JSP](../Page/JSP.md "wikilink")

``` java
<%
    out.print("Hello, world!");
%>
```

\[18\] 或者简单地写成：

``` java
<%="Hello, world!"%>
```

### [Lisp](https://zh.wikipedia.org/wiki/Lisp "wikilink")

``` lisp
;直接输出
"hello, world"

;或者
(format t "hello, world~%")
```

### [Lua](../Page/Lua.md "wikilink")

``` lua
print "Hello, world!"
```

\[19\]

###

<code>

` ('&%:9]!~}|z2Vxwv-,POqponl$Hjig%eB@@>}=<M:9wv6WsU2T|nm-,jcL(I&%$#"`
`` `CB]V?Tx<uVtT`Rpo3NlF.Jh++FdbCBA@?]!~|4XzyTT43Qsqq(Lnmkj"Fhg${z@>``</code>

### [Matlab](https://zh.wikipedia.org/wiki/Matlab "wikilink")

``` matlab
disp('hello world!')
```

### [Mathematica](https://zh.wikipedia.org/wiki/Mathematica "wikilink")

` Hello[] := Print["`<span style="color:grey">`Hello World!`</span>`"]`
` Hello[]`

\[20\]

### [Metapost](https://zh.wikipedia.org/wiki/Metapost "wikilink")

``` text
beginfig(1);
draw (0,0)--(0,10);
draw (0,5)--(5,5);
draw (5,0)--(5,10);
draw (12,0)--(7,0)--(7,10)--(12,10);
draw (12,5)--(7,5);
draw (14,10)--(14,0)--(19,0);
draw (21,10)--(21,0)--(26,0);
draw (28,5)...(30.5,0)...(33,5)...(30.5,10)...cycle;
draw (38,10)--(39.25,0)--(40.5,10)--(41.75,0)--(43,10);
draw (45,5)...(47.5,0)...(50,5)...(47.5,10)...cycle;
draw (52,0)--(52,10);
draw (52,10)..(57,4)..(52,6.5);
draw (52,5)--(57,0);
draw (61,10)--(61,0)--(66,0);
draw (68,10)--(68,0)..(73,5)..cycle;
endfig;
end
```

### [MIXAL](https://zh.wikipedia.org/wiki/MIXAL编程语言 "wikilink")

``` text
TERM EQU 19 the MIX console device number
        ORIG   1000        start address
START OUT MSG(TERM) output data at address MSG
        HLT                halt execution
MSG ALF "MIXAL"
        ALF    " HELL"
        ALF    "O WOR"
        ALF    "LD   "
        END    START       end of the program
```

### [Nuva](https://zh.wikipedia.org/wiki/Nuva编程语言 "wikilink")

``` text
<..直接输出..>
Hello, world!

<..或者..>

<.
  // 不带换行
  ?  "Hello, world!"

  // 或者

  // 带换行
  ?? 'Hello, world!'
.>
```

### [Objective-C](../Page/Objective-C.md "wikilink")

``` objc
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Hello, World!");
    }
    return 0;
}
```

\[21\]

### [OCaml](../Page/OCaml.md "wikilink")

``` ocaml
let main () =
    print_endline "Hello world!";;
```

### [Pascal](https://zh.wikipedia.org/wiki/Pascal编程语言 "wikilink")

``` pascal
program Hello;{此行可以省略}
begin
    writeln('Hello, world!');
end.
```

\[22\]

### [Perl](../Page/Perl.md "wikilink")

``` perl
#!/usr/bin/env perl
print "Hello, world!\n";
```

Perl 5.10（含）以後版本:

``` perl
#!/usr/bin/env perl
use 5.010;
say "Hello, world!";
```

\[23\]

### [PHP](../Page/PHP.md "wikilink")

``` php
<?php
    echo 'Hello, world!';//通常使用這個，比 print 少一個字元
    print 'Hello, world!';
?>
```

或者

``` php
<?= "Hello World!"?>
```

### [Pike](https://zh.wikipedia.org/wiki/Pike编程语言 "wikilink")

``` text
#!/usr/local/bin/pike
int main()
{
    write("Hello, world!\n");
    return 0;
}
```

### [PL/I](https://zh.wikipedia.org/wiki/PLI "wikilink")

``` text
Test: procedure options(main);
    declare My_String char(20) varying initialize('Hello, world!');
    put skip list(My_String);
end Test;
```

### [Prolog](../Page/Prolog.md "wikilink")

``` prolog
goal
    write("hello,world!").
```

### [Python](https://zh.wikipedia.org/wiki/Python编程语言 "wikilink")

適用於Python 2：

``` python
#!/usr/bin/env python
print "Hello, world!"
```

適用於Python 2.6, 2.7, 3：

``` python
#!/usr/bin/env python
print("Hello, world!")
```

\[24\]

### [REXX](https://zh.wikipedia.org/wiki/REXX编程语言 "wikilink")

``` text
say "Hello, world!"
```

### [Ruby](https://zh.wikipedia.org/wiki/Ruby编程语言 "wikilink")

``` ruby
#!/usr/bin/ruby
puts "Hello, world!"
```

\[25\]

### [Sbyke Laborana](https://zh.wikipedia.org/wiki/Sbyke_Laborana "wikilink")

``` text
INIT min:1001
Om:"Hello, world!"
```

### [Scheme](../Page/Scheme.md "wikilink")

``` scheme
(display "Hello, world!")
(newline)
```

### [Scratch](https://zh.wikipedia.org/wiki/Scratch_\(程式語言\) "wikilink")

<small></small>[<File:Scratch>`   ``Hello``   ``World``   ``zh``
 ``hant.png`](https://zh.wikipedia.org/wiki/File:Scratch_Hello_World_zh_hant.png "fig:File:Scratch Hello World zh hant.png")

### [sed](https://zh.wikipedia.org/wiki/sed "wikilink")

（需要至少一行输入）

``` text
sed -ne '1s/.*/Hello, world!/p'
```

### [Seed7](https://zh.wikipedia.org/wiki/Seed7 "wikilink")

``` text
$ include "seed7_05.s7i";

  const proc: main is func
    begin
      writeln("Hello, world!");
    end func;
```

### [Smalltalk](../Page/Smalltalk.md "wikilink")

``` smalltalk
Transcript show: 'Hello, world!'
```

### [Small Basic](https://zh.wikipedia.org/wiki/Small_Basic "wikilink")

    TextWindow.WriteLine("Hello, world!")

### [SNOBOL](https://zh.wikipedia.org/wiki/SNOBOL "wikilink")

``` text
    OUTPUT = "Hello, world!"
END
```

### [SQL](../Page/SQL.md "wikilink")

#### 第一種

``` sql
create table MESSAGE (TEXT char(15));
insert into MESSAGE (TEXT) values ('Hello, world!');
select TEXT from MESSAGE;
drop table MESSAGE;
```

#### 第二種

``` sql
select 'hello, world';
```

#### 第三種

``` sql
print 'hello,world!'
```

### [Swift](../Page/Swift_\(程式語言\).md "wikilink")

適用於Swift 1.x：

    println("Hello, World!")

適用於Swift 2.x, 3：

    print("Hello, World!")

### [Tcl](../Page/Tcl.md "wikilink")

``` tcl
#!/usr/local/bin/tcl
puts "Hello, world!"
```

### [TScript](https://zh.wikipedia.org/wiki/TScript "wikilink")

``` text
? "Hello, world!"
```

### [Turing](https://zh.wikipedia.org/wiki/Turing_编程语言 "wikilink")

``` text
put "Hello, world!"
```

### [UNIX-style shell](../Page/Unix_shell.md "wikilink")

程序中的/bin/sh可改为您使用的[shell](https://zh.wikipedia.org/wiki/shell "wikilink")

``` bash
#!/bin/sh
echo 'Hello, world!'
```

#### bc

    #!/usr/bin/bc -q
    print "Hello World"
    quit

#### dc

    #!/usr/bin/env dc
    [Hello World]p

### Wiki

`<includeonly>Hello, World!</includeonly><br/>`

## GUI

### [AppleScript](../Page/AppleScript.md "wikilink")

``` AppleScript
display dialog "Hello, world!"
```

或者：

``` AppleScript
display alert "Hello, world!"
```

### [Delphi](../Page/Delphi.md "wikilink")

``` delphi
program HelloWorld;
uses
    Dialogs;
begin
    ShowMessage('Hello, World!');
end.
```

### [Nuva](https://zh.wikipedia.org/wiki/Nuva编程语言 "wikilink")

``` text
<.
  System.Ui.ShowMessage('Nuva', 'Hello, world!', ['OK'])
.>
```

### [Visual Basic](../Page/Visual_Basic.md "wikilink")

``` vb
MsgBox "Hello, world!"
```

或者：

``` vb
Print "Hello, world!"
```

### [Visual FoxPro](../Page/Visual_FoxPro.md "wikilink")

``` visualfoxpro
? "Hello, world!"
```

### [X11](https://zh.wikipedia.org/wiki/X11 "wikilink")

用一个程序

``` text
xmessage 'Hello, world!'
```

使用[Qt](../Page/Qt.md "wikilink")

``` cpp
#include <QApplication>
#include <QLabel>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QLabel label("Hello, world!");
    label.show();
    return app.exec();
}
```

C 和 GTK+

``` C
#include <gtk/gtk.h>

int main(int argc, char * args[])
{
    GtkWidget * win, * label;
    gtk_init(& argc, & args);

    label = gtk_label_new("Hello, world!");
    win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_container_add(GTK_CONTAINER(win), label);
    gtk_widget_show_all();

    gtk_main();

    return 0;
}
```

用C++和gtkmm 2

``` cpp
#include <iostream>
#include <gtkmm/main.h>
#include <gtkmm/button.h>
#include <gtkmm/window.h>
using namespace std;

class HelloWorld : public Gtk::Window
{
public:
    HelloWorld();
    virtual ~HelloWorld();
protected:
    Gtk::Button m_button;
    virtual void on_button_clicked();
};

HelloWorld::HelloWorld() : m_button("Hello, world!")
{
    set_border_width(10);
    m_button.signal_clicked().connect(SigC::slot(*this, &HelloWorld::on_button_clicked));
    add(m_button);
    m_button.show();
}

HelloWorld::~HelloWorld() {}

void HelloWorld::on_button_clicked()
{
    cout << "Hello, world!" << endl;
}

int main（int argc, char *argv[]）
{
    Gtk::Main kit(argc, argv);
    HelloWorld helloworld;
    Gtk::Main::run(helloworld);
}
```

### [Java](../Page/Java.md "wikilink")

``` java
import java.awt.*;
import java.awt.event.*;

public class HelloFrame extends Frame
{
    HelloFrame(String title)
    {
        super(title);
    }
    public void paint(Graphics g)
    {
        super.paint(g);
        java.awt.Insets ins = this.getInsets();
        g.drawString("Hello, World!", ins.left + 25, ins.top + 25);
    }
    public static void main(String args [])
    {
        HelloFrame fr = new HelloFrame("Hello");

        fr.addWindowListener(
            new WindowAdapter()
            {
                public void windowClosing(WindowEvent e)
                {
                    System.exit( 0 );
                }
            }
        );
        fr.setResizable(true);
        fr.setSize(500, 100);
        fr.setVisible(true);
    }
}
```

### [Java Applet](https://zh.wikipedia.org/wiki/Java_Applet "wikilink")

[Java
Applet用于](https://zh.wikipedia.org/wiki/Java_Applet "wikilink")[HTML文件](../Page/HTML.md "wikilink")。

HTML代码：

``` html4strict
<html>
<head>
<title>Hello World</title>
</head>
<body>
HelloWorld Program says:
<applet code="HelloWorld.class" width="600" height="100">
</applet>
</body>
</html>
```

Java代码：

``` java
import java.applet.*;
import java.awt.*;

public class HelloWorld extends Applet
{
    public void paint(Graphics g)
    {
        g.drawString("Hello, world!", 100, 50);
    }
}
```

### [JavaScript](../Page/JavaScript.md "wikilink")

[JavaScript是一种脚本语言](../Page/JavaScript.md "wikilink")。最广泛用于HTML文件中，也可以用在其它宿主环境下，比如Microsoft®
Windows®
脚本宿主（[WSH](https://zh.wikipedia.org/wiki/WSH "wikilink")）和一些web服务环境。

用于HTML中：

``` javascript
alert("Hello, World!");
//或者
document.write("Hello, World!");
```

用于WSH中：

``` javascript
WScript.Echo("Hello, World!");
```

### [PostScript](../Page/PostScript.md "wikilink")

[PostScript是一种专门用来创建图像的语言](../Page/PostScript.md "wikilink")，常用于打印机。

``` text
/font /Courier findfont 24 scalefont
font setfont
100 100 moveto
(Hello World!) show
showpage
```

### [XAML](../Page/XAML.md "wikilink")

``` xml
 <Page
  ns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
  xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
  x:Class="XAMLSample.Page1"
 >
  <Button Click="HelloWorld" Name="Button1">Click Here</Button>
 </Page>
```

接著使用 [C\#](../Page/C♯.md "wikilink") 建置

``` csharp
 using System;
 using System.Windows;
 using System.Windows.Controls;

 namespace XAMLSample
 {
  public partial class Page1 : Page
  {
    void HelloWorld(object sender, RoutedEventArgs e)
    {
      MessageBox.Show("Hello, world!");
    }
  }
 }
```

### [易语言](../Page/易语言.md "wikilink")

` .版本 2`
` .程序集 窗口程序集1`
` .子程序 __启动窗口_创建完毕`
` 信息框 (“Hello, World!”, 0, )`

## 參見

  - [Hello World](../Page/Hello_World.md "wikilink")

## 參考文獻

## 外部連結

  - [GitHub上的Hello World程序样例集](https://github.com/leachim6/hello-world)

[Category:计算机编程](https://zh.wikipedia.org/wiki/Category:计算机编程 "wikilink")
[Category:带有C代码示例的条目](https://zh.wikipedia.org/wiki/Category:带有C代码示例的条目 "wikilink")

1.  [The Hello World Collection](http://helloworldcollection.de)
    helloworldcollection.de \[2014-12-12\]

2.
3.
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.