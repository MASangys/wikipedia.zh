> 本文内容由[ReadyBoost](https://zh.wikipedia.org/wiki/ReadyBoost)转换而来。


**ReadyBoost**是[Windows Vista中的新技术](../Page/Windows_Vista.md "wikilink")，在继Windows Vista的下一代操作系统[Windows 7中](https://zh.wikipedia.org/wiki/Windows_7 "wikilink")，同样包含了这项技术，它利用了[闪存](../Page/闪存.md "wikilink")随机读写及零碎文件读写上的优势来提高[计算机系统性能](https://zh.wikipedia.org/wiki/计算机 "wikilink")。它是下一代闪存硬盘的临时替代品。

这项技术目前仅支持[USB](../Page/USB.md "wikilink")2.0或更高版本接口的USB闪存驱动器以及计算机内置[读卡器中的闪存](https://zh.wikipedia.org/wiki/读卡器 "wikilink")。具体要求是，4k随机读取的速度大于3.5M/s，512k随机写入的速度大于2.5M/s。

## 概述

使用支持 ReadyBoost 的闪存（NAND 存储）设备作为缓存，可以使Windows Vista 或者 Windows 7 中的随机磁盘读取性能原则上较传统的[硬盘](../Page/硬盘.md "wikilink")提高80-100倍。该缓存可以作用于所有的硬盘内容，而不仅仅是页面文件或者系统 [DLL](https://zh.wikipedia.org/wiki/DLL "wikilink") 文件。原则上来说，闪存设备的顺序 I/O 要比传统的硬盘速度缓慢，为了提高性能，ReadyBoost包含了大型识别逻辑，顺序读取请求并且要硬盘为这些请求服务。

当一个兼容的设备连接到计算机，弹出的 Windows 自动播放对话框将提供一个附加的选项来使用闪存设备加速系统；磁盘属性对话框也会添加一个附加的：“ReadyBoost”选项卡，并且挂载的可用空间将是可以配置的。可被指派的闪存空间为 256兆至256G（32位的 Vista将会指派为4GB）。ReadyBoost 使用 [AES-128](https://zh.wikipedia.org/wiki/AES-128 "wikilink") 进行[加密](../Page/加密.md "wikilink")和[压缩并将所有的数据存放于闪存设备](https://zh.wikipedia.org/wiki/压缩 "wikilink")；微软设计的设定的[压缩比为](https://zh.wikipedia.org/wiki/压缩比 "wikilink")2：1，即：4GB 缓存将最多包含 8GB 数据。

基于Jim Allchin的调查：对于将来要发行的 Windows，ReadyBoost 将能够使用存在于网络当中的其他 Windows PC 上的备用存储。

对于兼容的设备，必须满足以下条件：

  - 可移动设备的容量不得小于 256MB（格式化后 250MB）。Windows Vista x86 和 [x86-64](https://zh.wikipedia.org/wiki/x86-64 "wikilink") 被限制使用4GB；该限制在 Windows 7 中被删除。
  - Windows 7 允许最多使用8个设备最大256GB作为附加存储。
  - 设备的访问时间必须小于或等于 1 毫秒。
  - 设备必须能够以 2.5MB/秒的平均速度在整个设备上进行 4KB 随机读取；512KB 随机写入平均速率为 1.75MB/秒。

## 其他

  - Vista SP1 的 ReadyBoost 支持 NTFS、FAT16、和 FAT32 等文件系统。Windows 7还支持全新的 [exFAT](https://zh.wikipedia.org/wiki/exFAT "wikilink") 文件系统。Vista SP2 不支持 exFAT 文件系统。

<!-- end list -->

  -
    鉴于 ReadyBoost 缓存以文件的方式存储，设备必须格式化为 NTFS 或者 exFAT，以便存储大于 4GB 的缓存，而 FAT16 和 FAT 32 的文件系统限制文件大小为 2GB-4GB。

<!-- end list -->

  - Windows Vista 的 ReadyBoost 支持一个设备。Windows 7 可以支持多个设备，所以性能上可以认为与 RAID 0 相似。
  - 由于 Windows 7 下的 ReadyBoost 由 Vista 的增强算法发展而来，所以能提供更高性能。实验表明 Windows 7 的闪存设备读取性能比 Vista 下高5-10倍。
  - 由于 ReadyBoost 将缓存作为一个文件存储，文件系统必须挂载并分配一个盘符。由于只有根目录作为 ReadyBoost 缓存空间，简单的挂载为一个其他驱动器上的NTFS文件夹并不能满足要求。

<!-- end list -->

  -
    另外，逻辑驱动器属性将不会显示 ReadyBoost 选项卡。

<!-- end list -->

  - 微软建议作为 ReadyBoost 加速的闪存设备是已安装的系统内存的 1-3 倍。当使用 ReadyBoost 选项卡设置 ReadyBoost 的时候，

<!-- end list -->

  -
    请勿因为下面這個建议而产生混淆： 例如，如果使用16GB的容量并且格式化为 FAT32，儘管系统内存为10GB，仍会有以下提示：*“Windows 建议预留 4094 MB 作为性能提升空间”*，
    原因是 4094 MB 是 FAT 32 文件系统允许的最大文件存储空间；如果将设备重新格式化为 NTFS 或者 exFAT，提示将改为：*“Windows 建议设置为 15180MB”*。

<!-- end list -->

  - 如果系统驱动器采用[固态硬盘](../Page/固态硬盘.md "wikilink")（SSD），ReadyBoost 将不可用，其设置界面将会提示：*“此计算机的运行速度已足够快，ReadyBoost不太可能提供其他益处”*。
  - [Windows Server 2008](../Page/Windows_Server_2008.md "wikilink") 不支持 ReadyBoost。

[Category:Windows_Vista](https://zh.wikipedia.org/wiki/Category:Windows_Vista "wikilink") [Category:Windows_7](https://zh.wikipedia.org/wiki/Category:Windows_7 "wikilink") [Category:Windows_8](https://zh.wikipedia.org/wiki/Category:Windows_8 "wikilink") [Category:Windows组件](https://zh.wikipedia.org/wiki/Category:Windows组件 "wikilink")