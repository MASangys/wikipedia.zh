**[Java](../Page/Java.md "wikilink")**從**5.0**版本開始，加入許多新特性，是[Java歷史中修改最大的版本](../Page/Java.md "wikilink")，許多特點模仿自[C\#](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")，因而被認為是為了與C\#對抗。

## 新的特性\[1\]

### 自動裝箱／拆箱（Auto-Boxing/Unboxing）

将Java中8个基本类型实现自动对象化和值化转换，通过编译器自动完成相关转换代码的生成。

沒有自動裝箱／拆箱：

``` java
 int int1 = 1;
 Integer integer2 = new Integer(int1);
 int int3 = integer2.intValue();
```

有自動裝箱／拆箱：

``` java
 int int1 = 1;
 Integer integer2 = int1;     // 自動裝箱
 int int3 = integer2;         // 自動拆箱
```

实际上将相关字节码反编译后，会还原出其隐式调用的转换方法：

``` java
 int int1 = 1;
 Integer integer2 = Integer.valueOf(int1);     // 自動裝箱的本质，通过调用valueOf将值对象化
 int int3 = integer2.intValue();               // 自動拆箱的本质，通过调用xxxValue将对象值化
```

### 泛型（Generic Types）

泛型就像是C++的模板。原有的Collection API加上泛型支援後，增加對型別的檢查，減少程式錯誤的機會。

沒有泛型：

``` java
 HashMap hm = new HashMap();
 int i=1;
 String tt="test";
 hm.put(new Integer(i), tt);
```

使用Generic：

``` java
 HashMap <Integer, String>hm = new HashMap<Integer, String>();
 int i=1;
 String tt = "test";
 hm.put(i, tt);      // 在這裏對int自動裝箱成Integer，也使用了參數的型別檢查
```

自動裝箱的新功能，可能是從[C\#語言身上學習來的](https://zh.wikipedia.org/wiki/C＃ "wikilink")，Java已經越來越像C\#。然而Java對自動裝箱／拆箱的支援，僅是利用編譯器實現，在Java
Bytecode中，並無自動裝箱／拆箱的操作碼（opcode）。

### [注解](../Page/Java注解.md "wikilink")（Annotation）

Annotation全名是Program Annotation Facility，是Java SE
5.0的新功能。Java的Annotation類似於.NET的屬性（Attribute）。Java的注解是一種接口（interface），繼承自java.lang.annotation.Annotation。Class
File則貼上ACC_ANNOTATION標籤。

從5.0開始，javadoc的`@deprecated`（代表不建議使用的方法或類別）也被Annotation中的`@Deprecated`取代；另外，使用Java實作SOP的[AspectJ與](https://zh.wikipedia.org/wiki/AspectJ "wikilink")[Spring也使用了大量的Annotation](../Page/Spring_Framework.md "wikilink")。

``` java
 // JDK 1.4
 /**
  * @todo to be implemented
  **/
 void gimmeSomeLoving() {
   throw new Exception("not implemented");
 }
```

``` java
 // JDK 1.5
 @todo
 void gimmeSomeLoving() {
   throw new Exception("not implemented");
 }
```

### 枚举类型（enum）

枚举类型也是J2SE 5.0的新功能。過去Java認為enum的關鍵字是不必要的功能，因為用public static int
field就可以取代enum，因此過去一直不用。J2SE 5.0中的class如果是enum，在class
file中會被貼上一個ACC_ENUM標籤。

Enum 一般用来表示一组相同类型的常量。如性别、日期、月份、颜色等。对这些属性用常量的好处是显而易见的，不仅可以保证单例，且比较时候可以用
“==” 来替换 equals 。是一种好的习惯。 JDK1.5 之前没有 Enum
这个类型，那时候一般用接口常量来替代。Java有了Enum
之后，可以更贴近的表示这种常量。

``` java
 // JDK 1.4
 class JavaTech {
        public static final int J2ME = 1;
        public static final int J2SE = 2;
        public static final int J2EE = 3;
 }
```



``` java
 // JDK 1.5
 public enum NewJavaTech {
        J2ME, J2SE, J2EE
 }
```



### 国际化

Java语言严格区分[字节和](../Page/字节.md "wikilink")[字符](../Page/字符.md "wikilink")。字符的存储格式为[UCS-2](https://zh.wikipedia.org/wiki/UCS-2 "wikilink")，也就是只能使用位於[基本多文種平面的字元](https://zh.wikipedia.org/wiki/基本多文種平面 "wikilink")，从Java
5开始支持[UTF-16字符](https://zh.wikipedia.org/wiki/UTF-16 "wikilink")。

另外，從5.0開始Java的程式也開始可以使用[Unicode字元進行命名](https://zh.wikipedia.org/wiki/Unicode "wikilink")。

下面就是一個合法的Java程式，裡面包含了[中文字符作為字串的名稱](../Page/汉语.md "wikilink")，這個程式可以在编譯器中通過編譯。

``` java
public class HelloWorld {
   private String文本 = "HelloWorld";
}
```



### 輸入輸出

在jdk1.5及其以後版本中，`java.util.Scanner`和`java.util.Formatter`類別被应用到輸入輸出中。另外，也出現了類似[C語言的](https://zh.wikipedia.org/wiki/C語言 "wikilink")`printf()`函式。

### foreach迴圈

foreach迴圈，有時又稱forin迴圈，在許多程式語言（包括[C\#](https://zh.wikipedia.org/wiki/C_Sharp "wikilink")、[Ruby](../Page/Ruby.md "wikilink")、[JavaScript](../Page/JavaScript.md "wikilink")）中都有出現，可以直接將一個Array或Map展開，而不必由程式設計師自行檢查邊界，可以有效減少錯誤的機會。

``` Java
 int[] array1 = {1, 3, 5};

 for(int i : array1){ // foreach迴圈
     System.out.println("Number: "+i);
 }
```

### 可變長度的引數

長久以來一直有使用者要求加入`printf()`函式，受限於Java函式必須要有固定引數的限制，始終無法實現，在加入這個功能之後，連帶`printf()`也變為可能。

### static引入

這個特性允許程式設計師將一個類別中的靜態內容引入到程式中。

``` java
static import java.lang.System.*;

public class HelloWorld {
    public static void main(String args[]){
        out.println("Hello World.");
    }
}
```

## 批評

Java
5.0雖然加入許多的新特性，但為了與舊版本相容，JVM並沒有隨之改變，而僅只是從編譯器動手腳，因而引發許多問題。討論Java語言問題的專書《Java
Puzzle》就有專門的篇幅討論5.0之後造成的問題。

### 自動裝箱／拆箱的矛盾

自動裝箱這功能也造成了一些矛盾，例如：

``` java
 Integer int1 = new Integer(1);
 Integer int2 = new Integer(1);

 System.out.println(int1 >= int2); // 檢查兩者的值，     true
 System.out.println(int1 <= int2); // 檢查兩者的值，     true
 System.out.println(int1 != int2); // 檢查兩者的參考位置，true!
```

### 泛型擦除

和C\#，C++的泛型不同，Java的泛型只用在型別檢查，使用的時候還要再做一次轉型。

## 注释

[en:Java version history\#J2SE 5.0 (September 30,
2004)](https://zh.wikipedia.org/wiki/en:Java_version_history#J2SE_5.0_\(September_30,_2004\) "wikilink")

[Category:Java](https://zh.wikipedia.org/wiki/Category:Java "wikilink")

1.  [New Features and Enhancements
    J2SE 5.0](http://docs.oracle.com/javase/1.5.0/docs/relnotes/features.html#lang)