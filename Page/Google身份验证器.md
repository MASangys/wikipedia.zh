}}**Google身份验证器**是一款[基于时间与](https://zh.wikipedia.org/wiki/基于时间的一次性密码算法 "wikilink")[哈希的一次性密码算法的](https://zh.wikipedia.org/wiki/基于哈希的一次性密码算法 "wikilink")[两步验证](https://zh.wikipedia.org/wiki/两步验证 "wikilink")[软件令牌](https://zh.wikipedia.org/wiki/软件令牌 "wikilink")，此软件用于[Google](../Page/Google.md "wikilink")的认证服务。此项服务所使用的算法已列于 RFC 6238 和 RFC 4226 中。\[1\]

Google身份验证器给予用户一个六位到八位的[一次性密码用于进行登录Google或其他站点时的附加验证](https://zh.wikipedia.org/wiki/一次性密码 "wikilink")。其同样可以给第三方应用生成口令，例如[密码管家程序或](https://zh.wikipedia.org/wiki/Password_manager "wikilink")[网络硬盘](../Page/网络硬盘.md "wikilink")。先前版本的Google身份验证器开放源代码，但之后的版本以专有软件的形式公开。\[2\]

## 典型使用情况

通常，用户安装身份验证[程序在智能手机上](../Page/流動應用程式.md "wikilink")。为了登录到使用两步验证的网站或服务上，用户提供用户名和密码后运行身份验证器进行额外验证。 该应用程序会生成六位数的一次性密码，而不同网站可能会生成同一密码。

为了使身份验证器正常工作，安装运行之前网站必须向用户提供一组共享密钥。这组密钥将会用于未来的所有登陆请求。

在两步验证的保护之下，仅仅拥有用户名密码已不足以黑入账户。攻击者需要这组共享密钥或者拿到进行两步验证的移动设备。另一种方法是进行[中间人攻击](../Page/中间人攻击.md "wikilink")；若用户的电脑被木马侵入，则用户名、密码及一次性密码都将被木马所捕获，随后攻击者即可利用木马进行登录、监听或修改用户与网站的通信。

## 实现

谷歌提供[安卓](../Page/Android.md "wikilink")、\[3\][黑莓和](../Page/黑莓手機.md "wikilink")[iOS](https://zh.wikipedia.org/wiki/iOS "wikilink")\[4\]版本的身份验证器。同时也存在有第三方版本。

  - Windows Phone 7.5/8/8.1/10: Microsoft Authenticator\[5\] Virtual TokenFactor\[6\]
  - Windows Mobile: Google Authenticator for Windows Mobile\[7\]
  - Java CLI: Authenticator.jar\[8\]
  - Java GUI: JAuth\[9\] FXAuth\[10\]
  - J2ME: gauthj2me\[11\] lwuitgauthj2me\[12\] Mobile-OTP （仅支持中文）\[13\] totp-me\[14\]
  - Palm OS: gauthj2me\[15\]
  - Python: onetimepass\[16\], pyotp\[17\]
  - PHP: GoogleAuthenticator.php\[18\]
  - Ruby: rotp,\[19\] twofu\[20\]
  - Rails: active_model_otp\[21\] （第三方实现）
  - webOS: GAuth\[22\]
  - Windows: gauth4win\[23\] MOS Authenticator\[24\] WinAuth\[25\]
  - .NET: TwoStepsAuthenticator\[26\]
  - HTML5: html5-google-authenticator\[27\]
  - MeeGo/Harmattan (Nokia N9): GAuth\[28\]
  - Sailfish OS: SGAuth,\[29\] SailOTP\[30\]
  - Apache: Google Authenticator Apache Module\[31\]
  - PAM: Google Pluggable Authentication Module\[32\] oauth-pam\[33\]
  - Backend: [LinOTP](https://zh.wikipedia.org/wiki/LinOTP "wikilink") （后端管理使用Python实现）
  - Chrome/Chrome OS: Authenticator\[34\]
  - iOS: OTP Auth\[35\]

<!-- end list -->

  - privacyIDEA 认证系统。

## 技术说明

服务提供商为每个用户生成80位的密钥（然而RFC 4226 §4要求使用128位并建议使用160位密钥）。\[36\] 它以16位、26位或者32位base32的字符串亦或是[二维码的方式提供出来](https://zh.wikipedia.org/wiki/二维码 "wikilink")。客户端使用此密钥生成[HMAC](../Page/金鑰雜湊訊息鑑別碼.md "wikilink")-[SHA1](../Page/SHA-1.md "wikilink")。经过HMAC处理过的信息可能为：

  - 自[UNIX时间](../Page/UNIX时间.md "wikilink")（[TOTP](https://zh.wikipedia.org/wiki/TOTP "wikilink")）起始之后所经过的30秒周期数
  - 随着每个新密码所增加的计数（[HOTP](https://zh.wikipedia.org/wiki/基于哈希的一次性密码算法 "wikilink")）

一段哈希值被提取出来并转换为6位数密码。

### 生成一次性密码的伪代码

```
  function GoogleAuthenticatorCode(string secret)
      key := base32decode(secret)
      message := floor(current Unix time / 30)
      hash := HMAC-SHA1(key, message)
      offset := last nibble of hash
      truncatedHash := hash[offset..offset+3]  //4 bytes starting at the offset
      Set the first bit of truncatedHash to zero  //remove the most significant bit
      code := truncatedHash mod 1000000
      pad code with 0 until length of code is 6
      return code
```

### 生成事件性或计数性的一次性密码伪代码

```
  function GoogleAuthenticatorCode(string secret)
      key := base32decode(secret)
      message := counter encoded on 8 bytes
      hash := HMAC-SHA1(key, message)
      offset := last nibble of hash
      truncatedHash := hash[offset..offset+3]  //4 bytes starting at the offset
      Set the first bit of truncatedHash to zero  //remove the most significant bit
      code := truncatedHash mod 1000000
      pad code with 0 until length of code is 6
      return code
```

## Android上的开源情况

Google身份验证器在[Google Play商店上目前](https://zh.wikipedia.org/wiki/Google_Play商店 "wikilink")（2017年9月16日）以私有版权协议发布。Google在GitHub上开放了其身份验证器源代码，并陈述如下：

> “此开源计划包含了2.21版本的源代码。随后的版本中包含了Google特有的工作流程，与此项目无关。”

Android版本的独立分支之一为[FreeOTP](../Page/FreeOTP.md "wikilink")\[37\]，其基于Google在GitHub上所开源的最新版本。另外一个并非很火的分支OTP Authenticator\[38\]也在Google Play上可供下载。

## 参考文献

## 外部链接

  - Google帮助上的[Google身份验证器](https://web.archive.org/web/20130302124735/http://support.google.com/a/bin/answer.py?hl=en&answer=1037451)

  - [GitHub](../Page/GitHub.md "wikilink")上的[Google 身份验证器](https://github.com/google/google-authenticator)旧版本源代码

  -  在[Stack Overflow上](../Page/Stack_Overflow.md "wikilink")[使用Python实现的Google身份验证器](https://stackoverflow.com/questions/8529265/google-authenticator-implementation-in-python) o

  - 版-{zh-tw:軟體套件; zh-hk:軟件套件; zh-cn:软件包}-[Authenticator](https://web.archive.org/web/20160225132011/https://f-droid.org/repository/browse/?fdid=com.google.android.apps.authenticator2)

[Category:计算机访问控制](https://zh.wikipedia.org/wiki/Category:计算机访问控制 "wikilink") [Category:Google服務](https://zh.wikipedia.org/wiki/Category:Google服務 "wikilink")

1.
2.  Willis, Nathan (22 January 2014)."*[FreeOTP multi-factor authentication](https://lwn.net/Articles/581086)*". *LWN.net*. Retrieved 10 August 2015.
3.  <https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2> A
4.
5.
6.
7.
8.
9.
10.
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31.
32.
33.
34.
35.
36. <https://tools.ietf.org/html/c#section-4>
37.
38.