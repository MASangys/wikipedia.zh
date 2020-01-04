> 本文内容由[OpenCV](https://zh.wikipedia.org/wiki/OpenCV)转换而来。


**OpenCV**的全称是Open Source Computer Vision Library，是一个跨平台的[计算机视觉](../Page/计算机视觉.md "wikilink")库。OpenCV是由[英特尔](../Page/英特尔.md "wikilink")公司发起并参与开发，以[BSD许可证](../Page/BSD许可证.md "wikilink")授权发行，可以在商业和研究领域中免费使用。OpenCV可用于开发实时的[图像处理](../Page/图像处理.md "wikilink")、[计算机视觉](../Page/计算机视觉.md "wikilink")以及[模式识别](../Page/模式识别.md "wikilink")程序。该程序库也可以使用英特尔公司的[IPP进行加速处理](https://zh.wikipedia.org/wiki/集成性能基元 "wikilink")。

## 历史

OpenCV项目最早由英特尔公司于1999年启动，致力于CPU密集型的任务，是一个包括如[光线追踪和](https://zh.wikipedia.org/wiki/光线追踪 "wikilink")[3D显示的计划的一部分](https://zh.wikipedia.org/wiki/3D显示 "wikilink")。早期OpenCV的主要目标是

>   - 为推进机器视觉的研究，提供一套开源且优化的基础库。不[重造轮子](../Page/重造轮子.md "wikilink")。
>
> <!-- end list -->
>
>   - 提供一个共同的基础库，使得开发人员的代码更容易阅读和转让，促进了知识的传播。
>
> <!-- end list -->
>
>   - 透過提供不需要开源或免费的软件许可，促进商业应用软件的开发。
>
> <!-- end list -->
>
>   - OpenCV现在也集成了对[CUDA](../Page/CUDA.md "wikilink")的支援.

OpenCV的第一个[预览版本于](../Page/軟件版本週期.md "wikilink")2000年在[IEEE Conference on Computer Vision and Pattern Recognition公开](https://zh.wikipedia.org/wiki/Conference_on_Computer_Vision_and_Pattern_Recognition "wikilink")，並且陸續提供了五個[測試版本](https://zh.wikipedia.org/wiki/測試版本 "wikilink")。1.0版本於2006年發布。

OpenCV的第二个主要版本是2009年10月的OpenCV 2.0。该版本的主要更新包括[C++](../Page/C++.md "wikilink")接口，更容易、更类型安全的模式，新的函式，以及对现有实现的优化（特别是多核心方面）。现在每6个月就会有一个官方版本\[1\]，并由一个商业公司赞助的独立小组进行开发。

在2012年8月，OpenCV的營運由一个非營利組織（OpenCV.org）来提供，并保留了一個开发者网站\[2\]和用户网站。\[3\]

## 应用领域

OpenCV可用于解决如下领域的问题：

  - [增强现实](https://zh.wikipedia.org/wiki/增强现实 "wikilink")
  - [人脸识别](../Page/人脸识别.md "wikilink")
  - [手势识别](../Page/手势识别.md "wikilink")
  - [人机交互](../Page/人机交互.md "wikilink")
  - [动作识别](https://zh.wikipedia.org/wiki/动作识别 "wikilink")
  - [运动跟踪](https://zh.wikipedia.org/wiki/运动跟踪 "wikilink")
  - [物体识别](https://zh.wikipedia.org/wiki/物体识别 "wikilink")
  - [图像分割](../Page/图像分割.md "wikilink")
  - [机器人](../Page/机器人.md "wikilink")

## 编程语言

OpenCV用[C++](../Page/C++.md "wikilink")语言编写，它的主要接口也是C++语言，但是依然保留了大量的[C语言接口](https://zh.wikipedia.org/wiki/C语言 "wikilink")。该库也有大量的[Python](../Page/Python.md "wikilink"), [Java](../Page/Java.md "wikilink") and [MATLAB](../Page/MATLAB.md "wikilink")/[OCTAVE](../Page/GNU_Octave.md "wikilink") (版本2.5)的接口。这些语言的API接口函数可以透過在线文档取得。\[4\]现在也提供对于[C\#](https://zh.wikipedia.org/wiki/C_Sharp_\(programming_language\) "wikilink"), [Ch](https://zh.wikipedia.org/wiki/Ch_\(computer_programming\) "wikilink"),\[5\] [Ruby](../Page/Ruby.md "wikilink")的支持。

所有新的开发和算法都是用C++接口。一个使用[CUDA](../Page/CUDA.md "wikilink")的[GPU接口也于](../Page/圖形處理器.md "wikilink")2010年9月开始实现.\[6\]

## 操作系统支持

OpenCV可以在[Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows "wikilink"), [Android](../Page/Android.md "wikilink"),\[7\] [Maemo](../Page/Maemo.md "wikilink"),\[8\] [FreeBSD](../Page/FreeBSD.md "wikilink"), [OpenBSD](../Page/OpenBSD.md "wikilink"), [iOS](https://zh.wikipedia.org/wiki/iOS "wikilink"),\[9\] [Linux](../Page/Linux.md "wikilink")和[Mac OS等平台上运行](https://zh.wikipedia.org/wiki/Mac_OS "wikilink")。使用者可以在[Github获得官方版本](https://zh.wikipedia.org/wiki/Github "wikilink")，或者从[Git](../Page/Git.md "wikilink")获得开发版本。OpenCV也是用[CMake](../Page/CMake.md "wikilink").

### Windows -{zh:操作系统要求;zh-hans:操作系统要求;zh-hant:作業系統需求;zh-tw:作業系統需求;zh-hk:作業系統需求;zh-mo:作業系統需求;}-

在Windows上编译OpenCV中与摄像输入有关部分时，需要[DirectShow](../Page/DirectShow.md "wikilink") SDK中的一些基类。该SDK可以从预先编译的[Microsoft Platform SDK](https://zh.wikipedia.org/wiki/Microsoft_Platform_SDK "wikilink") (or DirectX SDK 8.0 to 9.0c / DirectX Media SDK prior to 6.0)的子目录*Samples\\Multimedia\\DirectShow\\BaseClasses*获得。

## 参考文献

## 外部链接

  -
  - [OpenCV中文网站 和 中文wiki](http://www.opencv.org.cn/)

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")

1.  OpenCV change logs:
2.  OpenCV Developer Site: <http://code.opencv.org>
3.  OpenCV User Site: <http://opencv.org/>
4.  OpenCV C interface: <http://docs.opencv.org>
5.  Ch OpenCV: <http://www.softintegration.com/products/thirdparty/opencv/>
6.  Cuda GPU port: <http://opencv.org/platforms/cuda.html>
7.  Android port:
8.  Maemo port: <https://garage.maemo.org/projects/opencv>
9.  iPhone port: <http://www.eosgarden.com/en/opensource/opencv-ios/overview/>