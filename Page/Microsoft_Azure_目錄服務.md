**Microsoft Azure 目錄服務** (Azure Active Directory)，簡稱 Azure AD，是
Microsoft Azure 平台上提供身份驗證與存取管理 (Identity and Access Management)
的主要服務，負責管理身份驗證與存取管理的工作。Azure AD 的前身是 AppFabric
的存取控制服務，它是一個基於[HTTP通訊協定的目錄服務](../Page/HTTP.md "wikilink")
(Directory Service)，與以[LDAP和Kerberos協定為主的](../Page/LDAP.md "wikilink")
Windows Server [Active
Directory](../Page/Active_Directory.md "wikilink") 無法直接共通，必須透過
工具進行帳戶同步後，才能在 Azure AD 中使用 Active Directory 的帳戶。

Azure AD 依功能分為 Basic 版本與 Premium 版本，Basic
版本中包含了標準的單一簽入、帳戶與群組管理、Application
Proxy (由 Azure AD 代轉訊息到地端的 AD 網域控制站進行驗證)、Azure AD
Connect、基本資安與使用報表；Premium
版則支援了如地端與雲端共用的多重要素驗證、雲端帳戶密碼寫回至地端
AD 帳戶功能、動態群組功能、連線健康偵測與應用程式探索 (Cloud App Discovery) 等功能。Premium
版本也會配合微軟的企業行動套件 (Microsoft Enterprise Mobility
Suites/EMS) 一起銷售 \[1\]。

## 架構

Azure AD 本身是一個支援 HTTP 驗證協定 (如
[SAML](../Page/SAML.md "wikilink")、[OAuth](../Page/OAuth.md "wikilink")
2.0) 的目錄服務，
因此應用程式可以利用它來連結其他網路上的應用程式，尤其是[SaaS服務](../Page/SaaS.md "wikilink")
\[2\]。

## 服務

Azure AD 提供了數種類型的身份驗證服務，除了原本的 HTTP-based Identity 功能之外，它還實作了下列服務。

### Azure AD B2C

Azure AD B2C 是一個為消費者端應用程式 (Consumer Application) 所設計的身份驗證服務，可支援由 OAuth
2.0 (如
[Facebook](../Page/Facebook.md "wikilink")、[Google](../Page/Google.md "wikilink")、[Amazon](../Page/Amazon.md "wikilink")、[LinkedIn](../Page/LinkedIn.md "wikilink"))
的社群網路身份提供者 (Identity Provider) 交互操作，並可整合同樣在 Azure AD
內的多重要素驗證功能，以支援更高規格的安全性。

Azure AD B2C 未來將可能會取代 Azure 現有的 Access Control Service 2.0。

### Azure AD 網域服務

Azure AD 網域服務 (Domain Service) 是一個支援 LDAP 及 Kerberos 協定的服務，具有與 Windows
Server Active Directory 相同的特性，可用來替代企業在自己的虛擬網路中建置網域控制站的需求，它雖然可支援
LDAP/Kerberos，但它仍然無法直接經由 Internet 使用，因此它只能用在 Azure 的虛擬網路內。

Azure AD 網域服務截至 2016 年 3 月時仍然在公開預覽階段。

### 多重要素驗證

多重要素驗證 (Multi-Factor Authentication) 服務是 Azure AD 下的一個功能，不過它並不是一定要和
Azure AD 一起使用，它也可以單獨使用，不過若採用 Azure AD 時，不需額外的設定就能取用多重要素驗證服務。

多重要素驗證可支援下列的要素 \[3\]

  - 文字簡訊驗證碼方式。
  - 電話語音方式。
  - 由行動應用程式通知訊息方式。
  - 由 Microsoft Azure Authenticator (行動應用程式) 提供驗證碼方式。
  - 由第三方的 OAuth 權仗 (Token) 方式。

## 參考

<references />

[Category:微軟](https://zh.wikipedia.org/wiki/Category:微軟 "wikilink")
[Category:Microsoft_Azure](https://zh.wikipedia.org/wiki/Category:Microsoft_Azure "wikilink")

1.  [Microsoft Enterprise Mobility Suite
    Overview](https://www.microsoft.com/en-us/server-cloud/enterprise-mobility/overview.aspx)
2.  [Integrate Azure Active Directory single sign-on with SaaS
    apps](https://azure.microsoft.com/en-us/documentation/articles/active-directory-sso-integrate-saas-apps/)
3.  [How Azure Multi-Factor Authentication
    works](https://azure.microsoft.com/en-us/documentation/articles/multi-factor-authentication-how-it-works/)