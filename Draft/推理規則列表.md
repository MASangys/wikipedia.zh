此為[推理規則列表](https://zh.wikipedia.org/wiki/推理規則 "wikilink")，表列邏輯式之轉換規則。

## 介紹

推理規則為**語法**上之轉換規則，用以構造論證，從前件推導至結論。 A set of rules can be used to infer any valid conclusion if it is complete, while never inferring an invalid conclusion, if it is sound. A sound and complete set of rules need not include every rule in the following list, as many of the rules are redundant, and can be proven with the other rules.

*Discharge rules* permit inference from a subderivation based on a temporary assumption. Below, the notation

  -
    \(\varphi \vdash \psi\)

indicates such a subderivation from the temporary assumption \(\varphi\) to \(\psi\).

## 古典語句演算規則

語句演算亦稱[命題演算](https://zh.wikipedia.org/wiki/命題演算 "wikilink").

### 否定句規則

  - [歸謬法](../Page/歸謬法.md "wikilink")（或作「否定引入」）：
    \(\varphi \vdash \psi\)
    \(\underline{\varphi \vdash \lnot \psi}\)
    \(\lnot \varphi\)

<!-- end list -->

  - 歸謬法（與[排中律](../Page/排中律.md "wikilink")有關）：
    \(\lnot \varphi \vdash \psi\)
    \(\underline{\lnot \varphi \vdash \lnot \psi}\)
    \(\varphi\)

<!-- end list -->

  - [無矛盾](https://zh.wikipedia.org/wiki/無矛盾律 "wikilink")
    \(\varphi\)
    \(\underline{\lnot \varphi}\)
    \(\psi\)

<!-- end list -->

  - [雙重否定消除](https://zh.wikipedia.org/wiki/雙重否定 "wikilink")：
    \(\underline{\lnot \lnot \varphi}\)
    \(\varphi\)

<!-- end list -->

  - [雙重否定引入](https://zh.wikipedia.org/wiki/雙重否定 "wikilink")：
    \(\underline{\varphi \quad \quad}\)
    \(\lnot \lnot \varphi\)

### 條件句規則

  - [演繹定理](https://zh.wikipedia.org/wiki/演繹定理 "wikilink")（或作「[條件引入](https://zh.wikipedia.org/wiki/條件證法 "wikilink")」）：
    \(\underline{\varphi \vdash \psi}\)
    \(\varphi \rightarrow \psi\)

<!-- end list -->

  - [肯定前件](https://zh.wikipedia.org/wiki/肯定前件 "wikilink")（或作「條件消除」）：
    \(\varphi \rightarrow \psi\)
    \(\underline{\varphi \quad \quad \quad}\)
    \(\psi\)

<!-- end list -->

  - [否定後件](../Page/否定後件.md "wikilink")：
    \(\varphi \rightarrow \psi\)
    \(\underline{\lnot \psi \quad \quad \quad}\)
    \(\lnot \varphi\)

### 連言規則

  - [Adjunction](https://zh.wikipedia.org/wiki/Conjunction_introduction "wikilink")（或作「選言引入」）：

<!-- end list -->

  -
    \(\varphi\)
    \(\underline{\psi \quad \quad \ \ }\)
    \(\varphi \land \psi\)

<!-- end list -->

  - [Simplification](https://zh.wikipedia.org/wiki/Simplification_\(logic\) "wikilink") (or *Conjunction Elimination*):

<!-- end list -->

  -
    \(\underline{\varphi \land \psi}\)
    \(\varphi\)

<!-- end list -->

  -
    \(\underline{\varphi \land \psi}\)
    \(\psi\)

### 選言規則

  - [Addition](https://zh.wikipedia.org/wiki/Disjunction_introduction "wikilink") (or *Disjunction Introduction*):
    \(\underline{\varphi \quad \quad \ \ }\)
    \(\varphi \lor \psi\)

<!-- end list -->

  -
    \(\underline{\psi \quad \quad \ \ }\)
    \(\varphi \lor \psi\)

<!-- end list -->

  - [Case analysis](https://zh.wikipedia.org/wiki/Disjunction_elimination "wikilink") (or *Proof by Cases* or *Argument by Cases*)
    \(\varphi \rightarrow \chi\)
    \(\psi \rightarrow \chi\)
    \(\underline{\varphi \lor \psi}\)
    \(\chi\)

<!-- end list -->

  - [Disjunctive syllogism](https://zh.wikipedia.org/wiki/Disjunctive_syllogism "wikilink"):
    \(\varphi \lor \psi\)
    \(\underline{\lnot \varphi \quad \quad}\)
    \(\psi\)

<!-- end list -->

  -
    \(\varphi \lor \psi\)
    \(\underline{\lnot \psi \quad \quad}\)
    \(\varphi\)

<!-- end list -->

  - [Constructive dilemma](https://zh.wikipedia.org/wiki/Constructive_dilemma "wikilink")
    \(\varphi \rightarrow \chi\)
    \(\psi \rightarrow \xi\)
    \(\underline{\varphi \lor \psi}\)
    \(\chi \lor \xi\)

### 雙條件句規則

  - [Biconditional introduction](https://zh.wikipedia.org/wiki/Biconditional_introduction "wikilink"):
    \(\varphi \rightarrow \psi\)
    \(\underline{\psi \rightarrow \varphi}\)
    \(\varphi \leftrightarrow \psi\)

<!-- end list -->

  - Biconditional Elimination:
    \(\varphi \leftrightarrow \psi\)
    \(\underline{\varphi \quad \quad}\)
    \(\psi\)

<!-- end list -->

  -
    \(\varphi \leftrightarrow \psi\)
    \(\underline{\psi \quad \quad}\)
    \(\varphi\)

<!-- end list -->

  -
    \(\varphi \leftrightarrow \psi\)
    \(\underline{\lnot \varphi \quad \quad}\)
    \(\lnot \psi\)

<!-- end list -->

  -
    \(\varphi \leftrightarrow \psi\)
    \(\underline{\lnot \psi \quad \quad}\)
    \(\lnot \varphi\)

<!-- end list -->

  -
    \(\varphi \leftrightarrow \psi\)
    \(\underline{\psi \lor \varphi}\)
    \(\psi \land \varphi\)

<!-- end list -->

  -
    \(\varphi \leftrightarrow \psi\)
    \(\underline{\lnot \psi \lor \lnot \varphi}\)
    \(\lnot \psi \land \lnot \varphi\)

## 古典[述詞演算規則](https://zh.wikipedia.org/wiki/一階邏輯 "wikilink")

In the following rules, \(\varphi(\beta / \alpha)\) is exactly like \(\varphi\) except for having the term \(\beta\) everywhere \(\varphi\) has the free variable \(\alpha\).

  - [Universal Generalization](https://zh.wikipedia.org/wiki/Universal_generalization "wikilink") (or [Universal Introduction](https://zh.wikipedia.org/wiki/Universal_generalization "wikilink")):
    \(\underline{\varphi{(\beta / \alpha)}}\)
    \(\forall \alpha\, \varphi\)

Restriction 1: \(\beta\) is a variable which does not occur in \(\varphi\).
Restriction 2: \(\beta\) is not mentioned in any hypothesis or undischarged assumptions.

  - [Universal Instantiation](https://zh.wikipedia.org/wiki/Universal_instantiation "wikilink") (or [Universal Elimination](https://zh.wikipedia.org/wiki/Universal_instantiation "wikilink")):
    \(\forall \alpha\, \varphi\)
    \(\overline{\varphi{(\beta / \alpha)}}\)

Restriction: No free occurrence of \(\alpha\) in \(\varphi\) falls within the scope of a quantifier quantifying a variable occurring in \(\beta\).

  - [Existential Generalization](https://zh.wikipedia.org/wiki/Existential_generalization "wikilink") (or [Existential Introduction](https://zh.wikipedia.org/wiki/Existential_generalization "wikilink")):
    \(\underline{\varphi(\beta / \alpha)}\)
    \(\exists \alpha\, \varphi\)

Restriction: No free occurrence of \(\alpha\) in \(\varphi\) falls within the scope of a quantifier quantifying a variable occurring in \(\beta\).

  - [Existential Instantiation](https://zh.wikipedia.org/wiki/Existential_instantiation "wikilink") (or [Existential Elimination](https://zh.wikipedia.org/wiki/Existential_instantiation "wikilink")):
    \(\exists \alpha\, \varphi\)
    \(\underline{\varphi(\beta / \alpha) \vdash \psi}\)
    \(\psi\)

Restriction 1: \(\beta\) is a variable which does not occur in \(\varphi\).
Restriction 2: There is no occurrence, free or bound, of \(\beta\) in \(\psi\).
Restriction 3: \(\beta\) is not mentioned in any hypothesis or undischarged assumptions.

## [亞結構邏輯規則](https://zh.wikipedia.org/wiki/亞結構邏輯 "wikilink")

The following are special cases of universal generalization and existential elimination; these occur in substructrual logics, such as [linear logic](https://zh.wikipedia.org/wiki/linear_logic "wikilink").

  - Rule of weakening (or [monotonicity of entailment](https://zh.wikipedia.org/wiki/monotonicity_of_entailment "wikilink")) (aka [no-cloning theorem](https://zh.wikipedia.org/wiki/no-cloning_theorem "wikilink"))

<!-- end list -->

  -
    \(\alpha\vdash\beta\)
    \(\overline{\alpha,\alpha\vdash\beta}\)

<!-- end list -->

  - Rule of contraction (or [idempotency of entailment](https://zh.wikipedia.org/wiki/idempotency_of_entailment "wikilink")) (aka [no-deleting theorem](https://zh.wikipedia.org/wiki/no-deleting_theorem "wikilink"))

<!-- end list -->

  -
    \(\underline{\alpha,\alpha,\gamma\vdash\beta}\)
    \(\alpha,\gamma\vdash\beta\)

## 表格：推理規則

The rules above can be summed up in the following table.\[1\] The "[Tautology](https://zh.wikipedia.org/wiki/Tautology_\(logic\) "wikilink")" column shows how to interpret the notation of a given rule.

| 推論規則                                                                                                                      | 恆真式                                                                                  | 名稱                                                                      |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| \(\begin{align}
p\\
p \rightarrow q\\
\therefore \overline{q \quad \quad \quad} \\
\end{align}\)                          | \((p \wedge (p \rightarrow q))  \rightarrow q\)                                      | [Modus ponens](https://zh.wikipedia.org/wiki/Modus_ponens "wikilink")   |
| \(\begin{align}
\neg q\\
p \rightarrow q\\
\therefore \overline{\neg p \quad \quad \quad} \\
\end{align}\)                | \((\neg q \wedge (p \rightarrow q))  \rightarrow \neg p\)                            | [Modus tollens](https://zh.wikipedia.org/wiki/Modus_tollens "wikilink") |
| \(\begin{align}
(p \vee q) \vee r\\
\therefore \overline{p \vee (q \vee r)} \\
\end{align}\)                              | \(((p \vee q) \vee r) \rightarrow (p \vee (q \vee r))\)                              | Associative                                                             |
| \(\begin{align}
p \wedge q\\
\therefore \overline{q \wedge p} \\
\end{align}\)                                            | \((p \wedge q) \rightarrow (q \wedge p)\)                                            | Commutative                                                             |
| \(\begin{align}
p \rightarrow q\\
q \rightarrow p\\
\therefore \overline{p \leftrightarrow q} \\
\end{align}\)            | \(((p \rightarrow q) \wedge (q \rightarrow p)) \rightarrow (\ p \leftrightarrow q)\) | Law of biconditional propositions                                       |
| \(\begin{align}
(p \wedge q) \rightarrow r\\
\therefore \overline{p \rightarrow (q \rightarrow r)} \\
\end{align}\)       | \(((p \wedge q) \rightarrow r) \rightarrow (p \rightarrow (q \rightarrow r))\)       | Exportation                                                             |
| \(\begin{align}
p \rightarrow q\\
\therefore \overline{\neg q \rightarrow \neg p} \\
\end{align}\)                        | \((p \rightarrow q) \rightarrow (\neg q \rightarrow \neg p)\)                        | Transposition or contraposition law                                     |
| \(\begin{align}
p \rightarrow q\\
q \rightarrow r\\
\therefore \overline{p \rightarrow r} \\
\end{align}\)                | \(((p \rightarrow q) \wedge (q \rightarrow r)) \rightarrow (p \rightarrow r)\)       | Hypothetical syllogism                                                  |
| \(\begin{align}
p \rightarrow q\\
\therefore \overline{\neg p \vee q} \\
\end{align}\)                                    | \((p \rightarrow q) \rightarrow (\neg p \vee q)\)                                    | Material implication                                                    |
| \(\begin{align}
(p \vee q) \wedge r\\
\therefore \overline{(p \wedge r) \vee (q \wedge r)} \\
\end{align}\)               | \(((p \vee q) \wedge r) \rightarrow ((p \wedge r) \vee (q \wedge r))\)               | Distributive                                                            |
| \(\begin{align}
p \rightarrow q\\
\therefore \overline{p \rightarrow (p \wedge q)} \\
\end{align}\)                       | \((p \rightarrow q) \rightarrow (p \rightarrow (p \wedge q))\)                       | Absorption                                                              |
| \(\begin{align}
p \vee q \\
\neg p \\
\therefore \overline{q \quad \quad \quad} \\
\end{align}\)                          | \(((p \vee q) \wedge \neg p) \rightarrow q\)                                         | Disjunctive syllogism                                                   |
| \(\begin{align}
p \\
\therefore \overline{p \vee q} \\
\end{align}\)                                                     | \(p \rightarrow (p \vee q)\)                                                         | Addition                                                                |
| \(\begin{align}
p \wedge q \\
\therefore \overline{p \quad \quad \quad} \\
\end{align}\)                                  | \((p \wedge q)  \rightarrow p\)                                                      | Simplification                                                          |
| \(\begin{align}
p\\
q\\
\therefore \overline{p \wedge q} \\
\end{align}\)                                                 | \(((p) \wedge (q))  \rightarrow (p \wedge q)\)                                       | Conjunction                                                             |
| \(\begin{align}
p\\
\therefore \overline{\neg \neg p} \\
\end{align}\)                                                    | \(p \rightarrow (\neg \neg p)\)                                                      | Double negation                                                         |
| \(\begin{align}
p \vee p \\
\therefore \overline{p \quad \quad \quad} \\
\end{align}\)                                    | \((p \vee p)  \rightarrow p\)                                                        | Disjunctive simplification                                              |
| \(\begin{align}
p \vee q \\
\neg p \vee r \\
\therefore \overline{q \vee r} \\
\end{align}\)                              | \(((p \vee q) \wedge (\neg p \vee r)) \rightarrow (q \vee r)\)                       | Resolution                                                              |
| \(\begin{align}
p \rightarrow q\\
r \rightarrow q\\
p \vee r\\
\therefore \overline{q \quad \quad \quad} \\
\end{align}\) | \(((p \rightarrow q) \wedge (r \rightarrow q) \wedge (p \vee r)) \rightarrow q\)     | Disjunction Elimination                                                 |

All rules use the basic logic operators. A complete table of "logic operators" is shown by a [truth table](https://zh.wikipedia.org/wiki/truth_table "wikilink"), giving definitions of all the possible (16) truth functions of 2 [boolean variables](https://zh.wikipedia.org/wiki/Boolean_algebra "wikilink") (*p*, *q*):

| *p* | *q* |  | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |  | |  8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
| --- | --- |  | - | - | - | - | - | - | - | - |  | ---- | - | -- | -- | -- | -- | -- | -- |
| T   | T   |  | F | F | F | F | F | F | F | F |  | T    | T | T  | T  | T  | T  | T  | T  |
| T   | F   |  | F | F | F | F | T | T | T | T |  | F    | F | F  | F  | T  | T  | T  | T  |
| F   | T   |  | F | F | T | T | F | F | T | T |  | F    | F | T  | T  | F  | F  | T  | T  |
| F   | F   |  | F | T | F | T | F | T | F | T |  | F    | T | F  | T  | F  | T  | F  | T  |

where T = true and F = false, and, the columns are the logical operators: **0**, false, [Contradiction](https://zh.wikipedia.org/wiki/Contradiction "wikilink"); **1**, NOR, [Logical NOR](https://zh.wikipedia.org/wiki/Logical_NOR "wikilink"); **2**, [Converse nonimplication](https://zh.wikipedia.org/wiki/Converse_nonimplication "wikilink"); **3**, **¬p**, [Negation](https://zh.wikipedia.org/wiki/Negation "wikilink"); **4**, [Material nonimplication](https://zh.wikipedia.org/wiki/Material_nonimplication "wikilink"); **5**, **¬q**, Negation; **6**, XOR, [Exclusive disjunction](https://zh.wikipedia.org/wiki/Exclusive_disjunction "wikilink"); **7**, NAND, [Logical NAND](https://zh.wikipedia.org/wiki/Logical_NAND "wikilink"); **8**, AND, [Logical conjunction](https://zh.wikipedia.org/wiki/Logical_conjunction "wikilink"); **9**, XNOR, [If and only if](https://zh.wikipedia.org/wiki/If_and_only_if "wikilink"), [Logical biconditional](https://zh.wikipedia.org/wiki/Logical_biconditional "wikilink"); **10**, **q**, [Projection function](https://zh.wikipedia.org/wiki/Projection_function "wikilink"); **11**, if/then, [Logical implication](https://zh.wikipedia.org/wiki/Material_conditional "wikilink"); **12**, **p**, Projection function; **13**, then/if, [Converse implication](https://zh.wikipedia.org/wiki/Converse_implication "wikilink"); **14**, OR, [Logical disjunction](https://zh.wikipedia.org/wiki/Logical_disjunction "wikilink"); **15**, true, [Tautology](https://zh.wikipedia.org/wiki/Tautology_\(logic\) "wikilink").

Each logic operator can be used in an assertion about variables and operations, showing a basic rule of inference. Examples:

  - The column-14 operator (OR), shows *Addition rule*: when *p*=T (the hypothesis selects the first two lines of the table), we see (at column-14) that *p*∨*q*=T.
      -
        We can see also that, with the same premise, another conclusions are valid: columns 12, 14 and 15 are T.
  - The column-8 operator (AND), shows *Simplification rule*: when *p*∧*q*=T (first line of the table), we see that *p*=T.
      -
        With this premise, we also conclude that *q*=T, *p*∨*q*=T, etc. as showed by columns 9-15.
  - The column-11 operator (IF/THEN), shows *Modus ponens rule*: when *p*→*q*=T and *p*=T only one line of the truth table (the first) satisfies these two conditions. On this line, *q* is also true. Therefore, whenever p → q is true and p is true, q must also be true.

Machines and well-trained people use this [look at table approach](https://zh.wikipedia.org/wiki/Lookup_table "wikilink") to do basic inferences, and to check if other inferences (for the same premises) can be obtained.

### 範例 1

Consider the following assumptions: "If it rains today, then we will not go on a canoe today. If we do not go on a canoe trip today, then we will go on a canoe trip tomorrow. Therefore (Mathematical symbol for "therefore" is \(\therefore\)), if it rains today, we will go on a canoe trip tomorrow". To make use of the rules of inference in the above table we let \(p\) be the proposition "If it rains today", \(q\) be "We will not go on a canoe today" and let \(r\) be "We will go on a canoe trip tomorrow". Then this argument is of the form:

\(\begin{align}
p \rightarrow q\\
q \rightarrow r\\
\therefore \overline{p \rightarrow r} \\
\end{align}\)

### 範例 2

Consider a more complex set of assumptions: "It is not sunny today and it is colder than yesterday". "We will go swimming only if it is sunny", "If we do not go swimming, then we will have a barbecue", and "If we will have a barbecue, then we will be home by sunset" lead to the conclusion "We will be home by sunset." Proof by rules of inference: Let \(p\) be the proposition "It is sunny today", \(q\) the proposition "It is colder than yesterday", \(r\) the proposition "We will go swimming", \(s\) the proposition "We will have a barbecue", and \(t\) the proposition "We will be home by sunset". Then the hypotheses become \(\neg p \wedge q, r \rightarrow p, \neg r \rightarrow s\) and \(s \rightarrow t\). Using our intuition we conjecture that the conclusion might be \(t\). Using the Rules of Inference table we can prove the conjecture easily:

| Step                         | Reason                           |
| ---------------------------- | -------------------------------- |
| 1\.\(\neg p \wedge q\)       | Hypothesis                       |
| 2\. \(\neg p\)               | Simplification using Step 1      |
| 3\. \(r \rightarrow p\)      | Hypothesis                       |
| 4\. \(\neg r\)               | Modus tollens using Step 2 and 3 |
| 5\. \(\neg r \rightarrow s\) | Hypothesis                       |
| 6\. \(s\)                    | Modus ponens using Step 4 and 5  |
| 7\. \(s \rightarrow t\)      | Hypothesis                       |
| 8\. \(t\)                    | Modus ponens using Step 6 and 7  |

## 參考資料

<references/>

## 參見

[List of logic systems](https://zh.wikipedia.org/wiki/List_of_logic_systems "wikilink")

\<\!-- --\!\>

[de:Schlussregel](https://zh.wikipedia.org/wiki/de:Schlussregel "wikilink") [he:חוקי היקש](https://zh.wikipedia.org/wiki/he:חוקי_היקש "wikilink")

[Category:Rules_of_inference](https://zh.wikipedia.org/wiki/Category:Rules_of_inference "wikilink") [Category:Mathematics-related_lists](https://zh.wikipedia.org/wiki/Category:Mathematics-related_lists "wikilink") [Category:Logic-related_lists](https://zh.wikipedia.org/wiki/Category:Logic-related_lists "wikilink")

1.  Kenneth H. Rosen: *Discrete Mathematics and its Applications*, Fifth Edition, p. 58.