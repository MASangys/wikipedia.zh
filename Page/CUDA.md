**CUDA**（**C**ompute **U**nified **D**evice
**A**rchitecture，**统一计算架构**\[1\]）是由[NVIDIA所推出的一種整合技術](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")，是該公司對於[GPGPU的正式名稱](https://zh.wikipedia.org/wiki/GPGPU "wikilink")。透過這個技術，使用者可利用NVIDIA的[GeForce
8以後的GPU和較新的](https://zh.wikipedia.org/wiki/GeForce_8 "wikilink")[Quadro](../Page/Quadro.md "wikilink")
[GPU进行计算](https://zh.wikipedia.org/wiki/GPU "wikilink")。亦是首次可以利用GPU作為C-编译器的开发环境。NVIDIA行銷的時候\[2\]，往往將编译器與架构混合推廣，造成混亂。實際上，CUDA可以相容[OpenCL或者自家的C](../Page/OpenCL.md "wikilink")-编译器。無論是CUDA
C-語言或是OpenCL，指令最終都會被驅動程式轉換成PTX代碼，交由顯示核心計算。\[3\]

## 概要

[CUDA_processing_flow_(En).PNG](https://zh.wikipedia.org/wiki/File:CUDA_processing_flow_\(En\).PNG "fig:CUDA_processing_flow_(En).PNG")
以[GeForce 8800
GTX为例](https://zh.wikipedia.org/wiki/GeForce_8 "wikilink")，其核心擁有128个内处理器。利用CUDA技術，就可以將那些内处理器串通起來，成為线程处理器去解决数据密集的计算。而各個内处理器能够交换、同步和共享数据。利用NVIDIA的C-编译器，通過驱动程式，就能利用这些功能。亦能成為流处理器，讓应用程式利用進行運算。

GeForce 8800
GTX显示卡的运算能力可达到520GFlops，如果建設[SLI系统](https://zh.wikipedia.org/wiki/SLI "wikilink")，就可以达到1TFlops。\[4\]

但程序员在利用CUDA技術時，須分開三种不同的存储器，要面對繁复的线程层次，编译器亦无法自动完成多数任务，以上問題就提高开发难度。而將來的G100會採用第二代的CUDA技術，提高效率，降低开发难度。

目前，已有軟體廠商利用CUDA技術，研發出Adobe Premiere
Pro的插件。通過插件，使用者就可以利用[顯示核心去加速](https://zh.wikipedia.org/wiki/顯示核心 "wikilink")[H.264/MPEG-4
AVC的编码速度](https://zh.wikipedia.org/wiki/H.264/MPEG-4_AVC "wikilink")。速度是單純利用[CPU作軟體加速的](https://zh.wikipedia.org/wiki/CPU "wikilink")7倍左右。

在NVIDIA收購[AGEIA後](../Page/AGEIA.md "wikilink")，NVIDIA取得相關的物理加速技術，即是[PhysX物理引擎](../Page/PhysX.md "wikilink")。配合CUDA技術，顯示卡可以模擬成一顆PhysX物理加速晶片\[5\]。目前，全系列的[GeForce
8顯示核心都支援CUDA](https://zh.wikipedia.org/wiki/GeForce_8 "wikilink")。而NVIDIA亦不會再推出任何的物理加速卡，顯示卡將會取代相關產品。

為了將CUDA推向民用，NVIDIA舉行一系列的編程比賽，要求参赛者開發程式，充分利用CUDA的計算潛能。但是，要將GPGPU普及化，還要看微軟能否在[Windows作業系統中](https://zh.wikipedia.org/wiki/Windows "wikilink")，提供相關的编程接口。\[6\]

2008年8月，NVIDIA推出CUDA 2.0\[7\]。2010年3月22日，NVIDIA推出CUDA
3.0，僅支援[Fermi及之後的架構](https://zh.wikipedia.org/wiki/GeForce_400 "wikilink")\[8\]。

CUDA是一種由NVIDIA提出的並由其製造的圖形處理單元（GPUs）實現的一種平行計算平臺及程式設計模型。CUDA給程式開發人員提供直接訪問CUDA
GPUs中的虛擬指令集和平行計算元件的記憶體。

使用CUDA技術，GPUs可以用來進行通用處理（不僅僅是圖形）；這種方法被稱為GPGPU。與CPUs不同的是，GPUs有著側重以較慢速度執行大量併發執行緒的並行流架構，而非快速執行單一執行緒。

軟體發展者可以通過CUDA加速庫，編譯器指令（如OpenACC）以及符合工業標準的程式設計語言（如C,C++和Fortran）擴展對CUDA平臺進行操作。C/C++程式師可以使用“CUDA
C/C++”，使用“NVCC”——NVIDIA基於LLVM的C/C++編譯器進行編譯；Fortran程式師可以使用“CUDA
Fortran”，使用PGI公司的PGI CUDA Fortran編譯器進行編譯。除了庫、編譯器指令、CUDA C/C++和CUDA
Fortran，CUDA平臺還支援其它計算介面，如Khronos
Group的OpenCL，Microsoft的DirectCompute，以及C++AMP。其協力廠商封裝也可用於Python，Perl，Fortran，Java，Ruby，Lua，Haskell，MATLAB，IDL及Mathematica的原生支持。

在電腦遊戲行業中，GPUs不僅用於進行圖形渲染，而且用於遊戲物理運算（物理效果如碎片、煙、火、流體），比如PhysX和Bullet。在計算生物學與密碼學等領域的非圖形應用上，CUDA的加速效果達到可以用數量級來表示的程度。

CUDA同時提供底層API與高階API。最初的CUDA軟體發展包（SDK）於2007年2月15日公佈，支持Microsoft
Windows和Linux。而後在第二版中加入對Mac OS
X的支持，取代2008年2月14日發佈的測試版。所有G8x系列及以後的NVIDIA
GPUs皆支援CUDA技術，包括GeForce，Quadro和Tesla系列。CUDA與大多數標準作業系統相容。Nvidia聲明：根據二進位相容性，基於G8x系列開發的程式無需修改即可在未來所有的Nvidia顯卡上運行。

## 優點

在GPUs（GPGPU）上使用圖形APIs進行傳統通用計算，CUDA技術有下列幾個優點：

  - 分散讀取——代碼可以從記憶體的任意位址讀取

<!-- end list -->

  - 統一虛擬記憶體（CUDA 4）

<!-- end list -->

  - 共用記憶體——CUDA公開一個快速的共用存儲區域（每個處理器48K），使之在多個進程之間共用。其作為一個用戶管理的快取記憶體，比使用紋理查找可以得到更大的有效頻寬。

<!-- end list -->

  - 與GPU之間更快的下載與回讀

<!-- end list -->

  - 全面支持整型與位操作，包括整型紋理查找

## 限制

  - CUDA不支援完整的C語言標準。它在C++編譯器上運行主機代碼時，會使一些在C中合法（但在C++中不合法）的代碼無法編譯。

<!-- end list -->

  - 不支持紋理渲染（CUDA 3.2及以後版本通過在CUDA陣列中引入“表面寫操作”——底層的不透明資料結構——來進行處理）

<!-- end list -->

  - 受系統主線的頻寬和延遲的影響，主機與設備記憶體之間資料複製可能會導致性能下降（通過過GPU的DMA引擎處理，非同步記憶體傳輸可在一定範圍內緩解此現象）

<!-- end list -->

  - 當執行緒總數為數千時，執行緒應按至少32個一組來運行才能獲得最佳效果。如果每組中的32個進程使用相同的執行路徑，則程式分支不會顯著影響效果；在處理本質上不同的任務時，SIMD執行模型將成為一個瓶頸（如在光線追蹤演算法中遍歷一個空間分割的資料結構）

<!-- end list -->

  - 與OpenCL不同，只有NVIDIA的GPUs支援CUDA技術

<!-- end list -->

  - 由於編譯器需要使用優化技術來利用有限的資源，即使合法的C/C++有時候也會被標記並中止編譯

<!-- end list -->

  - CUDA（計算能力1.x）使用一個不包含遞迴、函數指標的C語言子集，外加一些簡單的擴展。而單個進程必須運行在多個不相交的記憶體空間上，這與其它C語言運行環境不同。

<!-- end list -->

  - CUDA（計算能力2.x）允許C++類功能的子集，如成員函數可以不是虛擬的（這個限制將在以後的某個版本中移除）\[參見《CUDA
    C程式設計指南3.1》－附錄D.6\]

<!-- end list -->

  - 雙精度浮點（CUDA計算能力1.3及以上）與IEEE754標準有所差異：倒數、除法、平方根僅支持舍入到最近的偶數。單精確度中不支持反常值（denormal）及sNaN（signaling
    NaN）；只支援兩種IEEE舍入模式（舍位與舍入到最近的偶數），這些在每條指令的基礎上指定，而非控制字碼；除法/平方根的精度比單精確度略低。

## 應用

利用CUDA技術，配合適當的軟體（例如MediaCoder\[9\]、Freemake Video
Converter），就可以利用顯示核心進行高清视频編碼加速。视频解碼方面，同樣可以利用CUDA技術實現。此前，[NVIDIA的顯示核心本身已集成](https://zh.wikipedia.org/wiki/NVIDIA "wikilink")[PureVideo單元](https://zh.wikipedia.org/wiki/PureVideo "wikilink")。可是，實現相關加速功能的一個[微軟](https://zh.wikipedia.org/wiki/微軟 "wikilink")[API](https://zh.wikipedia.org/wiki/API "wikilink")－DXVA，偶爾會有加速失效問題。所以利用[CoreAVC配合CUDA](../Page/CoreAVC.md "wikilink")，變相在顯示核心上實現軟體解碼，解決兼容性問題\[10\]。另外，配合適當的引擎，顯示核心就可以計算[光线跟踪](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")。NVIDIA就放出了自家的Optix实时光线跟踪引擎，透過CUDA技術利用GPU計算[光线跟踪](https://zh.wikipedia.org/wiki/光线跟踪 "wikilink")。\[11\]

## 支援的產品

所有基於[G80及之後架構的民用與專業顯示卡或運算模組皆支援CUDA技術](https://zh.wikipedia.org/wiki/GeForce_8 "wikilink")\[12\]。

## 示例

下列的範例是如何用C++自GPU的image陣列中取得紋理（texture）：

``` c
cudaArray* cu_array;
texture<float, 2> tex;

// Allocate array
cudaChannelFormatDesc description = cudaCreateChannelDesc<float>();
cudaMallocArray(&cu_array, &description, width, height);

// Copy image data to array
cudaMemcpy(cu_array, image, width*height*sizeof(float), cudaMemcpyHostToDevice);

// Bind the array to the texture
cudaBindTextureToArray(tex, cu_array);

// Run kernel
dim3 blockDim(16, 16, 1);
dim3 gridDim(width / blockDim.x, height / blockDim.y, 1);
kernel<<< gridDim, blockDim, 0 >>>(d_odata, height, width);
cudaUnbindTexture (tex);

__global__ void kernel(float* odata, int height, int width)
{
   unsigned int x = blockIdx.x*blockDim.x + threadIdx.x;
   unsigned int y = blockIdx.y*blockDim.y + threadIdx.y;
   float c = tex2D(tex, x, y);
   odata[y*width+x] = c;
}
```

下列的例子是用Python改寫.
Python相關的訊息可取自[PyCUDA](http://mathema.tician.de/software/pycuda).

``` python
import pycuda.driver as drv
import numpy
import pycuda.autoinit

mod = drv.SourceModule("""
__global__ void multiply_them(float *dest, float *a, float *b)
{
  const int i = threadIdx.x;
  dest[i] = a[i] * b[i];
}
""")

multiply_them = mod.get_function("multiply_them")

a = numpy.random.randn (400).astype(numpy.float32)
b = numpy.random.randn (400).astype(numpy.float32)

dest = numpy.zeros_like (a)
multiply_them(
        drv.Out(dest), drv.In(a), drv.In(b),
        block=(400,1,1))

print dest-a*b
```

更多的Python的矩陣相乘問題可取自[pycublas](https://web.archive.org/web/20090420124748/http://kered.org/blog/2009-04-13/easy-python-numpy-cuda-cublas/).

``` python
import numpy
from pycublas import CUBLASMatrix
A = CUBLASMatrix(numpy.mat([[1,2,3],[4,5,6|1,2,3],[4,5,6]],numpy.float32))
B = CUBLASMatrix(numpy.mat([[2,3],[4,5],[6,7|2,3],[4,5],[6,7]],numpy.float32))
C = A*B
print C.np_mat()
```

## 相關條目

  - [OpenCL](../Page/OpenCL.md "wikilink")
  - [Vulkan](../Page/Vulkan_\(API\).md "wikilink")

## 参考文献

## 外部連結

  -
  -
[Category:英伟达](https://zh.wikipedia.org/wiki/Category:英伟达 "wikilink")
[Category:顯示卡](https://zh.wikipedia.org/wiki/Category:顯示卡 "wikilink")
[Category:并发计算](https://zh.wikipedia.org/wiki/Category:并发计算 "wikilink")
[Category:物理引擎](https://zh.wikipedia.org/wiki/Category:物理引擎 "wikilink")
[Category:GPGPU](https://zh.wikipedia.org/wiki/Category:GPGPU "wikilink")

1.  [CUDA是Compute Unified Device
    Architecture（统一计算架构）的简称](http://cuda.csdn.net/Contest/pro/index.aspx)

2.  [GPU挑战CPU地位\!详解CUDA+OpenCL威力](http://www.pcpop.com/doc/0/353/353743_3.shtml)
3.  [NVIDIA携手OpenCL让GPU革命更加彻底](http://www.inpai.com.cn/doc/hard/87213_4.htm)

4.
5.  [全系列GeForce 8显卡将获得PhysX物理支持](http://news.mydrivers.com/1/99/99629.htm)
6.  [NV显卡编程大赛CUDA通用计算走向民用](http://news.mydrivers.com/1/106/106517.htm)
7.  [NVIDIA发布第二代通用计算架构CUDA 2.0](http://news.mydrivers.com/1/114/114915.htm)
8.  [NVIDIA发布第三代CUDA 3.0支持Fermi/C++](http://news.mydrivers.com/1/159/159190.htm)
9.  [CUDA转码软件](http://www.pcpop.com/doc/0/413/413171_1.shtml)
10. [另类CUDA高清方案](http://www.inpai.com.cn/doc/hard/92710_6.htm)
11. [NVIDIA Optix实时光线追踪DEMO](http://news.mydrivers.com/1/144/144004.htm)
12. [NVIDIA官方支援CUDA技術的產品列表](http://www.nvidia.com/object/cuda_gpus.html)