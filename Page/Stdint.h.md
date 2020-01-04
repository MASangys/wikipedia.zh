> 本文内容由[Stdint.h](https://zh.wikipedia.org/wiki/Stdint.h)转换而来。


**`stdint.h`**是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，定义了具有特定位宽的整型，以及对应的宏；还列出了在其他标准头文件中定义的整型的极限。

## 类型

### 具有特定位宽的整型

``` c
typedef signed integer type int8_t;     // optional
typedef signed integer type int16_t;    // optional
typedef signed integer type int32_t;    // optional
typedef signed integer type int64_t;    // optional
typedef unsigned integer type uint8_t;  // optional
typedef unsigned integer type uint16_t; // optional
typedef unsigned integer type uint32_t; // optional
typedef unsigned integer type uint64_t; // optional
```

### 位宽不少于指定值的最快速的整型

``` c
typedef signed integer type int_fast8_t;
typedef signed integer type int_fast16_t;
typedef signed integer type int_fast32_t;
typedef signed integer type int_fast64_t;
typedef unsigned integer type uint_fast8_t;
typedef unsigned integer type uint_fast16_t;
typedef unsigned integer type uint_fast32_t;
typedef unsigned integer type uint_fast64_t;
```

### 位宽不少于指定值的整型

``` c
typedef signed integer type int_least8_t;
typedef signed integer type int_least16_t;
typedef signed integer type int_least32_t;
typedef signed integer type int_least64_t;
typedef unsigned integer type uint_least8_t;
typedef unsigned integer type uint_least16_t;
typedef unsigned integer type uint_least32_t;
typedef unsigned integer type uint_least64_t;
```

### 足够表示对象指標的整型

``` c
typedef signed integer type intptr_t;    // optional
typedef unsigned integer type uintptr_t; // optional
```

### 具有最大位宽的整型

``` c
typedef unsigned integer type uintmax_t;
typedef signed integer type intmax_t;
```

## 宏

### 具有特定位宽的整型的极限

  - INT*N*_MIN 为 -(2<sup>N-1</sup>)
  - INT*N*_MAX 为 2<sup>N-1</sup> - 1
  - UINT*N*_MAX 为 2<sup>N</sup> - 1

### 位宽不少于指定值的整型的极限

  - INT_LEAST*N*_MIN 为 -(2<sup>N-1</sup>)
  - INT_LEAST*N*_MAX 为 2<sup>N-1</sup> - 1
  - UINT_LEAST*N*_MAX 为 2<sup>N</sup> - 1

### 位宽不少于指定值的最快速的整型的极限

  - INT_FAST*N*_MIN 为 -(2<sup>N-1</sup>)
  - INT_FAST*N*_MAX 为 2<sup>N-1</sup> - 1
  - UINT_FAST*N*_MAX 为 2<sup>N</sup> - 1

### 足夠表示對象指標的整型的極限

  - INTPTR_MIN 為 -(2<sup>15</sup> - 1)
  - INTPTR_MAX 為 2<sup>15</sup> - 1
  - UINTPTR_MAX 為 2<sup>16</sup> - 1

### 具有最大位宽的整型的极限

  - INTMAX_MIN 为 -(2<sup>63</sup> - 1)
  - INTMAX_MAX 为 2<sup>63</sup> - 1
  - UINTMAX_MAX 为 2<sup>64</sup> - 1

### 其它整型的极限

  - ptrdiff_t
      - PTRDIFF_MIN 为 -65535
      - PTRDIFF_MAX 为 +65535
  - [sig_atomic_t](../Page/Signal.h.md "wikilink")
      - SIG_ATOMIC_MIN
      - SIG_ATOMIC_MAX
  - size_t
      - SIZE_MAX 为 +65535
  - wchar_t
      - WCHAR_MIN
      - WCHAR_MAX
  - wint_t
      - WINT_MIN
      - WINT_MAX

### 整型常量宏

下述类似于函数的宏，把整型常量值扩展适合其数据类型。

  - 位宽不少于指定值的整型常量的宏。例如：UINT64_C(0x123) 扩展为 0x123ULL
      - INT*N*_C(value) 把有符号整型值 value 扩展以适应数据类型 int_least*N*_t
      - UINT*N*_C(value) 把无符号整型值 value 扩展以适应数据类型 uint_least*N*_t
  - 具有最大位宽的整型常量的宏。
      - INTMAX_C(value) 把有符号整型值 value 扩展以适应数据类型 intmax_t
      - UINTMAX_C(value) 把无符号整型值 value 扩展以适应数据类型 uintmax_t

## 参考文献

  - C99标准的 "7.18 Integer types \<stdint.h\> "
  - <http://www.cplusplus.com/reference/cstdint/>

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")