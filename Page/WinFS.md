**WinFS**（全名為**Windows Future
Storage**）\[1\]是以[關聯式資料庫為基礎之資料儲存與](../Page/關聯式資料庫.md "wikilink")[管理系統的](../Page/data_management.md "wikilink")[代號名稱](../Page/Microsoft_codenames.md "wikilink")，它由[Microsoft開發](../Page/Microsoft.md "wikilink")，在2003年首次用於[Microsoft
Windows](../Page/Microsoft_Windows.md "wikilink")
[作業系統中的進階儲存子系統](../Page/作業系統.md "wikilink")，它針對[結構化](../Page/Structured_data.md "wikilink")、[半結構化與](../Page/Semi-structured_model.md "wikilink")[未結構化資料的](../Page/未結構化資料.md "wikilink")[保存與管理用途而設計](../Page/Persistence_\(computer_science\).md "wikilink")。WinFS包含可用於儲存資訊的[關聯式資料庫](../Page/關聯式資料庫.md "wikilink")，而且可儲存任何類型的資料，前提是資料類型已有完整定義的[結構描述](../Page/結構描述.md "wikilink")。接著，便可透過關係來建立個別資料項目之間的關聯，這樣系統便可根據特定屬性作參照，使用者也可明確地描述屬性作參照。此外，因資料具完整定義的結構描述，任何應用程式均可重複使用資料；而且透過使用關係，可有效率地組織與擷取相關資料。因系統知道資訊的結構與用途，故可作複雜的查詢，以達成資料的進階搜尋，並透過探索資料項目之間的關係來彙整各種不同的資料項目。
WinFS與其共用類型結構描述可讓應用程式識別不同的資料類型，但仍需撰寫應用程式以轉譯不同的資料類型。因此，WinFS並不適合用來開發可檢視或編輯所有資料類型的單一應用程式；其目的是讓應用程式能瞭解所有資料的結構並擷取資訊以作進一步處理。在2003專業開發人員大會，Microsoft首度介紹WinFS，並發佈了視訊簡報，名為IWish,\[2\]，此視訊簡報提供的原型介面顯示應用程式如何公開介面以得益於統一類型系統。視訊中展示的概念包含應用程式如何使用資料項目之間的關係來動態篩選選項，及應用程式如何將多個相關資料組成群組並以統一方式呈現資料。

WinFS是眾多["Longhorn"技術的基礎](../Page/Development_of_Windows_Vista.md "wikilink")，而且將包含在下一版本的Windows中。原本WinFS應在[Windows
Vista發行後提供](../Page/Windows_Vista.md "wikilink")，但相關計畫在2006年6月擱置，然而其某些元件技術已整合到即將發行的[ADO.NET與](../Page/ADO.NET.md "wikilink")[Microsoft
SQL
Server](../Page/Microsoft_SQL_Server.md "wikilink")。\[3\]某些觀察家指WinFS專案已完成，但[史蒂夫·鲍尔默在](../Page/史蒂夫·鲍尔默.md "wikilink")2006年11月曾公開称WinFS仍在開發，至於此技術將以何種方式提供仍未知。\[4\]

## 動機

許多常見[作業系統中的](../Page/作業系統.md "wikilink")[檔案系統](../Page/檔案系統.md "wikilink")（包括近年眾多Microsoft
Windows版本中使用的[NTFS檔案系統](../Page/NTFS.md "wikilink")）都將檔案與其他物件儲存為[位元組資料流](../Page/Byte_stream.md "wikilink")，且這些檔案系統對檔案中所存資料內容通常並不知道。此類檔案系統也只有一種組織檔案的方式（具體而言是透過目錄與檔案名稱）。\[5\]\[6\]

因檔案系統完全不知其所存資料，\[7\]應用程式常使用本身的[檔案格式](../Page/檔案格式.md "wikilink")（通常為[專屬格式](../Page/專屬.md "wikilink")）。這阻礙在多個應用程式之間共用的資料。建立可處理來自多種檔案類型之資訊的應用程式變得很困難，因程式設計師須瞭解所有檔案的[結構與](../Page/File_format.md "wikilink")[語意](../Page/Semantics#Computer_science.md "wikilink")。\[8\]使用常見檔案格式是解決此問題的暫時方案，但非治本；因無法確保所有應用程式都會使用預期的格式。具有標準化結構描述的資料（例如，[XML文件與](../Page/XML.md "wikilink")[關聯式資料](../Page/relational_database.md "wikilink")）無此問題，因為它們具有標準化的結構與執行階段需求。\[9\]

此外，傳統檔案系統只能根據檔案名稱來擷取與搜尋資料，因為它對資料所知的範圍僅限於用儲存資料之檔案名稱。\[10\]較好的解決方案是使用屬性為檔案加上標記（tag），此處所謂的屬性可描述檔案內容。屬性是有關檔案的[中繼資料](../Page/中繼資料.md "wikilink")，如檔案類型（例如，*文件*、*圖片*、*音樂*、*建立者*等）。\[11\]這樣可讓系統依屬性（而非使用資料夾階層）來搜尋檔案，例如尋找*"包含人員X的圖片"*。檔案系統本身即可識別屬性，或透過某些延伸模組來識別屬性。\[12\]
[桌面搜尋應用程式進一步採用此概念](../Page/桌面搜尋.md "wikilink")。它們會從檔案擷取資料（包含屬性）並為檔案編製索引。為了擷取資料，它們為每種檔案格式使用一個篩選器。這樣就可依檔案屬性與檔案中所包含的資料來搜尋檔案。\[13\]

但是，這仍不足以協助管理相關資料，因為不同的項目之間並未定義任何關係。如無法搜尋*"住在墨西哥阿卡波可市、在我的相片集中出現超過一百次、且我最近一個月曾經與其有過電子郵件往來的所有人員的電話號碼"*。若要完成這種搜尋，必須要一種同時定義[語意與資料關係的資料模型](../Page/語意.md "wikilink")。\[14\]\[15\]
WinFS的目的是提供這樣的資料模型與執行階段基礎結構，以便儲存資料與資料項目之間的關係（根據資料模型），同時以儘量不影響效能的方式完成此動作。

## 概觀

WinFS可識別各種類型的資料，例如*圖片*、*電子郵件*、*文件*、*音訊*、*視訊*、*行事曆*、*連絡人*等；不像檔案系統只能識別位元組資料流。由系統儲存與管理的資料是WinFS執行階段所識別之資料類型的執行個體。資料結構的基礎是屬性。例如，*履歷*類型的執行個體將透過公開特定屬性（例如*姓名*、*教育程度*、*工作經驗*等）來描述資料。屬性的類型可能是*字串*、*整數*或*日期*等簡單類型，或*連絡人*之類的複雜類型。\[16\]\[17\]不同的資料類型會公開不同的屬性。此外，WinFS也允許不同的資料執行個體與彼此關聯，例如您可以利用*作者*關係來建立文件與連絡人之間的關聯。\[18\]\[19\]關係也會公開為屬性，例如若文件是透過*建立者*關係與連絡人關聯，則文件將具有*建立者*屬性。當文件被存取時，系統會偵測到該關係並傳回相關資料。\[20\]藉由依循該關係即可擷取所有相關資料。\[21\]
[WinFSemail.png](https://zh.wikipedia.org/wiki/File:WinFSemail.png "fig:WinFSemail.png")
WinFS透過讓所有應用程式存取資料類型與其結構描述的方式來達成應用程式之間的資料共用。\[22\]因此當任何應用程式想要使用WinFS類型時，可以使用結構描述來瞭解資料的結構，並有效利用資訊。因此，即使開發人員並未撰寫[剖析器來識別不同的資料格式](../Page/剖析器.md "wikilink")，應用程式也可以存取系統上的所有資料。它也可以使用關係與相關資料來建立動態篩選器，以不同的方式呈現應用程式所處理的資訊。WinFS
API進一步將資料的存取工作抽象化。所有WinFS類型都公開為[.NET](../Page/.NET_Framework.md "wikilink")
[物件](../Page/Object-oriented_programming.md "wikilink")，而物件的屬性則直接對應到資料類型的屬性。\[23\]此外，透過讓處理相同資料的不同應用程式共用相同的WinFS資料執行個體，而非將相同的資料儲存為不同的檔案格式，系統管理員便不需要在資料發生變更時同步不同的存放區。\[24\]因此WinFS可協助避免資料重複儲存的情形。\[25\]\[26\]

透過存取系統中所有資料的能力，您可以建立複雜的搜尋來尋找由WinFS所管理之所有資料項目中的資料。在上述範例（*"住在墨西哥阿卡波可市、在我的相片集中出現超過一百次、且我最近一個月曾經與其有過電子郵件往來的所有人員的電話號碼"*）中，WinFS可以周遊所有相片的*主體*關係以尋找*連絡人*項目。同樣地，它也可以篩選最近一個月的電子郵件並存取*通訊對象*關係以與連絡人聯繫。接著，系統便可以從上述兩個搜尋結果中找出適當的連絡人，並透過存取連絡人項目的適當屬性來擷取其電話號碼。

除了完全語意化的資料（如同[XML與](../Page/XML.md "wikilink")[關聯式資料](../Page/relational_database.md "wikilink")）之外，WinFS也支援半結構化資料（例如影像，影像具有未結構化的位元資料流與結構化的中繼資料）以及未結構化資料（例如檔案）。它可將未結構化的元件直接儲存為檔案，同時將結構化的中繼資料儲存在結構化的存放區中。\[27\]
WinFS在內部使用[關聯式資料庫來管理資料](../Page/關聯式資料庫.md "wikilink")。但是，它不會將資料限制為屬於任何特定資料模型，例如[關聯式或](../Page/relational_data_model.md "wikilink")[階層式](../Page/hierarchical_data_model.md "wikilink")，而且它可以是任何已完整定義的結構描述。WinFS執行階段會將結構描述[對應到關聯式特徵](../Page/Object-relational_mapping.md "wikilink")（modality）\[28\]，方式是定義將儲存類型的資料表，以及重新呈現關係時所需的[主索引鍵與](../Page/主索引鍵.md "wikilink")[外部索引鍵](../Page/外部索引鍵.md "wikilink")。WinFS預設包含物件與XML結構描述的對應；至於其他結構描述的對應，則必須另行指定。物件結構描述是使用XML來指定；WinFS會產生指令碼以將結構描述公開為[.NET](../Page/.NET_Framework.md "wikilink")
[類別](../Page/Class_\(computer_science\).md "wikilink")。您可以使用[ADO.NET直接指定關聯式結構描述](../Page/ADO.NET.md "wikilink")，雖然您必須提供物件結構描述的對應以將它以類別方式公開。\[29\]所有關係周遊動作都是在這些資料表上以[Joins方式執行](../Page/Relational_algebra#Joins.md "wikilink")。WinFS也會自動在這些資料表上建立[索引](../Page/Index_\(database\).md "wikilink")，以便應用程式可以更快速地存取資訊。\[30\]索引可大幅加快Joins的速度，因此周遊關係以擷取相關資料的動作非常快。搜尋資訊時也會使用索引；搜尋與[查詢會使用索引](../Page/database_query_language.md "wikilink")，因此操作可以快速完成，這跟[桌面搜尋系統非常像](../Page/桌面搜尋.md "wikilink")。

## 發展

Cairo|Cairo (operating
system){{\!}}Cairo\]\]中的<span title="物件檔案系統">OFS</span>\[31\]

`| bar1-colour=#b0c4de`
`| note1 = 已取消`
`| note1-at = 1992`
`| bar2-from=1995`
`| bar2-to=1996.5`
`| bar2-text=Storage+，使用`[`Microsoft``   ``SQL``   ``Server{{!}}SQL``
 ``7.0`](../Page/Microsoft_SQL_Server{{!}}SQL_7.0.md "wikilink")\[32\]
`| bar2-colour=#d8bfd8`
`| note2 = 已取消`
`| note2-at = 1996`
`| bar3-from=1996.5`
`| bar3-to=1998`
`| bar3-text=`<span title="關聯式檔案系統">`RFS`</span>`，使用`[`Microsoft``
 ``SQL``   ``Server{{!}}SQL``
 ``2000`](../Page/Microsoft_SQL_Server{{!}}SQL_2000.md "wikilink")\[33\]
`| bar3-colour=#9acd32`
`| note3 = 已取消`
`| note3-at = 1997.5`
`| bar4-from=1998`
`| bar4-to=2000`
`| bar4-text= `[`Microsoft``   ``Exchange``   ``Server{{!}}Exchange``
 ``Webstore`](../Page/Microsoft_Exchange_Server{{!}}Exchange_Webstore.md "wikilink")\[34\]
`| bar4-colour=#f4a460`
`| note4 = 功能縮減`
`| note4-at = 1999`
`| bar5-from=2000.5`
`| bar5-to=2002`
`| bar5-text=`[`Microsoft``
 ``Outlook{{!}}Outlook`](../Page/Microsoft_Outlook{{!}}Outlook.md "wikilink")` `<span title="本機資訊存放區">`LIS`</span>\[35\]
`| bar5-colour=#ffb6c1`
`| note5 = 功能縮減`
`| note5-at = 2001.5`
`| bar6-from=2003`
`| bar6-to=2006`
`| bar6-text=`<span title="Windows Future Storage">`WinFS`</span>\[36\]
`| note6 = 已取消`
`| note6-at = 2005`
`| bar7-from=2006`
`| bar7-to=2008`
`| bar7-text=開發中`\[37\]
`| bar7-colour=#ffd700`
`| note7 = 沒有已知資訊`
`| note7-at = 2007.5`
`| caption = 各種結構化儲存專案的時間表`
`，由`[`Microsoft提供`](../Page/Microsoft.md "wikilink")`。上述技術並沒有任何一項已發展為全功能`
`執行階段並提供相關API。此外，年度僅為預估。`

}}

WinFS的開發是1990年代早期計畫之功能的延續，此功能稱為*物件檔案系統（Object File
System，簡稱OFS）*，它原本應該包含在[Cairo專案中](../Page/Cairo_\(operating_system\).md "wikilink")。OFS被認為應該具有強大的資料彙整功能。\[38\]但Cairo專案當時遭擱置，因此OFS也被延宕。但是，稍後在開發[COM時](../Page/Component_Object_Model.md "wikilink")，規劃了一個稱為Storage+（以後來發行的SQL
Server
8.0為基礎）的儲存系統，Storage+預期應提供類似的彙整功能。\[39\]但是，這項計畫也沒有實現，而類似的技術*關聯式檔案系統*（Relational
File System，RFS）據信將在SQL Server 2000中提供。\[40\]但是，SQL Server 2000最後只是對於SQL
Server 7.0進行些許更新，但並未實作RFS。

但這個概念從未被忘卻。\[41\]因此今日才有WinFS的出現。WinFS原本預計包含在[Windows
Vista中](../Page/Windows_Vista.md "wikilink")，\[42\]以及後來代號名稱為"Longhorn"的Windows
Vista組建4051（此版本是在2003年的Microsoft [Professional Developers
Conference發給開發人員](../Page/Professional_Developers_Conference.md "wikilink")），但當時WinFS有嚴重的效能問題。\[43\]在2004年8月，Microsoft宣布WinFS將不會內建於Windows
Vista；而是會在Vista發行後以可下載的更新方式提供。\[44\]

在2005年8月29日，\[45\] Microsoft悄悄地將WinFS Beta 1提供給MSDN訂戶。該版本可以在[Windows
XP運作](../Page/Windows_XP.md "wikilink")，而且需要[.NET
Framework才能執行](../Page/.NET_Framework.md "wikilink")。WinFS
API包含在*System.Storage*命名空間中。\[46\]該Beta版本在2005年12月1日更新，以與.NET
Framework 2.0版相容。\[47\] WinFS Beta
2預計在2006年末推出，\[48\]，而且預期會與[Windows桌面搜尋整合](../Page/Windows桌面搜尋.md "wikilink")，因此搜尋結果會包含來自一般檔案與WinFS存放區的結果；此外，您可以使用[ADO.NET來存取WinFS資料](../Page/ADO.NET.md "wikilink")。\[49\]

但是，在2006年6月23日，Microsoft的WinFS團隊宣布將不再以獨立產品方式提供WinFS，\[50\]而且某些元件將以其他技術提供
- 例如[物件關聯式對應元件至](../Page/物件關聯式對應.md "wikilink")[ADO.NET Entity
Framework](../Page/ADO.NET#Entity_Framework.md "wikilink")；支援未結構化資料、操作的無管理模式、透過</code>FILESTREAM</code>資料類型支援[檔案系統物件](../Page/檔案系統.md "wikilink")，以及[SQL
Server
2008](../Page/Microsoft_SQL_Server#SQL_Server_2008.md "wikilink")（後來的代碼名稱為*Katmai*）中的階層式資料\[51\]，\[52\]，以及與[Win32](../Page/Win32.md "wikilink")
[API及](../Page/API.md "wikilink")[Windows
Shell整合](../Page/Windows_Shell.md "wikilink")，以及在未來的[Microsoft SQL
Server版本中透過周遊關係以支援階層的周遊](../Page/Microsoft_SQL_Server.md "wikilink")；\[53\]以及將元件同步到[Microsoft
Sync Framework](../Page/Microsoft_Sync_Framework.md "wikilink")。\[54\]
However, having a shared-schema storage system built into a future
iteration of [Microsoft
Windows](../Page/Microsoft_Windows.md "wikilink") hasn't been ruled out
yet.\[55\]

Microsoft宣布此消息之後，大部分的分析師均認為WinFS專案已遭放棄。但在2006年11月，[Steve
Ballmer在一場會談中說明WinFS仍在開發中](../Page/Steve_Ballmer.md "wikilink")，但要等到技術成熟時才會整合到Windows程式碼基底。\[56\]

## 資料存放區

### 架構

[WinFSArch.svg](https://zh.wikipedia.org/wiki/File:WinFSArch.svg "fig:WinFSArch.svg")
WinFS不是實體檔案系統；相反，它在NTFS檔案系統之上提供系統化的資料模型建構能力。它仍使用NTFS在實體檔案中儲存其資料。\[57\]。WinFS使用從SQL
Server 2005\[58\]衍生的關聯式引擎來提供資料關係機制。WinFS存放區僅是已設定FILESTREAM屬性的SQL
Server資料庫（.MDF）檔案\[59\]。這些檔案是儲存在磁碟區根目錄下名為"System Volume
Information"的資料夾（此資料夾具有限制的存取權）下的"WinFS"子資料夾中，其名稱為這些存放區的[GUID](../Page/Globally_Unique_Identifier.md "wikilink")。\[60\]

WinFS [堆疊的底層是](../Page/Solution_stack.md "wikilink")*WinFS
Core*，它會與[檔案系統互動並提供檔案存取與定址能力](../Page/file_system.md "wikilink")。\[61\]關聯式引擎使用WinFS核心服務來提供結構化的存放區與其他服務（例如，[鎖定將使用哪個WinFS執行階段來實作該功能](../Page/Lock_（computer_science）.md "wikilink")。WinFS執行階段會公開*服務*（例如*同步處理*與*規則*），其可用於同步處理WinFS存放區或在發生特定事件時執行特定動作。\[62\]

WinFS是以[服務的方式執行](../Page/Windows_Service.md "wikilink")，此服務會執行三個[處理程序](../Page/Process_\(computing\).md "wikilink")\[63\]
-
裝載關聯式資料存放區的*WinFS.exe*、裝載索引編製與查詢引擎的*WinFSSearch.exe*，以及與底層檔案系統互動的*WinFPM.exe
(WinFS File Promotion Manager)*。您可以利用一組[.NET
Framework](../Page/.NET_Framework.md "wikilink")
[API來撰寫程式以存取其功能](../Page/application_programming_interface.md "wikilink")，這些[.NET
Framework](../Page/.NET_Framework.md "wikilink")
[API可讓應用程式定義自訂資料型別](../Page/application_programming_interface.md "wikilink")、定義資料之間的關係、儲存與擷取資訊，以及實作進階搜尋。\[64\]\[65\]接著應用程式可以彙整資料，並將資料呈現給使用者。

#### 資料存放區

WinFS將資料儲存在關聯式存放區中，這些存放區會公開為虛擬位置，稱為*存放區*。\[66\]
WinFS存放區是通用存放庫，任何應用程式都可以在其中儲存資料，以及中繼資料、資料關係與結構描述。WinFS執行階段本身可以套用特定的資料關係；例如，若圖片的*subject*屬性與連絡人的*name*屬性相同，則WinFS可以在該連絡人與該圖片之間建立關聯。\[67\]資料之間的關係也可以由其他應用程式或使用者指定。\[68\]

WinFS提供一致性的存放區，但無法定義將儲存於存放區之資料的格式。但是，它支援以應用程式支援的特定格式寫入資料。前提是應用程式必須提供[結構描述](../Page/logical_schema.md "wikilink")，以定義解譯檔案格式的方式。\[69\]例如，您可以新增結構描述以讓WinFS知道如何讀取（甚至是進一步搜尋或分析）特定檔案格式，例如[PDF檔案](../Page/PDF.md "wikilink")。透過使用結構描述，任何應用程式都可以讀取由其他應用程式所建立的資料，而且不同的應用程式也可以透過共用結構描述以其他應用程式支援的格式來寫入資料。\[70\]

您可以在一部電腦上建立多個WinFS存放區。\[71\]這樣可以獨立儲存不同類別的資料，例如，您可以將公司文件與私人文件儲存在不同的存放區中。根據預設，WinFS只提供一個存放區，其名稱為"DefaultStore"。\[72\]
WinFS存放區是公開為殼層（shell）物件（類似[虛擬資料夾](../Page/虛擬資料夾.md "wikilink")），此物件會動態產生存放區中的項目清單，並以資料夾檢視方式呈現這些項目。利用殼層物件也可以搜尋資料存放區中的資訊。\[73\]

資料單位是以WinFS *項目*的方式儲存在WinFS存放區中。\[74\]\[75\]
WinFS項目與核心資料項目亦包含資料項目與其他資料之關聯的資訊。此*關聯*是以邏輯連結的方式儲存。連結指的是目前的項目與哪些資料項目關聯。換句話說，連結是用以指定資料與其他資料項目的關係。連結實體上是以連結識別碼來儲存，此識別碼指定資料關聯的名稱與用途，例如，*所屬型別*或*組成要素*。\[76\]連結識別碼是儲存為資料項目的屬性（attribute）。具有相同連結識別碼的所有物件將被視為相關物件。\[77\]您必須事先將[XML結構描述](../Page/XML結構描述.md "wikilink")（定義將儲存在WinFS中之資料項目的結構）提供給WinFS執行階段。\[78\]在WinFS的Beta
1版本中，您必須先將結構描述組件新增到GAC，才能開始使用結構描述。

### 資料模型

WinFS模型資料會使用資料項目、其[關聯](../Page/RDBMS.md "wikilink")、延伸（extension）與規則來規範其使用方式。\[79\]
WinFS必須知道資料項目的類型與結構，才能將資料項目中儲存的資訊提供給要求該資訊的應用程式。這是透過使用結構描述來完成。對於即將儲存在WinFS中的每種資料項目類型，您必須提供對應的結構描述，以定義資料的類型、結構與關聯。這些結構描述是使用[XML來定義](../Page/XML.md "wikilink")。\[80\]

預先定義的WinFS結構描述不僅包含文件、電子郵件、約會、工作、媒體、音訊、視訊等的結構描述；也包含系統結構描述，其中包括組態、程式與其他系統相關資料。\[81\]如果要讓應用程式在WinFS中儲存資料，但不想與其他應用程式共用該資料的結構，或這些資料可跨系統提供，則可以針對個別應用程式定義自訂結構描述。\[82\]

#### 型別系統

[WinFS1.svg](https://zh.wikipedia.org/wiki/File:WinFS1.svg "fig:WinFS1.svg")

檔案系統與WinFS之間最大的差異在於WinFS知道其所儲存之每個資料項目的型別。型別會指定資料項目的屬性（property）。WinFS型別系統與.NET
Framework的[類別與繼承概念緊密關聯](../Page/Object-oriented_programming.md "wikilink")。透過[延伸與巢狀化任何預先定義的型別](../Page/Object-oriented_programming.md "wikilink")，即可建立新型別。\[83\]

WinFS提供四種預先定義的基礎型別–
*Items*、*Relationships*、*ScalarTypes*與*NestedTypes*。\[84\]
Item是可儲存的基礎資料物件，而Relationship則是兩個資料項目之間的關係或連結。因為所有WinFS項目都必須具有型別，儲存之項目的型別會定義其屬性（property）。Item的屬性可以是ScalarType（定義屬性可包含之資訊的最小單位）或NestedType（多個ScalarTypes和/或NestedTypes的集合）。所有WinFS型別都以.NET
CLR [類別的方式提供](../Page/Class_\(computer_science\).md "wikilink")。\[85\]

任何以資料單位（例如，連絡人、影像、視訊或文件等）所代表的物件都可以儲存在WinFS存放區中做為Item型別的特殊項。\[86\]根據預設，WinFS為檔案、連絡人、文件、圖片、音訊、視訊、連絡人與郵件提供Item型別。檔案Item可以儲存任何一般資料，這在檔案系統中是儲存為檔案。但除非為檔案提供進階結構描述（透過將它定義為特殊化的Item），WinFS將無法存取其資料。此類檔案Item僅能支援與其他Item相關聯。\[87\]

[WinFS2.svg](https://zh.wikipedia.org/wiki/File:WinFS2.svg "fig:WinFS2.svg")

開發人員可以擴充這些型別或基礎型別Item，以為其自訂資料提供型別。Item中包含的資料是以屬性或實際儲存資料的欄位來定義。例如，*連絡人*Item可能包含型別為ScalarType的*Name*欄位，以及型別為NestedType（進一步由兩個ScalarType組成）的*Address*欄位。為定義此型別，會擴充基礎類別Item，而且會新增必要欄位至該類別。\[88\]
NestedType欄位可定義為包含兩個ScalarType欄位的另一個類別。一旦定義型別，就必須定義結構描述以表示每個欄位的原始型別，例如Name欄位的型別是String、Address欄位是自訂的Address類別，每個欄位的型別都是String。WinFS支援的其他原始型別包括[Integer](../Page/Integer.md "wikilink")、[Byte](../Page/Byte.md "wikilink")、[Decimal](../Page/Decimal#Decimal_fractions.md "wikilink")、[Float](../Page/IEEE_754.md "wikilink")、[Double](../Page/Double_precision.md "wikilink")、[Boolean與DateTime等](../Page/Logical_value.md "wikilink")。\[89\]結構描述也會定義哪些欄位為必要欄位，哪些欄位為選用欄位。\[90\]系統會使用以此方式定義的連絡人Item來儲存有關連絡人的資訊，方式是填入屬性欄位並予以儲存。首次儲存時只需要填入標示為必要的欄位。\[91\]其他欄位可在稍後由使用者填入，或完全不填入。若需要新增多個欄位（例如，*"上次交談日期"*），只要視需要簡單地擴充此型別即可。您可以使用相同的方式定義其他資料的Item型別。

[WinFS3.svg](https://zh.wikipedia.org/wiki/File:WinFS3.svg "fig:WinFS3.svg")

WinFS會為所有已定義的Item建立[資料表](../Page/RDBMS.md "wikilink")。\[92\]為Item定義的所有欄位會構成資料表的資料欄，而每個對應Item的Item實體則會儲存為資料表的資料列。當資料表中的某些欄位參照某些其他資料表中的資料時，即表示這些資料表之間有特定的關係存在。關係的結構描述會指定相關的資料表有哪些，以及關係的種類與名稱。WinFS執行階段負責管理關係結構描述。\[93\]所有Item都會公開為.NET
CLR
[物件](../Page/Object-oriented_programming.md "wikilink")，此物件具有統一的介面，可讓應用程式輕鬆存取欄位中儲存的資料。因此，任何應用程式都可以擷取具有任何Item型別的物件，而且可以使用該物件中的資料，而不需要瞭解欄位中儲存之資料的實際結構。\[94\]

WinFS型別是公開為.NET類別，它可以具現化為.NET物件。透過設定屬性即可在這些型別中儲存資料。完成之後，它們變會永久儲存至WinFS存放區。使用*ItemContext*類別（請參閱[資料擷取區段以取得詳細資訊](../Page/#Data_retrieval.md "wikilink")）即可存取WinFS存放區。ItemContext允許以交易式方式存取WinFS存放區，例如，從將ItemContext物件繫結到存放區到因為全部成功而關閉或所有變更都已復原。當資料發生變更時，它們不會寫入到磁碟；而是會寫入到記憶體內的記錄。只有當連線關閉時，變更才會以批次方式寫入磁碟。這樣可協助最佳化磁碟I/O。\[95\]下列程式碼片段會建立連絡人並儲存在WinFS存放區中。

``` csharp
 //Connect to the default WinFS store
 using(ItemContext ic = ItemContext.Open())
 {
     //Create the contact and set the data in appropriate properties
     ContactEAddress contact = new ContactEAddress();

     //Name is a ComplexType
     contact.Name = new PersonName();
         contact.Name.Displayname = "Doe, John";
         contact.Name.FirstName = "John";
         contact.Name.LastName = "Doe";

     //Telephone number is a ComplexType
     contact.TelephoneNumber = new TelephoneNumber();  //ComplexType
         contact.TelephoneNumber.Country = CountryCode.Antarctica;
         contact.TelephoneNumber.Areacode = 4567;
         contact.TelephoneNumber.Number = 9876543210;

     //Age is a SimpleType
     contact.Age = 111;

    //Add the object to the user's personal folder.
    //This relates the item with the Folder pseudo-type, for backward
    //compatibility, as this lets the item to be accessed in a folder
    //hierarchy for apps which are not WinFS native.
    Folder containingFolder = UserDataFolder.FindMyPersonalFolder();
    containingFolder.OutFolderMemberRelationship.AddItem(ic, contact);

    //Find a document and relate with the document. Searching begins by creating an
    //ItemSearcher object. Each WinFS type object contains a GetSearcher() method
    //that generates an ItemSearcher object which searches documents of that type.
    using(ItemSearcher searcher = Document.GetSearcher(ic))
    {
         Document d = searcher.Find(@"Title = 'Some Particular Document'");
         d.OutAuthoringRelationship.AddItem(ic, contact);
    }
    //Since only one document is to be found, the ItemContext.FindOne() method
    //could be used as well.

    //Find a picture and relate with it
    using(ItemSearcher searcher = Picture.GetSearcher(ic))
    {
         Picture p = searcher.Find(@"Occasion = 'Graduation' and Sequence = '3'");
         p.OutSubjectRelationship.AddItem(ic, contact);
    }

    //Persist to the store and close the reference to the store
    ic.Update();
    ic.Close();
 }
```

## 參考文獻

## 參見

  - [分类:微软磁盘文件系统](https://zh.wikipedia.org/wiki/Category:微软磁盘文件系统 "wikilink")
      - [FAT](../Page/FAT.md "wikilink")
      - [NTFS](../Page/NTFS.md "wikilink")
      - [ReFS](../Page/ReFS.md "wikilink")

<!-- end list -->

  - [桌面組織程式](../Page/桌面組織程式.md "wikilink")
  - [關聯式資料庫管理系統](../Page/RDBMS.md "wikilink")
  - [存放區](../Page/GNOME_Storage.md "wikilink")，[GNOME桌面的儲存管理系統](../Page/GNOME.md "wikilink")
  - [NEPOMUK-KDE](../Page/NEPOMUK-KDE.md "wikilink")

## 外部連結

  - [WinFS
    Blog](https://web.archive.org/web/20100124145541/http://blogs.msdn.com/winfs/)
  - [WinFS at the Microsoft Developer
    Network](https://web.archive.org/web/20060602151743/http://msdn.microsoft.com/data/ref/winfs/)
  - [Channel 9
    Videos](https://web.archive.org/web/20080118162558/http://channel9.msdn.com/Showforum.aspx?forumid=14&tagid=4)
  - [WinFS
    Newsgroup](https://web.archive.org/web/20070314165346/http://msdn.microsoft.com/newsgroups/default.aspx?dg=microsoft.public.windows.developer.winfx.winfs)
  - [WinFS Beta 1
    Review](https://web.archive.org/web/20070702131752/http://www.winsupersite.com/showcase/winfs_preview.asp)
  - [WinFS area on
    NetFXGuide.com](https://web.archive.org/web/20071225122555/http://www.netfxguide.com/guide/winfs.aspx)

[Category:微軟API](https://zh.wikipedia.org/wiki/Category:微軟API "wikilink")
[Category:Microsoft_Windows](https://zh.wikipedia.org/wiki/Category:Microsoft_Windows "wikilink")

1.

2.

3.  {{ cite web | url =
    <http://blogs.msdn.com/winfs/archive/2006/06/23/644706.aspx> | title
    = WinFS Update | author = Quentin Clark | date = June 23, 2006 |
    accessdate = 2006-06-23 | work = What's in Store|publisher = MSDN
    Blogs }}

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
36.
37.
38.

39.
40.
41.
42.

43.
44.
45.
46.

47.

48.

49.

50.
51.

52.

53.
54.
55.
56. 後來與[比爾蓋茲的會談證實此消息](../Page/比爾蓋茲.md "wikilink")，而且Microsoft計畫移轉[Windows
    Media
    Player](../Page/Windows_Media_Player.md "wikilink")、[Windows相片圖庫](../Page/Windows相片圖庫.md "wikilink")、[Microsoft
    Office
    Outlook等應用程式以使用WinFS做為資料儲存後端](../Page/Microsoft_Office_Outlook.md "wikilink")。

57.
58.

59. {{ cite
    web|url=<http://microsoft.sitestream.com/PDC05/DAT/DAT209_files/intro.htm>
    |title="WinFS" Future Directions: An Overview |date=September 2005
    |accessdate=2006-05-22 |author=Shishir Mehrotra |work=[Professional
    Developers
    Conference](../Page/Professional_Developers_Conference.md "wikilink")
    2005 presentations |publisher=Microsoft |deadurl=yes
    |archiveurl=<https://web.archive.org/web/20060106033122/http://microsoft.sitestream.com/PDC05/DAT/DAT209_files/intro.htm>
    |archivedate=2006-01-06 }}（Currently offline,
    [mirror](http://www.ntfs.com/downloads/WinFS.ppt)）.

60.
61.
62.
63.

64.
65.
66.
67.

68.

69.
70.
71.
72.
73.
74.
75.
76.
77.
78.
79.
80.
81.
82.
83.
84.
85.
86.
87.
88.
89.
90. {{ cite web | url =
    <http://msdn2.microsoft.com/en-us/library/ms996631.aspx> | title = A
    Developer's Perspective on WinFS: Part 2 | date = July 2004 |
    accessdate = 2007-06-30 | author = Shawn Wildermuth | work = MSDN |
    publisher = Microsoft }}

91.
92.
93.
94.
95.