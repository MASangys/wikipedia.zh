在现代的[集成电路](../Page/集成电路.md "wikilink")（尤其是[超大规模集成电路](../Page/超大规模集成电路.md "wikilink")）的[设计和验证流程中](../Page/集成电路设计.md "wikilink")，**SystemVerilog**是一种由[Verilog](../Page/Verilog.md "wikilink")发展而来的[硬件描述](../Page/硬件描述语言.md "wikilink")、[硬件验证统一语言](https://zh.wikipedia.org/wiki/硬件验证语言 "wikilink")，前一部分基本上是2005年版[Verilog](../Page/Verilog.md "wikilink")的扩展，而后一部分[功能验证](../Page/功能验证.md "wikilink")特性则是一门[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")语言。面向对象特性很好地弥补了传统Verilog在芯片验证领域的缺陷，改善了代码可重用性，同时可以让验证工程师在比[寄存器传输级](../Page/寄存器传输级.md "wikilink")更高的抽象级别，以[事务而非单个信号作为监测对象](../Page/事务级建模方法.md "wikilink")，这些都大大提高了验证平台搭建的效率。

SystemVerilog已经被采纳为[电气电子工程师学会](../Page/电气电子工程师学会.md "wikilink")1800-2009标准，并获得了主流[电子设计自动化工具供应商的支持](https://zh.wikipedia.org/wiki/电子设计自动化 "wikilink")。虽然没有哪一个仿真系统能够声称自己完全支持SystemVerilog语言参考手册（Language
Reference Manual,
LRM）里介绍的所有语言结构，要改善测试平台的互操作性相当困难，但是推进跨平台兼容性的研究开发工作已经在进行。若干种验证方法学相继出现，以预定义类的形式对测试平台模块进行标准化，如今最新的基于SystemVerilog的验证方法学为[通用验证方法学](../Page/通用验证方法学.md "wikilink")。这一方法学主要包括[开放源代码](../Page/开放源代码.md "wikilink")的[类库以及支持](https://zh.wikipedia.org/wiki/类库 "wikilink")[可重用测试平台](https://zh.wikipedia.org/wiki/集成电路设计#可重用设计方法学 "wikilink")、开发验证[IP核的预置格式](https://zh.wikipedia.org/wiki/IP核 "wikilink")。许多第三方提供商则开始推出基于SystemVerilog的验证[IP核](https://zh.wikipedia.org/wiki/IP核 "wikilink")。

## 发展历史

SystemVerilog的历史可以追溯到2002年，当时一个被称为“Superlog”的语言被捐赠给Accellera公司（Verilog的主要支持者）。\[1\]而[Synopsys公司捐赠的](../Page/新思科技.md "wikilink")[OpenVera后来发展成为SystemVerilog中硬件验证语言子集](https://zh.wikipedia.org/wiki/OpenVera "wikilink")。2005年，SystemVerilog获批成为[电气电子工程师学会](../Page/电气电子工程师学会.md "wikilink")1800-2005标准。\[2\]当时Verilog作为电气电子工程师学会1364-2005标准尚独立存在。2009年，SystemVerilog与的Verilog进行了合并，成为了新的电气电子工程师学会1800-2009标准。现在的最新标准是电气电子工程师学会1800-2012标准。\[3\]

## 设计特性

对于[电路设计工程师来说](../Page/集成电路设计.md "wikilink")，SystemVerilog中有大部分内容继承自[Verilog](../Page/Verilog.md "wikilink")，但是也提供了一些增强或者改进的特性。下面的章节主要讲述SystemVerilog的这些特性。

### 新的数据类型

#### 逻辑型变量

SystemVerilog定义了一种新的逻辑型（`logic`）变量。和Verilog中变量的声明类似，以下代码描述了一个32位的逻辑型变量：

``` verilog
logic [31:0] my_var;
```

在传统的Verilog中，变量主要分为线网型（`wire`）和寄存器型（`reg`）两大类型。只有寄存器型变量才能够在过程代码块中被赋值，而线网型变量只能在过程代码块之外被连续赋值。寄存器型变量的过程赋值和线网型变量的连续赋值使用了完全不同的语句结构。在Verilog中，二者的区分比较微妙，以至于有些专业的工程师也在设计中混淆二者。由于`always`过程代码块不仅可以描述时序逻辑电路，还可以通过将所有寄存器型的输入变量添加到敏感列表来实现纯组合逻辑电路，因此“寄存器型”这个带有时序逻辑意义的术语本身也令人误会。

SystemVerilog增强了寄存器型变量的功能，它可以像Verilog中线网型变量一样由线网（如逻辑门等模块的输出）驱动（这样的线网驱动寄存器的方式在Verilog中是不允许的）。这种增强的变量类型被命名为“逻辑型”，从而避免“寄存器型”在字面上给人带来的误会。在大多数情况中，SystemVerilog中的`logic`可以替代Verilog中的`reg`和`wire`，但是如果某个某个变量具有多个驱动源，那么就不能使用`logic`，而要使用严格的`wire`来定义它。

#### 多维压缩数组

这种结构将Verilog中与寄存器、存储器相关的概念进行了合并和扩展。

在Verilog中，变量名称左边的索引被用来表示二进制变量的位宽，Verilog规定它只能是一维的。而这个数组名称右边的索引用来表示以这种位宽变量组成数组的元素个数，因为数组可以是一维数组、二维数组或者多维数组，因此这个索引可以是任意整数。在SystemVerilog中，如果在变量名称左边指定了由高至低的位宽（如8位信号由`[7:0`表示），则称之为“压缩数组”（packed
array，有时也被译为“合并数组”）。压缩数组本身可以是多维的，即变量名称左边可以具有多维索引。如果在变量名称右边指定了数组尺寸，则称之为“非压缩数组”。下面用示例代码表示了一个由二维压缩数组构成的一维非压缩数组：

``` verilog
logic [1:0][2:0] my_pack[32];
```

在上面的例子里，非压缩数组数组`my_pack`具有32个元素（这里用到了类似C语言的数组元素个数表示方法，这里也可以写成Verilog中常见的`[31:0]`形式）。这个非压缩数组每一个元素本身又是压缩数组，即2个位宽为3的逻辑型变量，因此非压缩数组的每一个元素包含六位二进制数的信息。A
variable of packed array type maps 1:1 onto an integer arithmetic
quantity.

#### 枚举

SystemVerilog引入了[枚举](../Page/枚举.md "wikilink")型变量，它使用一系列有实际字面意义的名称来代表若干变量。如果不进行专门的数据类型转换，一个枚举型变量不能直接赋值给另一个枚举型的变量。过去在Verilog中描述[有限状态机](../Page/有限状态机.md "wikilink")常常使用参数（关键字为`parameter`），而在SystemVerilog中，使用枚举则更为方便。

``` verilog
typedef enum logic [2:0] {
   RED, GREEN, BLUE, CYAN, MAGENTA, YELLOW
} color_t;

color_t   my_color = GREEN;
initial $display("The color is %s", my_color.name());
```

上面的例子使用了[typedef来创建了一个新的数据类型名称](https://zh.wikipedia.org/wiki/typedef "wikilink")，从而可以用它来创建一系列枚举数据。枚举类型的数据类型，为位宽为3的逻辑型变量。3位二进制数能够逐一指代六种颜色。使用代码`color_t
my_color =
GREEN;`创建了一个新的`color_t`型变量，其值初始化为六种颜色中的绿色。系统函数`$display`的作用与Verilog相同，其参数是`my_color`所属函数`name()`的返回值，即当前枚举值的ASCII值。

#### 其他新增的数据类型

除了基本的逻辑型变量（`logic`），SystemVerilog正还提供了字节型变量（`byte`，8位）、短整型变量（`shortint`，16位）、整型变量（`int`，32位）和长整型变量（`longint`64位）、比特型变量（`bit`，1位，仅具有两个逻辑状态，和逻辑型数据（`logic`）缺少了未知逻辑（`x`）和[高阻态](https://zh.wikipedia.org/wiki/高阻态 "wikilink")（`z`）。使用两态逻辑可以提高[逻辑仿真](../Page/逻辑仿真.md "wikilink")速度）。

#### 结构体和联合体

这两种数据类型和[C语言中的](https://zh.wikipedia.org/wiki/C语言 "wikilink")[结构体和](../Page/结构体_\(C语言\).md "wikilink")[联合体类似](https://zh.wikipedia.org/wiki/联合体 "wikilink")。在SystemVerilog中，与这两种数据类型相关的增强特性为压缩属性（`packed`）和标签属性（`tagged`）。压缩属性使得mapped
1:1 onto a packed array of bits，而标签属性允许跟踪当前联合体中实际被使用的成员。这些结构占据了连续的存储空间。

``` verilog
typedef struct packed {
    bit [10:0]  expo;
    bit         sign;
    bit [51:0]  mant;
} FP;

FP     zero = 64'b0;
```

### 条件、选择语句的唯一性和优先性

当条件、选择语句的路径分支较为复杂时，设计人员稍不留意就可能造成代码所描述的行为违背设计人员预计的优先级别，或者被判断的表达式同时满足多个分支条件，从而在仿真过程中产生无规律结果。

为此，SystemVerilog增强了条件、选择语句的功能，允许设计人员为这分支流程的执行设置特别的约束。在多级条件、选择语句中使用关键字`unique`，可以限定有且只有一个分支可能被执行到，否则将产生一个警告。而关键字`priority`则指出某些分支路径具有更高的优先级。过去，在传统的Verilog中，要实现类似的功能，设计人员需要在可综合代码中附带一些特殊的注释（例如：
`// synopsys full_case
parallel_case`）来通知[逻辑综合](../Page/逻辑综合.md "wikilink")工具产生正确的分支逻辑电路。不过，注释并非SystemVerilog代码的正式组成部分，它们只是在逻辑综合过程被特定的工具读取，而不严谨的注释很可能造成综合后电路与综合前仿真结果不同的情况。

### 过程代码

Verilog中的过程代码可以描述时序逻辑电路，也可以描述组合逻辑电路，这一点容易造成概念的混淆，如果代码不严谨，逻辑综合很可能推断出锁存器，从而产生不符合预期的硬件模型。SystemVerilog除了继续支持原来Verilog中的老式过程结构`always`、`initial`，还在原有`always`基础上针对[组合逻辑电路](../Page/组合逻辑电路.md "wikilink")、[触发器](../Page/触发器.md "wikilink")、[锁存器设计了专用的](https://zh.wikipedia.org/wiki/锁存器 "wikilink")`always`结构。虽然它们显得不够通用，但是三类硬件模型的差异得到了明确地区分，避免使用老式`always`时容易出现的锁存器推断：

  - `always_comb`：用于[组合逻辑电路](../Page/组合逻辑电路.md "wikilink")（相当于Verilog中对所有输入变量电平敏感的`always`，但`always_comb`无需手动列出所有输入变量，系统会自动识别）；
  - `always_ff`：用于[触发器](../Page/触发器.md "wikilink")及相关的[时序逻辑电路](../Page/时序逻辑电路.md "wikilink")（相当于Verilog中对某个或某几个信号[有效跳变沿敏感](../Page/信号边缘.md "wikilink")、并带有信号储存特性的`always`）；
  - `always_latch`：用于[锁存器级相关的时序逻辑电路](https://zh.wikipedia.org/wiki/锁存器 "wikilink")（相当于Verilog中对某个或某几个信号电平敏感、并带有信号储存特性的的`always`）。

三种专用的`always`结构在使用时会检查设计代码是否符合对应硬件模型的特征。如果设计人员在过程代码中描述了与对应硬件不符合的行为（例如在`always_latch`的敏感列表中添加了[定時器訊號](../Page/定時器訊號.md "wikilink")的上升沿），那么系统会发出警告。这是SystemVerilog种专用型过程结构的优越之处。

下面的例子使用`always_comb`来描述组合逻辑电路。在SystemVerilog中无需像Verilog中描述组合逻辑电路那样写出敏感列表，`always_comb`会告诉逻辑综合工具这是一个组合逻辑电路，因此系统会默认对所有输入信号的电平敏感。在表示组合逻辑电路的过程代码中，一般使用阻塞赋值。

``` verilog
always_comb begin
    tmp = b * b - 4 * a * c;
    no_root = (tmp < 0);
end
```

逻辑综合工具会将`always_ff`推断为[同步时序逻辑](https://zh.wikipedia.org/wiki/同步电路 "wikilink")，这里需要写明对什么信号的什么边缘（上升或者下降）敏感。在表示时序逻辑电路的过程代码中，一般使用非阻塞赋值。

``` verilog
always_ff @(posedge clk)
    count <= count + 1;
```

逻辑综合工具还会将`always_latch`推断为电平敏感的[锁存器电路](https://zh.wikipedia.org/wiki/锁存器 "wikilink")，对输入信号的电平敏感，但是具有信号储存特性：

``` verilog
always_latch
    if (en) q <= d;
```

## 接口

对于小型的设计，Verilog设计人员可以使用端口（port）来简洁地描述模块与外部环境的连接情况。不过，在规模较大、抽象层次较多的设计中，处于枢纽地位的模块往往具有大量连线与外界的连通。为此，SystemVerilog引入了接口（interface）的概念，这个概念一方面减少了大量需要声明的端口名称，另一方面，它还方便设计人员将某些相关信号的通道作为一捆相对独立的线网组，这样就使复杂的设计更加简单、明晰。另一个概念是modport，它显示了逻辑连接的方向。例如：

``` verilog
interface intf;
  logic a;
  logic b;
  modport in (input a, output b);
  modport out (input b, output a);
endinterface

module top;
  intf i ();
  u_a m1 (.i1(i));
  u_b m2 (.i2(i));
endmodule

module u_a (intf.in i1);
endmodule

module u_b (intf.out i2);
endmodule
```

## 验证特性

随着[集成电路](../Page/集成电路.md "wikilink")[集成规模的不断提高](../Page/超大规模集成电路.md "wikilink")，电路的复杂程度也越来越大。在这种情况下，[设计验证在整个设计流程中所占用的时间越来越高](../Page/功能验证.md "wikilink")。SystemVerilog在[Verilog](../Page/Verilog.md "wikilink")基础上增加了许多专门针对验证的特性，使其成为一种杰出的[硬件验证语言](https://zh.wikipedia.org/wiki/硬件验证语言 "wikilink")。下面所提到的验证代码通常是不可综合的，它们的作用主要体现在[测试平台](../Page/测试平台.md "wikilink")的搭建过程中。

### 新的数据类型

SystemVerilog引入了专门的字符串型变量，用关键字`string`表示，例如：

``` verilog
string s1 = "Hello";
string s2 = "world";
string p = ".?!";
string s3 = {s1, ", ", s2, p[2]}; // 字符串的拼接
$display("[%d] %s", s3.len(), s3); // 仿真结果显示为：“[13] Hello, world!”
```

除了在设计中使用静态数组，SystemVerilog还提供了动态数组、关联数组（associative array）和队列（queues）：

``` verilog
int cmdline_elements; // # elements for dynamic array
int da[];       // 动态数组
int ai[int];    // 以整数位索引的关联数组
int as[string]; // 以字符串为索引的关联数组
int qa[$];      // 队列

initial begin
    cmdline_elements = 16;
    da = new[ cmdline_elements ]; // 为da数组分配16个元素
end
```

动态数组的行为和非压缩数组相似，不过它允许仿真在运行时动态分配元素个数（正如上面例子所示）。压缩数组部分的元素个数（以往称之为“位宽”）必须在编译的时候已知（通过由常数或常数表达式直接确定），而非压缩数组的动态大小则可以在程序运行时，由另一个运行中的程序变量进行初始化，这样就可以在运行中根据所需改变数组的大小。

### 类

SystemVerilog为验证代码的编写提供了[面向对象程序设计](../Page/面向对象程序设计.md "wikilink")的模型。

SystemVerilog支持类的单一继承，即不允许一个类继承多个基本类。需要注意的是,
虽然SystemVerilog里提供了与[Java](../Page/Java.md "wikilink")中名称相同的“接口”概念，但是二者的实际含义际ha却大有不同，后者的接口能够提供类似多继承的功能。SystemVerilog的类可以自带配置参数，这种类被称为参数化的类，其功能与C++的模板类似，不过SystemVerilog不支持模板特化和函数模板。SystemVerilog的[多态性和C](https://zh.wikipedia.org/wiki/多态性 "wikilink")++类似，在子类中被覆盖的同名方法在基本类中必须使用关键字`virtual`予以标识。SystemVerilog里也有诸如`local`、`protected`等关键字来管理数据、方法成员的可见性。默认情况下，所有方法、数据都是对外公有的。类的示例由构造函数`new`来创建，而析构函数则无需验证人员手动创建。如果某个对象没有被任何句柄指向，系统会自动销毁它。SystemVerilog的类是构建诸如[通用验证方法学](../Page/通用验证方法学.md "wikilink")[类库结构的基础](https://zh.wikipedia.org/wiki/类库 "wikilink")。

``` systemverilog
virtual class Memory;
    virtual function bit [31:0] read(bit [31:0] addr); endfunction
    virtual function void write(bit [31:0] addr, bit [31:0] data); endfunction
endclass

class SRAM #(parameter AWIDTH=10) extends Memory;
    bit [31:0] mem [1<<AWIDTH];

    virtual function bit [31:0] read(bit [31:0] addr);
        return mem[addr];
    endfunction

    virtual function void write(bit [31:0] addr, bit [31:0] data);
        mem[addr] = data;
    endfunction
endclass
```

### 含约束的随机化

可以对定义在类或者其他语句块中的整数型变量进行随机化，从而实现输入激励的随机化，大大降低了验证人员专门定义输入激励的复杂程度。这时使用SystemVerilog构建随机验证平台的重要技术基础。在类数据变量声明前使用`rand`和`randc`这两个关键字，可以让系统得知这些变量在随后被随机化。`randc`产生的随机数序列可以保证变量被再次赋值为同一数值之前，所有可能数值已经被遍历，而声明为`rand`的变量则在随机化过程中没有这一特性。

``` systemverilog
class eth_frame;
    rand bit [47:0] dest;
    rand bit [47:0] src;
    rand bit [15:0] type;
    rand byte       payload[];
    bit [31:0]      fcs;
    rand bit [31:0] fcs_corrupt;

    constraint basic {
        payload.size inside {[46:1500]};
    }

    constraint good_fr {
        fcs_corrupt == 0;
    }
endclass
```

在上面这一例子中，数据成员`fcs`未被声明为随机变量，而其他几个数据成员则被声明为随机变量。在这个类中，紧随变量声明的是两个对随机化进行约束的语句块，用关键字`constraint`予以标识。例如第一个名为`basic`的约束要求数据成员`payload[]`（动态数组）的大小在46和1500之间（包含这两个边界值）。如果没有专门指定约束条件，则变量在可能的取值范围内的随机化不受任何约束。约束块内代码的写法有若干种，验证人员可以设定更加复杂的约束关系，例如变量取得区间甲内某一数值的权重为某一定值，或者采用多个数学关系式来限定变量的随机化取值。当然，这样做的前提是数学上能够找到数值来同时满足这些约束。SystemVerilog的解析器会尽量产生符合条件的随机数值，但是如果没能够成功，则会返回信息告知验证人员此随机化过程失败。

#### 随机化方法

每一个SystemVerilog类都有隐含的三个与[随机化有关的方法](https://zh.wikipedia.org/wiki/随机化 "wikilink")，它们是`pre_randomize`、`randomize`和`post_randomize`。其中，`randomize`方法为整个随机化过程中最重要的方法，验证人员可以在过程代码中使用该方法来启动变量的随机化过程。注意该方法的主体是事务对象本身（在[通用验证方法学](../Page/通用验证方法学.md "wikilink")中，事务一般是一个具有`uvm_sequence_item`类型或从它继承而来的类型），因此需要用`object.randomize()`来调用该方法，每执行一次该方法，该对象所有的随机变量将会得到满足约束条件（如果有）的随机数值。如果随机化失败，例如没能找到满足工程师定义约束的数值，则该方法将返回0表示随机化存在问题。另外两个方法`pre_randomize`和`post_randomize`则可以被用来处理随机化主过程之前、之后其他需要的事情。

#### 控制约束条件

此外，SystemVerilog还提供了`constraint_mode()`和`random_mode()`这两个方法来在过程代码中控制随机化，前者用于临时开启或关闭一个约束，而后者则用于临时开启或关闭某个变量的随机化。此外还有`randomize
() with {constraint}`方法可以在该方法被调用时将花括号内的约束附加到原有的约束条件之上。

``` systemverilog
class eth_frame;
    rand bit [47:0] dest;
    rand bit [47:0] src;
    rand bit [15:0] type;
    rand byte       payload[];
    bit [31:0]      fcs;
    rand bit        corrupted_frame;

    constraint basic {
        payload.size inside {[46:1500]};
    }

    constraint one_src_cst {
        src == 48'h1f00
    }

endclass
.
.
.
eth_frame my_frame;

my_frame.one_src_cst.constraint_mode(0); //关闭one_src_cst约束，之后该变量的随机化将不再受该约束限制
my_frame.type.random_mode(0);        // 关闭type变量的约束，之后的随机化将不会给该变量赋予随机数值
my_frame.randomize();
```

### 断言

与其他属性规约语言类似，SystemVerilog具有[断言这一概念](https://zh.wikipedia.org/wiki/断言_\(程式\) "wikilink")。在整个芯片验证流程中，断言检查器会自动检查定义的属性是否得到满足，如果违背，则会给出警告。SystemVerilog断言由序列（`sequences`）和属性（`properties`）两部分组成。属性可以是多个序列在时间上的组合。序列主要用布尔表达式和时序操作符来描述。\[4\]

``` systemverilog
sequence S1;
    @(posedge clk) req ##1 gnt;
endsequence
```

这一简单序列的意思是，信号`gnt`会在信号`req`为高电平一个时钟周期后也为高电平，如果这一情况没有发生，则断言失败。SystemVerilog还提供其他一些时序操作符，例如重复、连续操作符。这些操作符可以让验证人员定义更加复杂的变量关系。在上面这个例子中，加入信号`req`为低电平，则这个断言永远都是失败的。我们可以使用蕴含操作符`|=>`来表示我们所需的情况。

``` systemverilog
property req_gnt;
    @(posedge clk) req |=> gnt;
endproperty

assert_req_gnt: assert property (req_gnt) else $error("req not followed by gnt.");
```

上面这个例子显示了蕴含（implication）操作符`|=>`的使用。它左边的子句称为先行算子（antecedent）而右边的子句称为后续算子（consequent）。这时，如果`req`未满足高电平的要求，则后面的`gnt`无论是高电平还是低电平，整个断言都默认为成功；但是如果`req`为高电平，则系统会根据`gnt`的逻辑值来决定断言是否成功。除此之外，SystemVerilog还支持断言覆盖。

### 功能覆盖

在硬件验证中，功能覆盖是指验证过程中对人工定义信号事件的数据采样和收集过程。功能覆盖率在某种程度上反映了被测设计在所给输入激励下，其内部功能正确与否被检测到的百分比。功能覆盖率越高，一般代表测试越完备。注意功能覆盖率和[代码覆盖率不同](https://zh.wikipedia.org/wiki/代码覆盖率 "wikilink")，后者只是测量被测设计的所有代码有多少在仿真过程中被执行过。功能覆盖的目的是确保设计中的所有边界情况都能够被经历。

SystemVerilog覆盖组（coverage
group）内可以定义若干个仓（bins）来储存相关变量取值在其范围内的次数。交叉覆盖（Cross-coverage）则可以进一步获取多个变量分别在某一范围内统计数据。通过使用覆盖组的`sample`方法，可以启动该覆盖率的统计。

For example:

``` systemverilog
class eth_frame;
   // Definitions as above
   covergroup cov;
      coverpoint dest {
          bins bcast[1] = {48'hFFFFFFFFFFFF};
          bins ucast[1] = default;
      }
      coverpoint type {
          bins length[16] = { [0:1535] };
          bins typed[16] = { [1536:32767] };
          bins other[1] = default;
      }
      psize: coverpoint payload.size {
          bins size[] = { 46, [47:63], 64, [65:511], [512:1023], [1024:1499], 1500 };
      }

      sz_x_t: cross type, psize;
   endgroup
endclass
```

在这一例子中，验证工程师重点关注广播和单播帧的分布以及负载大小。

### 同步化

一个复杂的测试平台往往是包含多个可重用验证模块的环境，这些模块之间需要互相通信。Verilog的事件（`event`）允许不同语句块之间相互触发，不过这在复杂测试平台的线程间通信比较繁琐。为此，SystemVerilog提供了两种新的语言要素，信箱（`mailbox`）和旗语（`semaphore`）。信箱类似一个参数化的[FIFO](https://zh.wikipedia.org/wiki/FIFO "wikilink")（意味着其内容的类型是可定义的），可以将符合其类型的对象“装入”和“取出”信箱。而旗语则限定了对同一资源的访问个数。

## 其他与传统Verilog类似概念的比较

除了前面提到的特性，SystemVerilog还在以下方面对传统的Verilog进行了增强：

  - 过程赋值操作符（包括阻塞和非阻塞）能够直接对数组进行操作
  - 端口（输入、输出、双向）可以支持更多的数据类型，包括结构体、枚举、实数等
  - For循环内部可以自动定义变量，并为它添加了`continue`和`break`功能
  - 在原有的`while`循环基础上添加了`do-while`循环
  - 可以使用关键字`const`来声明常量
  - 可以对整个数组进行初始化
  - 预处理器的字符串宏的功能得到增强
  - 除了原有的并发过程语句块`fork/join`结构，还提供`join_none`和`join_any`两种代码块结尾方式
  - 任务的端口能够被声明为引用类型（`ref`），这使得任务能够直接获取任务参数自身（引用传递），而不是一个临时复制的数值（值传递）。因此，对输入方向的形式参数的操作会直接改变对应的实际参数。
  - 函数能够被声明为空类型`void`，即不返回任何数值
  - 参数（`parameters`）可以被声明为任何类型，包括用户使用`typedef`定义的新类型
  - 提供[SystemVerilog
    DPI](https://zh.wikipedia.org/wiki/SystemVerilog_DPI "wikilink")（即SystemVerilog直接编程接口）来连接以C语言、C++编写的模块

## 注释

## 参考文献

### 引用

### 来源

  -
  -
  -
  -
  -
  -
  - SystemVerilog Assertions Handbook, 2nd Edition -
    <http://SystemVerilog.us>

  - A Pragmatic Approach to VMM Adoption - <http://SystemVerilog.us>

## 外部链接

### IEEE 标准文献

  - [1800-2009 IEEE Standard for System Verilog-Unified Hardware Design,
    Specification, and Verification
    Language](http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=5354441)
  - [SystemVerilog 3.1a Language Reference
    Manual](http://www.vhdl.org/sv/SystemVerilog_3.1a.pdf) - 2004 draft
    version, which is before IEEE 1800-2005 standard.

### 教程

  - [SystemVerilog
    Tutorial](http://www.asic-world.com/systemverilog/tutorial.html)

### 标准开发

  - [IEEE P1800](http://www.eda.org/sv-ieee1800/) – Working group for
    SystemVerilog
  - Sites used before IEEE 1800-2005
      - [SystemVerilog official website](http://www.systemverilog.org/)
      - [SystemVerilog Technical Committees](http://www.vhdl.org/sv/)

### 语言延伸

  - [Verilog AUTOs](http://www.veripool.org/verilog-mode) - An
    open-source meta-comment system to simplify maintaining Verilog
    code.

## 参见

  - [Verilog](../Page/Verilog.md "wikilink")
  - [硬件验证语言](https://zh.wikipedia.org/wiki/硬件验证语言 "wikilink")

{{-}}

[Category:硬件验证语言](https://zh.wikipedia.org/wiki/Category:硬件验证语言 "wikilink")

1.
2.
3.  \[<http://standards.ieee.org/findstds/standard/1800-2012.html>,
    1800-2012 - IEEE Standard for SystemVerilog--Unified Hardware
    Design, Specification, and Verification Language\]
4.