**BSTR**（Basic String\[1\]）是一种Pascal-Style字符串（明确标示字符串长度）和C-Style字符串（以\\0结尾）的混合物，一般用于[COM中](https://zh.wikipedia.org/wiki/COM "wikilink")，是[Unicode字符串](https://zh.wikipedia.org/wiki/Unicode "wikilink")，即标示字符串长度，最后还有一个值为\\0字节。

对于BSTR，NULL与""有相同的语义（[Visual Basic引入的语义](../Page/Visual_Basic.md "wikilink")）。BSTR的长度不包含结尾的\\0字节。BSTR必须用SysAlloc\*操作系统API申请与释放。

## 引论

### C-Style 字符串

[C程序語言本身原並不支援字串資料結構](https://zh.wikipedia.org/wiki/C程序語言 "wikilink")。字符串通常以一個字符[數組](https://zh.wikipedia.org/wiki/數組 "wikilink")（或稱[陣列](https://zh.wikipedia.org/wiki/陣列 "wikilink")）或一個指向字符資料的[指標來表達](https://zh.wikipedia.org/wiki/指標 "wikilink")。由於C語言的數組不包含其長度的資訊，故亦無法表示所載之字符串之長度。C語言社群對此通用之解決方案為於字符串末端增添一數值0的字符。C語言的標準程序庫中的字符串處理功能亦以此為基礎。C-Style 字符串特點為不直接包含長度資訊。要取得字符串之長度，就必須從頭到尾數算字符數目，直到遇到字符0為止。由於不設長度資訊，故C-style 字符串的長度理論上可以無上限。

### Pascal-style 字符串

[Pascal程序語言採取另一種方向處理字符串](https://zh.wikipedia.org/wiki/Pascal "wikilink")。在儲存字串的記憶空間的開首，儲存一固定長度整數以表達其長度。如此Pascal-style 字符串不需要在最後增添額外字符以標明其結束。但由於字符串開首儲存字串長度的空間有限，故Pascal-style 的字串長度有上限。但在獲得字串長度方面有速度優勢。

## BSTR 字符串

BSTR 字符串結合了C-style 字符串和Pascal-style字符串。它在前4字节儲存了字符串長度（字符串的字节数，但不包括Null结束符），在字符串結尾以字符0識別。和pascal-style 字符串不同，指向BSTR字符串的指標指向第一個字符，而非開首的字串長度。故此適用於讀取C-style 字符串的程序庫同樣適用於BSTR字符串（但寫入則另作別論）。 字符是按照Unicode编码保存。允许在BSTR串中间嵌入NULL字符。

Windows提供了BSTR相关函数：

  - 分配空间并初始化BSTR，这也相当于char\*转换成BSTR：例如，BSTR bstrText = ::SysAllocString(L"Test");
  - BSTR SysAllocString(const OLECHAR \* psz);
  - INT SysReAllocString(BSTR\* pbstr,const OLECHAR\* psz);
  - BSTR SysAllocStringLen(const OLECHAR \* strIn, UINT ui);
  - INT SysReAllocStringLen(BSTR\* pbstr,const OLECHAR\* psz,unsigned int len);
  - void SysFreeString(BSTR bstrString);
  - UINT SysStringLen(BSTR); //长度是指字符串中字符个数，而非字节数
  - UINT SysStringByteLen(BSTR bstr); 长度是指字符串中字节数
  - BSTR SysAllocStringByteLen(LPCSTR psz,UINT len);
  - 使用_variant_t把char\*转换成BSTR：例如，_variant_t strVar("This is a test"); BSTR bstrText = strVar.bstrVal;
  - 使用_bstr_t函数，例如： BSTR bstrText = _bstr_t("This is a test");
  - 使用ATL中专门用于操作BSTR字符的CComBSTR类：例如BSTR bstrText = CComBSTR("This is a test");
  - 使用ConvertStringToBSTR。例如： char\* lpszText = "Test"; BSTR bstrText = _com_util::ConvertStringToBSTR(lpszText);
  - 使用ConvertBSTRToString：例如，char\* lpszText2 = _com_util::ConvertBSTRToString(bstrText);
  - 使用_bstr_t的类型转换运算符重载把BSTR转换成char\*：例如， char\* lpszText2 = bstrText;
  - CString转换成BSTR通常是通过使用CStringT::AllocSysString来实现。例如：CString str("This is a test");BSTR bstrText = str.AllocSysString();
  - BSTR转换成CString，例如：CStringA str=bstrText;

## 参考文献

<references/>

  - [MSDN](http://msdn2.microsoft.com/en-us/library/ms221069.aspx)
  - [C String](http://www.cppreference.com/stdstring/index.html)
  - [What are VB String](https://web.archive.org/web/20070629052202/http://www.romanpress.com/Articles/Strings_R/Strings.htm)

[Category:数据结构](https://zh.wikipedia.org/wiki/Category:数据结构 "wikilink")

1.  [Basic String的意思是Basic语言的字符串，见《Eric’s Complete Guide To BSTRSemantics》 by Eric Lippert, 2003年9月12日](https://blogs.msdn.microsoft.com/ericlippert/2003/09/12/erics-complete-guide-to-bstr-semantics/)