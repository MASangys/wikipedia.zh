[H_bridge.svg](https://zh.wikipedia.org/wiki/File:H_bridge.svg "fig:H_bridge.svg")
**H橋**是一種[電子電路](../Page/電子電路.md "wikilink")，可使其連接的[負載或輸出端兩端](https://zh.wikipedia.org/wiki/負載 "wikilink")[電壓反相](../Page/電壓.md "wikilink")/[電流反向](https://zh.wikipedia.org/wiki/電流 "wikilink")。這類電路可用於[機器人及其它實作場合中](https://zh.wikipedia.org/wiki/機器人 "wikilink")[直流電動機的順逆向控制及](https://zh.wikipedia.org/wiki/直流電動機 "wikilink")[轉速控制](https://zh.wikipedia.org/wiki/轉速 "wikilink")、步进电机控制（双极型步进电机还必须要包含两个H桥的电机控制器）\[1\]，电能变换中的大部分直流-交流变换器（如[逆变器及](https://zh.wikipedia.org/wiki/逆变器 "wikilink")[变频器](https://zh.wikipedia.org/wiki/变频器 "wikilink")）、部分直流-直流变换器（推挽式变换器）等\[2\]，以及其它的[功率電子裝置](https://zh.wikipedia.org/wiki/功率電子學 "wikilink")。

H桥是一个典型的直流电机控制电路，因为它的电路形状酷似字母H，故得名与“H桥”。4个三极管组成H的4条垂直腿，而电机就是H中的横杠

H橋電路，既可以[分立元器件形式搭建](../Page/電子元件.md "wikilink")，也可以整合到[積體電路上](https://zh.wikipedia.org/wiki/積體電路 "wikilink")。\[3\]「H橋」的名稱起源於其電路，兩個並聯支路和一個負載接入/電路輸出支路，看上去構成了形如「H」字母的電路結構。

## 工作原理

[H_bridge_operating.jpg](https://zh.wikipedia.org/wiki/File:H_bridge_operating.jpg "fig:H_bridge_operating.jpg")
[H_bridge_operating.svg](https://zh.wikipedia.org/wiki/File:H_bridge_operating.svg "fig:H_bridge_operating.svg")
如图1所示单相桥式逆变电路工作原理开关T1、T4闭合，T2、T3断开：u0=Ud； 开关T1、T4断开，T2、T3闭合：u0=－ Ud;
当以频率fS交替切换开关T1、T4和 T2 、T3 时 ， 则 在 负载电 阻 R上 获
得交变电压波形（正负交替的方波），其周期
Ts=1/fS，这样，就将直流电压E变成了 交流电压uo。uo含有各次谐波，如果想 得到正弦波电压，则可通过滤波器滤波
获得。

主电路开关T1\~T4，它实际是各种半导体开关器件的
一种理想模型。逆变电路中常用的开关器件有快速晶闸管、可关断晶闸管（GTO）、功率晶体管（GTR）、功率场效应晶体管（MOSFET）、绝缘栅晶体管（IGBT）。

在实际运用中，开关器件存在损耗：导通损耗（conduction losses) 和换相损耗(commutation losses)
和门极损耗(gate losses)。其中门极损耗极小可忽略不计，而导通损耗和换相损耗随着开关频率的增加而增加。

一個H橋有四個[開關器件](../Page/開關.md "wikilink")（可以是[固態器件](https://zh.wikipedia.org/wiki/固態電子元件 "wikilink")，也可以是機械式開關），如H橋電路圖（图2）所示，當開關S1和S4閉合時，開關S2和S3斷開，此時中間橋接的直流電動機兩端加上正向電壓正轉工作。當S1、S4斷開，同時閉合S2、S3時，電動機兩端電壓反相，使電動機反轉工作。在這個電路中，正常工作情況下，一個[並聯支路側的開關S](https://zh.wikipedia.org/wiki/並聯 "wikilink")1、S2不可能同時閉合，同樣另一側支路的開關S3、S4也是如此，如果某一側支路的開關同時閉合，會將供電電源的正負兩極[短路](../Page/短路.md "wikilink")，稱為直通短路。

H橋也可以剎停電動機，來使電動機停轉，具體做法是在電動機運轉時斷開S2、S4，將S1、S3閉合（或斷開S1、S3，將S2、S4閉合）。也可以全部開關斷開，讓電動機自由停轉。下表將S1\~S4分別作為一個0/1輸入變量，運行狀態作為一個0/1輸出變量，列出一個邏輯功能表：

  - 注：以下的「電動機」均指直流電動機

| S1 | S2 | S3 | S4 | **工作狀態**    |
| -- | -- | -- | -- | ----------- |
| 1  | 0  | 0  | 1  | 電動機順向（逆向）轉動 |
| 0  | 1  | 1  | 0  | 電動機逆向（順向）轉動 |
| 0  | 0  | 0  | 0  | 電動機自由停止     |
| 0  | 1  | 0  | 1  | 電動機制動       |
| 1  | 0  | 1  | 0  | 電動機制動       |
| 1  | 1  | 0  | 0  | 短路直通        |
| 0  | 0  | 1  | 1  | 短路直通        |
| 1  | 1  | 1  | 1  | 短路直通        |

三相橋式(可控)整流電路/逆變電路，工作原理和H橋類似，都是通過半控式器件/開關器件通斷狀態的改變來實現電能變換。但嚴格來說它們並不完全屬於H橋的範圍。

## 工作方式

H桥的控制主要分为近似方波控制和脉冲宽度调制（PWM）和级联多电平控制。近似方波控制即quasi-square-wave-control,
输出波形比正负交替方波多了一个零电平（3-level），谐波大为减少。优点是开关频率较低，缺点是谐波成分高，需要滤波器的成本大。

### 脉冲宽度调制

即Pulse width modulation,分为单极性和双极性pwm.
随着开关频率的升高，输出电压电流波形趋于正弦，谐波成分减小，但是高开关频率带来一系列问题：开关损耗大，电机绝缘压力大，发热等等。

### 级联多电平控制

即multi-level
inverter，采用级联H桥的方式，使得在同等开关频率下谐波失真降到最小，甚至不需要用滤波器，获得良好的近似正弦输出波形。

## 搭建實作

[L298_IMGP4533_wp.jpg](https://zh.wikipedia.org/wiki/File:L298_IMGP4533_wp.jpg "fig:L298_IMGP4533_wp.jpg")

## 參見

  - [逆變器](../Page/逆變器.md "wikilink")

## 參考資料

## 外部連結

  - [Video tutorial on H-bridges and example bidirectional motor speed
    controller
    circuit](http://afrotechmods.com/tutorials/2014/12/20/h-bridge-motor-speed-controller-tutorial/)
  - [H-Bridge Theory and
    Practice](http://www.mcmanis.com/chuck/robotics/tutorial/h-bridge/)
  - [Brief H-Bridge Theory of
    Operation](https://www.dprg.org/brief-h-bridge-theory-of-operation/)
  - [H-bridge tutorial discussing various driving modes and using
    back-EMF](http://www.modularcircuits.com/h-bridge_secrets1.htm)
  - [PWM DC Motor Controller Using MOSFETs and IR2110 H-Bridge
    Driver](http://www.circuit-projects.com/control/pwm-motor-controller-using-mosfets-and-ir2110-h-bridge-driver.html)

<!-- end list -->

  - [H-Bridges on the BEAM Robotics
    Wiki](https://web.archive.org/web/20090514025559/http://www.beam-wiki.org/wiki/H-bridge)
  - [Derivation of formulas to estimate H-bridge controller current
    (Vex, JAGUAR,Victor). Discusses why some H-bridges used in robotics
    have non-linear current and speed
    responses.](http://vamfun.wordpress.com/2012/07/21/derivation-of-formulas-to-estimate-h-bridge-controller-current-vex-jaguarvictor-draft/)

### 專案

  - [Tutorial: Build a 5A H-Bridge motor
    controller](https://web.archive.org/web/20120420092120/http://www.ikalogic.com/build-a-5a-h-bridge-motor-driver-new-version/)
  - [Building an H-bridge-controlled motor with photocells to track
    light](http://www.sccs.swarthmore.edu/users/06/adem/engin/e72/lab7/)
  - [H-bridge motor control
    with 4017](https://web.archive.org/web/20080211130913/http://www.izoelektronik.com/4017-entegresi-ve-bir-buton-ile-motor-kontrolu.htm)
    (in Turkish)
  - [Using the HIP4081A for H-bridge
    control](http://www.parallax.com/dl/docs/cols/nv/vol2/col/nv52.pdf)
  - [Using the L293D H bridge for DC motor
    control](https://web.archive.org/web/20141231141832/http://luckylarry.co.uk/arduino-projects/control-a-dc-motor-with-arduino-and-l293d-chip/)
  - [A simple circuit designed around L293D motor driver
    IC](http://www.robotplatform.com/howto/L293/motor_driver_1.html)

[Category:電路](https://zh.wikipedia.org/wiki/Category:電路 "wikilink")

1.

2.

3.