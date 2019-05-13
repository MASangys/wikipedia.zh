**CMake**是個一個[开源的](../Page/开源.md "wikilink")[跨平台](../Page/跨平台.md "wikilink")[自動化建構系統](../Page/Build_automation.md "wikilink")，用來管理軟體建置的程序，並不依賴於某特定編譯器，並可支援多層目錄、多個應用程式與多個函式庫。
它用組態檔控制建構過程（build
process）的方式和[Unix的](../Page/Unix.md "wikilink")[make相似](../Page/make.md "wikilink")，只是CMake的組態檔取名為CMakeLists.txt。CMake並不直接建構出最終的軟體，而是產生標準的建構檔（如Unix的Makefile或Windows
[Visual
C++的projects](../Page/Visual_C++.md "wikilink")/workspaces），然後再依一般的建構方式使用。這使得熟悉某個[整合開發環境](../Page/整合開發環境.md "wikilink")（IDE）的開發者可以用標準的方式建構他的軟體，這種可以使用各平台的原生建構系統的能力是CMake和[SCons等其他類似系統的區別之處](../Page/SCons.md "wikilink")。
CMake設定檔(CMakeLists.txt)可設定原始碼或目標程式庫的路徑、產生[適配器](../Page/適配器.md "wikilink")（wrapper）、還可以用任意的順序建構執行檔。CMake支援in-place建構（二進檔和原始碼在同一個目錄樹中）和out-of-place建構（二進檔在別的目錄裡），因此可以很容易從同一個原始碼目錄樹中建構出多個二進檔。CMake也支援靜態與動態程式庫的建構。

「CMake」這個名字是"Cross platform
Make"的縮寫。雖然名字中含有"make"，但是CMake和Unix上常見的「make」系統是分開的，而且更為高階。
它可與原生建置環境結合使用，例如：make、[蘋果的Xcode與](../Page/蘋果公司.md "wikilink")[微軟的Visual](../Page/微软.md "wikilink")
Studio。

## 歷史

CMake是為了解決[美國國家醫學圖書館出資的](../Page/美國國家醫學圖書館.md "wikilink")[Visible Human
Project專案下的](../Page/Visible_Human_Project.md "wikilink")[Insight
Segmentation and Registration
Toolkit](../Page/Insight_Segmentation_and_Registration_Toolkit.md "wikilink")（ITK）軟體的跨平台建構的需求而創造出來的，其設計受到了Ken
Martin開發的[pcmaker所影響](../Page/pcmaker.md "wikilink")。pcmaker當初則是為了支援[Visualization
Toolkit](../Page/VTK.md "wikilink")（VTK）這個開放原始碼的三維圖形和視覺系統才出現的，今日VTK也採用了CMake。在設計CMake之時，Kitware公司的Bill
Hoffman採用了pcmaker的一些重要想法，加上更多他自己的點子，想把[GNU建構系統的一些功能整合進來](../Page/GNU_build_system.md "wikilink")。CMake最初的實作是在2000年中作的，在2001年初有了急速的進展，許多改良是來自其他把CMake整合到自己的系統中的開發者，比方說，採用CMake作為建構環境的[VXL社群就貢獻了很多重要的功能](../Page/VXL.md "wikilink")，Brad
King為了支援CABLE和GCC-XML這套自動包裝工具也加了幾項功能，通用電氣公司的研發部門則用在內部的測試系統DART，還有一些功能是為了讓VTK可以過渡到CMake和支援[洛斯阿拉莫斯國家實驗室的Advanced](../Page/美國Los_Alamos國家實驗室.md "wikilink")
Computing Lab的平行視覺系統ParaView而加的。

## 更多功能介紹

  - 組態檔是用一種建構軟體專用的特殊程式語言寫的CMake腳本。
  - 內建[C語言](../Page/C語言.md "wikilink")、[C++](../Page/C++.md "wikilink")、[Fortran](../Page/Fortran.md "wikilink")、[Java的自動相依性分析功能](../Page/Java.md "wikilink")。
  - 經由CMake腳本語言支援[SWIG](../Page/SWIG.md "wikilink")、[Qt](../Page/Qt.md "wikilink")、[FLTK](../Page/FLTK.md "wikilink")。
  - 內建對[微軟Visual Studio
    .NET和過去的Visual](../Page/Microsoft_Visual_Studio.md "wikilink")
    Studio版本的支援，可以產生.dsp、.sln和.vcproj檔。
  - 用傳統的時間標籤偵測檔案內容的改變。
  - 支援分布式建構（在多台電腦上同時建構）
  - 在許多作業系統上進行[跨平台編譯](../Page/交叉編譯器.md "wikilink")，包括
    [Linux](../Page/Linux.md "wikilink")、與[POSIX相容的系統](../Page/POSIX.md "wikilink")（[AIX](../Page/AIX.md "wikilink")、[\*BSD系統](../Page/BSD/OS.md "wikilink")、[HP-UX](../Page/HP-UX.md "wikilink")、[IRIX](../Page/IRIX.md "wikilink")、[MinGW/MSYS](../Page/MinGW.md "wikilink")、[Solaris](../Page/Solaris.md "wikilink")）、[Mac
    OS X和微軟Windows](../Page/Mac_OS_X.md "wikilink") 95/98/NT/2000/XP等。
  - 產生可以給[Graphviz用的全局相依圖](../Page/Graphviz.md "wikilink")。
  - 已經和[Dart](../Page/Dart.md "wikilink")、[CTest和](../Page/CTest.md "wikilink")[CPack等軟體測試和釋出的工具整合](../Page/CPack.md "wikilink")。

## 使用CMake的應用軟體

  - [Allegro library](../Page/Allegro_library.md "wikilink")
  - [Armadillo](../Page/Armadillo_\(C++_library\).md "wikilink") -
    linear algebra library
  - [Avidemux](../Page/Avidemux.md "wikilink")
  - [Awesome](../Page/Awesome_\(window_manager\).md "wikilink")
  - [Blender 3D](../Page/Blender_\(software\).md "wikilink")
  - [Boost C++ Libraries](../Page/Boost_C++_Libraries.md "wikilink")
  - [Bullet物理引擎](../Page/Bullet.md "wikilink")
  - [Chicken](../Page/Chicken_Scheme.md "wikilink")
  - [Chipmunk physics
    engine](../Page/Chipmunk_physics_engine.md "wikilink")
  - [clang](../Page/clang.md "wikilink")
  - [Conky](../Page/Conky_\(software\).md "wikilink")
  - [Doomsday Engine](../Page/Doomsday_Engine.md "wikilink")
  - [Drishti](../Page/Drishti.md "wikilink")
  - [Fennel](http://fennel.sourceforge.net/)
  - [Gammu](../Page/Gammu_\(software\).md "wikilink")
  - [GDCM](../Page/GDCM.md "wikilink")
  - [Gmsh](../Page/Gmsh.md "wikilink")
  - [Hedgewars](../Page/Hedgewars.md "wikilink")
  - [Hypertable](../Page/Hypertable.md "wikilink")
  - [hugin](../Page/hugin_\(software\).md "wikilink")
  - [IGSTK](../Page/IGSTK.md "wikilink")
  - [Insight Segmentation and Registration
    Toolkit](../Page/Insight_Segmentation_and_Registration_Toolkit.md "wikilink")
  - [KDE Software Compilation
    4](../Page/KDE_Software_Compilation_4.md "wikilink")
  - [Kicad](../Page/Kicad.md "wikilink")
  - [LMMS](../Page/LMMS.md "wikilink")
  - [LLVM](../Page/LLVM.md "wikilink")
  - [MiKTeX](../Page/MiKTeX.md "wikilink")
  - [MuseScore](../Page/MuseScore.md "wikilink")
  - [MySQL](../Page/MySQL.md "wikilink")（on Windows only）
  - [OGRE](../Page/OGRE.md "wikilink")
  - [OpenSceneGraph](../Page/OpenSceneGraph.md "wikilink")
  - [OpenCV](../Page/OpenCV.md "wikilink")
  - [OpenFLUID](http://www.umr-lisah.fr/openfluid/)
  - [ParaView](../Page/ParaView.md "wikilink")
  - [Poppler](../Page/Poppler_\(software\).md "wikilink")
  - [PvPGN](../Page/PvPGN.md "wikilink")
  - [Quantum GIS](../Page/Quantum_GIS.md "wikilink")
  - [Raw Therapee](../Page/Raw_Therapee.md "wikilink")
  - [Rem](https://web.archive.org/web/20091108155601/http://remproject.org/)
  - [Scribus](../Page/Scribus.md "wikilink")
  - [SuperTux](../Page/SuperTux.md "wikilink")
  - [Slicer](../Page/3DSlicer.md "wikilink")
  - [Stellarium](../Page/Stellarium.md "wikilink")
  - [The Visualization Toolkit](../Page/VTK.md "wikilink")
  - [VXL](../Page/VXL.md "wikilink")
  - [UFFS](../Page/UFFS.md "wikilink")

## 參見

  - [Automake](../Page/Automake.md "wikilink")
  - [qmake](../Page/qmake.md "wikilink")
  - [xmake](../Page/xmake.md "wikilink")
  - [SCons](../Page/SCons.md "wikilink")

## 外部連結

  - [CMake home page](http://www.cmake.org/)
  - [Why the KDE project switched to CMake—and
    how](http://lwn.net/Articles/188693/)

[Category:自由软件](https://zh.wikipedia.org/wiki/Category:自由软件 "wikilink")
[Category:編譯器軟件](https://zh.wikipedia.org/wiki/Category:編譯器軟件 "wikilink")
[Category:程序設計工具](https://zh.wikipedia.org/wiki/Category:程序設計工具 "wikilink")
[Category:自动化构建](https://zh.wikipedia.org/wiki/Category:自动化构建 "wikilink")