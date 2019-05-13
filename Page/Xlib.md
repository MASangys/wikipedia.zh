**Xlib**是一種[X Window
System協定的用戶端](../Page/X_Window_System.md "wikilink")，以[C語言撰寫](../Page/C語言.md "wikilink")。其功能是與X
server溝通。這樣的功能可以讓程式人員撰寫程式時，毋須了解其協定的細節。但甚少應用程式會直接使用Xlib;通常是透過其他的函式庫來呼叫Xlib用以提供[部件工具箱](../Page/部件工具箱.md "wikilink")（widget
toolkits）：

[Xlib_and_XCB_in_the_X_Window_System_graphics_stack.svg](https://zh.wikipedia.org/wiki/File:Xlib_and_XCB_in_the_X_Window_System_graphics_stack.svg "fig:Xlib_and_XCB_in_the_X_Window_System_graphics_stack.svg")

  - [Intrinsics](../Page/Intrinsics.md "wikilink")（Xt）
  - [Xaw](../Page/Xaw.md "wikilink")（Xaw）
  - [Motif](../Page/Motif.md "wikilink")
  - [GTK+](../Page/GTK+.md "wikilink")
  - [Qt](../Page/Qt.md "wikilink")（X11 version）
  - [Tk](../Page/Tk.md "wikilink")

Xlib發表於1985年，目前使用在許多的[Unix](../Page/Unix.md "wikilink")-like作業系統上。

目前[XCB有可能取代Xlib](../Page/XCB.md "wikilink").

## 資料型別

Xlib主要的資料型別是`Display`\[1\]結構。

## 範例

下面是一個XLib的範列，產生一個視窗。

``` C
/*
  Simple Xlib application drawing a box in a window.
  gcc input.c -o output -lX11
*/

#include <X11/Xlib.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

int main(void)
{
  Display *d;
  Window w;
  XEvent e;
  char *msg = "Hello, World!";
  int s;

  bool done = false;

  /* open connection with the server */
  d = XOpenDisplay(NULL);
  if (d == NULL) {
    fprintf(stderr, "Cannot open display\n");
    exit(1);
  }

  s = DefaultScreen(d);

  /* create window */
  w = XCreateSimpleWindow(d, RootWindow(d, s), 10, 10, 640, 480, 0,
              BlackPixel(d, s), WhitePixel(d, s));

  /* register interest in the delete window message */
  Atom wmDeleteMessage = XInternAtom(d, "WM_DELETE_WINDOW", False);
  XSetWMProtocols(d, w, &wmDeleteMessage, 1);

  /* select kind of events we are interested in */
  XSelectInput(d, w, ExposureMask | KeyPressMask | StructureNotifyMask);

  /* map (show) the window */
  XMapWindow(d, w);

  /* event loop */
  while (!done) {
    XNextEvent(d, &e);
    /* draw or redraw the window */
    if (e.type == Expose) {
      XFillRectangle(d, w, DefaultGC(d, s), 20, 20, 10, 10);
      XDrawString(d, w, DefaultGC(d, s), 50, 50, msg, strlen(msg));
    }

    /* exit on key press */
    switch(e.type){

    case KeyPress:
      XDestroyWindow(d, w);
      break;

    case DestroyNotify:
      done = true;
      break;

    case ClientMessage:
      if (e.xclient.data.l[0] == wmDeleteMessage){
    done = true;
      }
      break;
    }
  }

  /* close connection to server */
  XCloseDisplay(d);

  return 0;
}
```

## 注釋

<references/>

## 外部連結

  - [Xlib Programming
    Manual](https://web.archive.org/web/20090217235848/http://www.sbin.org/doc/Xlib/)
  - [Manual pages for all Xlib
    functions](http://tronche.com/gui/x/xlib/function-index.html)
  - [Kenton Lee's pages on X Window and
    Motif](http://www.rahul.net/kenton/bib.html)
  - [A short tutorial on Xlib](http://tronche.com/gui/x/xlib-tutorial/)
  - [A longer tutorial on
    Xlib](https://web.archive.org/web/20071018025425/http://users.actcom.co.il/~choo/lupg/tutorials/xlib-programming/xlib-programming.html#create_window)
  - [Using Xlib for creating a screensaver
    module](http://www.dis.uniroma1.it/%7eliberato/screensaver)
  - [Simple X11 toolkit for learning
    Xlib](https://web.archive.org/web/20090308084753/http://www.init0.nl/simplex11tk.php)

[Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink")

1.