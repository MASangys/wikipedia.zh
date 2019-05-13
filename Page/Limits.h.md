**`limits.h`**是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，定义了整数类型的一些极限值。

## [-{zh-cn:宏;zh-tw:巨集}-](../Page/巨集.md "wikilink")

以下的常數已32位元[電腦的常見數值為例](https://zh.wikipedia.org/wiki/電腦 "wikilink")，但不同[硬體](https://zh.wikipedia.org/wiki/硬體 "wikilink")、[作業系統](https://zh.wikipedia.org/wiki/作業系統 "wikilink")、[編譯器可能會有不同的數值](../Page/編譯器.md "wikilink")。

  - CHAR_BIT 字节的最小位数：8
  - SCHAR_MIN 有符号字符类型的最小值：-128
  - SCHAR_MAX 有符号字符类型的最大值：+127
  - UCHAR_MAX 无符号字符类型的最大值：255
  - CHAR_MIN 字符类型的最小值
  - CHAR_MAX 字符类型的最大值
  - MB_LEN_MAX 多字节字符在任何locale中可能的最长字节数：4/5/8/16
  - SHRT_MIN 短整型最小值：-32768，即- 2<sup>15</sup>
  - SHRT_MAX 短整型最大值：+32767，即 2<sup>15</sup> - 1
  - USHRT_MAX 无符号短整型最大值：65535 ，即 2<sup>16</sup> - 1
  - INT_MIN 整型最小值：-2147483648，即 -(2<sup>31</sup>)
  - INT_MAX 整型最大值：+2147483647 ，即2<sup>31</sup> - 1
  - UINT_MAX 无符号整型最大值：4294967295，即2<sup>32</sup> - 1
  - LONG_MIN 长整型最小值：-2147483648 ，即-(2<sup>31</sup> )
  - LONG_MAX 长整型最大值：+2147483647 ，即2<sup>31</sup> - 1
  - ULONG_MAX 无符号长整型最大值：4294967295 ，即2<sup>32</sup> - 1
  - LLONG_MIN 长长整型最小值：-9223372036854775808 ，即-(2<sup>63</sup> )
  - LLONG_MAX 长长整型最大值：+9223372036854775807 ，即2<sup>63</sup> - 1
  - ULLONG_MAX 无符号长长整型最大值：18446744073709551615 ，即2<sup>64</sup>- 1

## 参考文献

[Category:C标准库头文件](https://zh.wikipedia.org/wiki/Category:C标准库头文件 "wikilink")