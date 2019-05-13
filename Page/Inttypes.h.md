**`inttypes.h`**是[C標準函数庫中的](https://zh.wikipedia.org/wiki/C標準函数庫 "wikilink")[头文件](../Page/头文件.md "wikilink")，提供了各种位宽的整数类型输入输出时的转换标志宏。

## 宏

下述定义的宏用于`stdint.h`中定义的各种位宽的整形在格式化输入输出时的格式标志。

下列符号末尾的斜体*N*表示整型的位宽。d、i表示有符号整型；u表示无符号整型；o表示8进制无符号整型；x、X表示16进制无符号整型。LEAST、FAST、MAX表示`stdint.h`中定义的整数类型。PTR表示指针类型。

例如PRIdFAST32可用于作为打印输出int_fast32_t整型的格式标志。

### 有符号整型的格式化输出标志

PRId*N* PRIdLEAST*N* PRIdFAST*N* PRIdMAX PRIdPTR PRIi*N* PRIiLEAST*N*
PRIiFAST*N* PRIiMAX PRIiPTR

### 无符号整型的格式化输出

PRIo*N* PRIoLEAST*N* PRIoFAST*N* PRIoMAX PRIoPTR PRIu*N* PRIuLEAST*N*
PRIuFAST*N* PRIuMAX PRIuPTR PRIx*N* PRIxLEAST*N* PRIxFAST*N* PRIxMAX
PRIxPTR PRIX*N* PRIXLEAST*N* PRIXFAST*N* PRIXMAX PRIXPTR

### 有符号整型的格式化输入

SCNd*N* SCNdLEAST*N* SCNdFAST*N* SCNdMAX SCNdPTR SCNi*N* SCNiLEAST*N*
SCNiFAST*N* SCNiMAX SCNiPTR

### 无符号整型的格式化输入

SCNo*N* SCNoLEAST*N* SCNoFAST*N* SCNoMAX SCNoPTR SCNu*N* SCNuLEAST*N*
SCNuFAST*N* SCNuMAX SCNuPTR SCNx*N* SCNxLEAST*N* SCNxFAST*N* SCNxMAX
SCNxPTR

### 例子

``` cpp
#include <inttypes.h>
#include <wchar.h>
int main(void)
{
  uintmax_t i = UINTMAX_MAX; // this type always exists
  wprintf(L"The largest integer value is %020" PRIxMAX "\n", i);
  return 0;
}
```

## 类型

  - imaxdiv_t 结构化类型，用于保存函数imaxdiv返回的除商与余数

## 函数

  - imaxabs 计算绝对值
  - imaxdiv 计算商与余数
  - strtoimax 字符串转换为整数
  - strtoumax 字符串转换为无符号整数
  - wstrtoimax 宽字符串转换为整数
  - wstrtoumax 宽字符串转换为无符号整数

[Category:C標準函式庫](https://zh.wikipedia.org/wiki/Category:C標準函式庫 "wikilink")