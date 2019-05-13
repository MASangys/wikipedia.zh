**Foreach循环**（Foreach
loop）是[计算机](https://zh.wikipedia.org/wiki/计算机 "wikilink")[编程语言中的一种](../Page/编程语言.md "wikilink")[控制流程语句](../Page/控制流程.md "wikilink")，通常用来循环遍历[数组或](../Page/数组.md "wikilink")[集合中的元素](https://zh.wikipedia.org/wiki/集合 "wikilink")。

## 程序示例

### C\#

以下代码用于循环打印名称为myArray的整型数组中的每个元素。\[1\]

``` CSharp
foreach (int x in myArray)
{
  Console.WriteLine(x);
}
```

C\#不允许在foreach循环中改变数组或集合中元素的值（注：成员的值不受影响），如以下代码将无法通过编译。

``` CSharp
foreach (int x in myArray)
{
  x++; //错误代码，因为改变了元素的值
  Console.WriteLine(x);
}
```

如果要让自定义的数据类型支持foreach循环，则该类型必须实现IEnumerable<T>接口，且存在对应此列表的IEnumerator<T>实现。
实际上，在.Net的底层（IL语言层面）而言，

``` CSharp
foreach (var x in list) // x的类型为T
{
  ...
}
```

等价于如下代码：

``` CSharp
using (var iterator = list.GetEnumerator()) // iterator的类型为IEnumerator<T>
{
  while ( iterator.MoveNext() )
  {
    var x = iterator.Current();
    ... // 本段代码中禁止修改x的值——编译器会报错
  }
}
```

它只是为了让用户更加易于使用的等价描述形式。

### Java

[Java语言从JDK](../Page/Java.md "wikilink") 1.5.0开始引入foreach循环。\[2\]

以下代码用于循环打印myArray数组中的每个元素，java中的foreach循环使用**for**[关键字](https://zh.wikipedia.org/wiki/关键字 "wikilink")，而非**foreach**。

``` JAVA
for (int x : myArray){
  System.out.println(x);
}
```

与C\#不同的是，Java中运行以下代码不会编译出错，但是实际数组中的元素不会被修改。

``` JAVA
for (int x : myArray){
  x++;
 System.out.println(x);
}
```

### C++

[C++](../Page/C++.md "wikilink")11擴展for的用法，增加了foreach功能，語法和Java一樣。

``` C++
for (int x : myArray){
  cout << x << endl;
}
```

同時也有C++[求值策略的功能](../Page/求值策略.md "wikilink")，可以傳參考。

``` C++
for (int& x : myArray){
  x = x * x;
}
for (int x : myArray){
  cout << x << endl;
}
```

## 参考資料

## 参见

  - [for循环](https://zh.wikipedia.org/wiki/for循环 "wikilink")

[分类:控制流程](https://zh.wikipedia.org/wiki/分类:控制流程 "wikilink")

[Category:编程语言比较](https://zh.wikipedia.org/wiki/Category:编程语言比较 "wikilink")

1.
2.