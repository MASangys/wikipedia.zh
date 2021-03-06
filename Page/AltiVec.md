> 本文内容由[AltiVec](https://zh.wikipedia.org/wiki/AltiVec)转换而来。


**AltiVec**是一个浮点和整型[单指令流多数据流](https://zh.wikipedia.org/wiki/单指令流多数据流 "wikilink")（SIMD）指令集，其由[苹果](https://zh.wikipedia.org/wiki/苹果公司 "wikilink")，[IBM](../Page/IBM.md "wikilink")，[Freescale Semiconductor](https://zh.wikipedia.org/wiki/Freescale_Semiconductor "wikilink")（早先的[摩托罗拉](../Page/摩托罗拉.md "wikilink")的半导体部，合称[AIM联盟](https://zh.wikipedia.org/wiki/AIM联盟 "wikilink")），创建并拥有，并由PowerPC版本实现，包括摩托罗拉的[G4](https://zh.wikipedia.org/wiki/PowerPC_G4 "wikilink")，IBM的[G5和](https://zh.wikipedia.org/wiki/PowerPC_970 "wikilink")[POWER6](https://zh.wikipedia.org/wiki/POWER6 "wikilink")，还有[P.A. Semi的](../Page/P.A._Semi.md "wikilink")[PWRficient](https://zh.wikipedia.org/wiki/PWRficient "wikilink") PA6T。AltiVec其实是由Freescale公司拥的一个商标，所有这个系统也被看作是苹果的Velocity引擎和[IBM](../Page/IBM.md "wikilink")与[P.A. Semi的VMX](../Page/P.A._Semi.md "wikilink")，虽然IBM今天也在使用AltiVec。

值得注意的是，AltiVec指的是一个指令集，而IBM和摩托罗拉在中央处理器的实现上有不同的逻辑设计。现在，IBM的核心没有包含摩托罗拉授权的AltiVec逻辑设计，反之亦然。

AltiVec是Power ISA v.2.03详述的一个标准部分。在这个详述出现之前，AltiVec一直不是PowerPC的正式组件，虽然其使用PowerPC的指令格式和语法并拥有专门为此目的而分配的作业码空间。

## 特点与相似性

AltiVec和[SSE](../Page/SSE.md "wikilink")都拥有可以表述16个8比特的有符号或无符号字符，8个16比特有符号或无符号短整型，4个32比特整型或4个32位浮点型变量的的128比特寄存器。两者都提供缓存控制指令以使得当处理数据流时的缓存污染最小。

他们也表现出重要的不同。不像SSE2，AltiVec支持一个特别的RGB像素-{}-数据类型，但其不在64比特的双精度浮点上操作，并且没有办法在标量和向量寄存器之间直接移动数据。为了保持和PowerPC的[RISC设计中的](../Page/精简指令集.md "wikilink")“载入／储存”模式一致，向量寄存器，如同标量寄存器，只能从内存中载入并存储到内存中去。但是，AltiVec提供了更多的“水平”操作的集合，其跨越所有的向量元素；许可的数据类型和操作的结合也更加完整。AltiVec提供了32个128比特向量寄存器，与之相比，SSE和SSE2只提供了8个。大多数AltiVec指令采用3个寄存器运算对象，而在[IA-32中只有两个寄存器](https://zh.wikipedia.org/wiki/IA-32 "wikilink")／寄存器或寄存器／内存操作对象。

AltiVec也是唯一支持灵活向量排列的指令，在其中，一个结果向量值的每个字节都可以从两个其他向量中的任何一个提取，并被另一个向量参数化。这就允许了在一条指令中的复杂操控。

最新版本的[GCC](../Page/GCC.md "wikilink")，[IBM VisualAge编译器和其他编译器提供了](https://zh.wikipedia.org/wiki/VisualAge "wikilink")[本征函数以直接从C和C](https://zh.wikipedia.org/wiki/intrinsic_function "wikilink")++程序访问AltiVec指令。在版本4中，GCC也包含了“自动向量化”的能力，其试图智能地创建AltiVec加速二进制代码而程序员无须直接使用本征函数。“向量”存储类的引入允许了原向量类型的声明，比如“vector unsigned char foo；”声明了一个名为“foo”的128比特的向量变量，其包含了16个8比特无符号字符。载入的本征函数例如“vec_add”发出了基于向量内的元素类型的合适的作业代码，并强制了严格的类型检查。而与之相比，Intel为IA-32 SIMD寄存器所定义的数据类型仅仅声明了向量寄存器（128或64比特）的大小并且在128比特寄存器时定义其包含整型或浮点型数值。程序员必须位次数据类型选择合适的本征函数，如“_mm_add_epil6(x,y)”以求两个包含8个16比特整型的向量之和。

## VMX128

IBM为[Xbox 360](../Page/Xbox_360.md "wikilink") Xenon处理器加强了VMX ,这些增强包含新routines, 以游戏为目标（加速3D图形和游戏物理），总共128 registers, VMX128和VMX/Altivec不完全兼容，一部分整数operations被移除，以给更大的register file和additional application-specific operations提供空间

[Category:微處理器](https://zh.wikipedia.org/wiki/Category:微處理器 "wikilink")