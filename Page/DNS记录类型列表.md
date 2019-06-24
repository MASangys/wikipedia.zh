本**網域名稱系統記錄類型列表**提供[網域名稱系統](https://zh.wikipedia.org/wiki/DNS "wikilink")（DNS）記錄類型（數據庫記錄）的概覽，而這些記錄都是存儲在網域名稱系統（DNS）的區域文件（zone
files）。

網域名稱系統實現將[域名和](../Page/域名.md "wikilink")[IP
位址相互對映的一個](https://zh.wikipedia.org/wiki/IP_位址 "wikilink")[分散式數據庫](https://zh.wikipedia.org/wiki/分散式數據庫 "wikilink")，能夠使人更方便的存取[互聯網](https://zh.wikipedia.org/wiki/互聯網 "wikilink")。在這些[域名伺服器](https://zh.wikipedia.org/wiki/域名伺服器 "wikilink")，不同的記錄類型有著不同的用途。

## 記錄類型

<table>
<thead>
<tr class="header">
<th><p>|代碼</p></th>
<th><p>|號碼</p></th>
<th><p>定義的 RFC</p></th>
<th><p>描述</p></th>
<th><p>功能</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><div id="A">
</div>
<p>A</p></td>
<td><p>1</p></td>
<td><p>RFC 1035</p></td>
<td><p><a href="../Page/IPv4.md" title="wikilink">IPv4地址記錄</a></p></td>
<td><p>傳回一個32位元的IPv4地址，最常用於映射<a href="https://zh.wikipedia.org/wiki/主機名稱" title="wikilink">主機名稱到</a><a href="../Page/IP地址.md" title="wikilink">IP地址</a>，但也用於（RFC 1101）等。</p></td>
</tr>
<tr class="even">
<td><div id="AAAA">
</div>
<p>AAAA</p></td>
<td><p>28</p></td>
<td><p>RFC 3596</p></td>
<td><p><a href="../Page/IPv6.md" title="wikilink">IPv6地址記錄</a></p></td>
<td><p>傳回一個128位元的IPv6地址，最常用於映射主機名稱到IP地址。</p></td>
</tr>
<tr class="odd">
<td><div id="AFSDB">
</div>
<p>AFSDB</p></td>
<td><p>18</p></td>
<td><p>RFC 1183</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/AFS檔案系統" title="wikilink">AFS檔案系統</a></p></td>
<td><p>（Andrew File System）資料庫核心的位置，於域名以外的 AFS 客戶端常用來聯繫 AFS 核心。這個記錄的子類型是被過時的的 <a href="https://zh.wikipedia.org/wiki/DCE/DFS" title="wikilink">DCE/DFS</a>（DCE Distributed File System）所使用。</p></td>
</tr>
<tr class="even">
<td><div id="APL">
</div>
<p>APL</p></td>
<td><p>42</p></td>
<td><p>RFC 3123</p></td>
<td><p>地址字首列表</p></td>
<td><p>指定地址列表的範圍，例如：CIDR 格式為各個類型的地址（試驗性）。</p></td>
</tr>
<tr class="odd">
<td><p>CAA</p></td>
<td><p>257</p></td>
<td><p>RFC 6844</p></td>
<td><p>权威认证授权</p></td>
<td><p><a href="../Page/DNS证书颁发机构授权.md" title="wikilink">DNS认证机构授权</a>，限制主机/域的可接受的CA</p></td>
</tr>
<tr class="even">
<td><p>CDNSKEY</p></td>
<td><p>60</p></td>
<td><p>RFC 7344</p></td>
<td><p>子關鍵記錄</p></td>
<td><p>關鍵記錄记录的子版本，用于转移到父级</p></td>
</tr>
<tr class="odd">
<td><p>CDS</p></td>
<td><p>59</p></td>
<td><p>RFC 7344</p></td>
<td><p>子委託簽發者</p></td>
<td><p>委託簽發者记录的子版本，用于转移到父级</p></td>
</tr>
<tr class="even">
<td><div id="CERT">
</div>
<p>CERT</p></td>
<td><p>37</p></td>
<td><p>RFC 4398</p></td>
<td><p>憑證記錄</p></td>
<td><p>儲存 <a href="https://zh.wikipedia.org/wiki/PKIX" title="wikilink">PKIX</a>、、<a href="https://zh.wikipedia.org/wiki/Pretty_Good_Privacy" title="wikilink">PGP等</a>。</p></td>
</tr>
<tr class="odd">
<td><div id="CNAME">
</div></td>
<td><p>5</p></td>
<td><p>RFC 1035</p></td>
<td><p>規範名稱記錄</p></td>
<td><p>一個主機名字的別名：<a href="https://zh.wikipedia.org/wiki/DNS" title="wikilink">網域名稱系統將會繼續嘗試查找新的名字</a>。</p></td>
</tr>
<tr class="even">
<td><div id="DHCID">
</div>
<p>DHCID</p></td>
<td><p>49</p></td>
<td><p>RFC 4701</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/DHCP" title="wikilink">DHCP</a>（動態主機設定協定）識別碼</p></td>
<td><p>用於將 FQDN 選項結合至 <a href="https://zh.wikipedia.org/wiki/DHCP" title="wikilink">DHCP</a>。</p></td>
</tr>
<tr class="odd">
<td><div id="DLV">
</div>
<p>DLV</p></td>
<td><p>32769</p></td>
<td><p>RFC 4431</p></td>
<td><p><a href="https://zh.wikipedia.org/wiki/DNSSEC" title="wikilink">DNSSEC</a>（域名系統安全擴展）來源驗證記錄</p></td>
<td><p>為不在DNS委託者內發佈DNSSEC的信任錨點，與 DS 記錄使用相同的格式，RFC 5074 介紹了如何使用這些記錄。</p></td>
</tr>
<tr class="even">
<td><div id="DNAME">
</div></td>
<td><p>39</p></td>
<td><p>RFC 2672</p></td>
<td><p>代表名稱</p></td>
<td><p>DNAME 會為名稱和其子名稱產生別名，與 CNAME 不同，在其標籤別名不會重覆。但與 CNAME 記錄相同的是，DNS將會繼續嘗試查找新的名字。</p></td>
</tr>
<tr class="odd">
<td><div id="DNSKEY">
</div>
<p>DNSKEY</p></td>
<td><p>48</p></td>
<td><p>RFC 4034</p></td>
<td><p>DNS 關鍵記錄</p></td>
<td><p>於DNSSEC內使用的關鍵記錄，與 KEY 使用相同格式。</p></td>
</tr>
<tr class="even">
<td><div id="DS">
</div>
<p>DS</p></td>
<td><p>43</p></td>
<td><p>RFC 4034</p></td>
<td><p>委託簽發者</p></td>
<td><p>此記錄用於鑑定DNSSEC已授權區域的簽名密鑰。</p></td>
</tr>
<tr class="odd">
<td><div id="HIP">
</div>
<p>HIP</p></td>
<td><p>55</p></td>
<td><p>RFC 5205</p></td>
<td><p>主機鑑定協定</p></td>
<td><p>將端點標識符及IP 地址定位的分開的方法。</p></td>
</tr>
<tr class="even">
<td><div id="IPSECKEY">
</div>
<p>IPSECKEY</p></td>
<td><p>45</p></td>
<td><p>RFC 4025</p></td>
<td><p>IPSEC 密鑰</p></td>
<td><p>與 <a href="https://zh.wikipedia.org/wiki/IPSEC" title="wikilink">IPSEC</a> 同時使用的密鑰記錄。</p></td>
</tr>
<tr class="odd">
<td><div id="KEY">
</div>
<p>KEY</p></td>
<td><p>25</p></td>
<td><p>RFC 2535[1]RFC 2930[2]</p></td>
<td><p>關鍵記錄</p></td>
<td><p>只用於 SIG(0)（RFC 2931）及 TKEY（RFC 2930）。[3]RFC 3455 否定其作為應用程序鍵及限制DNSSEC的使用。[4]RFC 3755 指定了 DNSKEY 作為DNSSEC的代替。[5]</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/LOC記錄" title="wikilink">LOC記錄</a>（LOC record）</p></td>
<td><p>29</p></td>
<td><p>RFC 1876</p></td>
<td><p>位置記錄</p></td>
<td><p>將一個域名指定地理位置。</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/MX記錄" title="wikilink">MX記錄</a>（MX record）</p></td>
<td><p>15</p></td>
<td><p>RFC 1035</p></td>
<td><p>電郵交互記錄</p></td>
<td><p>引導域名到該域名的<a href="https://zh.wikipedia.org/wiki/郵件傳輸代理" title="wikilink">郵件傳輸代理</a>（MTA, Message Transfer Agents）列表。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/NAPTR記錄" title="wikilink">NAPTR記錄</a>（NAPTR record）</p></td>
<td><p>35</p></td>
<td><p>RFC 3403</p></td>
<td><p>命名管理指標</p></td>
<td><p>允許基於正則表達式的域名重寫使其能夠作為 <a href="https://zh.wikipedia.org/wiki/URI" title="wikilink">URI</a>、進一步域名查找等。</p></td>
</tr>
<tr class="odd">
<td><div id="NS">
</div>
<p>NS</p></td>
<td><p>2</p></td>
<td><p>RFC 1035</p></td>
<td><p>名稱伺服器記錄</p></td>
<td><p>委託<a href="https://zh.wikipedia.org/wiki/DNS區域" title="wikilink">DNS區域</a>（DNS zone）使用已提供的權威域名伺服器。</p></td>
</tr>
<tr class="even">
<td><div id="NSEC">
</div>
<p>NSEC</p></td>
<td><p>47</p></td>
<td><p>RFC 4034</p></td>
<td><p>下一代安全記錄</p></td>
<td><p>DNSSEC 的一部份 — 用來驗證一個未存在的伺服器，使用與 NXT（已過時）記錄的格式。</p></td>
</tr>
<tr class="odd">
<td><div id="NSEC3">
</div>
<p>NSEC3</p></td>
<td><p>50</p></td>
<td><p>RFC 5155</p></td>
<td><p>NSEC 記錄第三版</p></td>
<td><p>用作允許未經允許的區域行走以證明名稱不存在性的 DNSSEC 擴展。</p></td>
</tr>
<tr class="even">
<td><div id="NSEC3PARAM">
</div>
<p>NSEC3PARAM</p></td>
<td><p>51</p></td>
<td><p>RFC 5155</p></td>
<td><p>NSEC3 參數</p></td>
<td><p>與 NSEC3 同時使用的參數記錄。</p></td>
</tr>
<tr class="odd">
<td><p>OPENPGPKEY</p></td>
<td><p>61</p></td>
<td><p>RFC 7929</p></td>
<td><p>OpenPGP公钥记录</p></td>
<td><p>基于DNS的域名实体认证方法，用于使用OPENPGPKEY DNS资源记录在特定电子邮件地址的DNS中发布和定位OpenPGP公钥。</p></td>
</tr>
<tr class="even">
<td><div id="PTR">
</div>
<p>PTR</p></td>
<td><p>12</p></td>
<td><p>RFC 1035</p></td>
<td><p>指標記錄</p></td>
<td><p>引導至一個<a href="https://zh.wikipedia.org/wiki/規範名稱" title="wikilink">規範名稱</a>（Canonical Name）。與 CNAME 記錄不同，DNS「不會」進行處理程序，只會傳回名稱。最常用來執行，其他用途包括引作 。</p></td>
</tr>
<tr class="odd">
<td><div id="RRSIG">
</div>
<p>RRSIG</p></td>
<td><p>46</p></td>
<td><p>RFC 4034</p></td>
<td><p>DNSSEC 憑證</p></td>
<td><p>DNSSEC 安全記錄集憑證，與 SIG 記錄使用相同的格式。</p></td>
</tr>
<tr class="even">
<td><div id="RP">
</div>
<p>RP</p></td>
<td><p>17</p></td>
<td><p>RFC 1183</p></td>
<td><p>負責人</p></td>
<td><p>有關域名負責人的資訊，電郵地址的 <strong>@</strong> 通常寫為 <strong>a</strong>。</p></td>
</tr>
<tr class="odd">
<td><div id="SIG">
</div>
<p>SIG</p></td>
<td><p>24</p></td>
<td><p>RFC 2535</p></td>
<td><p>憑證</p></td>
<td><p>SIG(0)（RFC 2931）及 TKEY（RFC 2930）使用的憑證。[6]RFC 3755 designated RRSIG as the replacement for SIG for use within DNSSEC.[7]</p></td>
</tr>
<tr class="even">
<td><div id="SOA">
</div>
<p>SOA</p></td>
<td><p>6</p></td>
<td><p>RFC 1035</p></td>
<td><p>權威記錄的起始</p></td>
<td><p>指定有關DNS區域的權威性資訊，包含主要名稱伺服器、域名管理員的電郵地址、域名的流水式編號、和幾個有關刷新區域的定時器。</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://zh.wikipedia.org/wiki/Sender_Policy_Framework" title="wikilink">SPF</a></p></td>
<td><p>99</p></td>
<td><p>RFC 4408</p></td>
<td><p>SPF 記錄</p></td>
<td><p>作為 SPF 協議的一部分，優先作為先前在 TXT 存儲 SPF 數據的臨時做法，使用與先前在 TXT 存儲的格式。</p></td>
</tr>
<tr class="even">
<td><p><a href="https://zh.wikipedia.org/wiki/SRV記錄" title="wikilink">SRV記錄</a>（SRV record）</p></td>
<td><p>33</p></td>
<td><p>RFC 2782</p></td>
<td><p>服務定位器</p></td>
<td><p>廣義為服務定位記錄，被新式協議使用而避免產生特定協議的記錄，例如：MX 記錄。</p></td>
</tr>
<tr class="odd">
<td><div id="SSHFP">
</div>
<p>SSHFP</p></td>
<td><p>44</p></td>
<td><p>RFC 4255</p></td>
<td><p>SSH 公共密鑰指紋</p></td>
<td><p>DNS 系統用來發佈 <a href="https://zh.wikipedia.org/wiki/SSH" title="wikilink">SSH</a> 公共密鑰指紋的資源記錄，以用作輔助驗證伺服器的真實性。</p></td>
</tr>
<tr class="even">
<td><div id="TA">
</div>
<p>TA</p></td>
<td><p>32768</p></td>
<td><p>無</p></td>
<td><p>DNSSEC 信任當局</p></td>
<td><p>DNSSEC 一部份無簽訂 DNS 根目錄的部署提案，，使用與 DS 記錄相同的格式[8][9]。</p></td>
</tr>
<tr class="odd">
<td><div id="TKEY">
</div>
<p><a href="https://zh.wikipedia.org/wiki/TKEY記錄" title="wikilink">TKEY記錄</a>（TKEY record）</p></td>
<td><p>249</p></td>
<td><p>RFC 2930</p></td>
<td><p>秘密密鑰記錄</p></td>
<td><p>為<a href="https://zh.wikipedia.org/wiki/TSIG" title="wikilink">TSIG提供密鑰材料的其中一類方法</a>，that is 在公共密鑰下加密的 accompanying KEY RR。[10]</p></td>
</tr>
<tr class="even">
<td><div id="TSIG">
</div>
<p>TSIG</p></td>
<td><p>250</p></td>
<td><p>RFC 2845</p></td>
<td><p>交易憑證</p></td>
<td><p>用以認證動態更新（Dynamic DNS）是來自合法的用戶端，或與 DNSSEC 一樣是驗證回應是否來自合法的遞歸名稱伺服器。[11]</p></td>
</tr>
<tr class="odd">
<td><div id="TXT">
</div>
<p>TXT</p></td>
<td><p>16</p></td>
<td><p>RFC 1035</p></td>
<td><p>文本記錄</p></td>
<td><p>最初是為任意可讀的文本 DNS 記錄。自1990年起，些記錄更經常地帶有機讀數據，以 RFC 1464 指定：<a href="../Page/机会性加密.md" title="wikilink">机会性加密</a>（opportunistic encryption）、<a href="https://zh.wikipedia.org/wiki/Sender_Policy_Framework" title="wikilink">Sender Policy Framework</a>（雖然這個臨時使用的 TXT 記錄在 SPF 記錄推出後不被推薦）、DomainKeys、DNS-SD等。</p></td>
</tr>
<tr class="even">
<td><p>URI</p></td>
<td><p>256</p></td>
<td><p>RFC 7553</p></td>
<td><p>统一资源标识符</p></td>
<td><p>可用于发布从主机名到URI的映射。</p></td>
</tr>
</tbody>
</table>

## 其他類型及偽資源記錄

其他類型的資源記錄簡單地提供一些類型的訊息（如：HINFO
記錄提供電腦或作業系統的類型），或傳回實驗中之功能的數據。「type」欄位也使用於其他協議作各種操作。

<table>
<thead>
<tr class="header">
<th><p>|代碼</p></th>
<th><p>|號碼</p></th>
<th><p>定義的 RFC</p></th>
<th><p>描述</p></th>
<th><p>功能</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>*</p></td>
<td><p>255</p></td>
<td><p>RFC 1035</p></td>
<td><p>所有緩存的記錄</p></td>
<td><p>傳回所有伺服器已知類型的記錄。如果伺服器未有任何關於名稱的記錄，該請求將被轉發。而傳回的記錄未必完全完成，例如：當一個名稱有 A 及 MX 類型的記錄時，但伺服器已緩存了 A 記錄，就只有 A 記錄會被傳回。</p></td>
</tr>
<tr class="even">
<td></td>
<td><p>252</p></td>
<td><p>RFC 1035</p></td>
<td><p>全域轉移</p></td>
<td><p>由主域名伺服器轉移整個區域文件至二級域名伺服器。</p></td>
</tr>
<tr class="odd">
<td><div id="IXFR">
</div>
<p>IXFR</p></td>
<td><p>251</p></td>
<td><p>RFC 1995</p></td>
<td><p>增量區域轉移</p></td>
<td><p>請求只有與先前流水式編號不同的特定區域的區域轉移。此請求有機會被拒絕，如果權威伺服器由於配置或缺乏必要的資料而無法履行請求，一個完整的（AXFR）會被發送以作回應。</p></td>
</tr>
<tr class="even">
<td><div id="OPT">
</div>
<p>OPT</p></td>
<td><p>41</p></td>
<td><p>RFC 2671</p></td>
<td><p>選項</p></td>
<td><p>這是一個「偽 DNS記錄類型」以支援 。</p></td>
</tr>
</tbody>
</table>

## 過時的記錄類型

發展呈現廢棄一些最初定義的記錄類型。從 IANA
的記錄可見，一些記錄類型由於一些原因而被限制其使用、一些被標示為明顯過時的、有些是為了隱藏的服務、有些是為了舊版本的服務、有的有特別記錄指出它們是「不正確的」。

  - 由 RFC 973 定義為過時：MD(3)、MF (4)、MAILA (254)
  - 為了發佈郵件列表訂戶的 DNS 記錄：MB(7)、MG(8)、MR(9)、MINFO(14)、MAILB (253)。 在 RFC
    883 標明的意圖是為了讓 MB 代替
    [SMTP](https://zh.wikipedia.org/wiki/SMTP "wikilink") VRFY 指令、MG 代替
    SMTP EXPN 指令、及讓 MR 代替「551 User Not Local」SMTP 錯誤。其後，RFC 2505 提議將
    VRFY 及 EXPN 指令兩者停用，使利用 MB 及 MG 永遠不可能獲得通過。
  - 在 RFC 1123 不提議使用「not to be relied upon」（RFC 1127
    有更多的資訊）：WKS(11)\[12\]
  - 錯誤: NB(32)、NBSTAT(33)（自 RFC 1002）；號碼現已分配給 NIMLOC 及 SRV。
  - 由 RFC 1035 定義為過時：NULL(10)（RFC 883 定義「完成查詢」（操作碼二及可能是三）有在使用此記錄，後來 RFC
    1035 重新分配操作碼二為「狀態」及保留操作碼三）。
  - 定義為早期的 [IPv6](../Page/IPv6.md "wikilink") 但其後由 RFC 3363
    降級為試驗性：A6(38)
  - 由 DNSSEC 更新（RFC 3755） 定義為過時：NXT(30)。同一時間，為 KEY 及 SIG 域名的適用性限制為不包括
    DNSSEC。
  - 第一版 DNSSEC（RFC 2230、RFC 2065）的一部份，現已過時：KX(36)
  - 目前沒有任何顯著的應用程序使用：HINFO(13)、RP(17)、X25(19)、ISDN(20)、RT(21)、NSAP(22)、NSAP-PTR(23)、PX(26)、EID(31)、NIMLOC(32)、ATMA(34)、APL(42)
  - 由 [Kitchen
    Sink](http://www.tools.ietf.org/html/draft-eastlake-kitchen-sink)
    ，但從未達至 RFC 水平：SINK(40)
  - 一個 LOC 記錄更有限的早期版本：GPOS(27)
  - IANA 保留，及後未有 RFC 記錄它們
    [1](https://web.archive.org/web/20080611185015/http://www.ops.ietf.org/lists/namedroppers/namedroppers.2004/msg00949.html)
    而支援已由 [BIND](../Page/BIND.md "wikilink") 於九零年初移除：UINFO(100),
    UID(101)、GID(102)、UNSPEC(103)

RP(17) 可能被使用於有關指定的主機的不同聯絡點、子網域其他 SOA 記錄不包含的域名級別的人類可讀信息。

## 更多有關資訊

  - .

## 參考資料

[Category:DNS记录类型](https://zh.wikipedia.org/wiki/Category:DNS记录类型 "wikilink")
[Category:網際協議](https://zh.wikipedia.org/wiki/Category:網際協議 "wikilink")

1.  RFC 2535, §3

2.  RFC 3445, §1. "The KEY RR was defined in \[RFC 2930\]..."

3.  RFC 2931, §2.4. "SIG(0) on the other hand, uses public key
    authentication, where the public keys are stored in DNS as KEY RRs
    and a private key is stored at the signer."

4.  RFC 3445, §1. "DNSSEC will be the only allowable sub-type for the
    KEY RR..."

5.  RFC 3755, §3. "DNSKEY will be the replacement for KEY, with the
    mnemonic indicating that these keys are not for application use, per
    \[RFC3445\]. RRSIG (Resource Record SIGnature) will replace SIG, and
    NSEC (Next SECure) will replace NXT. These new types completely
    replace the old types, except that SIG(0) \[RFC2931\] and TKEY
    \[RFC2930\] will continue to use SIG and KEY."

6.
7.
8.  [IANA database](http://www.iana.org/assignments/dns-parameters)

9.  [Weiler Spec](http://www.watson.org/~weiler/INI1999-19.pdf)

10. RFC 2930, §6. "... the keying material is sent within the key data
    field of a TKEY RR encrypted under the public key in an accompanying
    KEY RR \[RFC 2535\]."

11. RFC 2845, abstract

12. RFC 1123 section 2.2, 5.2.12, 6.1.3.6