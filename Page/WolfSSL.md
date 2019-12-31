> 本文内容由[WolfSSL](https://zh.wikipedia.org/wiki/WolfSSL)转换而来。


**wolfSSL** (原名 **CyaSSL** 或 **yet another SSL**)，是一个提供[传输层安全协议](https://zh.wikipedia.org/wiki/傳輸層安全協議 "wikilink")（SSL/TLS）功能的[软件库](https://zh.wikipedia.org/wiki/軟體庫 "wikilink")，主要针对[嵌入式系系统发展](https://zh.wikipedia.org/wiki/嵌入式系統 "wikilink")。以开放原始码及商用许可两种方式释出，提供SSL/TLS功能(SSL 3.0、TLS 1.0、TLS 1.1、TLS 1.2、TLS 1.3以及DTLS 1.0、DTLS 1.2)，以[C语言写成](https://zh.wikipedia.org/wiki/C語言 "wikilink")。提供了与[OpenSSL](../Page/OpenSSL.md "wikilink")兼容的API界面，让原有使用OpenSSL的软件可以容易的移植过來。

wolfSSL的早期版本, yaSSL，基于C++，为嵌入式环境和资源限制的实时操作系统提供SSL功能库。

## 平台

wolfSSL 现在支持 [Win32/64](../Page/Windows_API.md "wikilink"), [Linux](../Page/Linux.md "wikilink"), [macOS](https://zh.wikipedia.org/wiki/macOS "wikilink"), [Solaris](https://zh.wikipedia.org/wiki/Solaris_\(operating_system\) "wikilink"), [Threadx](https://zh.wikipedia.org/wiki/Threadx "wikilink"), [VxWorks](../Page/VxWorks.md "wikilink"), [FreeBSD](../Page/FreeBSD.md "wikilink"), [NetBSD](../Page/NetBSD.md "wikilink"), [OpenBSD](../Page/OpenBSD.md "wikilink"), [embedded Linux](https://zh.wikipedia.org/wiki/embedded_Linux "wikilink"), [WinCE](https://zh.wikipedia.org/wiki/WinCE "wikilink"), [Haiku](https://zh.wikipedia.org/wiki/Haiku_os "wikilink"), [OpenWrt](../Page/OpenWrt.md "wikilink"), [苹果iPhone](https://zh.wikipedia.org/wiki/iPhone "wikilink"), [安卓Android](https://zh.wikipedia.org/wiki/Android_\(operating_system\) "wikilink"), [Nintendo Wii](../Page/Wii.md "wikilink") 和 [Gamecube系统](https://zh.wikipedia.org/wiki/Nintendo_GameCube "wikilink")。通过 DevKitPro 的支持, [QNX](../Page/QNX.md "wikilink"), [MontaVista](https://zh.wikipedia.org/wiki/MontaVista "wikilink"), [Tron](https://zh.wikipedia.org/wiki/TRON_Project "wikilink") variants, [NonStop](https://zh.wikipedia.org/wiki/NonStop "wikilink"), [OpenCL](../Page/OpenCL.md "wikilink"), Micrium's [MicroC/OS-II](https://zh.wikipedia.org/wiki/MicroC/OS-II "wikilink"), [FreeRTOS](../Page/FreeRTOS.md "wikilink"), [SafeRTOS](https://zh.wikipedia.org/wiki/SafeRTOS "wikilink"), [Freescale MQX](https://zh.wikipedia.org/wiki/MQX "wikilink"), [Nucleus](../Page/Nucleus_RTOS.md "wikilink"), [TinyOS](../Page/TinyOS.md "wikilink"), [TI-RTOS](https://zh.wikipedia.org/wiki/TI-RTOS "wikilink"), [HP-UX](../Page/HP-UX.md "wikilink"), uTasker, 和 embOS.

## 版本历史

yaSSL, 或 yet another SSL, 始建于2004. [OpenSSL](../Page/OpenSSL.md "wikilink") 当时可用, 并且根据*OpenSSL许可证*和*SSLeay许可证*获得双重许可。\[1\] 然而，yaSSL是在商业和GPL许可下开发的。\[2\] yaSSL提供了更现代的API和商业风格的开发人员支持，并含有OpenSSL兼容层。\[3\] wolfSSL / CyaSSL / yaSSL的第一个主要用户是[MySQL](../Page/MySQL.md "wikilink").\[4\] 通过捆绑MySQL，yaSSL已经实现了数百万的极高分发量。

## 协议

wolfSSL 轻量级SSL库实现以下协议:\[5\]

  - SSL 3.0、TLS 1.0、TLS 1.1、TLS 1.2、TLS 1.3
  - DTLS 1.0、DTLS 1.2

**协议说明:**

  - **SSL 2.0** - SSL 2.0 在2011年被 RFC 6176弃用（禁止）。wolfSSL 不再支持。
  - **SSL 3.0** - SSL 3.0 已于2015年被RFC 7568为回应[POODLE 攻击而弃用](https://zh.wikipedia.org/wiki/POODLE_attack "wikilink")（禁止）。SSL 3.0被wolfSSL 3.6.6 之后的版本默认禁用，但仍可通过编译时选项启用。<ref>

["wolfSSL 3.6.6 is Now Available"](https://www.wolfssl.com/wolfSSL/Blog/Entries/2015/8/24_wolfSSL_3.6.6_is_Now_Available.html). </ref>

## 算法

wolfSSL 使用以下加密库:

### wolfCrypt

默认情况下，wolfSSL使用wolfCrypt提供的加密服务。\[6\] wolfCrypt 提供 [RSA](https://zh.wikipedia.org/wiki/RSA_\(algorithm\) "wikilink"), [ECC](https://zh.wikipedia.org/wiki/Elliptic_curve_cryptography "wikilink"), [DSS](https://zh.wikipedia.org/wiki/Digital_Signature_Algorithm "wikilink"), [Diffie–Hellman](https://zh.wikipedia.org/wiki/Diffie–Hellman_key_exchange "wikilink"), [EDH](https://zh.wikipedia.org/wiki/Error_Detection_and_Handling "wikilink"), [NTRU](../Page/NTRU.md "wikilink"), [DES](https://zh.wikipedia.org/wiki/Data_Encryption_Standard "wikilink"), [Triple DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink"), [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink") (CBC, CTR, CCM, GCM), [Camellia](https://zh.wikipedia.org/wiki/Camellia_\(cipher\) "wikilink"), [IDEA](https://zh.wikipedia.org/wiki/International_Data_Encryption_Algorithm "wikilink"), [ARC4](https://zh.wikipedia.org/wiki/ARC4 "wikilink"), [HC-128](https://zh.wikipedia.org/wiki/HC-128 "wikilink"), [ChaCha20](https://zh.wikipedia.org/wiki/ChaCha20 "wikilink"), [MD2](https://zh.wikipedia.org/wiki/MD2_\(cryptography\) "wikilink"), [MD4](https://zh.wikipedia.org/wiki/MD4 "wikilink"), [MD5](../Page/MD5.md "wikilink"), [SHA-1](../Page/SHA-1.md "wikilink"), [SHA-2](../Page/SHA-2.md "wikilink"), [BLAKE2](https://zh.wikipedia.org/wiki/BLAKE_\(hash_function\) "wikilink"), [RIPEMD-160](https://zh.wikipedia.org/wiki/RIPEMD-160 "wikilink"), [Poly1305](../Page/Poly1305.md "wikilink"), 随机数生成，大整数支持和基本16/64编码/解码。还包含一个来自欧盟eSTREAM项目的公共领域软件流密码（[public domain software](https://zh.wikipedia.org/wiki/public_domain_software "wikilink")）的实验密码，[Rabbit](https://zh.wikipedia.org/wiki/Rabbit_\(cipher\) "wikilink")。 Rabbit对于那些在高性能，高需求环境中对流媒体进行加密的潜在用户非常有用。

wolfCrypt 还支持最近的 [Curve25519](../Page/Curve25519.md "wikilink") 和 [Ed25519](https://zh.wikipedia.org/wiki/EdDSA "wikilink") 算法。

wolfCrypt 充当几个流行软件包和库的后端加密实现，包括[MIT Kerberos](https://zh.wikipedia.org/wiki/Kerberos_\(protocol\) "wikilink")\[7\]（可使用构建选项启用）。

### NTRU

CyaSSL+ 包含 [NTRU](https://zh.wikipedia.org/wiki/NTRUEncrypt "wikilink")\[8\] 公钥加密。在CyaSSL + 中增加NTRU是yaSSL和Security Innovation之间合作的结果。\[9\] NTRU在移动电话和嵌入式环境中运行良好，这是因为与其他公钥系统相比，提供相同安全性所需的位数大小减少了。另外，还不知道它易受到量子攻击。CyaSSL + 中含有包括AES-256，RC4和HC-128在内的几种使用NTRU的密码套件。

## 软件防护扩展(SGX)

wolfSSL 支持使用英特尔SGX ([软件防护扩展](https://zh.wikipedia.org/wiki/软件防护扩展 "wikilink")\[10\]). 英特尔SGX Intel SGX 允许更小的攻击表面积，并且已被证明为执行代码提供更高级别的安全性，而对性能没有显着的负面影响。

## 硬件加速平台支持

  -
    <span style="color:#585858; font-size: 110%">[英特尔 AES-NI](http://www.intel.com/content/www/us/en/architecture-and-technology/advanced-encryption-standard--aes-/data-protection-aes-general-technology.html) (至强和酷睿处理器系列)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[GCM](https://zh.wikipedia.org/wiki/Galois/Counter_Mode "wikilink")            |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CCM](https://zh.wikipedia.org/wiki/CCM_mode "wikilink")                       |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[ECB](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CTR](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |

  -
    <span style="color:#585858; font-size: 110%">[AVX1/AVX2](https://zh.wikipedia.org/wiki/Advanced_Vector_Extensions "wikilink") (英特尔 和 AMD x86)</span>

|  |
|  |
|  |
|  |
|  |

  -
    <span style="color:#585858; font-size: 110%">[RDRAND](https://software.intel.com/en-us/blogs/2012/11/17/the-difference-between-rdrand-and-rdseed) (英特尔 64, IA-32 架构)</span>

|  |
|  |
|  |
|  |

  -
    <span style="color:#585858; font-size: 110%">[RDSEED](https://software.intel.com/en-us/blogs/2012/11/17/the-difference-between-rdrand-and-rdseed) (英特尔 Broadwell, AMD Zen)</span>

|  |
|  |
|  |
|  |

  -
    <span style="color:#585858; font-size: 110%">[Freescale Coldfire SEC](http://www.nxp.com/assets/documents/data/en/application-notes/AN2788.pdf) (NXP MCF547X 和 MCF548X)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [DES](https://zh.wikipedia.org/wiki/Data_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")     |
|  | [3DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")                  |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |

  -
    <span style="color:#585858; font-size: 110%">[Freescale Kinetis MMCAU](http://www.nxp.com/assets/documents/data/en/application-notes/AN4307.pdf) K50, K60, K70 和 K80 (ARM Cortex-M4 核)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [MD5](../Page/MD5.md "wikilink")                                                                                                                            |
|  | [SHA1](../Page/SHA-1.md "wikilink")                                                                                                                         |
|  | [SHA256](../Page/SHA-2.md "wikilink")                                                                                                                       |
|  | [DES-CBC](https://zh.wikipedia.org/wiki/Data_Encryption_Standard "wikilink")                                                                                |
|  | [3DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")                  |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CCM](https://zh.wikipedia.org/wiki/CCM_mode "wikilink")                       |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[GCM](https://zh.wikipedia.org/wiki/Galois/Counter_Mode "wikilink")            |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[ECB](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |

  -
    <span style="color:#585858; font-size: 110%">[STMicroelectronics STM32](https://zh.wikipedia.org/wiki/STM32 "wikilink") F1, F2, F4, L1, W 系列 (ARM Cortex - M3/M4)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [RNG](https://zh.wikipedia.org/wiki/Random_number_generation "wikilink")                                                                                    |
|  | [DES](https://zh.wikipedia.org/wiki/Data_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")     |
|  | [DES](https://zh.wikipedia.org/wiki/Data_Encryption_Standard "wikilink")-[ECB](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")     |
|  | [3DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")                  |
|  | [MD5](../Page/MD5.md "wikilink")                                                                                                                            |
|  | [SHA1](../Page/SHA-1.md "wikilink")                                                                                                                         |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CTR](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |

  -

      -
        <span style="padding-left: 2.5em; line-height: 1.5em; font-size: 80%;">[CubeMX](http://www.st.com/en/development-tools/stm32cubemx.html) and [Std Per Lib](http://www.st.com/en/embedded-software/stm32-standard-peripheral-libraries.html?querycriteria=productId=LN1939)</span>

<!-- end list -->

  -
    <span style="color:#585858; font-size: 110%">[Cavium NITROX](http://cavium.com/processor_security.html) (III/V PX 处理器)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [RNG](https://zh.wikipedia.org/wiki/Random_number_generation "wikilink")                                                                                    |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [3DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")                  |
|  | [RC4](../Page/RC4.md "wikilink")                                                                                                                            |
|  | [HMAC](https://zh.wikipedia.org/wiki/Hash-based_message_authentication_code "wikilink")                                                                     |
|  | [RSA](https://zh.wikipedia.org/wiki/RSA_\(cryptosystem\) "wikilink")                                                                                        |
|  | [ECC](https://zh.wikipedia.org/wiki/Elliptic-curve_cryptography "wikilink")                                                                                 |

  -
    <span style="color:#585858; font-size: 110%">[Microchip PIC32 MX/MZ](http://www.microchip.com/design-centers/32-bit) (嵌入式连接)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [MD5](../Page/MD5.md "wikilink")                                                                                                                            |
|  | [SHA1](../Page/SHA-1.md "wikilink")                                                                                                                         |
|  | [SHA256](../Page/SHA-2.md "wikilink")                                                                                                                       |
|  | [HMAC](https://zh.wikipedia.org/wiki/Hash-based_message_authentication_code "wikilink")                                                                     |
|  | [DES](https://zh.wikipedia.org/wiki/Data_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")     |
|  | [3DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")                  |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CTR](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[GCM](https://zh.wikipedia.org/wiki/Galois/Counter_Mode "wikilink")            |

  -
    <span style="color:#585858; font-size: 110%">[德州仪器 TM4C1294](http://www.ti.com/product/TM4C1294NCPDT) (ARM Cortex-M4F)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [DES](https://zh.wikipedia.org/wiki/Data_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")     |
|  | [3DES](https://zh.wikipedia.org/wiki/Triple_DES "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink")                  |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CCM](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[GCM](https://zh.wikipedia.org/wiki/Galois/Counter_Mode "wikilink")            |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[ECB](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CTR](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |

  -
    <span style="color:#585858; font-size: 110%">[Nordic NRF51](https://web.archive.org/web/20180619035750/https://www.nordicsemi.com/Products/nRF51-Series-SoC) (Series SoC family, 32-bit ARM Cortex M0 核心处理器)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[ECB](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [RNG](https://zh.wikipedia.org/wiki/Random_number_generation "wikilink")                                                                                    |

  -
    <span style="color:#585858; font-size: 110%">[Microchip](http://www.microchip.com/wwwproducts/en/ATECC508A)/[Atmel](http://www.atmel.com/Images/Atmel-8923S-CryptoAuth-ATECC508A-Datasheet-Summary.pdf) ATECC508A (兼容于MPU or MCU)</span>

|  |                                                                             |
|  | --------------------------------------------------------------------------- |
|  | [ECC](https://zh.wikipedia.org/wiki/Elliptic_curve_cryptography "wikilink") |

  -
    <span style="color:#585858; font-size: 110%">[ARMv8](https://www.arm.com/files/downloads/ARMv8_Architecture.pdf)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CTR](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[GCM](https://zh.wikipedia.org/wiki/Galois/Counter_Mode "wikilink")            |
|  | [SHA256](../Page/SHA-2.md "wikilink")                                                                                                                       |

  -
    <span style="color:#585858; font-size: 110%">[英特尔QuickAssist技术](https://www.wolfssl.com/docs/intel-quickassist/)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [RSA](https://zh.wikipedia.org/wiki/RSA_\(cryptosystem\) "wikilink")                                                                                        |
|  | [SHA1](../Page/SHA-1.md "wikilink")                                                                                                                         |
|  | [SHA2](../Page/SHA-2.md "wikilink")                                                                                                                         |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[GCM](https://zh.wikipedia.org/wiki/Galois/Counter_Mode "wikilink")            |
|  | [ECC](https://zh.wikipedia.org/wiki/Elliptic_curve_cryptography "wikilink")                                                                                 |
|  | [HMAC](https://zh.wikipedia.org/wiki/Hash-based_message_authentication_code "wikilink")                                                                     |
|  | [MD5](../Page/MD5.md "wikilink")                                                                                                                            |

  -
    <span style="color:#585858; font-size: 110%">[Freescale NXP LTC](https://www.wolfssl.com/nxp-kinetis-k8x-ltc-support-for-pki-rsaecc-with-tls13/)</span>

|  |                                                                                                                                                             |
|  | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  | [Curve25519](../Page/Curve25519.md "wikilink")                                                                                                              |
|  | [Ed25519](https://zh.wikipedia.org/wiki/EdDSA "wikilink")                                                                                                   |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CCM](https://zh.wikipedia.org/wiki/CCM_mode "wikilink")                       |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[ECB](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CBC](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[CTR](https://zh.wikipedia.org/wiki/Block_cipher_mode_of_operation "wikilink") |
|  | [AES](https://zh.wikipedia.org/wiki/Advanced_Encryption_Standard "wikilink")-[GCM](https://zh.wikipedia.org/wiki/Galois/Counter_Mode "wikilink")            |
|  | [SHA1](../Page/SHA-1.md "wikilink")                                                                                                                         |
|  | [SHA256](https://zh.wikipedia.org/wiki/SHA2 "wikilink")                                                                                                     |
|  | [ECC](https://zh.wikipedia.org/wiki/Elliptic_curve_cryptography "wikilink")                                                                                 |
|  | [ECC](https://zh.wikipedia.org/wiki/Elliptic_curve_cryptography "wikilink")-[DHE](https://zh.wikipedia.org/wiki/Diffie–Hellman_key_exchange "wikilink")     |
|  | [RSA](https://zh.wikipedia.org/wiki/RSA_\(cryptosystem\) "wikilink")                                                                                        |

## 许可

wolfSSL [开放源代码](../Page/开放源代码.md "wikilink"), 根据GNU通用公共许可证GPLv2获得许可.\[11\]

## 其他

  - [传输层安全性协议](https://zh.wikipedia.org/wiki/传输层安全性协议 "wikilink")
  - [Comparison of TLS implementations](https://zh.wikipedia.org/wiki/:en:Comparison_of_TLS_implementations "wikilink")
  - [Comparison of cryptography libraries](https://zh.wikipedia.org/wiki/:en:WolfSSL#Hardware_Acceleration_Platforms_Supported "wikilink")
  - [GnuTLS](../Page/GnuTLS.md "wikilink")
  - [网络安全服务](../Page/网络安全服务.md "wikilink")
  - [OpenSSL](../Page/OpenSSL.md "wikilink")
  - [MatrixSSL](../Page/MatrixSSL.md "wikilink")

## 参考文献

## 外部链接

  - [wolfSSL/CyaSSL Homepage](https://web.archive.org/web/20160206033514/https://www.wolfssl.com/wolfSSL/Home.html)
  - [wolfSSL Now With ChaCha20 and Poly1305](http://embedded-computing.com/news/wolfssl-with-chacha20-poly1305)

## 註釋

[Category:C_libraries](https://zh.wikipedia.org/wiki/Category:C_libraries "wikilink") [Category:Cryptographic_software](https://zh.wikipedia.org/wiki/Category:Cryptographic_software "wikilink") [Category:Transport_Layer_Security_implementation](https://zh.wikipedia.org/wiki/Category:Transport_Layer_Security_implementation "wikilink") [Category:加密软件](https://zh.wikipedia.org/wiki/Category:加密软件 "wikilink") [Category:C函式庫](https://zh.wikipedia.org/wiki/Category:C函式庫 "wikilink") [Category:自由安全软件](https://zh.wikipedia.org/wiki/Category:自由安全软件 "wikilink")

1.  [OpenSSL: Source, License](https://www.openssl.org/source/license.html)
2.  [wolfSSL - License](https://www.wolfssl.com/wolfSSL/License.html)
3.
4.
5.   Chapter 4: Features {{\!}} Documentation|newspaper=wolfSSL|accessdate=2018-06-18|language=en-US}}
6.  [wolfSSL - Docs | wolfSSL Manual - Chapter 10 (wolfCrypt Usage Reference)](https://www.wolfssl.com/wolfSSL/Docs-wolfssl-manual-10-wolfcrypt-usage-reference.html)
7.  [Kerberos: The Network Authentication Protocol](http://web.mit.edu/kerberos/)
8.  [NTRU CryptoLabs](http://securityinnovation.com/cryptolab/)
9.
10. [Intel SGX](https://zh.wikipedia.org/wiki/Software_Guard_Extensions "wikilink")
11. [GNU License](https://www.gnu.org/licenses/license-list.html)