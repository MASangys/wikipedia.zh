**GLUT**（英文全寫：Open**GL** **U**tility **T**oolkit）是一個處理[OpenGL](../Page/OpenGL.md "wikilink")程式的工具庫，負責處理和底層[作業系統的呼叫以及](https://zh.wikipedia.org/wiki/作業系統 "wikilink")[I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")，並包括了以下常見的功能：

  - 定義以及控制視窗
  - 偵測並處理鍵盤及滑鼠的事件
  - 以一個函數呼叫繪製某些常用的立體圖形，例如長方體、球、以及[猶他茶壺](https://zh.wikipedia.org/wiki/猶他茶壺 "wikilink")（實心或只有骨架，如`glutWireTeapot()`）
  - 提供了簡單選單列的實現

GLUT是由[Mark J. Kilgard在](https://zh.wikipedia.org/wiki/Mark_Kilgard "wikilink")[Silicon Graphics工作時所寫](https://zh.wikipedia.org/wiki/Silicon_Graphics "wikilink")，此人同時也是*OpenGL Programming for the X Window System*以及*The Cg Tutorial: The Definitive Guide to Programmable Real-Time Graphics*兩書的作者。

GLUT的兩個主要目的是建立一個[跨平台的函式庫](https://zh.wikipedia.org/wiki/跨平台 "wikilink")（事實上GLUT就是跨平台的），以及簡化學習OpenGL的條件。透過GLUT編寫OpenGL通常只需要增加幾行額外GLUT的程式碼，而且不需要知道每個不同作業系統處理視窗的API。

所有的GLUT函數都以`glut`作為開頭，例如`glutPostRedisplay()`。

## 實現

最早的GLUT函式庫是由Mark Kilgard所提供的[GLX](https://zh.wikipedia.org/wiki/GLX "wikilink")，能夠支援[X Window System](https://zh.wikipedia.org/wiki/X_Window_System "wikilink")，隨後被[Nate Robins移植到了](https://zh.wikipedia.org/wiki/Nate_Robins "wikilink")[Microsoft Windows上](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink")（[WGL](https://zh.wikipedia.org/wiki/WGL_\(software\) "wikilink")）。除此之外，[Mac OS X亦提供了一個NSGL](https://zh.wikipedia.org/wiki/Mac_OS_X "wikilink")/[CGL的介面支援了其自身產品的架構](https://zh.wikipedia.org/wiki/Core_OpenGL "wikilink")。

由於Kilgard's的GLUT函式庫已經不再被維護，且其授權亦不允許對其函式庫的再發布或是做出改版。程式設計師開始意識到必須重新製作一個[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[應用程式介面](https://zh.wikipedia.org/wiki/API "wikilink")。於是第一個開源的OpenGL API：[freeglut](https://zh.wikipedia.org/wiki/freeglut "wikilink")，以盡可能地保留原本介面的方式實現，並添加一些新的函數以解決[原始版本的使用限制](https://zh.wikipedia.org/wiki/GLUT#原始版本的使用限制 "wikilink")。例如[OpenGLUT](http://sourceforge.net/projects/openglut/)，[freeglut的其中一個分支](https://zh.wikipedia.org/wiki/freeglut "wikilink")，相較於原版本增加了一些新的功能，但在2005年5月已停止其開發。

## 原始版本的使用限制

原始版本的GLUT讓程式設計師難以實現某些功能，於是出現了許多非官方的擴充[1](http://www.mathies.com/glfaq/GLToolkitFAQ.html#II)，而在某些版本的API的實現方式中也都或多或少解決了這些問題。

以下列出數種原版GLUT中常見的問題以及解決方法：

  - 原先的GLUT需要使用者呼叫一個不會退回的`glutMainLoop()`來使相關函數開始運作。這程式設計師讓難以將其整合到其他函數中或是自行選用其他的事件迴圈。常見的作法是引入一個名為`glutCheckLoop()`的函數，這個函數只會執行一次`glutMainLoop()`的迴圈。另一個常見的方法是使用多個[執行緒](https://zh.wikipedia.org/wiki/線程 "wikilink")，並將`glutMainLoop()`放在一個單獨的執行緒中，但是這個作法會引起[同步的問題](https://zh.wikipedia.org/wiki/同步 "wikilink")，並且隨著作業系統會有不同的實現方式。此外Mac OS X的GLUT更規定`glutMainLoop()`必須以主執行緒執行。
  - 原先的`glutMainLoop()`會將[執行緒搶走](https://zh.wikipedia.org/wiki/線程 "wikilink")，直到`glutMainLoop()`自行退出，因此程式設計師沒有一個方法可以藉由呼叫函數來直接結束程式，[freeglut則藉由引入](https://zh.wikipedia.org/wiki/freeglut "wikilink")`glutLeaveMainLoop()`來解決這個問題。
  - 承上，原先的`glutMainLoop()`當視窗被關掉時就就馬上結束執行，使得程式設計師不能定義離開程式時的行為，於是許多的API並再引入另一個函數`glutWMCloseFunc()`可以定義程式執行結束時的所需的動作。

由於原始版本的GLUT已經被[開放原始碼的](https://zh.wikipedia.org/wiki/開放原始碼 "wikilink")[freeglut所取代](https://zh.wikipedia.org/wiki/freeglut "wikilink")，所以以上的問題在最原始版本的GLUT一直沒有被解決。

## 參見

  - [GLU](https://zh.wikipedia.org/wiki/GLU "wikilink")

  - （GLUI）

  - [freeglut](https://zh.wikipedia.org/wiki/freeglut "wikilink")

  - [Simple DirectMedia Layer](https://zh.wikipedia.org/wiki/Simple_DirectMedia_Layer "wikilink")（SDL）

  - [GLFW](../Page/GLFW.md "wikilink")

## 外部連結

  - [GLUT - The OpenGL Utility Toolkit](http://www.opengl.org/resources/libraries/glut/)
  - [GLUT documentation](http://www.opengl.org/documentation/specs/glut/spec3/spec3.html)
  - [OpenGLUT](http://openglut.sourceforge.net/)
  - [FreeGLUT](http://freeglut.sourceforge.net/)
  - [GLUT Tutorial for C/C++](http://www.lighthouse3d.com/opengl/glut/index.php?1)
  - [Glut tutorial with many lessons（Very in-depth）for C](http://nehe.gamedev.net/)
  - [List of OpenGL functions for Windows (GL and GLU, not GLUT)](http://msdn2.microsoft.com/en-us/library/ms537011.aspx)
  - [GLUT for WIN32](https://web.archive.org/web/20070606124702/http://www.xmission.com/~nate/glut.html)（found from [ARToolKit](https://zh.wikipedia.org/wiki/ARToolKit "wikilink") readme）
  - [GLUT Packages for Dev C++ users](http://www.nigels.com/glt/devpak/)
  - [GLUT Installation for Dev C++](http://www.paked.net/subject_pages/computer_science/Articles/installing_glut.htm)
  - [GLUT Installation for Dev C++](http://students.iiit.ac.in/~rajatgoel/stuff.html)

[Category:应用程序接口](https://zh.wikipedia.org/wiki/Category:应用程序接口 "wikilink") [Category:OpenGL](https://zh.wikipedia.org/wiki/Category:OpenGL "wikilink")