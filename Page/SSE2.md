**SSE2**，全名為**Streaming SIMD Extensions
2**，是一種[IA-32架構的](../Page/IA-32.md "wikilink")[SIMD](../Page/SIMD.md "wikilink")（單一指令多重資料）[指令集](../Page/指令集.md "wikilink")。SSE2是在
2001年隨著[Intel發表第一代](../Page/Intel.md "wikilink")[Pentium
4處理器也一併推出的指令集](../Page/Pentium_4.md "wikilink")。它延伸較早的[SSE指令集](../Page/SSE.md "wikilink")，而且可以完全取代[MMX指令集](../Page/MMX.md "wikilink")。在2004年，Intel
再度擴展了SSE2指令為 SSE3 指令集。與 70 條指令的 SSE
相比，SSE2新增了144條指令。在2003年，[AMD也在發布](../Page/AMD.md "wikilink")[AMD64的](../Page/AMD64.md "wikilink")64位元處理器時跟進SSE2指令集。

## SSE2的更動

SSE2延伸了MMX指令群使用XMM暫存器來運算，這能讓開發人員完全避免讓8個64位元MMX暫存器與原有的IA-32浮點運算暫存器共用。而這樣子就能夠不需要切換MMX與x87浮點運算的前提之下混合SIMD純量與浮點向量運算。不過，這不會因為
SSE 的暫存器的精度提高而讓運算結果的精度也提高。

而還有部分的SSE2指令集包含了一系列的[CPU快取控制指令](../Page/CPU快取.md "wikilink")。當處理理論上無限的資料流，還有數字格式轉換指令所產生出來的大量補數，能夠使[快取污染有效的降低](../Page/快取污染.md "wikilink")。

AMD在AMD64架構上的SSE2再新增額外8個暫存器，把暫存器的量提升到16個（XMM0～XMM15）。這些額外的暫存器只有執行於64位元的模式下才能夠使用。2004年，Intel也採用這些額外的暫存器於它的86-64（Intel64）架構。

## x87浮點運算器與SSE2的差別

FPU的指令集（x87）通常在運算時使用80位元的精度。原始的FPU軟體的演算法如果套用到SSE2，在數學運算上或是資料輸入肯定會造成一些可測得的數值誤差。這在科學運算上是很嚴重的問題，會導致在不同的架構上運算出互不相同的結果。而這問題很容易發生在編譯器在解釋一條包含好幾項運算子（加減乘除）的數學式上。取決於使用哪種編譯方式（與最佳化），計算過程中會產生不一樣的中間值。而在FPU中這些中間值會從80位元截成64位元。而當這被截掉的中間值拿來運算，最後的數值有可能會大不相同。下面使用G95編譯的Fortran程式碼就是其中一個例子。

``` fortran
program hi
real a,b,c,d
real x,y,z
a=.013
b=.027
c=.0937
d=.79
y=-a/b + (a/b+c)*EXP(d)
print *,y
z=(-a)/b + (a/b+c)*EXP(d)
print *,z
x=y-z
print *,x
end
```

編譯成387浮點運算指令並且執行結果：

``` bash
# g95 -o hi -mfpmath=387 -fzero -ftrace=full -fsloppy-char hi.for
# ./hi
0.78587145
0.7858714
5.9604645E-8
```

編譯成SSE2指令並且執行結果：

``` bash
# g95 -o hi -mfpmath=sse -msse2 -fzero -ftrace=full -fsloppy-char hi.for
# ./hi
0.78587145
0.78587145
0.
```

## MMX與SSE2的差別

SSE2讓MMX指令群使用XMM暫存器來運算。換句話說，現有的MMX指令碼能夠完全轉換成SSE2。不過SSE2的暫存器是MMX暫存器的兩倍大，迴圈計數器與記憶體存取機制也會跟著修改來因應此變化。

而即使一個SSE2指令能夠比MMX指令操作多兩倍資料量，性能也並沒有很明顯的提升。有兩個主要原因導致此現象：記憶體內部存取SSE2的資料並沒有以16位元組的間隔[對齊](../Page/資料結構對齊.md "wikilink")，這會造成明顯的性能損失。還有在大多數的[x86架構實作上SSE](../Page/x86.md "wikilink")2的指令[吞吐量是小於MMX的](../Page/吞吐量.md "wikilink")。[Intel首先面對第一個問題的解決方案是在SSE](../Page/Intel.md "wikilink")3指令中新增一個指令，能夠在處理未對齊的資料時減少overhead。而第二個問題也在[Core
微架構中將執行引擎加寬而解決](../Page/Intel_Core微處理器架構.md "wikilink")。

## 支援的編譯器

於2000年剛發布的時候，完全沒有任何軟體開發工具支援SSE2。例如，如果想要在[Microsoft Developer
Studio裡面使用SSE](../Page/Microsoft_Visual_Studio.md "wikilink")2指令集，程式開發人員就要自己寫
inline-assembly，或是從外部來源引入（import）目的碼。後來發布了Visual C++ Processor
Pack，才使[Visual
C++與](../Page/Visual_C++.md "wikilink")[MASM支援SSE](../Page/MASM.md "wikilink")2。

目前Intel官方版的[Intel
C++編譯器能夠在不用自行輸入assembly而自動編譯出SSE](../Page/Intel_C++編譯器.md "wikilink")4/SSSE3/SSE3/SSE2/SSE的機器碼，能夠使程式開發人員專注於更高層的演算法開發，而不是組譯階段的指令集實作。自從Intel發表了
Intel C++ 編譯器，它大量增加SSE2於Windows應用程式開發。

自從GCC
3推出，它能夠自動生成SSE/SSE2純量碼。而SSE/SSE2的[自動向量化也新增在GCC](../Page/自動向量化.md "wikilink")
4。

[Sun Studio Compiler
Suite在使用此](../Page/Sun_Studio_Compiler_Suite.md "wikilink")-xvector=simd參數時也能夠產生SSE2指令碼。

## 支援SSE2指令集的處理器

  - [Athlon 64](../Page/Athlon_64.md "wikilink")、[Sempron
    64](../Page/Sempron.md "wikilink")、[Turion
    64等為主的](../Page/Turion_64.md "wikilink")[AMD
    K8架構處理器](../Page/AMD_K8.md "wikilink")
  - [Phenom](../Page/Phenom.md "wikilink")、[Phenom
    II](../Page/Phenom_II.md "wikilink")、[Athlon
    II等為主的](../Page/Athlon_II.md "wikilink")[AMD
    K10](../Page/AMD_K10.md "wikilink")、[AMD
    K10.5架構處理器](../Page/AMD_K10.5.md "wikilink")
  - [Pentium
    4](../Page/Pentium_4.md "wikilink")、[Xeon](../Page/Xeon.md "wikilink")、[Celeron](../Page/Celeron.md "wikilink")、[Celeron
    D等為主的](../Page/Celeron_D.md "wikilink")[Intel](../Page/Intel.md "wikilink")[NetBurst架構的處理器](../Page/NetBurst.md "wikilink")
  - [Intel Pentium M與](../Page/Intel_Pentium_M.md "wikilink")[Celeron
    M](../Page/Celeron_M.md "wikilink")
  - [Intel Core架構的處理器](../Page/Intel_Core.md "wikilink")，包括Core Duo、Core
    Solo等
  - [Intel Core 2架構的處理器](../Page/Intel_Core_2.md "wikilink")，包含Core 2
    Duo、Core 2 Quad、Core 2 Extreme等
  - [Intel Core i3](../Page/Intel_Core_i3.md "wikilink")、[Core
    i5](../Page/Core_i5.md "wikilink")、[Core
    i7等](../Page/Core_i7.md "wikilink")
  - [Atom](../Page/Intel_Atom.md "wikilink")
  - [Transmeta](../Page/全美達.md "wikilink")（全美達）[Efficeon](../Page/Efficeon.md "wikilink")
  - [VIA](../Page/VIA_Technologies.md "wikilink")（威盛）[C7](../Page/VIA_C7.md "wikilink")
  - [VIA](../Page/VIA_Technologies.md "wikilink")[Nano](../Page/VIA_Nano.md "wikilink")

## 不支援SSE2處理器的共同特點

SSE2是[IA-32架構的延伸](../Page/IA-32.md "wikilink")。所以目前所有不支援[IA-32架構的其他架構一概不支援SSE](../Page/IA-32.md "wikilink")2。由於[x86-64架構的處理器是由IA](../Page/x86-64.md "wikilink")-32延伸出來的，所有
x86-64架構的處理器也都支援SSE2指令集。而有些CPU並沒有支援 SSE2，但是有其他的指令集可以提供與SSE2相似的功能。

下列的IA-32架構的處理器是在SSE2發表之後才開發的，但是並不支援SSE2指令集：

  - 比[Athlon64早推出的](../Page/Athlon64.md "wikilink")[AMD處理器](../Page/AMD.md "wikilink")，包含了所有使用
    Socket A 插槽的處理器。
  - 比[Pentium
    4早推出的](../Page/Pentium_4.md "wikilink")[Intel處理器](../Page/Intel.md "wikilink")
  - [VIA的](../Page/VIA.md "wikilink")[C3
    處理器](../Page/VIA_C3.md "wikilink")
  - [全美達的](../Page/全美達.md "wikilink")[Crusoe處理器](../Page/Crusoe處理器.md "wikilink")

## 參見

<table>
<tbody>
<tr class="odd">
<td><ul>
<li><a href="../Page/SSE.md" title="wikilink">SSE</a></li>
<li><a href="../Page/SSE3.md" title="wikilink">SSE3</a></li>
<li><a href="../Page/SSSE3.md" title="wikilink">SSSE3</a></li>
<li><a href="../Page/SSE4.md" title="wikilink">SSE4</a></li>
</ul></td>
<td><ul>
<li><a href="../Page/SIMD.md" title="wikilink">SIMD</a></li>
<li><a href="../Page/3DNow!.md" title="wikilink">3DNow!Professional</a></li>
<li><a href="../Page/x86指令列表.md" title="wikilink">x86指令列表</a></li>
</ul></td>
</tr>
</tbody>
</table>

[Category:X86架構](https://zh.wikipedia.org/wiki/Category:X86架構 "wikilink")