\--[This module define the data used by Module:Taxobox
--](https://zh.wikipedia.org/wiki/This_module_define_the_data_used_by_Module:Taxobox_-- "wikilink")

local p = {}

\--[This table define the conservation system and its status and photo
to be showed Note: If extinct is defined and is true, Module:Taxobox
will try to print corresponding argument.
--](https://zh.wikipedia.org/wiki/This_table_define_the_conservation_system_and_its_status_and_photo_to_be_showed_Note:_If_extinct_is_defined_and_is_true,_Module:Taxobox_will_try_to_print_corresponding_argument._-- "wikilink")
local conservationStatusTable = {

`   ['iucn2.3'] = {`
`       ['introduction'] = '`[`IUCN``
 ``2.3`](https://zh.wikipedia.org/wiki/世界自然保护联盟濒危物种红色名录 "wikilink")`',`
`       ['ex'] = {`
`           ['name'] = '`[`絕滅`](https://zh.wikipedia.org/wiki/絕滅 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录绝灭物种', ['extinct'] = true,`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EX_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EX_zh.svg "fig:Status_iucn2.3_EX_zh.svg")`;zh-hant:`[`Status_iucn2.3_EX_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EX_zh-hant.svg "fig:Status_iucn2.3_EX_zh-hant.svg")`}-'`
`       },`
`       ['ew'] = {`
`           ['name'] = '`[`野外绝灭`](https://zh.wikipedia.org/wiki/野外绝灭 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录野外绝灭物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EW_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EW_zh.svg "fig:Status_iucn2.3_EW_zh.svg")`;zh-hant:`[`Status_iucn2.3_EW_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EW_zh-hant.svg "fig:Status_iucn2.3_EW_zh-hant.svg")`}-'`
`       },`
`       ['cr'] = {`
`           ['name'] = '`[`極危`](../Page/極危物種.md "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录野外极危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_CR_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CR_zh.svg "fig:Status_iucn2.3_CR_zh.svg")`;zh-hant:`[`Status_iucn2.3_CR_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CR_zh-hant.svg "fig:Status_iucn2.3_CR_zh-hant.svg")`}-'`
`       },`
`       ['en'] = {`
`           ['name'] = '`[`瀕危`](../Page/瀕危物種.md "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录濒危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EN_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh.svg "fig:Status_iucn2.3_EN_zh.svg")`;zh-hant:`[`Status_iucn2.3_EN_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh-hant.svg "fig:Status_iucn2.3_EN_zh-hant.svg")`}-'`
`       },`
`       ['vu'] = {`
`           ['name'] = '`[`易危`](https://zh.wikipedia.org/wiki/易危物種 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录濒危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EN_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh.svg "fig:Status_iucn2.3_EN_zh.svg")`;zh-hant:`[`Status_iucn2.3_EN_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh-hant.svg "fig:Status_iucn2.3_EN_zh-hant.svg")`}-'`
`       },`
`       ['en'] = {`
`           ['name'] = '`[`瀕危`](../Page/瀕危物種.md "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录濒危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EN_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh.svg "fig:Status_iucn2.3_EN_zh.svg")`;zh-hant:`[`Status_iucn2.3_EN_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh-hant.svg "fig:Status_iucn2.3_EN_zh-hant.svg")`}-'`
`       },`
`       ['vu'] = {`
`           ['name'] = '`[`易危`](https://zh.wikipedia.org/wiki/易危物種 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录易危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_VU_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_VU_zh.svg "fig:Status_iucn2.3_VU_zh.svg")`;zh-hant:`[`Status_iucn2.3_VU_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_VU_zh-hant.svg "fig:Status_iucn2.3_VU_zh-hant.svg")`}-'`
`       },`
`       ['lr'] = {`
`           ['name'] = '`[`低危`](https://zh.wikipedia.org/wiki/低危 "wikilink")`', ['category'] = '无效保护状况',`
`           ['photo'] = '`[<File:Status>`   ``iucn2.3``
 ``blank.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_blank.svg "fig:File:Status iucn2.3 blank.svg")`'`
`       },`
`       ['lr/cd'] = {`
`           ['name'] = '`[`保护依赖`](https://zh.wikipedia.org/wiki/保护依赖 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录保护依赖物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_CD_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CD_zh.svg "fig:Status_iucn2.3_CD_zh.svg")`;zh-hant:`[`Status_iucn2.3_CD_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CD_zh-hant.svg "fig:Status_iucn2.3_CD_zh-hant.svg")`}-'`
`       },`
`       ['cd'] = {['alias'] = 'lr/cd'},`
`       ['lr/nt'] = {`
`           ['name'] = '`[`近危`](https://zh.wikipedia.org/wiki/近危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录近危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_NT_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_NT_zh.svg "fig:Status_iucn2.3_NT_zh.svg")`;zh-hant:`[`Status_iucn2.3_NT_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_NT_zh-hant.svg "fig:Status_iucn2.3_NT_zh-hant.svg")`}-'`
`       },`
`       ['nt'] = {['alias'] = 'lr/nt'},`
`       ['lr/lc'] = {`
`           ['name'] = '`[`无危`](https://zh.wikipedia.org/wiki/无危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录无危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_LC_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh.svg "fig:Status_iucn2.3_LC_zh.svg")`;zh-hant:`[`Status_iucn2.3_LC_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh-hant.svg "fig:Status_iucn2.3_LC_zh-hant.svg")`}-'`
`       },`
`       ['lc'] = {['alias'] = 'lr/lc'},`
`       ['dd'] = {`
`           ['name'] = '`[`数据缺乏`](https://zh.wikipedia.org/wiki/数据缺乏 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录数据缺乏物种',`
`           ['photo'] = '`[<File:Status>`   ``none``
 ``DD.svg`](https://zh.wikipedia.org/wiki/File:Status_none_DD.svg "fig:File:Status none DD.svg")`'`
`       },`
`       ['ne'] = {['name'] = '未予评估'},`
`       ['nr'] = {['name'] = '未承认'},`
`       ['pe'] = {`
`           ['name'] = '`[`極危`](https://zh.wikipedia.org/wiki/極危 "wikilink")`，可能絕滅', ['category'] = '世界自然保护联盟濒危物种红色名录野外极危物种',`
`           ['photo'] = '`[`Status_none_PE.svg`](https://zh.wikipedia.org/wiki/File:Status_none_PE.svg "fig:Status_none_PE.svg")`'`
`       },`
`       ['pew'] = {`
`           ['name'] = '`[`極危`](https://zh.wikipedia.org/wiki/極危 "wikilink")`，可能野外絕滅', ['category'] = '世界自然保护联盟濒危物种红色名录野外极危物种',`
`           ['photo'] = '`[`Status_none_PEW.svg`](https://zh.wikipedia.org/wiki/File:Status_none_PEW.svg "fig:Status_none_PEW.svg")`'`
`       }`
`   },`
`   ['iucn'] = {`
`       ['introduction'] = '`[`IUCN``
 ``3.1`](https://zh.wikipedia.org/wiki/世界自然保护联盟濒危物种红色名录 "wikilink")`',`
`       ['ex'] = {`
`           ['name'] = '`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录绝灭物种', ['extinct'] = true,`
`           ['photo'] = '-{zh-hans:`[`Status_iucn3.1_EX_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_EX_zh.svg "fig:Status_iucn3.1_EX_zh.svg")`;zh-hant:`[`Status_iucn3.1_EX_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_EX_zh-hant.svg "fig:Status_iucn3.1_EX_zh-hant.svg")`}-'`
`       },`
`       ['ew'] = {`
`           ['name'] = '`[`野外绝灭`](https://zh.wikipedia.org/wiki/野外绝灭 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录野外绝灭物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn3.1_EW_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_EW_zh.svg "fig:Status_iucn3.1_EW_zh.svg")`;zh-hant:`[`Status_iucn3.1_EW_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_EW_zh-hant.svg "fig:Status_iucn3.1_EW_zh-hant.svg")`}-'`
`       },`
`       ['cr'] = {`
`           ['name'] = '`[`極危`](../Page/極危物種.md "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录野外极危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn3.1_CR_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_CR_zh.svg "fig:Status_iucn3.1_CR_zh.svg")`;zh-hant:`[`Status_iucn3.1_CR_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_CR_zh-hant.svg "fig:Status_iucn3.1_CR_zh-hant.svg")`}-'`
`       },`
`       ['en'] = {`
`           ['name'] = '`[`瀕危`](../Page/瀕危物種.md "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录濒危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn3.1_EN_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_EN_zh.svg "fig:Status_iucn3.1_EN_zh.svg")`;zh-hant:`[`Status_iucn3.1_EN_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_EN_zh-hant.svg "fig:Status_iucn3.1_EN_zh-hant.svg")`}-'`
`       },`
`       ['vu'] = {`
`           ['name'] = '`[`易危`](https://zh.wikipedia.org/wiki/易危物種 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录易危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn3.1_VU_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_VU_zh.svg "fig:Status_iucn3.1_VU_zh.svg")`;zh-hant:`[`Status_iucn3.1_VU_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_VU_zh-hant.svg "fig:Status_iucn3.1_VU_zh-hant.svg")`}-'`
`       },`
`       ['nt'] = {`
`           ['name'] = '`[`近危`](https://zh.wikipedia.org/wiki/近危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录近危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn3.1_NT_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_NT_zh.svg "fig:Status_iucn3.1_NT_zh.svg")`;zh-hant:`[`Status_iucn3.1_NT_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_NT_zh-hant.svg "fig:Status_iucn3.1_NT_zh-hant.svg")`}-'`
`       },`
`       ['lc'] = {`
`           ['name'] = '`[`无危`](https://zh.wikipedia.org/wiki/无危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录无危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn3.1_LC_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_LC_zh.svg "fig:Status_iucn3.1_LC_zh.svg")`;zh-hant:`[`Status_iucn3.1_LC_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn3.1_LC_zh-hant.svg "fig:Status_iucn3.1_LC_zh-hant.svg")`}-'`
`       },`
`       ['dd'] = {`
`           ['name'] = '`[`数据缺乏`](https://zh.wikipedia.org/wiki/数据缺乏 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录数据缺乏物种',`
`           ['photo'] = '`[<File:Status>`   ``none``
 ``DD.svg`](https://zh.wikipedia.org/wiki/File:Status_none_DD.svg "fig:File:Status none DD.svg")`'`
`       },`
`       ['ne'] = {['name'] = '未予评估'},`
`       ['nr'] = {['name'] = '未承认'},`
`       ['pe'] = {`
`           ['name'] = '`[`極危`](https://zh.wikipedia.org/wiki/極危 "wikilink")`，可能絕滅', ['category'] = '世界自然保护联盟濒危物种红色名录野外极危物种',`
`           ['photo'] = '`[`Status_none_PE.svg`](https://zh.wikipedia.org/wiki/File:Status_none_PE.svg "fig:Status_none_PE.svg")`'`
`       },`
`       ['pew'] = {`
`           ['name'] = '`[`極危`](https://zh.wikipedia.org/wiki/極危 "wikilink")`，可能野外絕滅', ['category'] = '世界自然保护联盟濒危物种红色名录野外极危物种',`
`           ['photo'] = '`[`Status_none_PEW.svg`](https://zh.wikipedia.org/wiki/File:Status_none_PEW.svg "fig:Status_none_PEW.svg")`'`
`       }`
`   },`
`   ['iucn3.1'] = {['alias'] = 'iucn'},`
`   ['epbc'] = {`
`       ['introduction'] = '`[`EBPC`](https://zh.wikipedia.org/wiki/环境保护和生物多样性保护法案野外绝灭生物群 "wikilink")`',`
`       ['ex'] = {`
`           ['name'] = '`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '环境保护和生物多样性保护法案绝灭生物群', ['extinct'] = true,`
`           ['photo'] = '`[`Status_EPBC_EX.svg`](https://zh.wikipedia.org/wiki/File:Status_EPBC_EX.svg "fig:Status_EPBC_EX.svg")`',`
`           ['category'] = 'EPBC法案绝灭生物群'`
`       },`
`       ['ew'] = {`
`           ['name'] = '`[`野外绝灭`](https://zh.wikipedia.org/wiki/野外绝灭 "wikilink")`', ['category'] = '环境保护和生物多样性保护法案野外绝灭生物群',`
`           ['photo'] = '`[`Status_EPBC_EW.svg`](https://zh.wikipedia.org/wiki/File:Status_EPBC_EW.svg "fig:Status_EPBC_EW.svg")`',`
`           ['category'] = 'EPBC法案野外绝灭生物群'`
`       },`
`       ['cr'] = {`
`           ['name'] = '`[`極危`](../Page/極危物種.md "wikilink")`', ['category'] = '环境保护和生物多样性保护法案极危生物群',`
`           ['photo'] = '`[`Status_EPBC_CR.svg`](https://zh.wikipedia.org/wiki/File:Status_EPBC_CR.svg "fig:Status_EPBC_CR.svg")`',`
`           ['category'] = 'EPBC法案极危生物群'`
`       },`
`       ['en'] = {`
`           ['name'] = '`[`瀕危`](../Page/瀕危物種.md "wikilink")`', ['category'] = '环境保护和生物多样性保护法案濒危生物群',`
`           ['photo'] = '`[`Status_EPBC_EN.svg`](https://zh.wikipedia.org/wiki/File:Status_EPBC_EN.svg "fig:Status_EPBC_EN.svg")`',`
`           ['category'] = 'EPBC法案濒危生物群'`
`       },`
`       ['vu'] = {`
`           ['name'] = '`[`易危`](https://zh.wikipedia.org/wiki/易危物種 "wikilink")`', ['category'] = '环境保护和生物多样性保护法案易危生物群',`
`           ['photo'] = '`[`Status_EPBC_VU.svg`](https://zh.wikipedia.org/wiki/File:Status_EPBC_VU.svg "fig:Status_EPBC_VU.svg")`',`
`           ['category'] = 'EPBC法案易危生物群'`
`       },`
`       ['cd'] = {`
`           ['name'] = '`[`保护依赖`](https://zh.wikipedia.org/wiki/保护依赖 "wikilink")`', ['category'] = '环境保护和生物多样性保护法案保护依赖生物群',`
`           ['photo'] = '`[`Status_EPBC_CD.svg`](https://zh.wikipedia.org/wiki/File:Status_EPBC_CD.svg "fig:Status_EPBC_CD.svg")`',`
`           ['category'] = 'EPBC法案保护依赖生物群'`
`       },`
`       ['dl'] = {['name'] = '除名', ['photo'] = '`[`Status_EPBC_DL.svg`](https://zh.wikipedia.org/wiki/File:Status_EPBC_DL.svg "fig:Status_EPBC_DL.svg")`'}`
`   },`
`   ['tnc'] = {`
`       ['introduction'] = '`[`EPBC法案`](https://zh.wikipedia.org/wiki/1999年環境保護與生物多樣性保護法案 "wikilink")`',`
`       ['gx'] = {`
`           ['name'] = '推測`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '公益自然推测绝灭物种',`
`           ['photo'] = '`[`Status_TNC_GX.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_GX.svg "fig:Status_TNC_GX.svg")`'`
`       },`
`       ['gh'] = {`
`           ['name'] = '可能`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '公益自然可能绝灭物种',`
`           ['photo'] = '`[`Status_TNC_GH.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_GH.svg "fig:Status_TNC_GH.svg")`'`
`       },`
`       ['g1'] = {`
`           ['name'] = '严重濒绝', ['category'] = '公益自然严重濒绝物种',`
`           ['photo'] = '`[`Status_TNC_G1.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G1.svg "fig:Status_TNC_G1.svg")`'`
`       },`
`       ['g2'] = {`
`           ['name'] = '濒绝', ['category'] = '公益自然濒绝物种',`
`           ['photo'] = '`[`Status_TNC_G2.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G2.svg "fig:Status_TNC_G2.svg")`'`
`       },`
`       ['g3'] = {`
`           ['name'] = '易危', ['category'] = '公益自然易危物种',`
`           ['photo'] = '`[`Status_TNC_G3.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G3.svg "fig:Status_TNC_G3.svg")`'`
`       },`
`       ['g4'] = {`
`           ['name'] = '可能安全', ['category'] = '公益自然可能安全物种',`
`           ['photo'] = '`[`Status_TNC_G4.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G4.svg "fig:Status_TNC_G4.svg")`'`
`       },`
`       ['g5'] = {`
`           ['name'] = '安全', ['category'] = '公益自然安全物种',`
`           ['photo'] = '`[`Status_TNC_G5.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G5.svg "fig:Status_TNC_G5.svg")`'`
`       },`
`       ['gu'] = {['name'] = '未分级', ['photo'] = '`[`Status_TNC_blank.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_blank.svg "fig:Status_TNC_blank.svg")`'},`
`       ['tx'] = {`
`           ['name'] = '推測`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '公益自然推测绝灭物种',`
`           ['photo'] = '`[`Status_TNC_TX.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_TX.svg "fig:Status_TNC_TX.svg")`'`
`       },`
`       ['th'] = {`
`           ['name'] = '可能`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '公益自然可能绝灭物种',`
`           ['photo'] = '`[`Status_TNC_TH.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_TH.svg "fig:Status_TNC_TH.svg")`'`
`       },`
`       ['t1'] = {`
`           ['name'] = '嚴重瀕絕', ['category'] = '公益自然严重濒绝物种',`
`           ['photo'] = '`[`Status_TNC_T1.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T1.svg "fig:Status_TNC_T1.svg")`'`
`       },`
`       ['t2'] = {`
`           ['name'] = '瀕絕', ['category'] = '公益自然濒绝物种',`
`           ['photo'] = '`[`Status_TNC_T2.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T2.svg "fig:Status_TNC_T2.svg")`'`
`       },`
`       ['t3'] = {`
`           ['name'] = '易危', ['category'] = '公益自然易危物种',`
`           ['photo'] = '`[`Status_TNC_T3.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T3.svg "fig:Status_TNC_T3.svg")`'`
`       },`
`       ['t4'] = {`
`           ['name'] = '可能安全', ['category'] = '公益自然可能安全物种',`
`           ['photo'] = '`[`Status_TNC_T4.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T4.svg "fig:Status_TNC_T4.svg")`'`
`       },`
`       ['t5'] = {`
`           ['name'] = '安全', ['category'] = '公益自然安全物种',`
`           ['photo'] = '`[`Status_TNC_T5.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T5.svg "fig:Status_TNC_T5.svg")`'`
`       },`
`       ['tu'] = {['name'] = '未分級', ['photo'] = '`[`Status_TNC_T_blank.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T_blank.svg "fig:Status_TNC_T_blank.svg")`'}`
`   },`
`   ['natureserve'] = {['alias'] = 'tnc'},`
`   ['esa'] = {`
`       ['introduction'] = '`[`ESA`](https://zh.wikipedia.org/wiki/濒危物种法案 "wikilink")`',`
`       ['ex'] = {['name'] = '`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['photo'] = '`[`Status_ESA_EX_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_ESA_EX_zh.svg "fig:Status_ESA_EX_zh.svg")`'},`
`       ['le'] = {['name'] = '`[`濒危`](https://zh.wikipedia.org/wiki/濒危物种 "wikilink")`', ['photo'] = '`[`Status_ESA_LE_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_ESA_LE_zh.svg "fig:Status_ESA_LE_zh.svg")`'},`
`       ['e'] = {['alias'] = 'le'},`
`       ['lt'] = {['name'] = '`[`受威胁`](https://zh.wikipedia.org/wiki/受威胁物种 "wikilink")`', ['photo'] = '`[`Status_ESA_LT_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_ESA_LT_zh.svg "fig:Status_ESA_LT_zh.svg")`'},`
`       ['t'] = {['alias'] = 'lt'},`
`       ['dl'] = {['name'] = '除名', ['photo'] = '`[`Status_ESA_DL_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_ESA_DL_zh.svg "fig:Status_ESA_DL_zh.svg")`'},`
`       ['delisted'] = {['alias'] = 'dl'}`
`   },`
`   ['cosewic'] = {`
`       ['introduction'] = '`[`COSEWIC`](https://zh.wikipedia.org/wiki/加拿大濒危野生动物现状调查委员会 "wikilink")`',`
`       ['x'] = {['name'] = '`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['photo'] = '`[`Status_COSEWIC_X.svg`](https://zh.wikipedia.org/wiki/File:Status_COSEWIC_X.svg "fig:Status_COSEWIC_X.svg")`', ['extinct'] = true},`
`       ['xt'] = {['name'] = '绝迹（加拿大）', ['photo'] = '`[`Status_COSEWIC_XT.svg`](https://zh.wikipedia.org/wiki/File:Status_COSEWIC_XT.svg "fig:Status_COSEWIC_XT.svg")`'},`
`       ['e'] = {['name'] = '`[`濒危`](https://zh.wikipedia.org/wiki/濒危物种 "wikilink")`', ['photo'] = '`[`Status_COSEWIC_E.svg`](https://zh.wikipedia.org/wiki/File:Status_COSEWIC_E.svg "fig:Status_COSEWIC_E.svg")`'},`
`       ['t'] = {['name'] = '`[`受威胁`](https://zh.wikipedia.org/wiki/受威胁物种 "wikilink")`', ['photo'] = '`[`Status_COSEWIC_T.svg`](https://zh.wikipedia.org/wiki/File:Status_COSEWIC_T.svg "fig:Status_COSEWIC_T.svg")`'},`
`       ['sc'] = {['name'] = '特别关注', ['photo'] = '`[`Status_COSEWIC_SC.svg`](https://zh.wikipedia.org/wiki/File:Status_COSEWIC_SC.svg "fig:Status_COSEWIC_SC.svg")`'},`
`       ['nar'] = {['name'] = '`[`无危`](https://zh.wikipedia.org/wiki/无危物种 "wikilink")`', ['photo'] = '`[`Status_COSEWIC_NAR.svg`](https://zh.wikipedia.org/wiki/File:Status_COSEWIC_NAR.svg "fig:Status_COSEWIC_NAR.svg")`'}`
`   },`
`   ['decf'] = {`
`       ['introduction'] = '`[`DEC`](https://zh.wikipedia.org/wiki/优先申报珍稀动植物名单 "wikilink")`',`
`       ['x'] = {['name'] = '珍稀申报 — 推测`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['photo'] = '`[`Status_DECF_X.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_X.svg "fig:Status_DECF_X.svg")`', ['extinct'] = true},`
`       ['r'] = {['name'] = '珍稀申报', ['photo'] = '`[`Status_DECF_R.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_R.svg "fig:Status_DECF_R.svg")`'},`
`       ['p1'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['p2'] = {['name'] = '第二优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P2.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P2.svg "fig:Status_DECF_P2.svg")`'},`
`       ['p3'] = {['name'] = '第三优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P3.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P3.svg "fig:Status_DECF_P3.svg")`'},`
`       ['p4'] = {['name'] = '第四优先 — 珍稀类群', ['photo'] = '`[`Status_DECF_P4.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P4.svg "fig:Status_DECF_P4.svg")`'},`
`       ['dl'] = {['name'] = '除名', ['photo'] = '`[`Status_DECF_DL.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_DL.svg "fig:Status_DECF_DL.svg")`'}`
`   },`
`   ['qldnca'] = {`
`       ['introduction'] = '`[`NCA`](https://zh.wikipedia.org/wiki/1992年自然保护法案 "wikilink")`',`
`       ['ew'] = {['name'] = '`[`野外绝灭`](https://zh.wikipedia.org/wiki/野外绝灭 "wikilink")`', ['photo'] = '`[`Status_DECF_X.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_X.svg "fig:Status_DECF_X.svg")`'},`
`       ['en'] = {['name'] = '珍稀申报', ['photo'] = '`[`Status_DECF_R.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_R.svg "fig:Status_DECF_R.svg")`'},`
`       ['vu'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['r'] = {['name'] = '第二优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P2.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P2.svg "fig:Status_DECF_P2.svg")`'},`
`       ['nt'] = {['name'] = '第三优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P3.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P3.svg "fig:Status_DECF_P3.svg")`'},`
`       ['lc'] = {['name'] = '第四优先 — 珍稀类群', ['photo'] = '`[`Status_DECF_P4.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P4.svg "fig:Status_DECF_P4.svg")`'}`
`   },`
`   ['cites'] = {`
`       ['cites_a1'] = {['name'] = '珍稀申报 — 推测`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['photo'] = '`[`Status_DECF_X.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_X.svg "fig:Status_DECF_X.svg")`'},`
`       ['cites_a2'] = {['name'] = '珍稀申报', ['photo'] = '`[`Status_DECF_R.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_R.svg "fig:Status_DECF_R.svg")`'},`
`       ['cites_a3'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'}`
`   },`
`   ['nztcs'] = {`
`       ['ex'] = {['name'] = '珍稀申报 — 推测`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['photo'] = '`[`Status_DECF_X.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_X.svg "fig:Status_DECF_X.svg")`'},`
`       ['nc'] = {['name'] = '珍稀申报', ['photo'] = '`[`Status_DECF_R.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_R.svg "fig:Status_DECF_R.svg")`'},`
`       ['ne'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['nv'] = {['name'] = '第二优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P2.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P2.svg "fig:Status_DECF_P2.svg")`'},`
`       ['sd'] = {['name'] = '第三优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P3.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P3.svg "fig:Status_DECF_P3.svg")`'},`
`       ['gd'] = {['name'] = '第四优先 — 珍稀类群', ['photo'] = '`[`Status_DECF_P4.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P4.svg "fig:Status_DECF_P4.svg")`'},`
`       ['sp'] = {['name'] = '第三优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P3.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P3.svg "fig:Status_DECF_P3.svg")`'},`
`       ['rr'] = {['name'] = '第四优先 — 珍稀类群', ['photo'] = '`[`Status_DECF_P4.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P4.svg "fig:Status_DECF_P4.svg")`'}`
`   },`
`   ['default'] = {`
`       ['introduction'] = '默认',`
`       ['ex'] = {['name'] = '绝灭'},`
`       ['ew'] = {`
`           ['name'] = '`[`野外绝灭`](https://zh.wikipedia.org/wiki/野外绝灭 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录野外绝灭物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EW_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EW_zh.svg "fig:Status_iucn2.3_EW_zh.svg")`;zh-hant:`[`Status_iucn2.3_EW_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EW_zh-hant.svg "fig:Status_iucn2.3_EW_zh-hant.svg")`}-'`
`       },`
`       ['cr'] = {`
`           ['name'] = '`[`極危`](../Page/極危物種.md "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录野外极危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_CR_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CR_zh.svg "fig:Status_iucn2.3_CR_zh.svg")`;zh-hant:`[`Status_iucn2.3_CR_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CR_zh-hant.svg "fig:Status_iucn2.3_CR_zh-hant.svg")`}-'`
`       },`
`       ['en'] = {`
`           ['name'] = '`[`瀕危`](../Page/瀕危物種.md "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录濒危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EN_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh.svg "fig:Status_iucn2.3_EN_zh.svg")`;zh-hant:`[`Status_iucn2.3_EN_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh-hant.svg "fig:Status_iucn2.3_EN_zh-hant.svg")`}-'`
`       },`
`       ['vu'] = {`
`           ['name'] = '`[`易危`](https://zh.wikipedia.org/wiki/易危物種 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录濒危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_EN_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh.svg "fig:Status_iucn2.3_EN_zh.svg")`;zh-hant:`[`Status_iucn2.3_EN_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_EN_zh-hant.svg "fig:Status_iucn2.3_EN_zh-hant.svg")`}-'`
`       },`
`       ['nt'] = {`
`           ['name'] = '`[`低危`](https://zh.wikipedia.org/wiki/低危 "wikilink")`', ['category'] = '无效保护状况',`
`           ['photo'] = '`[<File:Status>`   ``iucn2.3``
 ``blank.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_blank.svg "fig:File:Status iucn2.3 blank.svg")`'`
`       },`
`       ['lc'] = {`
`           ['name'] = '`[`保护依赖`](https://zh.wikipedia.org/wiki/保护依赖 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录保护依赖物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_CD_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CD_zh.svg "fig:Status_iucn2.3_CD_zh.svg")`;zh-hant:`[`Status_iucn2.3_CD_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_CD_zh-hant.svg "fig:Status_iucn2.3_CD_zh-hant.svg")`}-'`
`       },`
`       ['se'] = {`
`           ['name'] = '`[`近危`](https://zh.wikipedia.org/wiki/近危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录近危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_NT_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_NT_zh.svg "fig:Status_iucn2.3_NT_zh.svg")`;zh-hant:`[`Status_iucn2.3_NT_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_NT_zh-hant.svg "fig:Status_iucn2.3_NT_zh-hant.svg")`}-'`
`       },`
`       ['secure'] = {['alias'] = 'se'},`
`       ['dd'] = {`
`           ['name'] = '`[`无危`](https://zh.wikipedia.org/wiki/无危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录无危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_LC_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh.svg "fig:Status_iucn2.3_LC_zh.svg")`;zh-hant:`[`Status_iucn2.3_LC_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh-hant.svg "fig:Status_iucn2.3_LC_zh-hant.svg")`}-'`
`       },`
`       ['dom'] = {`
`           ['name'] = '`[`无危`](https://zh.wikipedia.org/wiki/无危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录无危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_LC_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh.svg "fig:Status_iucn2.3_LC_zh.svg")`;zh-hant:`[`Status_iucn2.3_LC_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh-hant.svg "fig:Status_iucn2.3_LC_zh-hant.svg")`}-'`
`       },`
`       ['domesticated'] = {['alias'] = 'dom'},`
`       ['pe'] = {`
`           ['name'] = '`[`无危`](https://zh.wikipedia.org/wiki/无危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录无危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_LC_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh.svg "fig:Status_iucn2.3_LC_zh.svg")`;zh-hant:`[`Status_iucn2.3_LC_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh-hant.svg "fig:Status_iucn2.3_LC_zh-hant.svg")`}-'`
`       },`
`       ['pew'] = {`
`           ['name'] = '`[`无危`](https://zh.wikipedia.org/wiki/无危 "wikilink")`', ['category'] = '世界自然保护联盟濒危物种红色名录无危物种',`
`           ['photo'] = '-{zh-hans:`[`Status_iucn2.3_LC_zh.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh.svg "fig:Status_iucn2.3_LC_zh.svg")`;zh-hant:`[`Status_iucn2.3_LC_zh-hant.svg`](https://zh.wikipedia.org/wiki/File:Status_iucn2.3_LC_zh-hant.svg "fig:Status_iucn2.3_LC_zh-hant.svg")`}-'`
`       },`
`       ['cites_a1'] = {['name'] = '珍稀申报 — 推测`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['photo'] = '`[`Status_DECF_X.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_X.svg "fig:Status_DECF_X.svg")`'},`
`       ['cites_a2'] = {['name'] = '珍稀申报', ['photo'] = '`[`Status_DECF_R.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_R.svg "fig:Status_DECF_R.svg")`'},`
`       ['cites_a3'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['fossil'] = {['name'] = '第一优先 — 知之甚少的类群'},`
`       ['pre'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['text'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['lr/cd'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['lr/nt'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['lr/lc'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['gx'] = {['name'] = '第一优先 — 知之甚少的类群', ['photo'] = '`[`Status_DECF_P1.svg`](https://zh.wikipedia.org/wiki/File:Status_DECF_P1.svg "fig:Status_DECF_P1.svg")`'},`
`       ['gh'] = {`
`           ['name'] = '可能`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '公益自然可能绝灭物种',`
`           ['photo'] = '`[`Status_TNC_GH.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_GH.svg "fig:Status_TNC_GH.svg")`'`
`       },`
`       ['g1'] = {`
`           ['name'] = '严重濒绝', ['category'] = '公益自然严重濒绝物种',`
`           ['photo'] = '`[`Status_TNC_G1.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G1.svg "fig:Status_TNC_G1.svg")`'`
`       },`
`       ['g2'] = {`
`           ['name'] = '濒绝', ['category'] = '公益自然濒绝物种',`
`           ['photo'] = '`[`Status_TNC_G2.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G2.svg "fig:Status_TNC_G2.svg")`'`
`       },`
`       ['g3'] = {`
`           ['name'] = '易危', ['category'] = '公益自然易危物种',`
`           ['photo'] = '`[`Status_TNC_G3.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G3.svg "fig:Status_TNC_G3.svg")`'`
`       },`
`       ['g4'] = {`
`           ['name'] = '可能安全', ['category'] = '公益自然可能安全物种',`
`           ['photo'] = '`[`Status_TNC_G4.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G4.svg "fig:Status_TNC_G4.svg")`'`
`       },`
`       ['g5'] = {`
`           ['name'] = '安全', ['category'] = '公益自然安全物种',`
`           ['photo'] = '`[`Status_TNC_G5.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_G5.svg "fig:Status_TNC_G5.svg")`'`
`       },`
`       ['gu'] = {['name'] = '未分级', ['photo'] = '`[`Status_TNC_blank.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_blank.svg "fig:Status_TNC_blank.svg")`'},`
`       ['tx'] = {`
`           ['name'] = '推測`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '公益自然推测绝灭物种',`
`           ['photo'] = '`[`Status_TNC_TX.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_TX.svg "fig:Status_TNC_TX.svg")`'`
`       },`
`       ['th'] = {`
`           ['name'] = '可能`[`绝灭`](https://zh.wikipedia.org/wiki/绝灭 "wikilink")`', ['category'] = '公益自然可能绝灭物种',`
`           ['photo'] = '`[`Status_TNC_TH.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_TH.svg "fig:Status_TNC_TH.svg")`'`
`       },`
`       ['t1'] = {`
`           ['name'] = '嚴重瀕絕', ['category'] = '公益自然严重濒绝物种',`
`           ['photo'] = '`[`Status_TNC_T1.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T1.svg "fig:Status_TNC_T1.svg")`'`
`       },`
`       ['t2'] = {`
`           ['name'] = '瀕絕', ['category'] = '公益自然濒绝物种',`
`           ['photo'] = '`[`Status_TNC_T2.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T2.svg "fig:Status_TNC_T2.svg")`'`
`       },`
`       ['t3'] = {`
`           ['name'] = '易危', ['category'] = '公益自然易危物种',`
`           ['photo'] = '`[`Status_TNC_T3.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T3.svg "fig:Status_TNC_T3.svg")`'`
`       },`
`       ['t4'] = {`
`           ['name'] = '可能安全', ['category'] = '公益自然可能安全物种',`
`           ['photo'] = '`[`Status_TNC_T4.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T4.svg "fig:Status_TNC_T4.svg")`'`
`       },`
`       ['t5'] = {`
`           ['name'] = '安全', ['category'] = '公益自然安全物种',`
`           ['photo'] = '`[`Status_TNC_T5.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T5.svg "fig:Status_TNC_T5.svg")`'`
`       },`
`       ['tu'] = {['name'] = '未分級', ['photo'] = '`[`Status_TNC_T_blank.svg`](https://zh.wikipedia.org/wiki/File:Status_TNC_T_blank.svg "fig:Status_TNC_T_blank.svg")`'},`
`       ['invalid'] = {['name'] = '\'\'\'\'\'无效状况\'\'\'\'\'', ['category'] = '无效保护状况'}`
`   }`

}

\--[if the argName == className, just leave argName alone
--](https://zh.wikipedia.org/wiki/if_the_argName_==_className,_just_leave_argName_alone_-- "wikilink")
local classificationTable = {

`   {['argName'] = 'superdomain', ['entryName'] = '總域'},`
`   {['argName'] = 'domain', ['entryName'] = '域'},`
`   {['argName'] = 'superregnum', ['entryName'] = '總界'},`
`   {`
`       ['argName'] = 'regnum', ['entryName'] = '界',`
`       ['className'] = 'kingdom'`
`   },`
`   {['argName'] = 'subregnum', ['entryName'] = '亞界'},`
`   {['argName'] = 'superdivisio', ['entryName'] = '總門'},`
`   {['argName'] = 'superphylum', ['entryName'] = '超门'},`
`   {['argName'] = 'divisio', ['entryName'] = '門'},`
`   {['argName'] = 'phylum', ['entryName'] = '門'},`
`   {['argName'] = 'subdivisio', ['entryName'] = '亞門'},`
`   {['argName'] = 'subphylum', ['entryName'] = '亞門'},`
`   {['argName'] = 'infraphylum', ['entryName'] = '下門'},`
`   {['argName'] = 'microphylum', ['entryName'] = 'Microphylum'},`
`   {['argName'] = 'nanophylum', ['entryName'] = 'Nanophylum'},`
`   {['argName'] = 'superclassis', ['entryName'] = '總綱'},`
`   {['argName'] = 'classis', ['entryName'] = '綱'},`
`   {['argName'] = 'subclassis', ['entryName'] = '亞綱'},`
`   {['argName'] = 'infraclassis', ['entryName'] = '下綱'},`
`   {['argName'] = 'magnordo', ['entryName'] = 'Magnorder'},`
`   {['argName'] = 'superordo', ['entryName'] = '總目'},`
`   {['argName'] = 'ordo', ['entryName'] = '目'},`
`   {['argName'] = 'subordo', ['entryName'] = '亞目'},`
`   {['argName'] = 'infraordo', ['entryName'] = '下目'},`
`   {['argName'] = 'parvordo', ['entryName'] = '小目'},`
`   {['argName'] = 'zoodivisio', ['entryName'] = 'Division'},`
`   {['argName'] = 'zoosectio', ['entryName'] = '-{zh-hans:组;zh-hant:節}-'},`
`   {['argName'] = 'zoosubsectio', ['entryName'] = '亞-{zh-hans:组;zh-hant:節}-'},`
`   {['argName'] = 'superfamilia', ['entryName'] = '總科'},`
`   {['argName'] = 'familia', ['entryName'] = '科'},`
`   {['argName'] = 'subfamilia', ['entryName'] = '亞科'},`
`   {['argName'] = 'supertribus', ['entryName'] = '總族'},`
`   {['argName'] = 'tribus', ['entryName'] = '族'},`
`   {['argName'] = 'subtribus', ['entryName'] = '亞族'},`
`   {['argName'] = 'alliance', ['entryName'] = '群團'},`
`   {['argName'] = 'genus', ['entryName'] = '屬'},`
`   {['argName'] = 'subgenus', ['entryName'] = '亞屬'},`
`   {['argName'] = 'sectio', ['entryName'] = '-{zh-hans:组;zh-hant:節}-'},`
`   {['argName'] = 'subsectio', ['entryName'] = '-{zh-hans:亚组;zh-hant:亞節}-'},`
`   {['argName'] = 'series', ['entryName'] = '系'},`
`   {['argName'] = 'subseries', ['entryName'] = '亞系'},`
`   {['argName'] = 'species_group', ['entryName'] = '種組'},`
`   {['argName'] = 'species_subgroup', ['entryName'] = '種亞組'},`
`   {['argName'] = 'species_complex', ['entryName'] = '复合种'},`
`   {['argName'] = 'species', ['entryName'] = '種'},`
`   {['argName'] = 'subspecies', ['entryName'] = '亞種'},`
`   {['argName'] = 'variety', ['entryName'] = '變種'},`
`   {['argName'] = 'subvariety', ['entryName'] = '亞變種'},`
`   {['argName'] = 'forma', ['entryName'] = '變型'},`
`   {['argName'] = 'subforma', ['entryName'] = '亞變型'}`

}

local typeSpeciesTable = {

`   {['argPostfix'] = 'genus', ['entryText'] = '`[`模式屬`](https://zh.wikipedia.org/wiki/生物學模式 "wikilink")`'},`
`   {['argPostfix'] = 'ichnogenus', ['entryText'] = '`[`遗迹种`](https://zh.wikipedia.org/wiki/遗迹种 "wikilink")`'},`
`   {['argPostfix'] = 'oogenus', ['entryText'] = '`[`蛋化石形态属`](https://zh.wikipedia.org/wiki/蛋化石形态属 "wikilink")`'},`
`   {['argPostfix'] = 'species', ['entryText'] = '`[`模式種`](https://zh.wikipedia.org/wiki/生物學模式 "wikilink")`'},`
`   {['argPostfix'] = 'ichnospecies', ['entryText'] = '`[`遗迹种`](https://zh.wikipedia.org/wiki/遗迹种 "wikilink")`'},`
`   {['argPostfix'] = 'oospecies', ['entryText'] = '`[`蛋化石形态种`](https://zh.wikipedia.org/wiki/蛋化石形态种 "wikilink")`'},`
`   {['argPostfix'] = 'strain', ['entryText'] = '`[`模式株`](https://zh.wikipedia.org/wiki/生物學模式 "wikilink")`'}`

}

p.conservationStatusTable = conservationStatusTable
p.classificationTable = classificationTable p.typeSpeciesTable =
typeSpeciesTable

return p