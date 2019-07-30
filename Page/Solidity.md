**Solidity**是一種合約導向式語言，可被應用於各種不同的[區塊鏈平台上](https://zh.wikipedia.org/wiki/區塊鏈 "wikilink")\[1\]，其主要開發者為，Christian Reitwiessner，Alex Beregszaszi，Liana Husikyan，Yoichi Hirai和其他幾位早期[以太坊](../Page/以太坊.md "wikilink")核心貢獻者。\[2\]\[3\]Solidity 可使程式開發人員能在區塊鏈上（例如以太坊）編寫[智能合約](https://zh.wikipedia.org/wiki/智能合約 "wikilink")。\[4\]\[5\]\[6\]

## 歷史

Solidity的語法概念最早是由在2014年提出，\[7\]後期則以Christian Reitwiessner所領導的以太坊團隊Solidity接手開發。該語言是針對以太坊虛擬機（EVM）所設計的四種語言之一（其他的還有Serpent，LLL，Viper（實驗中）和Mutan（已棄用））。有關這些語言的更多信息，請參閱[以太坊編程語言](https://zh.wikipedia.org/wiki/以太坊#程式語言 "wikilink")。

Solidity是目前在以太坊及其他以太坊競爭平台中的主要編程語言，例如Monax及其Burrow Hyperledger的區塊鏈就是使用Tendermint完成共識機制。 SWIFT亦已經使用Solidity在Burrow上完成了概念驗證。\[8\]

[康奈爾大學的研究人員指出](https://zh.wikipedia.org/wiki/康奈爾大學 "wikilink")，Solidity即是導致DAO在2016年被駭客攻擊的部分原因之一。他表示：“這實際上並不是DAO合同本身的缺陷或漏洞；技術上來說，DAO確實是在EVM上如預期般地被執行，反而是Solidity將安全上的漏洞引入了合約之中，而這些漏洞不僅沒被開發社群察覺，Solidity語言的設計者們也忽略了。\[9\]\[10\]

## 描述

Solidity是一種靜態型別的[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，用於開發在EVM上執行的智能合約。 Solidity被編譯為可在EVM上執行的[位元組碼](https://zh.wikipedia.org/wiki/位元組碼 "wikilink")。\[11\]\[12\] 藉由Solidity，開發人員能夠編寫出可自我執行其欲實現之商業邏輯的應用程式，該程式可被視為一份具權威性且永不可悔改的交易合約。\[13\]\[14\]對已具備程式編輯能力的人而言，編寫Solidity的難易度就如同編寫一般的程式語言。\[15\]

Gavin Wood最初在規劃Solidity語言時參照了[ECMAScript](../Page/ECMAScript.md "wikilink")的語法概念，使其對現有的Web開發者更容易入門；與ECMAScript不同的地方在於Solidity具有靜態型別和可變返回型別。而與目前其他EVM目標語言（如Serpent和Mutan）相比，其重要的差異在於Solidity具有一組複雜的成員變數使得合約可支援任意階層的映射和結構。Solidity也支援繼承，包含C3線性化多重繼承。 另外還引入了一個[應用程序二進制接口](https://zh.wikipedia.org/wiki/應用程序二進制接口 "wikilink")（ABI），該接口（ABI）可在單一合同中實現多種類型安全的功能。 

以下為使用Solidity編寫的程式範例:

``` js
contract GavCoin
{
  mapping(address=>uint) balances;
  uint constant totalCoins = 100000000000;

  /// Endows creator of contract with 1m GAV.
  function GavCoin(){
      balances[msg.sender] = totalCoins;
  }

  /// Send $((valueInmGAV / 1000).fixed(0,3)) GAV from the account of $(message.caller.address()), to an account accessible only by $(to.address()).
  function send(address to, uint256 valueInmGAV) {
    if (balances[msg.sender] >= valueInmGAV) {
      balances[to] += valueInmGAV;
      balances[msg.sender] -= valueInmGAV;
    }
  }

  /// getter function for the balance
  function balance(address who) constant returns (uint256 balanceInmGAV) {
    balanceInmGAV = balances[who];
  }

}
```

## 開發平台

  - ，Solidity官方[IDE](https://zh.wikipedia.org/wiki/IDE "wikilink")

  - [Microsoft Visual Studio](../Page/Microsoft_Visual_Studio.md "wikilink")\[16\]\[17\]

  - [ConsenSys](../Page/ConsenSys.md "wikilink") Enterprise

  - Tendermint 

  - [AWS的ErisDB](https://zh.wikipedia.org/wiki/亞馬遜網路服務系統 "wikilink")

## 區塊鏈平台

Solidity可在下列平台中運作:

  - [Ethereum](https://zh.wikipedia.org/wiki/Ethereum "wikilink")
  - Tendermint & ErisDB
  - Zeppelin
  - Counterparty

## 参考文献

## 外部連結

  -
[Category:含有冗余参数的引用的页面](https://zh.wikipedia.org/wiki/Category:含有冗余参数的引用的页面 "wikilink") [Category:特定领域语言](https://zh.wikipedia.org/wiki/Category:特定领域语言 "wikilink") [Category:静态类型编程语言](https://zh.wikipedia.org/wiki/Category:静态类型编程语言 "wikilink")

1.
2.
3.
4.
5.
6.
7.  `|author=`和`|last=`只需其一 ([帮助](https://zh.wikipedia.org/wiki/Help:引文格式1错误#redundant_parameters "wikilink"))
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