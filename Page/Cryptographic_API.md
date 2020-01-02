> 本文内容由[Cryptographic API](https://zh.wikipedia.org/wiki/Cryptographic_API)转换而来。


**Cryptographic API** (CryptoAPI) 是微軟在 Windows 作業系統中添加的密碼編譯機能，作為資料加密與解密功能的重要基礎，CryptoAPI 支援同步，非同步的金鑰加密處理，以及作業系統中的[數位憑證](https://zh.wikipedia.org/wiki/數位憑證 "wikilink") 的管理工作。

目前的 CryptoAPI 支援下列工作\[1\]：

  - 基礎[密碼學函數](https://zh.wikipedia.org/wiki/密碼學 "wikilink")。
      - 內文函數 (Context function)。
      - 金鑰產生函數 (Key generation function)。
      - 金鑰交換函數 (Key Exchange function)。
  - 憑證編碼與解碼函數（支援[雜湊功能](https://zh.wikipedia.org/wiki/雜湊 "wikilink")）。
  - 憑證儲存函數。
  - 簡單訊息函數。
      - 加密與解密訊息與資料。
      - 對訊息與資料進行簽章。
      - 對收到的訊息與相關資料進行數位簽章驗證的檢查。
  - 低階訊息函數。

由於 CryptoAPI 使用上過於複雜，因此微軟另外為 CryptoAPI 開發更為容易使用的 [CAPICOM](https://zh.wikipedia.org/wiki/CAPICOM "wikilink") 元件\[2\]，以及 [Data Protection API](https://zh.wikipedia.org/wiki/Data_Protection_API "wikilink")。

## 例子

``` cpp
#include <wincrypt.h>
#include <wintrust.h>
#pragma comment(lib, "crypt32.lib")

#include <atlstr.h>
bool GetHash(int hash_type, CString& hash_result, CString& hash_message)
{

    HCRYPTPROV hCryptProv;
    HCRYPTHASH hCryptHash;

    /*Note that you will get the error such as ‘Invalid Algorithm Specified’ (Error Code: 0x80090008) when you try to replace the algorithm with CALG_SHA256, CALG_SHA384  or CALG_SHA512. Because these algorithms are not supported by Microsoft Base Cryptography Provider ( PROV_RSA_FULL ).   To fix this problem you need to use the provider as PROV_RSA_AES (Microsoft Enhanced RSA and AES Cryptographic Provider) in the  CryptAcquireContext function instead of PROV_RSA_FULL.*/
    if (!CryptAcquireContext(&hCryptProv, NULL, MS_ENH_RSA_AES_PROV, PROV_RSA_AES, 0))
                            //&hCryptProv, NULL, MS_DEF_PROV, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT))
    {
        unsigned int e = GetLastError();
        CString str;
        str.Format("创建CSP容器出错！错误代码为:%x！", e);
        MessageBox(NULL, str, "出错啦!", MB_OK | MB_ICONERROR);
        return false;
    }

    if (!CryptCreateHash(hCryptProv, hash_type, 0, 0, &hCryptHash))
    {
        DWORD e = GetLastError();
        CString str;
        str.Format("创建哈希句柄出错！错误代码为:%x！", e);
        MessageBox(NULL, str, "出错啦!", MB_OK | MB_ICONERROR);
        return false;
    }

    if (!CryptHashData(hCryptHash, (BYTE*)hash_message.GetBuffer(), hash_message.GetLength(), 0))
    {
        int e = GetLastError();
        CString str;
        str.Format("计算哈希值出错！错误代码为:%d！", e);
        MessageBox(NULL, str, "出错啦!", MB_OK | MB_ICONERROR);
        return false;
    }

    char hash_data[512];
    DWORD hash_len = 512;
    if (!CryptGetHashParam(hCryptHash, HP_HASHVAL, (BYTE*)hash_data, &hash_len, 0))
    {
        int e = GetLastError();
        CString str;
        str.Format("获取哈希值出错！错误代码为:%d！", e);
        MessageBox(NULL, str, "出错啦!", MB_OK | MB_ICONERROR);
        return false;
    }

    char hash_hex[512];
    for (unsigned int i = 0; i <= hash_len - 1; i++)
    {
        int hash_bit = hash_data[i];
        int first = (hash_bit & 0xf0) >> 4;
        int second = hash_bit & 0x0f;
        char tmp[2];
        _itoa(first, tmp, 16);
        hash_hex[i * 2] = tmp[0];
        _itoa(second, tmp, 16);
        hash_hex[i * 2 + 1] = tmp[0];
    }

    hash_hex[hash_len * 2] = '\0';
    hash_result.Format("%s", hash_hex);
    CryptDestroyHash(hCryptHash);
    CryptReleaseContext(hCryptProv, NULL);
    return true;
}
```

## 參考資料

<div class="references-small">

<references />

</div>

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink") [Category:Windows_API](https://zh.wikipedia.org/wiki/Category:Windows_API "wikilink") [Category:網路安全](https://zh.wikipedia.org/wiki/Category:網路安全 "wikilink")

1.  \[<http://msdn.microsoft.com/en-us/library/aa380239(VS.85>).aspx CryptoAPI System Architecture\]
2.  \[<http://msdn.microsoft.com/en-us/library/aa380260(VS.85>).aspx Cryptography, CryptoAPI, and CAPICOM\]