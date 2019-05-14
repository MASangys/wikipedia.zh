C++
AMP是[微软公司基于](../Page/微软.md "wikilink")[DirectX](../Page/DirectX.md "wikilink")
11技术实现的一个[并行计算库](../Page/并行计算.md "wikilink")。它建立在[C++的语言规范上](../Page/C++.md "wikilink")，使得程序员可以相对容易地在数据并行硬件（如[显卡](https://zh.wikipedia.org/wiki/显卡 "wikilink")）上编写并执行并行计算程序。

## 特性

  - 支持[CPU](https://zh.wikipedia.org/wiki/CPU "wikilink")/[GPU共享内存](https://zh.wikipedia.org/wiki/GPU "wikilink")
  - 代码可在GPU上调试，亦可在CPU上模拟及调试GPU代码

## 系统要求

  - 操作系统：Windows 7, Windows 8, Windows Server 2008 R2, 或者Windows Server
    2012
  - 支持DirectX 11或更新的硬件

## 示范程序

``` cpp
#include <amp.h> // C++ AMP 头文件
#include <iostream>
using namespace concurrency; //C++ AMP 命名空间

const int size = 5; // 定义数组大小

void TestCPPAMP() {
    int aCPU[] = {1, 1, 1, 1, 1};
    int bCPU[] = {3, 3, 3, 3, 3};
    int cCPU[size];

    // 定义C++ AMP封装对象
    array_view<const int, 1> a(size, aCPU); //a是aCPU在并行计算硬件（显卡）上的拷贝
    array_view<const int, 1> b(size, bCPU);
    array_view<int, 1> c(size, cCPU);

    parallel_for_each( // C++ AMP 并行代码
        c.extent, // 定义并行计算的大小
        [=](index<1> idx) // [=]是lambda函数中的捕捉从句，index是数组下标
        restrict(amp) // 通知编译器此处为C++ AMP代码
    {
        c[idx] = a[idx] + b[idx];
    }
    );

    // 打印结果
    for (int i = 0; i < size; i++) {
        std::cout << c[i] << "\n"; // 结果应为 4, 4, 4, 4, 4
    }
}
```

## 历史

C++ AMP的初始版本于2012年发布\[1\]。2013年，微软在添加了一些特性后发布了C++ AMP的[Microsoft Visual
Studio](../Page/Microsoft_Visual_Studio.md "wikilink") 2013版本\[2\]。

## 竞争对手

在并行计算领域，C++
AMP的对手有[NVidia公司的](https://zh.wikipedia.org/wiki/NVidia "wikilink")[CUDA技术和开放标准的](../Page/CUDA.md "wikilink")[OpenCL技术](../Page/OpenCL.md "wikilink")。

## 资料来源

<references />

[Category:GPGPU函式庫](https://zh.wikipedia.org/wiki/Category:GPGPU函式庫 "wikilink")
[Category:C++函式庫](https://zh.wikipedia.org/wiki/Category:C++函式庫 "wikilink")
[Category:并行计算](https://zh.wikipedia.org/wiki/Category:并行计算 "wikilink")

1.  <http://blogs.msdn.com/b/somasegar/archive/2012/02/03/c-amp-open-specification.aspx>
2.  <http://blogs.msdn.com/b/nativeconcurrency/archive/2013/06/28/what-s-new-for-c-amp-in-visual-studio-2013.aspx?Redirected=true>