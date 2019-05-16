[Trivium_(cipher).png](https://zh.wikipedia.org/wiki/File:Trivium_\(cipher\).png "fig:Trivium_(cipher).png")
**Trivium**密码是一种对称密钥同步序列密码算法。它的设计目的是在计算能力有限的硬件上高效实现安全加密，同时兼顾软件实现效率。

## 结构

Trivium的标准输入为一个80位的密码和一个80位的起始向量（IV）。和大部分同步序列密码算法一样，Trivium的核心组件是一个密码学安全的伪随机数生成器（CSPRNG）。通过将密码和起始向量加载到该伪随机数生成器中，Trivium算法将计算出所需的密钥流。然后，通过将明文位依次与密文位进行异或操作，计算并输出密文。

Trivium伪随机数生成器可以看作由三个[线性反馈移位寄存器组成](../Page/线性反馈移位寄存器.md "wikilink")。它们的长度分别是93、84和111位。寄存器和寄存器之间通过非线性逻辑连接。通过Trivium加密共分为2个阶段。

### 热身阶段

1.  将80位的密钥加载到寄存器A的左边，并将寄存器A的剩余位以0填充。
2.  将80位的IV加载到寄存器B的左边，并将寄存器B的剩余位以0填充。
3.  将寄存器C的最后三位以1填充，并将寄存器C的剩余位以0填充。
4.  重复1152次“下一状态算法”中的操作，同时并不输出密钥。

### 下一状态算法

本节内容使用X<sub>i</sub>表示上一状态的第X个寄存器中的第i位，使用X<sup>i</sup>表示当前状态的第X个寄存器中的第i位，使用i^j表示i、j两位的逻辑异或，使用i\&j表示i、j两位的逻辑与，使用:=表示赋值。各个寄存器的第一位以1标记。s表示密钥流。

s:=s+((C<sub>109</sub>\&C<sub>110</sub>)^C<sub>111</sub>^C<sub>66</sub>)^((A<sub>91</sub>\&A<sub>92</sub>)^A<sub>93</sub>^A<sub>66</sub>)^((B<sub>82</sub>\&B<sub>83</sub>)^B<sub>84</sub>^B<sub>69</sub>)

将所有寄存器向右移1位,丢弃最后一位,并将空出的首位按照下述规则填充:

  -
    A<sup>1</sup>:=A<sub>69</sub>^((C<sub>109</sub>\&C<sub>110</sub>)^C<sub>111</sub>^C<sub>66</sub>)
    B<sup>1</sup>:=B<sub>78</sub>^((A<sub>91</sub>\&A<sub>92</sub>)^A<sub>93</sub>^A<sub>66</sub>)
    C<sup>1</sup>:=C<sub>87</sub>^((B<sub>82</sub>\&B<sub>83</sub>)^B<sub>84</sub>^B<sub>69</sub>)

### 实现

下面是Trivium使用的[CSPRNG的javascript实现](https://zh.wikipedia.org/wiki/CSPRNG "wikilink")（這是CSPRNG部分，而不是整個密碼）:

    function GetKeyStream(p,iv,l)//p为一长为80的数组,每个元素为0或1. iv也是同样的格式.参数l是一个数字,表示希望函数生成的密钥流的长度,由使用者定义.
    {

    var RightShift=function(arr,zeroth){var l,loop;l=arr.length-1;if(l<0){return arr;}for(loop=l;loop>0;loop--){arr[loop]=arr[loop-1];}arr[0]=zeroth;return arr;}
    var SubArray=function(arr_i,a){var l,loop,arr_ii;arr_ii=new Array();l=arr_i.length;for(loop=a;loop<l;loop++){arr_ii[loop-a]=arr_i[loop];}return arr_ii;}
    //以上是支持函數。

    var a,b,c,i,ra,rb,rc,ia,ib,ic,k;a=new Array();b=new Array();c=new Array();k=new Array();l=l+1152;
    for(i=0;i<80;i++){a[i]=p[i];}
    for(i=80;i<93;i++){a[i]=0;}
    for(i=0;i<80;i++){b[i]=iv[i];}
    for(i=80;i<84;i++){b[i]=0;}
    for(i=0;i<108;i++){c[i]=0;}
    for(i=108;i<111;i++){c[i]=1;}
    for(i=0;i<l;i++)
    {
    ra=((a[90]&a[91])+a[92]+a[65])%2;
    rb=((b[81]&b[82])+b[83]+b[68])%2;
    rc=((c[108]&c[109])+c[110]+c[65])%2;
    k[i]=(ra+ra+rc)%2;
    ia=(a[68]+rc)%2;
    ib=(b[77]+ra)%2;
    ic=(c[86]+rb)%2;
    a=RightShift(a,ia);
    b=RightShift(b,ib);
    c=RightShift(c,ic);
    }
    k=SubArray(k,1152);
    return k;
    }

使用全零的密鑰和一全零向量的輸入后，其生成的前100位密碼學安全的僞隨機數是：

`  0111100110110010011100101111001000011111101011101100011000010000011000110010010001011010010010101010
 `

## 性能

Trivium算法在設計之初就是完全出於硬件效率考慮。由於采用了綫性反饋移位寄存器和簡單的AND函數，其硬件實現效率很高。然而，針對位的密集操作導致其軟件實現效率低下。

## 地位

歐洲eSTREAM計劃的獲勝算法共7個，其中3個針對硬件優化，4個針對軟件優化。Trivium是3個針對硬件優化的獲勝算法之一。

## 連結

  - [Trivium在eSTREAM上的介紹](http://www.ecrypt.eu.org/stream/triviumpf.html)
  - [eSTREAM的實現](http://www.ecrypt.eu.org/stream/svn/viewcvs.cgi/ecrypt/trunk/submissions/trivium/)

[Category:流密码](https://zh.wikipedia.org/wiki/Category:流密码 "wikilink")