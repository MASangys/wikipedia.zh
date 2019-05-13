这是一个**[Java语言和](../Page/Java语言.md "wikilink")[C++语言之间的比较](../Page/C++语言.md "wikilink")**。

## 设计目标

C++和Java语言之间的不同可以追溯到它们各自的传统，它们有着不同的设计目标。

  - **C++**
    被設計成主要用在系統性應用程式設計上的語言，對[C語言進行了擴展](../Page/C語言.md "wikilink")。對於C語言這個為執行效率設計的[程序式程式設計語言](../Page/程序式程式設計.md "wikilink"),
    C++
    特別加上了以下這些特性的支持：[靜態類型的](../Page/靜態類型.md "wikilink")[面向对象程序设计的支持](../Page/面向对象程序设计.md "wikilink")、[異常處理](../Page/異常處理.md "wikilink")、[RAII以及](../Page/資源獲取即是初始化.md "wikilink")[泛型](../Page/泛型.md "wikilink")。另外它還加上了一個包含泛型容器和算法的[C++庫函數](../Page/C++庫函數.md "wikilink")。
  - **Java**
    最開始是被設計用來支持[網絡計算](../Page/網絡計算.md "wikilink")。它依賴一個[虛擬機來保證](../Page/虛擬機.md "wikilink")[安全和](../Page/計算機安全.md "wikilink")[可移植性](../Page/移植_\(軟體\).md "wikilink")。Java
    包含一個可擴展的庫用以提供一個完整的的下層平台的抽象。Java
    是一种静态面向对象语言，它使用的語法類似C++，但与之不兼容。为了使更多的人到使用更易用的語言，它进行了全新的设计。

不同的开发目标导致 C++ 和 Java 这两种语言的不同的规则以及设计上的平衡点不同。 如下列出不同点：

<table>
<thead>
<tr class="header">
<th><p>C++</p></th>
<th><p>Java</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>除了一些比較少見的情況之外和<a href="../Page/C語言.md" title="wikilink">C語言相容</a></p></td>
<td><p>沒有對任何之前的語言向前相容。但在語法上受 C/C++ 的影響很大</p></td>
</tr>
<tr class="even">
<td><p>一次编写多处编译</p></td>
<td><p>一次编写多处运行</p></td>
</tr>
<tr class="odd">
<td><p>允許<a href="../Page/程序式程式設計.md" title="wikilink">程序式程式設計和</a><a href="../Page/面向对象程序设计.md" title="wikilink">面向对象程序设计</a></p></td>
<td><p>必須使用面向对象的程式設計方式</p></td>
</tr>
<tr class="even">
<td><p>允许直接调用原生的系统库</p></td>
<td><p>要通过<a href="../Page/Java_Native_Interface.md" title="wikilink">JNI调用</a>, 或者 </p></td>
</tr>
<tr class="odd">
<td><p>能直接使用底层系统接口</p></td>
<td><p>在一个保护模式下的虚拟机中运行</p></td>
</tr>
<tr class="even">
<td><p>只提供物件的類型和類型名</p></td>
<td><p>是<a href="../Page/反射_(計算機科學).md" title="wikilink">反射的</a>, 允許<a href="../Page/元程式設計.md" title="wikilink">元程式設計和運行時的動態生成代碼</a></p></td>
</tr>
<tr class="odd">
<td><p>有多種二進制相容標準 (例如:微軟和Itanium/GNU)</p></td>
<td><p>一種二進制相容標準，允許運行時庫的正確性檢查</p></td>
</tr>
<tr class="even">
<td><p>可选的自动<a href="../Page/边界检查.md" title="wikilink">边界检查</a>. (例如: <code>vector</code> 和 <code>string</code> 这两个容器的 <code>at()</code> 方法)</p></td>
<td><p>一般都有做边界检查。<a href="../Page/HotSpot_(java).md" title="wikilink">HotSpot (java)</a>(Sun 的虚拟机实现) 可以去掉边界检查</p></td>
</tr>
<tr class="odd">
<td><p>支持原生的无符号数学运算</p></td>
<td><p>不支持原生的无符号数学运算</p></td>
</tr>
<tr class="even">
<td><p>对所有的数字类型有标准的范围限制，但字节长度是跟实现相关的。标准化的类型可以用 typdef 定义 (uint8_t, ..., uintptr_t)</p></td>
<td><p>在所有平台上对所有的基本类型都有标准的范围限制和字节长度</p></td>
</tr>
<tr class="odd">
<td><p>支持指针，引用，传值调用</p></td>
<td><p>基本类型总是使用传值调用。物件以可以为空的引用的方式传递（相当于在C++里使用指向 <code>class</code> 或者 <code>struct</code> 参数的指標）。[1]</p></td>
</tr>
<tr class="even">
<td><p>顯式的記憶體管理，但有第三方的框架可以提供垃圾搜集的支持。支持析搆函式。</p></td>
<td><p>自動垃圾搜集(可以手動觸發)。沒有析搆函式的概念，對 <code>finalize()</code> 的使用是不推荐的</p></td>
</tr>
<tr class="odd">
<td><p>支持类class，结构struct，联合union，可以在<a href="../Page/堆疊.md" title="wikilink">堆疊或者</a><a href="../Page/動態記憶體分配.md" title="wikilink">堆里為它們動態分配記憶體</a></p></td>
<td><p>只支持類別，只在<a href="../Page/動態記憶體分配.md" title="wikilink">堆中為物件分配記憶體</a>。<a href="../Page/J2SE.md" title="wikilink">Java SE 6在棧為一些物件分配記憶體的使用了</a><a href="../Page/逃逸分析.md" title="wikilink">逃逸分析的優化方法</a></p></td>
</tr>
<tr class="even">
<td><p>允许显式的覆盖(也叫重写)类型</p></td>
<td><p>严格的<a href="../Page/类型安全.md" title="wikilink">类型安全</a>，除了变宽的类型转换。Java 1.5 开始支持自动类型包装和解包装(Autoboxing/Unboxing)</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Page/C++函式庫.md" title="wikilink">C++函式庫包括</a>：語言支持，診斷工具，常用工具，字符串，本地化，容器，算法，迭代器，數值，輸入/輸出，C函式庫。Boost庫提供了更多的功能，包括執行緒和網絡I/O。使用者必須在一大堆（大部分互相不相容）第三方GUI或者其他功能庫中進行選擇</p></td>
<td><p>函式庫在每次 Java 發布新版本的時候都會更新并增強功能。1.6版本支持：本地化，日誌系統，容器和迭代器，算法，GUI 程式設計（但沒有用到系統的GUI），圖形，多執行緒，網絡，平台安全，自省機制，動態類別加載，阻塞和非阻塞的I/O，對於<a href="../Page/XML.md" title="wikilink">XML</a>、<a href="../Page/XSLT.md" title="wikilink">XSLT</a>、<a href="../Page/MIDI.md" title="wikilink">MIDI也提供了相關接口或者支持類別</a>，數據庫，命名服務(例如 <a href="../Page/LDAP.md" title="wikilink">LDAP</a>)，密碼學，安全服務(例如 <a href="../Page/Kerberos.md" title="wikilink">Kerberos</a>)，打印服務，WEB 服務。SWT 提供了一個系統相關的GUI的抽象</p></td>
</tr>
<tr class="even">
<td><p>大部分运算符可以<a href="../Page/运算符重载.md" title="wikilink">运算符重载</a></p></td>
<td><p>運算子的意義一般來說是不可變的，例外是 + 和 += 運算子被字符串多載了</p></td>
</tr>
<tr class="odd">
<td><p>完全的多重继承，包括虚拟继承</p></td>
<td><p>類別只允許單繼承，需要多繼承的情況要使用接口</p></td>
</tr>
<tr class="even">
<td><p>支持编译期模板</p></td>
<td><p>被用来达到和C++模板类似的效果，但由于它们不能在编译期间从代码被编译成字节码</p></td>
</tr>
<tr class="odd">
<td><p>支持函式指標，函式物件，lambda（C++11）和接口</p></td>
<td><p>沒有函式指標機制。替代的概念是接口，Adapter 和 Listener也是被廣泛使用的</p></td>
</tr>
<tr class="even">
<td><p>沒有標準的代碼內嵌文檔機制。不過有第三方的軟體(例如 <a href="../Page/Doxygen.md" title="wikilink">Doxygen</a>)</p></td>
<td><p><a href="../Page/Javadoc.md" title="wikilink">Javadoc</a> 标准文档生成系统</p></td>
</tr>
<tr class="odd">
<td><p><code>const</code> 關鍵字用來定義不可改變的常量和成員函式</p></td>
<td><p><code>final</code> 提供了一個限制版本的 <code>const</code>，等價於 type* <code>const</code> 的物件指標或者 <code>const</code>的基本類型數據。沒有 <code>const</code> 成員函式，也沒有<code>const</code> type* 指標的等價物</p></td>
</tr>
<tr class="even">
<td><p>支持 <code>goto</code> 语句</p></td>
<td><p>支持循環標簽(label)和語句塊</p></td>
</tr>
<tr class="odd">
<td><p>源代碼可以寫成平台無關的（可以被 <a href="../Page/Windows.md" title="wikilink">Windows</a>、<a href="../Page/BSD.md" title="wikilink">BSD</a>、<a href="../Page/Linux.md" title="wikilink">Linux</a>、<a href="../Page/Mac_OS_X.md" title="wikilink">Mac OS X</a>、<a href="../Page/Solaris_(操作系統).md" title="wikilink">Solaris等編譯</a>，不用修改），也可以寫成利用平台特有的特性。通常被編譯成原生的機器碼</p></td>
<td><p>被編譯成<a href="../Page/Java虛擬機.md" title="wikilink">Java虛擬機的字節碼</a>。和Java平台相關，但是源代碼一般來說是不依賴<a href="../Page/操作系統.md" title="wikilink">操作系統特有的特性的</a></p></td>
</tr>
</tbody>
</table>

C++
是一門強大的語言，設計用在系統程式設計方面。Java語言是設計成簡單易用易學習，并有一個強大的跨平台的庫。Java[函式庫對一個函式庫來說相當的大](../Page/函式庫.md "wikilink")。但Java并不會提供所在平台的所有特性和接口。C++函式庫簡單健壯，提供[容器和](../Page/集合_\(计算机科学\).md "wikilink")[关联数组的支持](../Page/关联数组.md "wikilink")。\[2\]

## 语言特性

### 语法

  - Java[语法是](../Page/语法.md "wikilink")[上下文无关文法](../Page/上下文无关文法.md "wikilink"),可以用一个简单的[LALR语法分析器来分析](../Page/LALR语法分析器.md "wikilink").而分析C++就复杂多了;例如
    `Foo<1>(3);` ,如果 Foo 是一个变量,那么它是一个比较的表达式,但如果 Foo
    是一个类模板的名字,那么它会创建一个对象.
  - C++允许名字空间级别的常量,变量和函数. 而所有这样的 Java 声明必须在一个类或者接口当中.
  - 在 C++ 的声明中,一个类名可以用来声明一个此类对象的值. Java 里没办法做到这点. 在Java里对象不是值. 在 Java
    的声明中,一个类名声明的是对此类的一个对象的*引用*. 而在 C++ 里与之等价的做法是用 "\*" 来声明一个指针.
  - 在 C++ 里,"."操作符将一个对象作为一个左操作参数来访问这个对象的成员. 因为对象在 Java
    里不是值,所有的对象都通过引用来访问,刚才的做法在 Java
    里是无法实现的. 在 Java 里,"."
    操作符是将一个对象的引用作为左操作参数来访问这个对象的成员.在C++中和这种做法等价的是
    "-\>".

<table>
<thead>
<tr class="header">
<th><p>C++</p></th>
<th><p>Java</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb1-1" title="1"><span class="kw">class</span> Foo {          <span class="co">// 声明 Foo 类</span></a>
<a class="sourceLine" id="cb1-2" title="2"><span class="kw">public</span>:</a>
<a class="sourceLine" id="cb1-3" title="3">    <span class="dt">int</span> x;           <span class="co">// 成員變量</span></a>
<a class="sourceLine" id="cb1-4" title="4"></a>
<a class="sourceLine" id="cb1-5" title="5">    Foo(): x(<span class="dv">0</span>) {    <span class="co">// Foo 的构造函数Constructor for Foo,</span></a>
<a class="sourceLine" id="cb1-6" title="6">    }                <span class="co">//  初始化 x</span></a>
<a class="sourceLine" id="cb1-7" title="7"></a>
<a class="sourceLine" id="cb1-8" title="8">    <span class="dt">int</span> bar(<span class="dt">int</span> i) { <span class="co">// 成员函数 bar()</span></a>
<a class="sourceLine" id="cb1-9" title="9">        <span class="cf">return</span> <span class="dv">3</span>*i + x;</a>
<a class="sourceLine" id="cb1-10" title="10">    }</a>
<a class="sourceLine" id="cb1-11" title="11">};</a></code></pre></div></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb2-1" title="1"><span class="kw">class</span> Foo {               <span class="co">// 定义类 Foo</span></a>
<a class="sourceLine" id="cb2-2" title="2">    <span class="kw">public</span> <span class="dt">int</span> x = <span class="dv">0</span>;     <span class="co">// 成员变量,</span></a>
<a class="sourceLine" id="cb2-3" title="3">                          <span class="co">//  以及其值的初始化</span></a>
<a class="sourceLine" id="cb2-4" title="4">    <span class="kw">public</span> <span class="fu">Foo</span>() {        <span class="co">// Foo的 构造函数</span></a>
<a class="sourceLine" id="cb2-5" title="5">    }</a>
<a class="sourceLine" id="cb2-6" title="6"></a>
<a class="sourceLine" id="cb2-7" title="7">    <span class="kw">public</span> <span class="dt">int</span> <span class="fu">bar</span>(<span class="dt">int</span> i) {<span class="co">// 成员方法 bar()</span></a>
<a class="sourceLine" id="cb2-8" title="8">        <span class="kw">return</span> <span class="dv">3</span>*i + x;</a>
<a class="sourceLine" id="cb2-9" title="9">    }</a>
<a class="sourceLine" id="cb2-10" title="10">}</a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb3"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb3-1" title="1">Foo a;</a>
<a class="sourceLine" id="cb3-2" title="2"><span class="co">// 声明 a 为一个 Foo 类的对象值,</span></a>
<a class="sourceLine" id="cb3-3" title="3"><span class="co">// 使用其缺省的构造函数</span></a>
<a class="sourceLine" id="cb3-4" title="4"><span class="co">// 如果你想要用其他的构造函数,</span></a>
<a class="sourceLine" id="cb3-5" title="5"><span class="co">// 你可以用 &quot;Foo a(args);&quot; </span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb4"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb4-1" title="1">Foo a;</a>
<a class="sourceLine" id="cb4-2" title="2"><span class="co">// 声明 a 为一个 Foo 类的对象的引用</span></a>
<a class="sourceLine" id="cb4-3" title="3">a = <span class="kw">new</span> <span class="fu">Foo</span>();</a>
<a class="sourceLine" id="cb4-4" title="4"><span class="co">// 使用缺省的构造函数初始化</span></a>
<a class="sourceLine" id="cb4-5" title="5"><span class="co">// 如果你想要用其他的构造函数,</span></a>
<a class="sourceLine" id="cb4-6" title="6"><span class="co">// 你可以用 &quot;Foo a = new Foo(args);&quot; </span></a></code></pre></div></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb5"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb5-1" title="1">Foo b = a;</a>
<a class="sourceLine" id="cb5-2" title="2"><span class="co">// 拷贝 a 的内容到一个新的 Foo 类的变量 b 当中;</span></a>
<a class="sourceLine" id="cb5-3" title="3"><span class="co">// 另一种可以选择的语法是 &quot;Foo b(a)&quot;</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb6"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb6-1" title="1">Foo b = a.<span class="fu">clone</span>();</a>
<a class="sourceLine" id="cb6-2" title="2"><span class="co">// 拷贝所有a这个实例的成员到b,当且仅当,</span></a>
<a class="sourceLine" id="cb6-3" title="3"><span class="co">// Foo 实现了一个 public 的 clone() 方法,</span></a>
<a class="sourceLine" id="cb6-4" title="4"><span class="co">// 并且 clone() 返回一个新的这个对象的拷贝</span></a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb7"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb7-1" title="1">a.x = <span class="dv">5</span>; <span class="co">// 修改 a 对象</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb8"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb8-1" title="1">a.<span class="fu">x</span> = <span class="dv">5</span>; <span class="co">// 修改 a 对象</span></a></code></pre></div></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb9"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb9-1" title="1">cout &lt;&lt; b.x &lt;&lt; endl;</a>
<a class="sourceLine" id="cb9-2" title="2"><span class="co">// 输出 0,因为 b 和 a 是两个对象</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb10"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb10-1" title="1"><span class="bu">System</span>.<span class="fu">out</span>.<span class="fu">println</span>(b.<span class="fu">x</span>);</a>
<a class="sourceLine" id="cb10-2" title="2"><span class="co">// 输出 0,因为 b 和 a 是两个对象</span></a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb11"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb11-1" title="1">Foo *c;</a>
<a class="sourceLine" id="cb11-2" title="2"><span class="co">// 声明 c 为指向一个 Foo 类对象的指针(初始值是</span></a>
<a class="sourceLine" id="cb11-3" title="3"><span class="co">// 未定义的;可能指向任何地方)</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb12"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb12-1" title="1">Foo c;</a>
<a class="sourceLine" id="cb12-2" title="2"><span class="co">// 声明 c 为一个指向 Foo 对象的指针</span></a>
<a class="sourceLine" id="cb12-3" title="3"><span class="co">// (如果 c 是一个类的成员,那么初始值为空;</span></a>
<a class="sourceLine" id="cb12-4" title="4"><span class="co">// 如果 c 是一个局部变量那么你在使用之前必须</span></a>
<a class="sourceLine" id="cb12-5" title="5"><span class="co">// 对它进行初始化)</span></a></code></pre></div></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb13"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb13-1" title="1">c = <span class="kw">new</span> Foo();</a>
<a class="sourceLine" id="cb13-2" title="2"><span class="co">// 将 c 绑定为一个新的 Foo 对象的引用</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb14"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb14-1" title="1">c = <span class="kw">new</span> <span class="fu">Foo</span>();</a>
<a class="sourceLine" id="cb14-2" title="2"><span class="co">// 将 c 绑定为一个新的 Foo 对象的引用</span></a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb15"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb15-1" title="1">Foo *d = c;</a>
<a class="sourceLine" id="cb15-2" title="2"><span class="co">// 将 d 绑定为和 c 同一个对象的引用</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb16"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb16-1" title="1">Foo d = c;</a>
<a class="sourceLine" id="cb16-2" title="2"><span class="co">// 将 d 绑定为和 c 同一个对象的引用</span></a></code></pre></div></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb17"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb17-1" title="1">c-&gt;x = <span class="dv">5</span>;</a>
<a class="sourceLine" id="cb17-2" title="2"><span class="co">// 修改 c 指向的对象</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb18"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb18-1" title="1">c.<span class="fu">x</span> = <span class="dv">5</span>;</a>
<a class="sourceLine" id="cb18-2" title="2"><span class="co">// 修改 c 指向的对象</span></a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb19"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb19-1" title="1">a.bar(<span class="dv">5</span>);  <span class="co">// 对 a 调用 Foo::bar()</span></a>
<a class="sourceLine" id="cb19-2" title="2">c-&gt;bar(<span class="dv">5</span>); <span class="co">// 对 *c 调用 Foo::bar()</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb20"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb20-1" title="1">a.<span class="fu">bar</span>(<span class="dv">5</span>); <span class="co">// 对 a 调用 Foo.bar()</span></a>
<a class="sourceLine" id="cb20-2" title="2">c.<span class="fu">bar</span>(<span class="dv">5</span>); <span class="co">// 对 c 调用 Foo.bar()</span></a></code></pre></div></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb21"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb21-1" title="1">cout &lt;&lt; d-&gt;x &lt;&lt; endl;</a>
<a class="sourceLine" id="cb21-2" title="2"><span class="co">// 输出 5,因为 d 引用的对象和 c 一样</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb22"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb22-1" title="1"><span class="bu">System</span>.<span class="fu">out</span>.<span class="fu">println</span>(d.<span class="fu">x</span>);</a>
<a class="sourceLine" id="cb22-2" title="2"><span class="co">// 输出 5,因为 d 引用的对象和 c 一样</span></a></code></pre></div></td>
</tr>
</tbody>
</table>

  - 在 C++ 里,声明一个指向[常量的指针](../Page/常量.md "wikilink")（只读指针）是可能的, 也就是说,
    你不能修改这个指针指向的对象的内容. 函数和方法也都保证不会修改用 "const"
    关键字的指针指向的对象的内容,是强制的. 在 Java
    里这是不可能做到的. 你可以声明一个引用为 "final"(就像在 C++ 里声明一个指针"常量"),
    但这只是阻止你重新绑定这个引用; 你还是可以修改这个 "final" 引用指向的对象的.

<table>
<thead>
<tr class="header">
<th><p>C++</p></th>
<th><p>Java</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><div class="sourceCode" id="cb1"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb1-1" title="1"><span class="at">const</span> Foo *a; <span class="co">// 你不能通过 a 修改 a 指向的对象</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb2"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb2-1" title="1"><span class="dt">final</span> Foo a; <span class="co">// 你可以通过 a 修改 a 指向的对象</span></a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb3"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb3-1" title="1">a = <span class="kw">new</span> Foo();</a></code></pre></div></td>
<td><div class="sourceCode" id="cb4"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb4-1" title="1">a = <span class="kw">new</span> <span class="fu">Foo</span>(); <span class="co">// 只能在构造函数里</span></a></code></pre></div></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb5"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb5-1" title="1">a-&gt;x = <span class="dv">5</span>;</a>
<a class="sourceLine" id="cb5-2" title="2"><span class="co">// 非法</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb6"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb6-1" title="1">a.<span class="fu">x</span> = <span class="dv">5</span>;</a>
<a class="sourceLine" id="cb6-2" title="2"><span class="co">// 合法, 你仍然可以修改这个对象</span></a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb7"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb7-1" title="1">Foo *<span class="at">const</span> b = <span class="kw">new</span> Foo();</a>
<a class="sourceLine" id="cb7-2" title="2"><span class="co">// 你可以声明一个 &quot;const&quot; 指针</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb8"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb8-1" title="1"><span class="dt">final</span> Foo b = <span class="kw">new</span> <span class="fu">Foo</span>();</a>
<a class="sourceLine" id="cb8-2" title="2"><span class="co">// 你可以声明一个 &quot;final&quot; 引用</span></a></code></pre></div></td>
</tr>
<tr class="odd">
<td><div class="sourceCode" id="cb9"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb9-1" title="1">b = <span class="kw">new</span> Foo();</a>
<a class="sourceLine" id="cb9-2" title="2"><span class="co">// 非法, 你不能对它再次绑定</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb10"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb10-1" title="1">b = <span class="kw">new</span> <span class="fu">Foo</span>();</a>
<a class="sourceLine" id="cb10-2" title="2"><span class="co">// 非法, 你不能对它再次绑定</span></a></code></pre></div></td>
</tr>
<tr class="even">
<td><div class="sourceCode" id="cb11"><pre class="sourceCode cpp"><code class="sourceCode cpp"><a class="sourceLine" id="cb11-1" title="1">b-&gt;x = <span class="dv">5</span>;</a>
<a class="sourceLine" id="cb11-2" title="2"><span class="co">// 合法,你还是可以修改这个对象</span></a></code></pre></div></td>
<td><div class="sourceCode" id="cb12"><pre class="sourceCode java"><code class="sourceCode java"><a class="sourceLine" id="cb12-1" title="1">b.<span class="fu">x</span> = <span class="dv">5</span>;</a>
<a class="sourceLine" id="cb12-2" title="2"><span class="co">// 合法,你还是可以修改这个对象</span></a></code></pre></div></td>
</tr>
</tbody>
</table>

  - C++ 支持 [`goto`](../Page/GOTO.md "wikilink") 语句; Java
    强制[结构化流程控制](../Page/结构化编程.md "wikilink")( ),
    依赖[break标签](../Page/break标签.md "wikilink") 和
    [continue标签](../Page/continue标签.md "wikilink") 语句来提供类似于
    </code>goto</code> 的部分功能. 一些评论者指出这些标签化的流程控制打破了结构化编程的单退出点的特点.\[3\]
  - C++ 提供了一些 Java 缺乏的低级特性. 在 C++ 里, 指针可以用来操作特定的内存位置,
    这是在写低级[操作系统模块的时候必须用到的](../Page/操作系统.md "wikilink").
    类似的, 许多 C++ 编译期支持[内联汇编](../Page/内联汇编.md "wikilink")，在 Java 里,
    这样的代码只能放在外来的库中,而且在调用的时候只能通过[JNI来访问这些外来库提供的接口](../Page/JNI.md "wikilink").

### 语义

  - C++ 允许给函数/方法的参数设置缺省值, Java 不提供这个特性.
    但是[方法重载可以达到同样的效果](../Page/方法重载.md "wikilink").
  - C++ 里最小的编译单位是一个函数; Java 里最小的编译单位是一个类. 在 C++ 里, 函数可以被单独编译. 在 Java 里,
    要编译和维护单独的方法需要把它们移到[超类或](../Page/超类.md "wikilink")[子类或者使用其他的](../Page/子类.md "wikilink")[代码重构的技巧](../Page/代码重构.md "wikilink").
  - C++ 允许基本类型之间的一些隐式的转换, 也允许程序员对于用户自定义类型相关的隐式转换规则. 在 Java 里,
    只有基本类型之间变宽类型的转换可以是隐式的; 其余的转换需要显式的类型转换语法.
      - 这造成的一个后果是,虽然在 Java 和 C++ 里循环的条件(`if`, `while` 和 `for`
        里的退出条件)预期的都是一个布尔表达式, 但 `if(a = 5)` 这样的代码在
        Java 里会导致编译错误,因为没有从整型到布尔的隐式变窄转换. 如果代码是 `if(a == 5)`
        的输错的情况那么是很方便发现这个错误的. 而目前的 C++
        编译器一般来说只会针对这种情况产生一个警告.
  - 对于传参数给函数的情况, C++
    支持[引用传递和](../Page/求值策略#传引用调用.md "wikilink")[值传递](../Page/求值策略#传值调用.md "wikilink").
    在 Java 里, 参数总是值传递的.\[4\] 但在 Java 里,所有的非基本类型的值都只是对于对象的引用 (用 C++
    的术语来说, 它们是智能指针). 对象在 Java 里不是作为值直接被使用的,只有对象的引用可以被直接操作;
    习惯于将对象当做值直接使用的 C++ 开发者经常会把这个跟引用传递搞混.
  - Java 内建的类型在字节宽度和取值范围上是被虚拟机定义好的; 在 C++ 里, 内建的类型有定义一个最小取值范围,
    但是其他的部分(字节宽度)可以被映射成具体平台上支持的原生类型.
      - 举个例子, Java 字符是16位的[Unicode字符](../Page/Unicode.md "wikilink"),
        字符串是由这样的字符组成的序列. C++ 提供窄和宽两种字符,但实际的字符宽度是和平台相关的, 视所用的字符集而定.
        字符串可以由这两种字符中的一种组成.
  - 浮点数及其操作的精度和舍入方式在 C++ 里是平台相关的. Java
    提供了一个可选的,保证跨平台的一致性,不过可能会导致运行时效率比较差.
  - 在 C++ 里, [指针可以作为内存地址直接操作](../Page/指针.md "wikilink"). Java 没有指针 —
    它只有对象引用和数组引用,这两者都不允许直接用来访问内存地址. 在 C++ 里可以构造一个指向指针的指针,而 Java
    的引用只能指向对象.
  - 在 C++ 里, 指针可以指向函数或者方法（[函数指针](../Page/函数指针.md "wikilink")）. 在 Java
    里的等价物是对象或者接口的引用.
  - 虽然有使用栈内存分配的对象, C++ 还是支持[区域资源管理](../Page/RAII.md "wikilink"),
    一个用来自动管理内存和其他系统资源的技术,此技术支持确定性对象销毁(deterministic
    object destruction). 不过,区域资源管理在 C++
    里是不被保证的;它只是一个设计模式,所以需要依赖程序员遵守相关的规则.
    Java
    通过使用[垃圾搜集来支持自动内存管理](../Page/垃圾回收_\(计算机科学\).md "wikilink"),但对于其他的系统资源(窗口,通讯端口,线程),如果垃圾搜集器无法决定它们是否不再被用到,那通常还是需要显式的释放的.
  - C++ 的用户可自定义[操作符重载的特性在](../Page/操作符重载.md "wikilink") Java 里是不支持的. 唯一在
    Java 里可以重载的操作符是 "`+`" 和 "`+=`" 操作符, 在字符串里重载为连接字符串.
  - Java
    的标准[应用程序接口支持](../Page/应用程序接口.md "wikilink")[反射和](../Page/反射_\(计算机科学\).md "wikilink")[动态加载任意代码](../Page/动态加载.md "wikilink").
  - C++ 支持静态和动态的库连接.
  - Java 支持[泛型](../Page/泛型.md "wikilink"), 其主要目的是提供类型安全的容器. C++
    支持[模板](../Page/模板_\(C++\).md "wikilink"), 在泛型编程方面提供了更强的支持.
  - Java 和 C++ 都对基本类型(也叫"内建"类型)和用户自定义类型(也叫"复合"类型). 在 Java 里,
    基本类型只有值的语义,复合类型只有引用的语义. 在 C++
    里所有的值都有值语义,可以创建对于任何类型的引用,这样就允许通过引用语义来操作对象.
  - C++ 支持任意类型的[多重继承](../Page/多重继承.md "wikilink"). 在 Java
    里一个类只能从单个的类继承而来,但一个类可以实现多个的[接口](../Page/接口_\(Java\).md "wikilink")（换句话说,它支持类型的多重继承,但对于实现只能单继承(it
    supports multiple inheritance of types, but only single inheritance
    of implementation)）。
  - Java 对于类和接口是显式区分的. 在 C++ 里多重继承和纯虚函数使得定义出类似于 Java 的接口的类是可能的,不过会有少许区别.
  - Java 在语言和标准库都对[多线程有良好的支持](../Page/多线程.md "wikilink"). `synchronized`
    这个 Java 的关键字为了支持多线程应用提供了简单而安全的[互斥锁](../Page/互斥.md "wikilink")
    ,但同步(synchronized)区只能用 LIFO 的顺序离开. Java 也为更高阶的多线程同步提供了健壮而复杂的库.
    在 C++ 里没有专门为多线程定义的内存模型; 但第三方库提供了和 Java 差不多的功能; 不过这些 C++
    库之间差异较大,一致性不好.
  - C++ 方法可以声明为[虚函数](../Page/虚函数_\(程序语言\).md "wikilink"),
    虚函数是在运行期根据对象的类型才确定的. C++ 方法缺省情况下不是虚的.
    在 Java 里, 方法缺省情况下是虚的, 但可以使用`final`关键字使之声明为非虚的.
  - C++ 枚举属于基本类型,支持和其他整数类型之间的转换和比较. Java 枚举实际上是类的实例(它们从
    `java.lang.Enum`<E> 扩展而来),象其他的类一样可以定义构造函数,数据成员及方法.

### 资源管理

  - Java 提供了自动化的[垃圾搜集](../Page/垃圾回收_\(计算机科学\).md "wikilink"). 在 C++
    里内存管理通常通过构造函数,析构函数以及[智能指针](../Page/智能指针.md "wikilink")。C++
    标准允许垃圾搜集,但并不强制要求; 实际使用上垃圾搜集极少被用到. 强制使用自动垃圾搜集导致了在 Java
    里编写[实时软件是困难的](../Page/实时计算.md "wikilink").\[5\]
  - C++ 可以申请任意的内存块.Java 只能通过对象实例化来申请内存. (注意:在 Java 里,
    程序员可以通过创建一个字节数组模拟申请任意的内存块. 不过
    Java [数组仍然是对象](../Page/数组.md "wikilink").)
  - Java 和 C++ 在资源管理上使用不同的习语. Java
    主要依赖只能回收内存的垃圾搜集机制,因为该机制如果用于回收使用中的非内存的系统资源可能是非常危险的。而
    C++ 主要依赖 [RAII (资源的获取就是初始化)](../Page/RAII.md "wikilink").
    这反映了这两种语言的几方面的不同:
      - 在 C++ 里在栈里申请复合类型的对象是很平常的,一旦退出栈的范围就会被销毁. 在 Java
        里复合类型的对象总是在堆里申请的内存,而后被垃圾搜集器搜集
        (除非在虚拟机里使用了[逃逸分析技术来将堆的内存申请转成栈的](../Page/逃逸分析.md "wikilink").
      - C++ 有析构函数, 而 Java
        有[finalizer](../Page/finalizer.md "wikilink")().
        两者都会在对象释放之前被调用, 但是它们有显著的不同. 一个 C++
        对象的析构函数必须被隐式(栈变量对象的情况)或者显式地调用来释放对象. 析构函数在对象释放之前同步地执行.
        同步,协调的反初始化以及释放在 C++ 里满足 RAII 的要求. 在 Java 里,
        对象的释放是被垃圾搜集器隐式处理的. 一个 Java 对象的 finalizer
        在它被最后一次访问之后和在实际释放之前的某个时间点被[异步](../Page/异步.md "wikilink")([非同步](../Page/非同步.md "wikilink"))地调用,
        这个调用有可能一直不产生. 非常少的对象需要 finalizer;
        只有那些在释放前必须保证一些清理工作一定要做的对象来说才是需要的
        — 典型的情况是：释放对 JVM 来说是外部的资源. 在 Java 里，企图安全同步的释放某些系统资源，只能用显式的
        try/finally 结构来进行.
      - 在 C++ 里是有可能有一个[迷途指针的](../Page/迷途指针.md "wikilink") –
        过时的对一个已释放的对象的[引用](../Page/引用_\(计算机科学\).md "wikilink")([參照](../Page/參照.md "wikilink"));
        试图使用一个迷途指针的结果是导致程序错误. 在 Java 里, 垃圾搜集器不会销毁一个正在被引用的对象.
      - 在 C++ 里未初始化过的基本类型对象是有可能存在的, Java 强制要做缺省初始化.
      - 在 C++ 里有可能申请了一个对象,但对它没有任何引用.
        这样的[不可达对象](../Page/不可达对象.md "wikilink")([不可访问内存](../Page/不可访问内存.md "wikilink"))是无法被销毁的,导致了[内存泄漏](../Page/内存泄漏.md "wikilink").
        作为对比, 在 Java 里一个对象不会被回收直到它变得不可达(对于用户程序来说). (注意:
        *[弱引用](../Page/弱引用.md "wikilink")*([弱引用](../Page/弱引用.md "wikilink"))
        是被支持的, 这个特性让 Java 的垃圾搜集器能够识别不同 程度的可达性.) 在 Java
        里垃圾搜集阻止了很多内存泄漏的情况,
        但某些情况下泄漏仍然是可能的.<ref>["Java memory leaks
        -- Catch me if you
        can"](http://www-128.ibm.com/developerworks/rational/library/05/0816_GuptaPalanki/)
        by Satish Chandra Gupta, Rajeev Palanki, IBM DeveloperWorks, 16
        Aug 2005

</ref>

  -   - Java 更容易泄漏非内存资源, 而 C++ 的惯用做法更不会导致这种泄漏.

### 库

  - C++ 对于许多平台相关的特性提供了[跨平台的访问方式](../Page/跨平台.md "wikilink"). 从 Java
    到原生的操作系统和硬件相关的函数的直接访问需要用到[JNI](../Page/JNI.md "wikilink")([Java本地接口](../Page/Java本地接口.md "wikilink")).

### 运行时

  - C++
    通常来说会直接被编译成[机器码](../Page/机器码.md "wikilink"),被[操作系统直接执行](../Page/操作系统.md "wikilink").
    Java
    通常会被编译成[字节码](../Page/字节码.md "wikilink"),被[Java虚拟机和](../Page/Java虚拟机.md "wikilink")[解释器或者](../Page/解释器.md "wikilink")[即时编译器编译成机器码然后执行](../Page/即时编译.md "wikilink").
  - 因为表达方式不受限制,低级的 C++
    语言特性(例如:不被检查的数组访问,原始指针,[类型双关语](../Page/类型双关语.md "wikilink")())不能在编译期间或者运行期间可靠地被检查.
    相关的编程错误会导致低级的[缓存溢出和](../Page/缓存溢出.md "wikilink")[段错误](../Page/段错误.md "wikilink")([記憶體區段錯誤](../Page/記憶體區段錯誤.md "wikilink")).
    [标准模板库](../Page/标准模板库.md "wikilink") 提供了高级的抽象(例如 vector,list 和
    map)来帮助避免这样的错误. 在 Java 里,
    低级错误不会发生或者会被[JVM检测到并以](../Page/JVM.md "wikilink")[异常的形式报告给应用](../Page/异常.md "wikilink").
  - Java 语言在越界访问数组的时候一般来说会对数组进行[边界检查](../Page/边界检查.md "wikilink")().
    这消除了导致程序不稳定的一个可能因素,但这是以执行速度更慢一些作为代价的.
    在一些情况下,[编译器分析](../Page/编译器分析.md "wikilink")()可以检测到不必要的边界检查并去掉.
    C++ 对于原生数组的越界访问没有要求特定的处理, 所以需要对于原生数组确认不越界. 但C++ 标准库里的一部分库象
    std::vector 也提供了可选的边界检查. 总的来说, Java 数组是"总是安全;严格限制;开销较多" ,而 C++
    原生数组是"可选的开销; 完全不限制; 有潜在的不安全."

### 模板 vs. 泛型

C++ 和 Java
都提供[泛型编程的能力](../Page/泛型.md "wikilink"),分别是[模板](../Page/模板_\(C++\).md "wikilink")
和 [泛型](../Page/Java的泛型.md "wikilink")().
虽然它们被创造用来解决类似的问题,有类似的语法,但实际上很不一样.

  -
    {| class="wikitable"

\! C++ 模板 \! Java 泛型 |- | 类和函数都可以使用模板. | 类和方法都可以使用泛型. |- |
参数可以是任意类型或者整型. | 参数只能是能被引用的类型(非基本类型). |- |
在编译的时候对于每种类型生成类或者函数的拷贝. | 对于所有类型的参数,只有一个版本的类或者函数生成. |- |
同一个类用不同类型生成的对象在运行期也是不同类型的 | 编译完成以后类型参数的类型是被消除的;
同一个类用不同类型参数生成的对象在运行期是相同类型的. |- | 想要用到模板类或者函数的实现代码的话必须
include 它(只是声明是不够的). | 有一个编译好的类文件里的类或者函数的签名就足以使用泛型了 |- | 模板可以被具体化 --
可以为某个特定的模板参数提供单独的实现. | 泛型不能被具体化. |- |
模板参数可以有[缺省参数](../Page/缺省参数.md "wikilink")()(只针对对于模板类,模板函数是没有此特性的).
| 泛型类参数无法拥有缺省参数. |- | 不支持通配符. 返回的类型经常是嵌套的 typedef 形式的. |
如果只用一次,那么支持通配符作为类型参数. |- | 不直接支持设置类型参数的边界
(即, 不允许说明类型参数必须为某个类型的子类/父类),
但[超编程提供了这个特性](../Page/模板超编程.md "wikilink")\[6\]
| 支持类型参数边界, 分别以 "extends" 和 "super" 来定义上界和下界; 同时允许定义类型参数之间的继承关系 |- |
允许生成有参模板的类的实例 (如 foo = new Foo<T>, T 为参数) | 不允许生成有参模板类的实例
(除非使用[反射](../Page/反射_\(计算机科学\).md "wikilink")) |- |
泛型类的类型参数无法用在 static 方法和变量上. |- | static
变量不在在不同的类型参数生成的类之间共享. | static
变量在不同类型参数生成的类的对象之间是共享的. |- |
泛型类和函数在声明时不强制类参数的类限制. 使用错误的类参数会导致模板代码"不工作". 值得注意的是, 如果使用了错误的参数,
则错误信息将出现在定义模板的代码处 (而非调用模板的代码处), 说明 "不支持以该类型作为参数来实例化模板".
这种错误信息往往难以帮助人们找出真正的问题所在 (编程时究竟使用了何种 "错误的"
参数). 因此, 模板类或者函数的正确使用更依赖于正确的文档.
[超编程以额外的代价提供了这些特性](../Page/模板超编程.md "wikilink").
| 泛型类和函数在声明的时候强制了类参数的类限制(Generic classes and functions can enforce type
relationships for type parameters in their declaration).
使用一个错误的参数会在使用它的时候导致一个类错误.
在泛型代码里操作和参数化类型只能按声明的时候保证安全的方式来使用.
这用失去弹性的代价来换取好得多的类型方面的安全性. |- |
模板是[图灵完全的](../Page/图灵完全.md "wikilink") (参见
[模板超编程](../Page/模板超编程.md "wikilink")). | 泛型不是图灵完全的. |}

### 杂项

  - Java 和 C++ 在使代码在不同的文件分开方面使用了不同的技术. Java
    使用了一个包系统,这个系统对所有的程序都要指定了文件名和路径.
    在 Java 里, 编译器负责导入可执行的类文件. C++
    使用了[头文件](../Page/头文件.md "wikilink")[源代码的包含系统来在不同的文件共享声明](../Page/源代码.md "wikilink").
  - 编译好的 Java 代码一般来说比 C++
    文件小,因为[Java字节码](../Page/Java字节码.md "wikilink")()一般来说比机器码要更紧凑,Java
    程序都不是静态链接的.
  - C++ 编译多了一个文本[预处理过程](../Page/预处理器.md "wikilink"), Java 是没有的.
    因此一些使用者在他们的编译过程之前增加了一个预处理的过程,这样能更好的支持需要条件编译的情况.
  - 两个语言里[数组都是定长的](../Page/数组.md "wikilink"). 在 Java 里,
    数组是[一等对象](../Page/一等对象.md "wikilink")([第一類物件](../Page/第一類物件.md "wikilink")),
    而在 C++ 里它们只是它们的基本类型元素的连续的序列, 经常用一个指向第一个元素的指针和一个可选的长度来引用. 在 Java 里,
    数组是被边界检查的,而且知道它们的长度, 而在 C++ 里你可以将任意的序列当成一个数组. C++ 和 Java
    都提供了相关的容器类(分别为**std::vector** 和
    **java.util.ArrayList**),可以改变大小.
  - Java 的除法和模除操作符是定义成零截断的. C++ 没有定义这两个操作符是零截断的还是"负无穷截断"的. 在 Java 里-3/2
    总是得到 -1, 但一个 C++ 编译器可能会返回 -1 或 -2, 视平台而定.
    [C99](../Page/C99.md "wikilink") 定义了和 Java 一样的除法方式. 两种语言都保证对于所有的 a 和
    b(b\!=0)(当 a 和 b都是整型的时候)`(a/b)*b + (a%b) == a`. C++
    版本有时候会更快,因为它允许直接使用处理器的截断方式.
  - 整型的长度在 Java 里是已定义好的(int 为 32-bit, long 为 64-bit), 而在 C++
    里整型和指针的长度是和编译器以及[应用二进制接口相关的](../Page/应用二进制接口.md "wikilink").
    因此仔细编写的 C++ 代码可以利用64位处理器的能力而又可以在32位处理器上工作. 但是需要很仔细的用可移植的方式编写. 作为对比,
    Java 的固定整型大小使得程序员无法做到这样,没办法利用处理器的字长会导致 Java 在64位处理器上表现较差.

## 性能

想运行一个编译好的 Java 程序，计算机上要运行[JVM](../Page/JVM.md "wikilink")；而编译好的 C++
程序不需要额外的应用。比较早期的 Java 版本在性能上比静态编译的语言如 C++ 差得很多，这是因为用 C++
是直接编译成一些机器指令，而当 Java 编译成字节码以后用 JVM 解释执行的时候又牵涉了不少额外的机器指令。 例如：

<table>
<thead>
<tr class="header">
<th><p>Java/C++ 语句</p></th>
<th><p>C++ 生成的代码 (x86)</p></th>
<th><p>Java 生成的字节码</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>vector[i]++;</p></td>
<td><p>mov edx,[ebp+4h]<br />
mov eax,[ebp+1Ch]<br />
inc dword ptr [edx+eax*4]</p></td>
<td><p>aload_1<br />
iload_2<br />
dup2<br />
iaload<br />
iconst_1<br />
iadd<br />
iastore</p></td>
</tr>
</tbody>
</table>

C++ 在大部分的情况下都比 Java 要快，\[7\] 有几个数值方面的基准测试的研究争辩说 Java 在某些情况下可能会比 C++
的性能好得多。\[8\]\[9\]\[10\]
但有人说数值方面的基准测试对于语言的评估是不合适的，因为编译器都可以做相关的优化，甚至可能将被测试的代码彻底删除。\[11\]\[12\]\[13\]
如果涉及到一个真正现实应用的程序，Java 会因为很多原因导致性能变差：\[14\]\[15\]\[16\]

  - 所有的对象都在堆里被申请。对于使用小对象的函数来说会导致很大的性能损失，因为在栈里申请内存几乎没有性能损失。
  - 方法缺省是虚的。这对于小对象来说会因为虚表增加好几倍的内存使用。它也会引起性能损失，因为 JIT
    编译器不得不对查虚表的过程做额外的优化。
  - 即使使用标准的容器依然会有很多的类型转换，这会引起性能损失，因为需要遍历整个继承树。
  - 虚拟机更进一步增加了内存的使用，因此降低了内存的局部性，增加了缓存命中失败率，从而导致整个程序变慢。
  - 缺乏低级细节的操作方式使得开发者无法将程序进一步优化，因为编译器不支持。\[17\]

有人争论说，和 Java 相比 C++也有很多劣势：

  - 指针使得优化变得困难，因为它们可能指向任意的数据。当然现在这一点也并非完全正确，因为一些现代的编译器引入了 "严格别名" 的规则
    \[18\] 并且支持 [C99](../Page/C99.md "wikilink") 的关键字
    *[restrict](../Page/restrict.md "wikilink")*，从而严格限制了指针的使用，使其只能用于指向已知的变量
    \[19\]
  - Java
    的[垃圾搜集和使用](../Page/垃圾回收_\(计算机科学\).md "wikilink")*[malloc](../Page/malloc.md "wikilink")*/*[new](../Page/new_\(C++\).md "wikilink")*来申请内存相比能拥有更好的缓存连贯性，因为它的申请一般来说是顺序的。然而，始终有争论认为二者同样会导致内存的“零碎化”（即多次分配和回收之后内存空间会变得不连续），且并没有哪一个比对方有更明显的缓存优势。
  - 运行时编译可能可以更好的优化代码，因为可以利用运行时的额外的信息，例如知道代码是在什么样的处理器上运行。然而当今的情况也并非完全如此，因为目前最先进的
    C++ 编译器也会针对不同系统生成不同的目标代码，以期充分利用该系统的计算能力 \[20\]

此外，有争议的是，花在更复杂的 C++ 代码上的 debug 时间太多，用 Java 开发完全可以把这些时间用来优化 Java
代码。当然对于一个给定的程序来说两种语言能优化到什么程度也是一方面。最后，对于处理器负担很重的情况，例如视频渲染，C++
能直接访问硬件，在同样一个硬件规格下 C++ 总是会比 Java 的表现好很多。

## 所有权控制

C++不是任何一个公司或者组织的商标，不被任何个人拥有。\[21\]
Java原是[Sun的商标](../Page/Sun.md "wikilink")，现在由[甲骨文公司拥有](../Page/甲骨文公司.md "wikilink")。\[22\]

C++语言由 *ISO/IEC 14882* 定义，是一个[ISO标准](../Page/ISO.md "wikilink")，由
*ISO/IEC JTC1/SC22/WG21* 委员会发布。 Java语言由 *Java Language Specification*
定义，这是一本Sun公司（已被甲骨文收購）出版的书。\[23\]

## 其他

两者的对象访问格式也不一样。

## 参考文献

## 外部链接

  - [Java and C++ Memory
    Management](https://web.archive.org/web/20101103032846/http://task3.cc/289/object-oriented-memory-management/)
    — 一本详尽的关于面向对象内存管理方面的出版物,在内存模型上对 Java 和 C++ 做了比较.
  - [How Java Differs from
    C](https://web.archive.org/web/20020402093228/http://www.ora.com/catalog/javanut/excerpt/index.html#except)
    — excerpt from [Java in a
    Nutshell](../Page/Java_in_a_Nutshell.md "wikilink") by [David
    Flanagan](../Page/David_Flanagan.md "wikilink")
  - [Java vs. C++ resource management
    comparison](https://web.archive.org/web/20070523171523/http://www.fatalmind.com/papers/java_vs_cplusplus/resource.html)
    - 一份有例子的综合论文
  - [Java vs C performance...
    again...](https://web.archive.org/web/20100630201919/http://www.azulsystems.com/blog/cliff-click/2009-09-06-java-vs-c-performanceagain)
    - 深入讨论 Java 和 C++ 性能方面的差别

[Category:程序语言比较](https://zh.wikipedia.org/wiki/Category:程序语言比较 "wikilink")
[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")
[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink")

1.  [Java is
    Pass-By-Value](http://javadude.com/articles/passbyvalue.htm)

2.  [Java and C++
    Library](http://en.wikibooks.org/wiki/C++_Programming/Programming_Languages/Comparisons/Java#Libraries)

3.

4.  [James Gosling](../Page/James_Gosling.md "wikilink"), [Bill
    Joy](../Page/Bill_Joy.md "wikilink"), [Guy
    Steele](../Page/Guy_L._Steele,_Jr..md "wikilink"), and [Gilad
    Bracha](../Page/Gilad_Bracha.md "wikilink"), *The Java language
    specification*, third edition. Addison-Wesley, 2005. ISBN
    0-321-24678-0 (see also [online edition of the
    specification](http://java.sun.com/docs/books/jls/third_edition/html/j3TOC.html)).

5.
6.  [Boost type traits
    library](http://www.boost.org/libs/type_traits/doc/html/boost_typetraits/reference.html)

7.

8.

9.  ["Performance of Java versus
    C++"](http://scribblethink.org/Computer/javaCbenchmark.html) by J.P.
    Lewis and Ulrich Neuman, USC, Jan. 2003 (updated 2004)

10. ["Java will be faster than
    C++"](http://trs-new.jpl.nasa.gov/dspace/bitstream/2014/18351/1/99-1827.pdf)
     by Kirk Reinholtz, JPL, Apr 2001

11. <http://www.ibm.com/developerworks/java/library/j-jtp02225.html#2.0>

12. <http://www.irrlicht3d.org/pivot/entry.php?id=446>

13. ["Java (not really faster) than C++
    benchmark](http://bruscy.republika.pl/pages/przemek/java_not_really_faster_than_cpp.html)
    illustrates

14.

15. <http://warp.povusers.org/grrr/java.html>

16.

17.

18. <http://cellperformance.beyond3d.com/articles/2006/06/understanding-strict-aliasing.html>

19.

20. \[<http://www.slac.stanford.edu/comp/unix/>.../icc/.../optaps_dsp_qax.htm
    Targeting IA-32 Architecture Processors for Run-time Performance
    Checking\]

21. [Bjarne Stroustrup's FAQ: Do you own
    C++?](http://www.research.att.com/~bs/bs_faq.html#revenues)

22. [ZDNet: Oracle buys Sun; Now owns
    Java](http://blogs.zdnet.com/BTL/?p=16598).

23. [Java SE Specifications](http://docs.oracle.com/javase/specs/)