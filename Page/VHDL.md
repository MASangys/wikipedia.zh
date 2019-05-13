[Vhdl_signed_adder_source.svg](https://zh.wikipedia.org/wiki/File:Vhdl_signed_adder_source.svg "fig:Vhdl_signed_adder_source.svg")的VHDL源代码。\]\]
**VHDL**，全称**超高速集成电路硬件描述语言**（），在基于[複雜可程式邏輯裝置](../Page/複雜可程式邏輯裝置.md "wikilink")、[现场可编程逻辑门阵列和](../Page/现场可编程逻辑门阵列.md "wikilink")[特殊應用積體電路的](../Page/特殊應用積體電路.md "wikilink")[数字系统设计中有着广泛的应用](../Page/数字电路.md "wikilink")。

VHDL语言诞生于1983年，1987年被[美国国防部和](../Page/美国国防部.md "wikilink")[IEEE确定为标准的硬件描述语言](../Page/IEEE.md "wikilink")。自从IEEE发布了VHDL的第一个标准版本IEEE
1076-1987后，各大EDA公司都先后推出了自己支援VHDL的EDA工具。VHDL在电子设计行业得到了广泛的认同。此后IEEE又先后发布了IEEE
1076-1993和IEEE 1076-2000版本。

## 程式語言

注：VHDL不区分大小写；

``` VHDL
library ieee;--库声明，声明工程中用到的库，这里声明的是IEEE库
use ieee.std_logic_1164.all;--包声明，声明工程中用到的包，这里声明的是IEEE的STD_LOGIC_1164包
```

### 單體（entity）

它負責宣告一個硬體的外部輸入與輸出，一個簡單的範例（尖括号内为必填，方括号内为可选）：

``` VHDL
 entity <实体名称> is
  port(
         a : IN STD_LOGIC;
         b : OUT STD_LOGIC
      );
 end [实体名称];
```

### 架構（architecture）

它負責實現內部的硬體電路。

    architecture <结构体名称> of <实体名称> is
    begin
      --此处可编写结构体内部操作
    end [结构体名称];

### 組態（configuration）

配置用来描述各种层与层的连接关系以及实体与结构体之间的关系，此处不赘述

VHDL编写触发器简例：

``` VHDL
library ieee;                   --库声明
use ieee.std_logic_1164.all;    --包声明
entity test is                  --实体定义
  port(
       d     : in   std_logic;
       clk   : in   std_logic;
       q     : out  std_logic);
end test;
architecture trigger of test is --结构体定义
  signal q_temp:std_logic;
begin
  q<=q_temp;
  process(clk)
  begin
    if clk'event and clk='1' then
      q_temp<=d;
    end if;
  end process;
end trigger;
configuration d_trigger of test is--配置，将结构体配置给实体，配置名为d_trigger
  for trigger
  end for;
end d_trigger;
```

## 参见

  - [硬件描述语言](../Page/硬件描述语言.md "wikilink")

{{-}}

[Category:硬件描述语言](https://zh.wikipedia.org/wiki/Category:硬件描述语言 "wikilink")