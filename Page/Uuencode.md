**uuencode**這個名字是衍生自"Unix-to-Unix
encoding"，原先是[Unix系統下將](../Page/Unix.md "wikilink")[二進位的資料藉由](../Page/二進位數字系統.md "wikilink")[uucp郵件系統傳輸的一個](../Page/UUCP.md "wikilink")[編碼程式](../Page/編碼.md "wikilink")，是一種[二進位到文字的編碼](../Page/二進位到文字的編碼.md "wikilink")。**uudecode**是與uuencode搭配的解碼程式，uuencode/decode常見於[電子郵件中的檔案傳送以及](../Page/電子郵件.md "wikilink")[usenet新聞群組和](../Page/usenet.md "wikilink")[BBS的貼文等等](../Page/BBS.md "wikilink")。近來已被[MIME所大量取代](../Page/MIME.md "wikilink")。

## 編碼程序

Uuencode的編碼結果輸出檔案格式如下：

`begin `<輸入檔存取模式>` `<輸入檔名>
<編碼內容>
`[<編碼內容>]`
`[...]`
`` ` ``
`end`

### <輸入檔存取模式>

沿用自Unix系統檔案存取權限模式，由三個八進位的數字組成，其構成形式為：

|       |       |       |
| :---: | :---: | :---: |
|  擁有人  |  群組   |  其他人  |
| 讀取（r） | 寫入（w） | 執行（x） |

舉例而言：當<輸入檔存取模式>為
**666**，轉換成二進位碼為**110110110**，也就是擁有人、群組以及其他人對於這個檔案都有讀取以及寫入的權力。

### <輸入檔名>

將編碼前的檔名填入。

### <編碼內容>

當檔案內容空無一物時，<編碼內容>就不存在。否則<編碼內容>會以下面形式出現：

<長度字元><編碼字元字串>

Uuencode將輸入資料以每三個[位元組為單位進行編碼](../Page/位元組.md "wikilink")，如此重複進行。如果最後剩下的資料少於三個位元組，不夠的部份用零補齊。這三個位元組共有24個[Bit](../Page/位元.md "wikilink")，以6-bit為單位分為4個群組，每個群組以十進位來表示所出現的數值只會落在0到63之間。將每個數加上32，所產生的結果剛好落在ASCII字元集中可列印字元（32-空白...95-底線）的範圍之中。

#### <長度字元>

每60個編碼輸出（相當於45個輸入位元組）將輸出為獨立的一行，每行的開頭會加上**長度字元**，除了最後一行之外，長度字元都應該是'M'這個ASCII字元（77=32+**45**），最後一行的長度字元為**32+剩下的位元組數目**這個ASCII字元。

#### <編碼字元字串>

**<編碼字元字串>**是依照編碼結果依序填入，惟獨要注意一點：當6-bit的資料為零時，編碼應為*空白*這個字元，但是在uuencode中都用*[\`](../Page/grave_accent.md "wikilink")*這個字元來取代，這是因為它們的末六bit都是
100.000。

#### 例外狀況

前面所說的只適用於使用ASCII字元集的電腦系統，有些比較舊型的電腦他們使用非ASCII字元集（如[EBCDIC字元集](../Page/EBCDIC.md "wikilink")）。要解決這個問題，[Xxencode是較為適切的編碼系統](../Page/Xxencode.md "wikilink")，它只使用到文數字字元集以及加減號字元。

## uuencode編碼範例

### 簡短的例子

下面的表格顯示如何將`Cat`這三個ASCII字元編碼成uuencode的`0V%T`：

|                |     |     |     |
| -------------- | --- | --- | --- |
| 原始字元           | `C` | `a` | `t` |
| 原始ASCII碼（十進位）  | 67  | 97  | 116 |
| ASCII碼（二進位）    | 0   | 1   | 0   |
| 新的十進位數值        | 16  | 54  | 5   |
| \+32           | 48  | 86  | 37  |
| 編碼後的Uuencode字元 | `0` | `V` | `%` |

因此*Cat*這三個ASCII字元表示成uuencode的檔案形式：

`begin 644 cat.txt`
`#0V%T`
`` ` ``
`end`

### 長範例

底下是引用自英文版的一段文字，將其存成test.txt，引用文字如下：

*Each group of sixty output characters (corresponding to 45 input bytes)
is output as a separate line preceded by an encoded character giving the
number of encoded bytes on that line. For all lines except the last,
this will be the character 'M' (ASCII code 77 = 32+45). If the input is
not evenly divisible by 45, the last line will contain the remaining N
output characters, preceded by the character whose code is 32 + the
number of remaining input bytes. Finally, a line containing just a
single space (or grave character) is output, followed by one line
containing the string "end".*

使用uuencode編碼後的檔案為：

`begin -666 test.txt`
``M16%C:"!G<F]U<"!O9B!S:7AT>2!O=71P=70@8VAA<F%C=&5R<R`H8V]R<F5S``
``M<&]N9&EN9R!T;R`T-2!I;G!U="!B>71E<RD@:7,@;W5T<'5T(&%S(&$@<V5P``
`M87)A=&4@;&EN92!P<F5C961E9"!B>2!A;B!E;F-O9&5D(&-H87)A8W1E<B!G`
`M:79I;F<@=&AE(&YU;6)E<B!O9B!E;F-O9&5D(&)Y=&5S(&]N('1H870@;&EN`
`M92X@1F]R(&%L;"!L:6YE<R!E>&-E<'0@=&AE(&QA<W0L('1H:7,@=VEL;"!B`
``M92!T:&4@8VAA<F%C=&5R("=-)R`H05-#24D@8V]D92`W-R`](#,R*S0U*2X@``
`M268@=&AE(&EN<'5T(&ES(&YO="!E=F5N;'D@9&EV:7-I8FQE(&)Y(#0U+"!T`
`M:&4@;&%S="!L:6YE('=I;&P@8V]N=&%I;B!T:&4@<F5M86EN:6YG($X@;W5T`
`M<'5T(&-H87)A8W1E<G,L('!R96-E9&5D(&)Y('1H92!C:&%R86-T97(@=VAO`
``M<V4@8V]D92!I<R`S,B`K('1H92!N=6UB97(@;V8@<F5M86EN:6YG(&EN<'5T``
`M(&)Y=&5S+B!&:6YA;&QY+"!A(&QI;F4@8V]N=&%I;FEN9R!J=7-T(&$@<VEN`
`M9VQE('-P86-E("AO<B!G<F%V92!C:&%R86-T97(I(&ES(&]U='!U="P@9F]L`
`M;&]W960@8GD@;VYE(&QI;F4@8V]N=&%I;FEN9R!T:&4@<W1R:6YG(")E;F0B`
` !+@`` `
`` ` ``
`end`

## Uuencode對照表

下面的表格顯示uuencode所使用到的ASCII字元集、6-bit二進位碼以及十進位的對照。由上面*Cat*的例子可以看出其第一個編碼為十進位的16，對應下面表格*uuencode十進位表示*欄位，可以查出其uuencode的輸出碼為*0*。

<table>
<thead>
<tr class="header">
<th><p>可列印的字元</p></th>
<th><p>十進位ASCII值</p></th>
<th><p>uuencode<br />
二進位表示</p></th>
<th><p>uuencode<br />
十進位表示</p></th>
<th></th>
<th><p>可列印的字元</p></th>
<th><p>十進位ASCII值</p></th>
<th><p>uuencode<br />
二進位表示</p></th>
<th><p>uuencode<br />
十進位表示</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>(space)</p></td>
<td><p>32</p></td>
<td><p>000 000</p></td>
<td><p>0</p></td>
<td><p> </p></td>
<td><p>@</p></td>
<td><p>64</p></td>
<td><p>100 000</p></td>
<td><p>32</p></td>
</tr>
<tr class="odd">
<td><p>!</p></td>
<td><p>33</p></td>
<td><p>000 001</p></td>
<td><p>1</p></td>
<td><p> </p></td>
<td><p>A</p></td>
<td><p>65</p></td>
<td><p>100 001</p></td>
<td><p>33</p></td>
</tr>
<tr class="even">
<td><p>"</p></td>
<td><p>34</p></td>
<td><p>000 010</p></td>
<td><p>2</p></td>
<td><p> </p></td>
<td><p>B</p></td>
<td><p>66</p></td>
<td><p>100 010</p></td>
<td><p>34</p></td>
</tr>
<tr class="odd">
<td><p>#</p></td>
<td><p>35</p></td>
<td><p>000 011</p></td>
<td><p>3</p></td>
<td><p> </p></td>
<td><p>C</p></td>
<td><p>67</p></td>
<td><p>100 011</p></td>
<td><p>35</p></td>
</tr>
<tr class="even">
<td><p>$</p></td>
<td><p>36</p></td>
<td><p>000 100</p></td>
<td><p>4</p></td>
<td><p> </p></td>
<td><p>D</p></td>
<td><p>68</p></td>
<td><p>100 100</p></td>
<td><p>36</p></td>
</tr>
<tr class="odd">
<td><p>%</p></td>
<td><p>37</p></td>
<td><p>000 101</p></td>
<td><p>5</p></td>
<td><p> </p></td>
<td><p>E</p></td>
<td><p>69</p></td>
<td><p>100 101</p></td>
<td><p>37</p></td>
</tr>
<tr class="even">
<td><p>&amp;</p></td>
<td><p>38</p></td>
<td><p>000 110</p></td>
<td><p>6</p></td>
<td><p> </p></td>
<td><p>F</p></td>
<td><p>70</p></td>
<td><p>100 110</p></td>
<td><p>38</p></td>
</tr>
<tr class="odd">
<td><p>'</p></td>
<td><p>39</p></td>
<td><p>000 111</p></td>
<td><p>7</p></td>
<td><p> </p></td>
<td><p>G</p></td>
<td><p>71</p></td>
<td><p>100 111</p></td>
<td><p>39</p></td>
</tr>
<tr class="even">
<td><p>(</p></td>
<td><p>40</p></td>
<td><p>001 000</p></td>
<td><p>8</p></td>
<td><p> </p></td>
<td><p>H</p></td>
<td><p>72</p></td>
<td><p>101 000</p></td>
<td><p>40</p></td>
</tr>
<tr class="odd">
<td><p>)</p></td>
<td><p>41</p></td>
<td><p>001 001</p></td>
<td><p>9</p></td>
<td><p> </p></td>
<td><p>I</p></td>
<td><p>73</p></td>
<td><p>101 001</p></td>
<td><p>41</p></td>
</tr>
<tr class="even">
<td><p>*</p></td>
<td><p>42</p></td>
<td><p>001 010</p></td>
<td><p>10</p></td>
<td><p> </p></td>
<td><p>J</p></td>
<td><p>74</p></td>
<td><p>101 010</p></td>
<td><p>42</p></td>
</tr>
<tr class="odd">
<td><p>+</p></td>
<td><p>43</p></td>
<td><p>001 011</p></td>
<td><p>11</p></td>
<td><p> </p></td>
<td><p>K</p></td>
<td><p>75</p></td>
<td><p>101 011</p></td>
<td><p>43</p></td>
</tr>
<tr class="even">
<td><p>,</p></td>
<td><p>44</p></td>
<td><p>001 100</p></td>
<td><p>12</p></td>
<td><p> </p></td>
<td><p>L</p></td>
<td><p>76</p></td>
<td><p>101 100</p></td>
<td><p>44</p></td>
</tr>
<tr class="odd">
<td><p>-</p></td>
<td><p>45</p></td>
<td><p>001 101</p></td>
<td><p>13</p></td>
<td><p> </p></td>
<td><p>M</p></td>
<td><p>77</p></td>
<td><p>101 101</p></td>
<td><p>45</p></td>
</tr>
<tr class="even">
<td><p>.</p></td>
<td><p>46</p></td>
<td><p>001 110</p></td>
<td><p>14</p></td>
<td><p> </p></td>
<td><p>N</p></td>
<td><p>78</p></td>
<td><p>101 110</p></td>
<td><p>46</p></td>
</tr>
<tr class="odd">
<td><p>/</p></td>
<td><p>47</p></td>
<td><p>001 111</p></td>
<td><p>15</p></td>
<td><p> </p></td>
<td><p>O</p></td>
<td><p>79</p></td>
<td><p>101 111</p></td>
<td><p>47</p></td>
</tr>
<tr class="even">
<td><p>0</p></td>
<td><p>48</p></td>
<td><p>010 000</p></td>
<td><p>16</p></td>
<td><p> </p></td>
<td><p>P</p></td>
<td><p>80</p></td>
<td><p>110 000</p></td>
<td><p>48</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>49</p></td>
<td><p>010 001</p></td>
<td><p>17</p></td>
<td><p> </p></td>
<td><p>Q</p></td>
<td><p>81</p></td>
<td><p>110 001</p></td>
<td><p>49</p></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>50</p></td>
<td><p>010 010</p></td>
<td><p>18</p></td>
<td><p> </p></td>
<td><p>R</p></td>
<td><p>82</p></td>
<td><p>110 010</p></td>
<td><p>50</p></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>51</p></td>
<td><p>010 011</p></td>
<td><p>19</p></td>
<td><p> </p></td>
<td><p>S</p></td>
<td><p>83</p></td>
<td><p>110 011</p></td>
<td><p>51</p></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>52</p></td>
<td><p>010 100</p></td>
<td><p>20</p></td>
<td><p> </p></td>
<td><p>T</p></td>
<td><p>84</p></td>
<td><p>110 100</p></td>
<td><p>52</p></td>
</tr>
<tr class="odd">
<td><p>5</p></td>
<td><p>53</p></td>
<td><p>010 101</p></td>
<td><p>21</p></td>
<td><p> </p></td>
<td><p>U</p></td>
<td><p>85</p></td>
<td><p>110 101</p></td>
<td><p>53</p></td>
</tr>
<tr class="even">
<td><p>6</p></td>
<td><p>54</p></td>
<td><p>010 110</p></td>
<td><p>22</p></td>
<td><p> </p></td>
<td><p>V</p></td>
<td><p>86</p></td>
<td><p>110 110</p></td>
<td><p>54</p></td>
</tr>
<tr class="odd">
<td><p>7</p></td>
<td><p>55</p></td>
<td><p>010 111</p></td>
<td><p>23</p></td>
<td><p> </p></td>
<td><p>W</p></td>
<td><p>87</p></td>
<td><p>110 111</p></td>
<td><p>55</p></td>
</tr>
<tr class="even">
<td><p>8</p></td>
<td><p>56</p></td>
<td><p>011 000</p></td>
<td><p>24</p></td>
<td><p> </p></td>
<td><p>X</p></td>
<td><p>88</p></td>
<td><p>111 000</p></td>
<td><p>56</p></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>57</p></td>
<td><p>011 001</p></td>
<td><p>25</p></td>
<td><p> </p></td>
<td><p>Y</p></td>
<td><p>89</p></td>
<td><p>111 001</p></td>
<td><p>57</p></td>
</tr>
<tr class="even">
<td><p>:</p></td>
<td><p>58</p></td>
<td><p>011 010</p></td>
<td><p>26</p></td>
<td><p> </p></td>
<td><p>Z</p></td>
<td><p>90</p></td>
<td><p>111 010</p></td>
<td><p>58</p></td>
</tr>
<tr class="odd">
<td><p>;</p></td>
<td><p>59</p></td>
<td><p>011 011</p></td>
<td><p>27</p></td>
<td><p> </p></td>
<td><p>[</p></td>
<td><p>91</p></td>
<td><p>111 011</p></td>
<td><p>59</p></td>
</tr>
<tr class="even">
<td><p>&lt;</p></td>
<td><p>60</p></td>
<td><p>011 100</p></td>
<td><p>28</p></td>
<td><p> </p></td>
<td><p>\</p></td>
<td><p>92</p></td>
<td><p>111 100</p></td>
<td><p>60</p></td>
</tr>
<tr class="odd">
<td><p>=</p></td>
<td><p>61</p></td>
<td><p>011 101</p></td>
<td><p>29</p></td>
<td><p> </p></td>
<td><p>]</p></td>
<td><p>93</p></td>
<td><p>111 101</p></td>
<td><p>61</p></td>
</tr>
<tr class="even">
<td><p>&gt;</p></td>
<td><p>62</p></td>
<td><p>011 110</p></td>
<td><p>30</p></td>
<td><p> </p></td>
<td><p>^</p></td>
<td><p>94</p></td>
<td><p>111 110</p></td>
<td><p>62</p></td>
</tr>
<tr class="odd">
<td><p>?</p></td>
<td><p>63</p></td>
<td><p>011 111</p></td>
<td><p>31</p></td>
<td><p> </p></td>
<td><p>_</p></td>
<td><p>95</p></td>
<td><p>111 111</p></td>
<td><p>63</p></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><p> </p></td>
<td><p><a href="../Page/Grave_accent.md" title="wikilink">`</a></p></td>
<td><p>96</p></td>
<td><p>(1) 000 000</p></td>
<td><p>64</p></td>
</tr>
</tbody>
</table>

## 參見

  - [Base64](../Page/Base64.md "wikilink")
  - [BinHex](../Page/BinHex.md "wikilink")
  - [MIME](../Page/MIME.md "wikilink")
  - [yEnc](../Page/yEnc.md "wikilink")

## 參考資料

## 外部連結

  - [UUDeview](http://www.fpx.de/fp/Software/UUDeview/) -
    適用於Unix/Windows/DOS等作業系統，使用Base64, BinHex, uuencode, xxencode,
    ...等方法編／解碼的開放源碼程式。
  - [在线uuencode编码与解码](http://www.mxcz.net/tools/uuencode.aspx)

[Category:电子邮件](https://zh.wikipedia.org/wiki/Category:电子邮件 "wikilink")
[Category:Unix_SUS2008实用工具](https://zh.wikipedia.org/wiki/Category:Unix_SUS2008实用工具 "wikilink")
[Category:Usenet](https://zh.wikipedia.org/wiki/Category:Usenet "wikilink")
[Category:字符编码](https://zh.wikipedia.org/wiki/Category:字符编码 "wikilink")
[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")