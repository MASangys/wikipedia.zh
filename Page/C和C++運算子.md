[C语言](../Page/C语言.md "wikilink")**运算符**都被[C++语言支持](../Page/C++语言.md "wikilink")。C语言不支持[运算符重载](../Page/运算符重载.md "wikilink")。

在不重载时，运算符`&&`、`||`、`,`（），在第一个操作数求值之后有一个[顺序点](../Page/顺序点.md "wikilink")。

大部分C与C++运算符也可用于其它程序设计语言如[C\#](../Page/C♯.md "wikilink")、[Java](../Page/Java.md "wikilink")、[Perl](../Page/Perl.md "wikilink")、[PHP等](../Page/PHP.md "wikilink")，具有相同的优先级、结合性与语义。

## 運算子優先級

以下是C++程式語言中的所有運算子的[優先級和](../Page/運算次序.md "wikilink")[結合性列表](../Page/結合性.md "wikilink")。

<table>
<thead>
<tr class="header">
<th><p>优先级</p></th>
<th><p>運算子</p></th>
<th><p>敘述</p></th>
<th><p>示例</p></th>
<th><p>重载性</p></th>
<th><p>結合性</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>1</code></p></td>
<td><p><code>::</code></p></td>
<td><p>作用域解析(C++专有)</p></td>
<td><p><code>Class::age = 2;</code></p></td>
<td><p>否</p></td>
<td><p>由左至右</p></td>
</tr>
<tr class="even">
<td><p><code>2</code></p></td>
<td><p><code>++</code></p></td>
<td><p>后缀递增</p></td>
<td><p><code>i++</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>--</code></p></td>
<td><p>后缀递减</p></td>
<td><p><code>i--</code></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>()</code></p></td>
<td><p>函数调用或函数调用形式的类型转换</p></td>
<td><p>int x = f();</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>[]</code></p></td>
<td><p>数组访问</p></td>
<td><p>array[4] = 2;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>.</code></p></td>
<td><p>以对象方式访问成员</p></td>
<td><p>obj.age = 34;</p></td>
<td><p>否</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>-&gt;</code></p></td>
<td><p>以指针方式访问成员</p></td>
<td><p>ptr-&gt;age = 34;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>dynamic_cast</code></p></td>
<td><p>运行时检查类型转换(C++专有)</p></td>
<td><p>Y&amp; y = dynamic_cast&lt;Y&amp;&gt;(x);</p></td>
<td><p>否</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>static_cast</code></p></td>
<td><p>未经检查的类型转换(C++专有)</p></td>
<td><p>Y&amp; y = static_cast&lt;Y&amp;&gt;(x);</p></td>
<td><p>否</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>reinterpret_cast</code></p></td>
<td><p>重定义类型转换(C++专有)</p></td>
<td><p>int const* p = reinterpret_cast&lt;int const*&gt;(0x1234);</p></td>
<td><p>否</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>const_cast</code></p></td>
<td><p>更改非常量属性(C++专有)</p></td>
<td><p>int* q = const_cast&lt;int*&gt;(p);</p></td>
<td><p>否</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>typeid</code></p></td>
<td><p>获取类型信息(C++专有)</p></td>
<td><p>std::type_info const&amp; t = typeid(x);</p></td>
<td><p>否</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>3</code></p></td>
<td><p><code>++</code></p></td>
<td><p>前缀递增</p></td>
<td><p>++i</p></td>
<td></td>
<td><p>由右至左</p></td>
</tr>
<tr class="even">
<td><p><code>--</code></p></td>
<td><p>前缀递减</p></td>
<td><p>--i</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>+</code></p></td>
<td><p>一元正号</p></td>
<td><p>int i = +1;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>-</code></p></td>
<td><p>一元负号</p></td>
<td><p>int i = -1;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>!</code><br />
<code>not</code></p></td>
<td><p>逻辑非<br />
<code>!</code>的备用拼写</p></td>
<td><p>if (!done) …</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>~</code><br />
<code>compl</code></p></td>
<td><p>按位取反<br />
<code>~</code>的备用拼写</p></td>
<td><p>flag1 = ~flag2;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>(</code><em><code>type</code></em><code>)</code></p></td>
<td><p>强制类型转换</p></td>
<td><p>int i = (int)floatNum;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>*</code></p></td>
<td><p>取指针指向的值</p></td>
<td><p>int data = *intPtr;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>&amp;</code></p></td>
<td><p>取变量的地址</p></td>
<td><p>int *intPtr = &amp;data;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>sizeof</code></p></td>
<td><p>某某的大小</p></td>
<td><p>size_t s = sizeof(int);</p></td>
<td><p>否</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>new</code></p></td>
<td><p>动态内存分配(C++专有)</p></td>
<td><p>long* pVar = new long;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>new[]</code></p></td>
<td><p>动态数组内存分配(C++专有)</p></td>
<td><p>long* array = new long[20];</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>delete</code></p></td>
<td><p>动态内存释放(C++专有)</p></td>
<td><p>delete pVar;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>delete[]</code></p></td>
<td><p>动态数组内存释放(C++专有)</p></td>
<td><p>delete [] array;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>4</code></p></td>
<td><p><code>.*</code></p></td>
<td><p>成员对象选择(C++专有)</p></td>
<td><p>obj.*var = 24;</p></td>
<td><p>否</p></td>
<td><p>由左至右</p></td>
</tr>
<tr class="even">
<td><p><code>-&gt;*</code></p></td>
<td><p>成员指针选择(C++专有)</p></td>
<td><p>ptr-&gt;*var = 24;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>5</code></p></td>
<td><p><code>*</code></p></td>
<td><p>乘法</p></td>
<td><p>int i = 2 * 4;</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>/</code></p></td>
<td><p>除法</p></td>
<td><p>float f = 10.0 / 3.0;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>%</code></p></td>
<td><p>模数（取<a href="../Page/余数.md" title="wikilink">余数</a>）</p></td>
<td><p>int rem = 4 % 3;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>6</code></p></td>
<td><p><code>+</code></p></td>
<td><p>加法</p></td>
<td><p>int i = 2 + 3;</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>-</code></p></td>
<td><p>減法</p></td>
<td><p>int i = 5 - 1;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>7</code></p></td>
<td><p><code>&lt;&lt;</code></p></td>
<td><p>位元左移</p></td>
<td><p>int flags = 33 &lt;&lt; 1;</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>&gt;&gt;</code></p></td>
<td><p>位元右移</p></td>
<td><p>int flags = 33 &gt;&gt; 1;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>8</code></p></td>
<td><p><code>&lt;</code></p></td>
<td><p>小于关系</p></td>
<td><p>if (i &lt; 42) …</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>&lt;=</code></p></td>
<td><p>小于等于关系</p></td>
<td><p>if (i &lt;= 42) ...</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>&gt;</code></p></td>
<td><p>大于关系</p></td>
<td><p>if (i &gt; 42) …</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>&gt;=</code></p></td>
<td><p>大于等于关系</p></td>
<td><p>if (i &gt;= 42) ...</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>9</code></p></td>
<td><p><code>==</code></p></td>
<td><p>等于关系</p></td>
<td><p>if (i == 42) ...</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>!=</code><br />
<code>not_eq</code></p></td>
<td><p>不等于关系<br />
<code>!=</code>的备用拼写</p></td>
<td><p>if (i != 42) …</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>10</code></p></td>
<td><p><code>&amp;</code><br />
<code>bitand</code></p></td>
<td><p>位元 AND<br />
<code>&amp;</code>的备用拼写</p></td>
<td><p>flag1 = flag2 &amp; 42;</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>11</code></p></td>
<td><p><code>^</code><br />
<code>xor</code></p></td>
<td><p>位元 XOR(独占or)<br />
<code>^</code>的备用拼写</p></td>
<td><p>flag1 = flag2 ^ 42;</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>12</code></p></td>
<td><p><code>|</code><br />
<code>bitor</code></p></td>
<td><p>位元 OR(包含or)<br />
<code>|</code>的备用拼写</p></td>
<td><p>flag1 = flag2 | 42;</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>13</code></p></td>
<td><p><code>&amp;&amp;</code><br />
<code>and</code></p></td>
<td><p>逻辑 AND<br />
<code>&amp;&amp;</code>的备用拼写</p></td>
<td><p>if (conditionA &amp;&amp; conditionB) …</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>14</code></p></td>
<td><p><code><nowiki></p></td>
<td><p></nowiki></code><br />
<code>or</code></p></td>
<td><p>逻辑 OR<br />
<code><nowiki></p></td>
<td><p></nowiki></code>的备用拼写</p></td>
<td><p>if (conditionA <nowiki></p></td>
</tr>
<tr class="odd">
<td><p><code>15</code></p></td>
<td><p><em><code>c</code></em><code>?</code><em><code>t</code></em><code>:</code><em><code>f</code></em></p></td>
<td><p>三元条件运算</p></td>
<td><p>int i = a &gt; b ? a : b;</p></td>
<td><p>否</p></td>
<td><p>由右至左</p></td>
</tr>
<tr class="even">
<td><p><code>16</code></p></td>
<td><p><code>=</code></p></td>
<td><p>直接赋值</p></td>
<td><p>int a = b;</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>+=</code></p></td>
<td><p>以和赋值</p></td>
<td><p>a += 3;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>-=</code></p></td>
<td><p>以差赋值</p></td>
<td><p>b -= 4;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>*=</code></p></td>
<td><p>以積赋值</p></td>
<td><p>a *= 5;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>/=</code></p></td>
<td><p>以商赋值</p></td>
<td><p>a /= 2;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>%=</code></p></td>
<td><p>以取余数赋值</p></td>
<td><p>a %= 3;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>&lt;&lt;=</code></p></td>
<td><p>以位元左移赋值</p></td>
<td><p>flags &lt;&lt;= 2;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>&gt;&gt;=</code></p></td>
<td><p>以位元右移赋值</p></td>
<td><p>flags &gt;&gt;= 2;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>&amp;=</code><br />
<code>and_eq</code></p></td>
<td><p>以位元AND赋值<br />
<code>&amp;=</code>的备用拼写</p></td>
<td><p>flags &amp;= new_flags;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>^=</code><br />
<code>xor_eq</code></p></td>
<td><p>以位元XOR赋值<br />
<code>^=</code>的备用拼写</p></td>
<td><p>flags ^= new_flags;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>|=</code><br />
<code>or_eq</code></p></td>
<td><p>以位元OR赋值<br />
<code>|=</code>的备用拼写</p></td>
<td><p>flags |= new_flags;</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p><code>17</code></p></td>
<td><p><code>throw</code></p></td>
<td><p>抛出异常</p></td>
<td><p><code>throw EClass("Message");</code></p></td>
<td><p>否</p></td>
<td></td>
</tr>
<tr class="even">
<td><p><code>18</code></p></td>
<td><p><code>,</code></p></td>
<td><p>逗號運算子</p></td>
<td><p>for (i = 0, j = 0; i &lt; 10; i++, j++) …</p></td>
<td></td>
<td><p>由左至右</p></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 列表

在本表中，`a`、`b`和`c`代表有效值（來自變數或返回值的逐字常數或數值）、物件名稱，或適當的左值。

### 算術運算子

<table>
<thead>
<tr class="header">
<th><p>運算子名稱</p></th>
<th><p>語法</p></th>
<th><p>可重載</p></th>
<th><p><a href="../Page/C.md" title="wikilink">C裡有</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>一元正號</p></td>
<td><p><strong><code>+</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>加法（總和）</p></td>
<td><p><code>a </code><strong><code>+</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>前綴遞增</p></td>
<td><p><strong><code>++</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>後綴遞增</p></td>
<td><p><code>a</code><strong><code>++</code></strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>以加法賦值</p></td>
<td><p><code>a </code><strong><code>+=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>一元負號（取反）</p></td>
<td><p><strong><code>-</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>減法（差）</p></td>
<td><p><code>a </code><strong><code>-</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>前綴遞減</p></td>
<td><p><strong><code>--</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>後綴遞減</p></td>
<td><p><code>a</code><strong><code>--</code></strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>以減法賦值</p></td>
<td><p><code>a </code><strong><code>-=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>乘法（乘積）</p></td>
<td><p><code>a </code><strong><code>*</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>以乘法賦值</p></td>
<td><p><code>a </code><strong><code>*=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>除法（分之）</p></td>
<td><p><code>a </code><strong><code>/</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>以除法賦值</p></td>
<td><p><code>a </code><strong><code>/=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>模數（餘數）</p></td>
<td><p><code>a </code><strong><code>%</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>以模數賦值</p></td>
<td><p><code>a </code><strong><code>%=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 比較運算子

<table>
<thead>
<tr class="header">
<th><p>運算子名稱</p></th>
<th><p>語法</p></th>
<th><p>可重載</p></th>
<th><p><a href="../Page/C.md" title="wikilink">C裡有</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>小於</p></td>
<td><p><code>a </code><strong><code>&lt;</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>小於或等於</p></td>
<td><p><code>a </code><strong><code>&lt;=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>大於</p></td>
<td><p><code>a </code><strong><code>&gt;</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>大於或等於</p></td>
<td><p><code>a </code><strong><code>&gt;=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>不等於</p></td>
<td><p><code>a </code><strong><code>!=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>等於</p></td>
<td><p><code>a </code><strong><code>==</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>邏輯取反</p></td>
<td><p><strong><code>!</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>邏輯 AND</p></td>
<td><p><code>a </code><strong><code>&amp;&amp;</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>邏輯 OR</p></td>
<td><p><code>a '''<nowiki></p></td>
<td><p></nowiki>''' b</code></p></td>
<td></td>
</tr>
</tbody>
</table>

### 位元運算子

<table>
<thead>
<tr class="header">
<th><p>運算子名稱</p></th>
<th><p>語法</p></th>
<th><p>可重載</p></th>
<th><p><a href="../Page/C.md" title="wikilink">C裡有</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>位元左移</p></td>
<td><p><code>a </code><strong><code>&lt;&lt;</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>以位元左移賦值</p></td>
<td><p><code>a </code><strong><code>&lt;&lt;=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>位元右移</p></td>
<td><p><code>a </code><strong><code>&gt;&gt;</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>以位元右移賦值</p></td>
<td><p><code>a </code><strong><code>&gt;&gt;=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>位元一的補數</p></td>
<td><p><strong><code>~</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>位元 AND</p></td>
<td><p><code>a </code><strong><code>&amp;</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>以位元 AND 賦值</p></td>
<td><p><code>a </code><strong><code>&amp;=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>位元 OR</p></td>
<td><p><code>a </code><strong><code>|</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>以位元 OR 賦值</p></td>
<td><p><code>a </code><strong><code>|=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>位元 XOR</p></td>
<td><p><code>a </code><strong><code>^</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>以位元 XOR 賦值</p></td>
<td><p><code>a </code><strong><code>^=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 其它運算子

<table>
<thead>
<tr class="header">
<th><p>運算子名稱</p></th>
<th><p>語法</p></th>
<th><p>可重載</p></th>
<th><p><a href="../Page/C.md" title="wikilink">C裡有</a></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>基本<a href="../Page/C++設定運算子.md" title="wikilink">賦值</a></p></td>
<td><p><code>a </code><strong><code>=</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>函式呼叫</p></td>
<td><p><code>a</code><strong><code>()</code></strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>陣列下標</p></td>
<td><p><code>a</code><strong><code>[</code></strong><code>b</code><strong><code>]</code></strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>間接（向下參考）</p></td>
<td><p><strong><code>*</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>的位址（參考）</p></td>
<td><p><strong><code>&amp;</code></strong><code>a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>成員指標</p></td>
<td><p><code>a</code><strong><code>-&gt;</code></strong><code>b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>成員</p></td>
<td><p><code>a</code><strong><code>.</code></strong><code>b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>間接成員指標</p></td>
<td><p><code>a</code><strong><code>-&gt;*</code></strong><code>b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>間接成員</p></td>
<td><p><code>a</code><strong><code>.*</code></strong><code>b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>轉換</p></td>
<td><p><code>(</code><em><a href="../Page/資料型別.md" title="wikilink"><code>type</code></a></em><code>) a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>逗號</p></td>
<td><p><code>a </code><strong><code>,</code></strong><code> b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>三元條件</p></td>
<td><p><code>a </code><strong><code>?</code></strong><code> b </code><strong><code>:</code></strong><code> c</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>作用域解析</p></td>
<td><p><code>a</code><strong><code>::</code></strong><code>b</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>的大小</p></td>
<td><p><strong><code>sizeof</code></strong><code> a</code></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>類型識別</p></td>
<td><p><strong><code>typeid</code></strong><code> </code><em><a href="../Page/資料型別.md" title="wikilink"><code>type</code></a></em></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>分配儲存區</p></td>
<td><p><strong><code>new</code></strong><code> </code><em><a href="../Page/資料型別.md" title="wikilink"><code>type</code></a></em></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>解除分配儲存區</p></td>
<td><p><strong><code>delete</code></strong><code> a</code></p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 語言擴展

<table>
<thead>
<tr class="header">
<th><p>運算子名稱</p></th>
<th><p>語法</p></th>
<th><p>可重載</p></th>
<th><p>C裡有</p></th>
<th><p>提供者</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><a href="../Page/Label_Value_Operator.md" title="wikilink">標籤值</a></p></td>
<td><p><strong><code>&amp;&amp;</code></strong><code> label</code></p></td>
<td></td>
<td></td>
<td><p>GCC</p></td>
</tr>
<tr class="even">
<td><p>取得型態</p></td>
<td><p><strong><code>typeof</code></strong><code> a</code><br />
<strong><code>typeof</code></strong><code>(</code><em><code>expr</code></em><code>)</code></p></td>
<td></td>
<td></td>
<td><p>GCC</p></td>
</tr>
<tr class="odd">
<td><p>最小／最大值</p></td>
<td><p><code>a </code><strong><code>&lt;?</code></strong><code> b</code><br />
<code>a </code><strong><code>&gt;?</code></strong><code> b</code></p></td>
<td></td>
<td></td>
<td><p>GCC &lt; 4.3</p></td>
</tr>
</tbody>
</table>

## 註解

在C和C++中對運算子的約束，是語言的語法規範因素所指定的（在對應的標準中），而不是優先級列表。這造成了一些微妙的衝突。例如，在C中，條件表達式的語法是：

`   邏輯-OR-表達式 ? 表達式 : 條件-表達式`

在C++中則是：

`   邏輯-or-表達式 ? 表達式 : 賦值-表達式`

因此，這個表達式：

`   e = a ? b : c = d`

兩個語言的語法分析結果並不相同。在C中，這個表達式被解析為：

`   e = ((a ? b : c) = d)`

這是一個錯誤的語義，因為條件-表達式的結果並不是一個左值。在C++中，則解析為：

`   e = (a ? b : (c = d))`

這是一個有效的表達式。

位元邏輯運算子的優先級一直受到批評[1](http://cm.bell-labs.com/cm/cs/who/dmr/chist.html)。在觀念裡，&和|是類似於+和\*的數值運算子。但是，表達式

`   a & b == 7`

意謂

`   a & (b == 7)`

而

`   a + b == 7`

意謂

`   (a + b) == 7`

這就需要經常使用圓括號，以免有意料之外的結果。

一元正号运算符可用于操作数表达式的类型提升。例如下例：

``` cpp
template <class T> void f(T const& a, T const& b){};

int main() {
    int a[2];
    int b[3];
    f(a, b); // won't work! different values for "T"!
    f(+a, +b); // works! T is "int*" both
}
```

## 參閱

  - [C](../Page/C语言.md "wikilink")
  - [C++](../Page/C++.md "wikilink")

## 外部連結

  - [Experimental results](http://www.knosof.co.uk/cbook/accu06a.pdf)
    showing that developers have poor knowledge of binary operator
    precedence.
  - [Basic types &
    Operators](http://www.mycplus.com/tutorial.asp?TID=304)

[Category:C語言](https://zh.wikipedia.org/wiki/Category:C語言 "wikilink")
[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")