> 本文内容由[Boost C++ Libraries](https://zh.wikipedia.org/wiki/Boost_C++_Libraries)转换而来。


{{ Infobox Software | name = Boost C++ Libraries | screenshot = Boost.png | caption = | author = | latest_release_version = 1.71.0 | latest_release_date =  | genre = [函式庫](../Page/函式庫.md "wikilink") | license = [Boost许可证](../Page/Boost许可证.md "wikilink") | website = <http://www.boost.org/> }}

**Boost C++ 函式庫**（Libraries）是一組擴充[C++](../Page/C++.md "wikilink")功能的經過[同行評審](../Page/同行評審.md "wikilink")（Peer-reviewed）且[開放源碼程式庫](https://zh.wikipedia.org/wiki/開放源碼 "wikilink")。大多數的函式為了能夠以開放源碼、封閉專案的方式運作，而授權於Boost軟體授權條款（Boost Software License）之下。許多Boost的開發人員是來自C++標準委員會，而部份的Boost函式庫成為C++的[TR1標準之一](../Page/C++_Technical_Report_1.md "wikilink")。\[1\]

為了要確保函式庫的效率與彈性，Boost廣泛的使用[模板](../Page/模板_\(C++\).md "wikilink")（template）功能。而它是針對各式領域的C++使用者與應用領域（Application Domain）上，包含的函式庫類別從像[smart_ptr 函式庫](http://www.boost.org/doc/libs/1_35_0/libs/smart_ptr/smart_ptr.htm)這種類通用函式庫，到像是[檔案系統的](https://zh.wikipedia.org/wiki/Boost_檔案系統 "wikilink")[作業系統抽象層](https://zh.wikipedia.org/wiki/作業系統 "wikilink")，甚至能夠利用Boost來開發額外的函式庫或是給進階的C++使用者利用，像是[MPL](http://www.boost.org/libs/mpl)。

## 內容

  - [演算法](https://zh.wikipedia.org/wiki/标准模板库#演算法 "wikilink")
  - 并行计算
      - [thread](http://boost.org/libs/thread/index.html) - [執行緒](https://zh.wikipedia.org/wiki/執行緒 "wikilink")
      - [context](http://boost.org/libs/context/index.html) - 用戶層級[上下文交換](../Page/上下文交換.md "wikilink")
  - [容器](https://zh.wikipedia.org/wiki/容器_\(计算机科学\) "wikilink")
      - [array](http://boost.org/doc/html/array.html) - STL的数组容器
      - [Boost Graph Library (BGL)](http://boost.org/libs/graph/doc/table_of_contents.html) - 通用的图容器，组件和算法
      - [multi-array](http://boost.org/libs/multi_array/doc/index.html) - N维数组
      - [multi-index containers](http://boost.org/libs/multi_index/doc/index.html) - 多索引容器
      - [pointer containers](http://boost.org/libs/ptr_container/doc/ptr_container.html) - 指针容器
      - [property map](https://web.archive.org/web/20081010133941/http://www.boost.org/libs/property_map/property_map.html) - 属性Map
      - [variant](http://boost.org/doc/html/variant.html) - 安全的，基于泛型的，支持访问者模式的联合
      - [fusion](http://boost.org/libs/fusion/) - 基于tuple的容器和算法集合
  - 正当性與測試
      - [concept check](http://boost.org/libs/concept_check/concept_check.htm) - 檢查模板參數是否滿足模板的要求
      - [static assert](http://boost.org/doc/html/boost_staticassert.html) - 編譯期的斷言檢查
      - [Boost Test Library](https://web.archive.org/web/20080516051646/http://boost.org/libs/test/doc/index.html) - C++ 单元测试框架
  - [資料結構](https://zh.wikipedia.org/wiki/資料結構 "wikilink")
      - [dynamic_bitset](http://boost.org/libs/dynamic_bitset/) - `std::bitset-`的動態轉型
  - [仿函式與](https://zh.wikipedia.org/wiki/仿函式 "wikilink")[高階函式](https://zh.wikipedia.org/wiki/高階函式 "wikilink")（含無名関数）
      - [bind](http://boost.org/libs/bind/bind.html) and [mem_fn](http://www.boost.org/libs/bind/mem_fn.html) - 函式的綁定
      - [function](http://boost.org/doc/html/function.html) - 函式。
      - [functional](http://boost.org/libs/functional/index.html) - C++標準函式之強化。包含以下的内容。
          - [function object traits](http://boost.org/libs/functional/function_traits.html)
          - [negators](http://boost.org/libs/functional/negators.html)
          - [binders](http://boost.org/libs/functional/binders.html)
          - [adapters for pointers to functions](http://boost.org/libs/functional/ptr_fun.html)
          - [adapters for pointers to member functions](http://boost.org/libs/functional/mem_fun.html)
      - [hash](http://boost.org/doc/html/hash.html) - C++ Technical Report 1（TR1）定義的雜湊表
      - [lambda](http://boost.org/doc/html/lambda.html) - [λ演算的實作](https://zh.wikipedia.org/wiki/λ演算 "wikilink")
      - [ref](http://boost.org/doc/html/ref.html) - 標準C++参照（call by reference）的加強、特別強化與函式的呼叫
      - [result_of](http://boost.org/libs/utility/utility.htm#result_of) - 函式型別與回傳值
      - [signals2](http://boost.org/doc/html/signals2.html) - 信号和槽回调的实现托管
  - [泛型](../Page/泛型.md "wikilink")
  - [圖](https://zh.wikipedia.org/wiki/圖 "wikilink")
  - [I/O](https://zh.wikipedia.org/wiki/I/O "wikilink")
  - 語言之間的支援（[Python](../Page/Python.md "wikilink")用）
  - [迭代器](../Page/迭代器.md "wikilink")
      - [iterators](http://boost.org/libs/iterator/doc/index.html)
      - [operators](http://boost.org/libs/utility/operators.htm)
      - [tokenizer](http://boost.org/libs/tokenizer/index.html)
  - 数学和計算
  - 内存（memory）
      - [pool](http://boost.org/libs/pool/doc/index.html) - 内存池，boost提供4种内存池模型供使用：pool、object_pool、singleton_pool、pool_allocator/fast_pool_allocator
      - [smart_ptr](http://boost.org/libs/smart_ptr/smart_ptr.htm) - boost的smart_ptr中提供了4种智能指针，作为std::auto_ptr的补充
          - [scoped_ptr](https://web.archive.org/web/20080905004740/http://www.boost.org/libs/smart_ptr/scoped_ptr.htm) - 具作用域指针，与std::auto_ptr类似，但不能转让所有权，用于确保离开作用域能夠正确地删除动态分配的对象
          - [scoped_array](https://web.archive.org/web/20080908033515/http://boost.org/libs/smart_ptr/scoped_array.htm) - 配合scoped_ptr使用
          - [shared_ptr](https://web.archive.org/web/20081011105952/http://www.boost.org/libs/smart_ptr/shared_ptr.htm) -
          - [shared_array](https://web.archive.org/web/20080905004024/http://www.boost.org/libs/smart_ptr/shared_array.htm) - 配合shared_ptr使用
          - [weak_ptr](https://web.archive.org/web/20080724032255/http://boost.org/libs/smart_ptr/weak_ptr.htm) - shared_ptr 的观察者，避免shared_ptr循环引用，是一种辅助指针
          - [intrusive_ptr](https://web.archive.org/web/20081010135940/http://www.boost.org/libs/smart_ptr/intrusive_ptr.html) - 比 shared_ptr 更好的智能指针
      - [utility](http://boost.org/libs/utility/utility.htm) - 以下是utility类型的定义。
          - [base from member idiom](https://web.archive.org/web/20081204140532/http://www.boost.org/libs/utility/base_from_member.html) -
          - [checked delete](http://boost.org/libs/utility/checked_delete.html) - 保证在摧毀一个对象时，必须对该对象的类型有充份了解
          - [next and prior functions](http://boost.org/libs/utility/utility.htm#functions_next_prior) -
          - [noncopyable](http://boost.org/libs/utility/utility.htm#Class_noncopyable) - 把copy constructor和assign operaotr 宣告为private，不加以实现
          - [addressof](http://boost.org/libs/utility/utility.htm#addressof) - 用于获得变量的地址
          - [result_of](http://boost.org/libs/utility/utility.htm#result_of) - 指涉函式回返型別
  - 其他
  - [語法分析器](../Page/語法分析器.md "wikilink")
  - 預處理元編程
  - [字串與文字處理](https://zh.wikipedia.org/wiki/字串 "wikilink")（[正規表示式等](https://zh.wikipedia.org/wiki/正規表示式 "wikilink")）
      - [lexical_cast](https://web.archive.org/web/20080724032825/http://boost.org/libs/conversion/lexical_cast.htm) - lexical_cast 类別模板

      - [format](http://boost.org/libs/format/index.html) - 文字格式化，类似printf

      - [iostreams](http://boost.org/libs/iostreams/doc/index.html) - 新式iostream的補強

      - [regex](https://web.archive.org/web/20080113211048/http://www.boost.org/libs/regex/doc/index.html) - 正規表示法（Regular expression）

      - \- 根据EBNF规则对文件进行分析

      - [string algorithms](http://boost.org/doc/html/string_algo.html) - 文字列演算法

      - [tokenizer](http://boost.org/libs/tokenizer/index.html) - 把字串序列分解成一系列标记（tokens）

      - [wave](http://boost.org/libs/wave/index.html) -
  - [模板元编程](https://zh.wikipedia.org/wiki/模板元编程 "wikilink")（Template Metaprogramming）
      - [mpl](http://boost.org/libs/mpl/doc/index.html) - 模板元编程框架
      - [static assert](http://boost.org/doc/html/boost_staticassert.html) - 靜態斷言
      - [type traits](https://web.archive.org/web/20080113213705/http://boost.org/doc/html/boost_typetraits.html) - 型別的基本属性的模板

## 范例

现有的 Boost 包含大约150种不同的函数库，以下面几项做范例：

### 线性代数 – uBLAS

Boost 包含了 **uBLAS** [线性代数](../Page/线性代数.md "wikilink")函数库，能够藉由基本函数库子函数（BLAS）来支持向量与矩阵形运算。

  - 此范例表示如何矩阵与向量作乘积：

<!-- end list -->

``` cpp

#include <boost/numeric/ublas/vector.hpp>
#include <boost/numeric/ublas/matrix.hpp>
#include <boost/numeric/ublas/io.hpp>
#include <iostream>

using namespace boost::numeric::ublas;

/* 举例 "y = Ax"  */
int main ()
{
      vector<double> x (2);
      x(0) = 1; x(1) = 2;

      matrix<double> A(2,2);
      A(0,0) = 0; A(0,1) = 1;
      A(1,0) = 2; A(1,1) = 3;

      vector<double> y = prod(A, x);

      std::cout << y << std::endl;
      return 0;
}
```

### 随机数产生 – Boost.Random

Boost 也提供独立分布的[模拟随机与](https://zh.wikipedia.org/wiki/模拟随机 "wikilink") PRNG 独立性的机率分布，而这些能夠具体的建立产生器。

  - 此范例表示如何使用 [Mersenne Twister](https://zh.wikipedia.org/wiki/Mersenne_Twister "wikilink") 演算法来产生随机

<!-- end list -->

``` cpp
#include <boost/random.hpp>
#include <ctime>

using namespace boost;

double SampleNormal (double mean, double sigma)
{
    // 建立一个 Mersenne twister 随机数产生器
    // 使用 Unix 时间设定 seed
    static mt19937 rng(static_cast<unsigned> (std::time(0)));

    // 选择高斯机率分布
    normal_distribution<double> norm_dist(mean, sigma);

    // 使用 function 的形式，生成随机数据产生器
    variate_generator<mt19937&, normal_distribution<double> >  normal_sampler(rng, norm_dist);

    // 传回样本分布结果
    return normal_sampler();
}
```

更详细的说明请参阅 [Boost 随机数库](http://boost.org/libs/random/)。

### 多執行緒 – Boost.Thread

範例碼演示建立執行緒：

``` cpp
#include <boost/thread/thread.hpp>
#include <iostream>

using namespace std;

void hello_world()
{
  cout << "Hello world, I'm a thread!" << endl;
}

int main(int argc, char* argv[])
{
  // 開始一條使用 "hello_world" function 的新執行緒
  boost::thread my_thread(&hello_world);
  // 等待執行緒完成工作
  my_thread.join();

  return 0;
}
```

  - [Introduction to Boost.Threads](http://www.ddj.com/dept/cpp/184401518) in [Dr. Dobb's Journal](https://zh.wikipedia.org/wiki/Dr._Dobb's_Journal "wikilink"). (2002)
  - Boost.Threads [API reference](http://www.boost.org/doc/html/thread.html)。
  - [threadpool library](http://threadpool.sourceforge.net) based on Boost.Thread

## 引用

## 外部連結

  - [Boost 官方網站](http://boost.org/)
  - [Smart Pointers to boost your code](https://web.archive.org/web/20081201143925/http://www.codeproject.com/vcpp/stl/boostsmartptr.asp)
  - [Building Boost libraries](http://shoddykid.blogspot.com/2008/07/getting-started-with-boost.html)
  - [Boost 中文翻译](http://code.google.com/p/boost-doc-zh/) [在线阅读](https://web.archive.org/web/20101101223651/http://www.easycpp.org/book/boost%E5%AE%98%E6%96%B9%E6%89%8B%E5%86%8C)

[Category:C++](https://zh.wikipedia.org/wiki/Category:C++ "wikilink") [Category:C++_Template_Library](https://zh.wikipedia.org/wiki/Category:C++_Template_Library "wikilink") [Category:C++函式庫](https://zh.wikipedia.org/wiki/Category:C++函式庫 "wikilink") [Category:自由發展元件與函式庫](https://zh.wikipedia.org/wiki/Category:自由發展元件與函式庫 "wikilink")

1.  [Library Technical Report](http://www.open-std.org/jtc1/sc22/wg21/docs/library_technical_report.html)