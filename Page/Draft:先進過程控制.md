在[控制理论中](../Page/控制理论.md "wikilink")，**先進過程控制**（[:en:Advanced process
control](https://zh.wikipedia.org/wiki/:en:Advanced_process_control "wikilink")，簡稱APC）是指許多工業過程控制系統中會用到的技術及技巧。先進過程控制一般是在「基本」的過程控制以外，選擇性布署的部份。基本的過程控制是根據過程本身所設計及建構，方便基本的操作、控制以及自動化的需求。先進過程控制一般是循序增加的，可能是在幾年以後增加，目的是希望此程序中達到性能或是經濟上的提昇。

此處的过程控制一般是指連續流-{}-制程製造業（process
industries），包括化工業、石化業、石油和矿物精炼、食品加工、制藥業、電廠等。這些產業的特點是連續性的加工程序以及流體處理，和分立零件制造（如汽車業及電子業）不同。和過程控制在本質上是類似的。

过程控制會佈置在过程控制系統內，过程控制系統可能是（DCS）、[可编程逻辑控制器](../Page/可编程逻辑控制器.md "wikilink")（PLC）、或（及）[監督控制用的電腦](../Page/監督控制.md "wikilink")。所用的DCS及PLC是針對工業應用進行強化的，且有容錯的特性。監督控制電腦多半沒有工業上的強化的，也沒有容錯，不過可以加強系統的運算能力，可以處理重要（但非關鍵性的）先進控制應用。依應用的不同，先進控制可能會在DCS內，也可能在監督控制電腦內。而基本控制會在DCS及PLC內。

## 先進過程控制的分類

以下是幾個先進過程控制的類別：

  - Advanced regulatory control (ARC) refers to several proven advanced
    control techniques, such as override or adaptive gain (but in all
    cases, "regulating or feedback"). ARC is also a catch-all term used
    to refer to any customized or non-simple technique that does not
    fall into any other category. ARCs are typically implemented using
    function blocks or custom programming capabilities at the DCS level.
    In some cases, ARCs reside at the supervisory control computer
    level.
  - Advanced process control (APC) refers to several proven advanced
    control techniques, such as feedforward, decoupling, and inferential
    control. APC can also include Model Predictive Control, described
    below. APC is typically implemented using function blocks or custom
    programming capabilities at the DCS level. In some cases, APC
    resides at the supervisory control computer level.
  - Multivariable
    [模型預測控制](https://zh.wikipedia.org/wiki/模型預測控制 "wikilink")
    (MPC) is a popular technology, usually deployed on a supervisory
    control computer, that identifies important independent and
    dependent process variables and the dynamic relationships (models)
    between them, and often uses matrix-math based control and
    optimization algorithms to control multiple variables
    simultaneously. One requirement of MPC is that the models must be
    linear across the operating range of the controller. MPC has been a
    prominent part of APC ever since supervisory computers first brought
    the necessary computational capabilities to control systems in the
    1980s.
  - Nonlinear MPC: Similar to Multivariable MPC in that it incorporates
    dynamic models and matrix-math based control; however, it does not
    have the requirement for model linearity. Nonlinear MPC is capable
    of accommodating processes with models that have varying process
    gains and dynamics (i.e. dead-times and lag times).
  - Inferential Measurements: The concept behind inferentials is to
    calculate a stream property from readily available process
    measurements, such as temperature and pressure, that otherwise might
    be too costly or time-consuming to measure directly in real time.
    The accuracy of the inference can be periodically cross-checked with
    laboratory analysis. Inferentials can be utilized in place of actual
    online analyzers, whether for operator information, cascaded to
    base-layer process controllers, or multivariable controller CVs.
  - Sequential control refers to discontinuous time- and event-based
    automation sequences that occur within continuous processes. These
    may be implemented as a collection of time and logic function
    blocks, a custom algorithm, or using a formalized
    [順序功能流程圖](../Page/順序功能流程圖.md "wikilink")
    methodology.
  - [智能控制](../Page/智能控制.md "wikilink") is a class of
    [control](https://zh.wikipedia.org/wiki/Control_theory "wikilink")
    techniques that use various [人工智能](../Page/人工智能.md "wikilink")
    computing approaches like , [贝叶斯概率](../Page/贝叶斯概率.md "wikilink"),
    [模糊逻辑](../Page/模糊逻辑.md "wikilink"),
    [机器学习](../Page/机器学习.md "wikilink"),
    [进化计算](https://zh.wikipedia.org/wiki/进化计算 "wikilink") and
    [遗传算法](../Page/遗传算法.md "wikilink").

## 相關技術

The following technologies are related to APC and in some contexts can
be considered part of APC, but are generally separate technologies
having their own (or in need of their own) Wiki articles.

  - (SPC), despite its name, is much more common in discrete parts
    manufacturing and batch process control than in continuous process
    control. In SPC, “process” refers to the work and quality control
    process, rather than continuous process control.

  - Batch process control (see ANSI/ISA-88) is employed in
    non-continuous batch processes, such as many pharmaceuticals,
    chemicals, and foods.

  - Simulation-based optimization incorporates dynamic or steady-state
    computer-based process simulation models to determine more optimal
    operating targets in real-time, i.e. on a periodic basis, ranging
    from hourly to daily. This is sometimes considered a part of APC,
    but in practice it is still an emerging technology and is more often
    part of MPO.

  - Manufacturing planning and optimization (MPO) refers to ongoing
    business activity to arrive at optimal operating targets that are
    then implemented in the operating organization, either manually or
    in some cases automatically communicated to the process control
    system.

  - refers to a system that is independent of the process control
    system, both physically and administratively, whose purpose is to
    assure basic safety of the process.

## APC Business and Professionals

Those responsible for the design, implementation and maintenance of APC
applications are often referred to as APC Engineers or Control
Application Engineers. Usually their education is dependent upon the
field of specialization. For example, in the process industries many APC
Engineers have a chemical engineering background, combining process
control and chemical processing expertise.

Most large operating facilities, such as oil refineries, employ a number
of control system specialists and professionals, ranging from field
instrumentation, regulatory control system (DCS and PLC), advanced
process control, and control system network and security. Depending on
facility size and circumstances, these personnel may have
responsibilities across multiple areas, or be dedicated to each area.
There are also many process control service companies that can be hired
for support and services in each area.

## 人工智慧與製程控制

The use of Artificial Intelligence, Machine Learning and Deep Learning
techniques in Process Control is also considered as an advanced process
control approach in which intelligence is used to further optimize
operational parameters.

Operations and Logics in process control systems in oil and gas and for
decades are based only on physics equations that dictates parameters
along with operators’ interactions based on experience and operating
manuals. Artificial Intelligence and Machine Learning algorithms can
look into the dynamic operational conditions, analyse them and suggest
optimized parameters that can either directly tune logic parameters or
give suggestion to operators. Interventions by such intelligent models
leads to optimization in cost, production and safety.\[1\]

## 詞語

  - APC: Advanced process control, including feedforward, decoupling,
    inferentials, and custom algorithms; usually implies DCS-based.
  - ARC: Advanced regulatory control, including adaptive gain, override,
    logic, fuzzy logic, sequence control, device control, and custom
    algorithms; usually implies DCS-based.
  - Base-Layer: Includes DCS, SIS, field devices, and other DCS
    subsystems, such as analyzers, equipment health systems, and PLCs.
  - BPCS: Basic process control system (see "base-layer")
  - DCS: Distributed control system, often synonymous with BPCS
  - MPO: Manufacturing planning optimization
  - MPC: Multivariable
    [模型預測控制](https://zh.wikipedia.org/wiki/模型預測控制 "wikilink")
  - SIS:
  - SME: Subject matter expert

## 參考資料

## 外部連結

  - [Article](https://web.archive.org/web/20060421092145/http://lorien.ncl.ac.uk/ming/advcontrl/apc.htm)
    about Advanced Process Control.

[:Category:控制理论](https://zh.wikipedia.org/wiki/Category:控制理论 "wikilink")
[:Category:控制论](https://zh.wikipedia.org/wiki/Category:控制论 "wikilink")
[:Category:数字信号处理](https://zh.wikipedia.org/wiki/Category:数字信号处理 "wikilink")

1.