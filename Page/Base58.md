**Base58**是用于Bitcoin中使用的一种独特的编码方式，主要用于产生Bitcoin的钱包地址。相比Base64，Base58不使用数字"0"，字母大写"O"，字母大写"I"，和字母小写"l"，以及"+"和"/"符号。
设计Base58主要的目的是：

1.  避免混淆。在某些字体下，数字0和字母大写O，以及字母大写I和字母小写l会非常相似。
2.  不使用"+"和"/"的原因是非字母或数字的字符串作为帐号较难被接受。
3.  没有标点符号，通常不会被从中间分行。
4.  大部分的软件支持双击选择整个字符串。


以下引用自其作者Satoshi Nakamoto在base58.h中的注释：

``` cpp
//
// Why base-58 instead of standard base-64 encoding?
// - Don't want 0OIl characters that look the same in some fonts and
//      could be used to create visually identical looking account numbers.
// - A string with non-alphanumeric characters is not as easily accepted as an account number.
// - E-mail usually won't line-break if there's no punctuation to break at.
// - Doubleclicking selects the whole number as one word if it's all alphanumeric.
//
```

## 编码

Base58编码可以表示的比特位数为Log<sub>2</sub>58\(\approx\)5.858<sub>bit</sub>。经过Base58编码的数据为原始的数据长度的\(\tfrac{8}{5.858}\approx1.37\)倍，稍稍多于Base64的1.33倍。
编码符号表：

| Value | Char |    | Value | Char |   | Value | Char |  | Value | Char |
| ----- | ---- | -- | ----- | ---- | - | ----- | ---- |  | ----- | ---- |
| 0     | 1    | 16 | H     | 32   | Z | 48    | q    |  |       |      |
| 1     | 2    | 17 | J     | 33   | a | 49    | r    |  |       |      |
| 2     | 3    | 18 | K     | 34   | b | 50    | s    |  |       |      |
| 3     | 4    | 19 | L     | 35   | c | 51    | t    |  |       |      |
| 4     | 5    | 20 | M     | 36   | d | 52    | u    |  |       |      |
| 5     | 6    | 21 | N     | 37   | e | 53    | v    |  |       |      |
| 6     | 7    | 22 | P     | 38   | f | 54    | w    |  |       |      |
| 7     | 8    | 23 | Q     | 39   | g | 55    | x    |  |       |      |
| 8     | 9    | 24 | R     | 40   | h | 56    | y    |  |       |      |
| 9     | A    | 25 | S     | 41   | i | 57    | z    |  |       |      |
| 10    | B    | 26 | T     | 42   | j |       |      |  |       |      |
| 11    | C    | 27 | U     | 43   | k |       |      |  |       |      |
| 12    | D    | 28 | V     | 44   | m |       |      |  |       |      |
| 13    | E    | 29 | W     | 45   | n |       |      |  |       |      |
| 14    | F    | 30 | X     | 46   | o |       |      |  |       |      |
| 15    | G    | 31 | Y     | 47   | p |       |      |  |       |      |

由于256不能被58整除，Base58无法像Base64那样转换为8bits的2进制后依次取出6bits就可以快速完成转换。因此，Base58编码算法需要除法运算实现，如果被编码的数据较长，则要用特殊的类来处理大数，在Bitcoin使用了[OpenSSL中的BIGNUM](../Page/OpenSSL.md "wikilink")：

``` cpp
    code_string = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";
    x = convert_bytes_to_big_integer(hash_result);

    output_string = "";

    while(x > 0)
    {
        (x, remainder) = divide(x, 58);
        output_string.append(code_string[remainder]);
    }

    repeat(number_of_leading_zero_bytes_in_hash)
    {
        output_string.append(code_string[0]);
    }

    output_string.reverse();
```

## 外部链接

  - <http://www.bitcoin.org>
  - <https://en.bitcoin.it/wiki/Base58Check_encoding>

## 参见

  - [Base64](../Page/Base64.md "wikilink")

[Category:文件格式](https://zh.wikipedia.org/wiki/Category:文件格式 "wikilink")
[Category:字符编码](https://zh.wikipedia.org/wiki/Category:字符编码 "wikilink")
[Category:数字](https://zh.wikipedia.org/wiki/Category:数字 "wikilink")