**Renderscript**（渲染脚本）是[Android](../Page/Android.md "wikilink")操作系统上的一套[API](../Page/应用程序接口.md "wikilink")。它基于[异构计算思想](https://zh.wikipedia.org/wiki/异构计算 "wikilink")，专门用于密集型计算。Renderscript提供了三个基本工具：一个硬件无关的通用计算API；一个类似于[CUDA](../Page/CUDA.md "wikilink")、[OpenCL](../Page/OpenCL.md "wikilink")和[GLSL](../Page/GLSL.md "wikilink")的计算API；和一个类[C99的脚本语言](https://zh.wikipedia.org/wiki/C99 "wikilink")。允许开发者以较少的代码实现功能复杂且性能优越的应用程序。此外Renderscript还可以用于3D图形计算。Android 4.2以后Renderscript添加了脚本内联的功能，编码时可以在脚本中直接调用*Blend*、*Blur*以及*ScriptGroups*等内置函数，而无须重新编写它们的实现。

最近，Google在Android系统中添加另外一套名为*Filterscript*的API，允许开发者在标准Renderscript运行时API上使用Filterscript完成自己的图像处理操作。不过考虑到脚本在[多核CPU](../Page/多核心處理器.md "wikilink")、GPU和DSP上的兼容性，使用时这个功能可能会受到很多严格的限制。Filterscript不是Renderscript的替代物而是它子集。Filterscript不适合用于精确度较高的数值计算，但其跨平台能力较强\[1\]。

## 特性

  - Renderscript始于Android 3.1系统，但通过引入Android Support Library，应用程序可以在不低于Android 2.2的系统上使用它\[2\]
  - 包含了一个专门用于计算的API
  - 使用基于[C的脚本语言进行编码](https://zh.wikipedia.org/wiki/C语言 "wikilink")

## 可移植性

Renderscript的设计本意是将代码运行各类Android操作系统上，而无须考虑实际硬件环境。因此它的目标在于可移植性，其次才是高性能。

## 性能

Renderscript专为那些可以被高效分割且被能多个底层硬件并行执行的任务而设计。在Android 4.2以后的系统中，Renderscript不仅可以在CPU上运行，还被扩展到GPU上\[3\]。

## 易用性

Renderscript极大地简化了编码流程，大部分的步骤是自动完成的，使用时只须编写核心的业务代码即可。

Renderscript和[NDK的使用场景并不一样](https://zh.wikipedia.org/wiki/原生开发工具包 "wikilink")，对于特定的问题，需要权衡这两者的适用性。

## 历史

[Android 4.1系统以后](../Page/Android.md "wikilink")，Renderscipt中的实验性3D渲染API已被废弃，因此现在它只剩下作为一个用于密集计算的API。

## 引用

[Category:Android](https://zh.wikipedia.org/wiki/Category:Android "wikilink") [Category:GPGPU函式庫](https://zh.wikipedia.org/wiki/Category:GPGPU函式庫 "wikilink")

1.
2.
3.