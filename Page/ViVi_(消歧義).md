**ViVi**可以是下列意思：

  - [ViVi](../Page/ViVi.md "wikilink")，女性時尚流行雜誌。
  - [維維湖](https://zh.wikipedia.org/wiki/維維湖 "wikilink")，在俄羅斯境內。
  - ［［vivi］］，ARM处理器系列的Bootloader

vivi是vivi是由韩国mizi公司为ARM处理器系列设计的一个Bootloader。适用于ARM9处理器。它支持启动加载模式和下载工作模式。vivi的配置和嵌入式Linux内核一样，可以采用菜单化的形式进行。

工作模式 vivi有两种工作模式。启动加载模式是可以在一段时间后（这个时间可更改）自行启动Linux内核，这是vivi的默认模式。下载模式下，vivi为用户提供一个命令行人机接口，通过这个人机接口可以使用vivi提供的一些命令。如果嵌入式系统没有键盘和显示，那么可以利用vivi中的串口，将其和宿主机连接起来，利用宿主机中的串口软件（如Windows中的超级终端或者Linux中的minicom）来控制。

目录结构 arch 所有vivi支持的目标板的子目录。 drivers 引导内核所需设备的驱动程序（mtd和串口），mtd下又有mtd.map，mtd.nand和mtd.nor这3个目录。 init 包含main.c和version.c两个文件。vivi从main函数开始执行。 lib 一些公共平台的接口代码，比如 time.c中的 udelay（）和 mdelay（）。 include 头文件的公共目录。如S3C2410中，include目录下的s3c2410.h定义了s3c2410 CPU的寄存器，而Plat-form/smdk2410.h 则定义了与开发板相关的资源配置参数，后者还包括了嵌入式目标机的各种参数。

启动流程 大多数Bootloader都分为step1和step2两大部分，vivi也一样。依赖于CPU体系结构的代码（如硬件初始化代码）通常都放在step1且可以用汇编语言来实现，而step2则通常用C语言来实现，这样可以实现复杂的功能，而且有更好的可读性和移植性。 1、 step1(head.S代码结构) vivi的step1代码通常放在head.S文件中，它用汇编语言写成，其主要代码部分如下： （1） 定义入口。通常这个入口放在rom(Flash)的0x0地址，即入口地址。因此，必须通知编译器以使其知道这个入口，该工作可通过修改连接器脚本来完成。 （2）设置异常向量(exception vector)。 （3）设置CPU的速度、时钟频率。 （4）内存设置 。 （5）复制vivi到RAM。 （6）中断服务。 （7）串口初始化。 2、 step2（C语言代码部分） step2的入口是int/main.c，按照源代码的组织流程，根据模块划分原则，共分为8个功能模块。 （1）vivi从main（）函数开始执行，通过函数putstr（vivi_bannner）打印出vivi的版本。 （2）初始化GPIO。 （3）进行内存映射初始化和内存管理单元（MMU）的初始化工作。 （4）初始化堆（heap），然后内存也会发生变化。 （5）初始化mtd设备。 （6）配置参数，主要是init_priv_data（）函数。 （7）提供vivi人机接口的各种命令。 （8）进入Bootloader的两种模式之一。核心函数是 boot_or_vivi（）。