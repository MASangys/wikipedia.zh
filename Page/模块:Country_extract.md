local p = {} -- -- to enable us to replicate the current functioning of
CountryAbbr and CountryAbbr2 -- We need to deal with -- 1 alternative
names ISO 3166 should do that -- 2 {{<name>}} -- 3 \[ \[<name>\] \] -- 4
\[ \[<name>|<junk>\] \] -- 5 \[ \[image:flag of
<country>.\[svg|gif|png|jpg\]|\\d+px\] \] --

function p.extractCountry(frame)

`  local string= mw.ustring.toNFC (frame.args[1])`
`  local match=nil;`
`  match = mw.ustring.match(string, "Flag of ([^\.]*)")`
`  if (match) then `
`     return match`
`  end `

\-- () for Cocos (Keeling) Islands -- ' For People's -- . for U.S. etc.

`  match = mw.ustring.match(string, "(%u[%a`\(\)`\.' -]+)")`
`  if (match == "Image") then`
`      string = mw.ustring.gsub(string, match, "")`
`      match = mw.ustring.match(string, "[\|\[](%u[%a`\(\)`\.' -]+)")`
`  end`
`  if (match == "20px") then`
`      string = mw.ustring.gsub(string, match, "")`
`      match = mw.ustring.match(string, "\[(%u[%a`\(\)`\.' -]+)")`
`  end `
`  if (match) then `
`     return match`
`  end`
`  return  string`

end

\--[](https://zh.wikipedia.org/wiki/ "wikilink")

function p.extractSubdivision(frame)

`  local string= mw.ustring.toNFC (frame.args[1])`
`  local match=nil;`

\-- Needed for ,

`  match = mw.ustring.match(string, "Flag of ([^\.]*)")`
`  if (match) then `
`     return match`
`  end `

\-- . needed for Washington D.C. -- ' for cote d'azur -- leading ' for
'Aden -- ‘ and trailing ' for Şan‘ā'

`  match = mw.ustring.match(string, "('?[%u][%a'‘ \.\,-]+[%a\.'\d]+)")`
`  if (match) then `
`     return match`
`  end`
`  return  string`

end

local countries = {

`   ["Andorra"] = "AD",`
`       ["安道尔"] = "AD",`
`       ["安道爾"] = "AD",`
`   ["United Arab Emirates"] = "AE",`
`   ["UAE"] = "AE",`
`       ["阿拉伯联合酋长国"] = "AE",`
`       ["阿拉伯聯合大公國"] = "AE",`
`   ["Afghanistan"] = "AF",`
`       ["阿富汗"] = "AF",`
`   ["Antigua and Barbuda"] = "AG",`
`       ["安提瓜和巴布达"] = "AG",`
`       ["安地卡及巴布達"] = "AG",`
`   ["Anguilla"] = "AI",`
`       ["安圭拉"] = "AI",`
`   ["Albania"] = "AL",`
`       ["阿尔巴尼亚"] = "AL",`
`       ["阿爾巴尼亞"] = "AL",`
`   ["Armenia"] = "AM",`
`       ["亚美尼亚"] = "AM",`
`       ["亞美尼亞"] = "AM",`
`   ["Angola"] = "AO",`
`       ["安哥拉"] = "AO",`
`   ["Antarctica"] = "AQ",`
`       ["南极洲"] = "AQ",`
`       ["南極洲"] = "AQ",`
`   ["Argentina"] = "AR",`
`       ["阿根廷"] = "AR",`
`   ["American Samoa"] = "AS",`
`       ["美属萨摩亚"] = "AS",`
`       ["美屬薩摩亞"] = "AS",`
`   ["Austria"] = "AT",`
`       ["奥地利"] = "AT",`
`       ["奧地利"] = "AT",`
`   ["Australia"] = "AU",`
`       ["澳大利亚"] = "AU",`
`       ["澳洲"] = "AU",`
`   ["Aruba"] = "AW",`
`       ["阿鲁巴"] = "AW",`
`       ["阿魯巴"] = "AW",`
`   ["Åland Islands"] = "AX",`
`   ["Aland Islands"] = "AX",`
`       ["奥兰"] = "AX",`
`       ["奧蘭"] = "AX",`
`   ["Azerbaijan"] = "AZ",`
`       ["阿塞拜疆"] = "AZ",`
`       ["亞塞拜然"] = "AZ",`
`   ["Nagorno-Karabakh"] = "AZ", -- disputed`
`   ["Nagorno-Karabakh Republic"] = "AZ", -- disputed`
`       ["纳戈尔诺-卡拉巴赫"] = "AZ", -- disputed`
`       ["納戈爾諾-卡拉巴赫"] = "AZ", -- disputed`
`       ["阿尔扎赫"] = "AZ", -- disputed`
`   ["Bosnia and Herzegovina"] = "BA",`
`       ["波斯尼亚和黑塞哥维那"] = "BA",`
`       ["波士尼亞與赫塞哥維納"] = "BA",`
`   ["Bosnia"] = "BA",`
`       ["波黑"] = "BA",`
`       ["波赫"] = "BA",`
`   ["Barbados"] = "BB",`
`       ["巴巴多斯"] = "BB",`
`       ["巴貝多"] = "BB",`
`   ["Bangladesh"] = "BD",`
`       ["孟加拉国"] = "BD",`
`       ["孟加拉"] = "BD",`
`   ["Belgium"] = "BE",`
`       ["比利时"] = "BE",`
`       ["比利時"] = "BE",`
`   ["Burkina Faso"] = "BF",`
`   ["Bulgaria"] = "BG",`
`   ["Bahrain"] = "BH",`
`   ["Burundi"] = "BI",`
`   ["Benin"] = "BJ",`
`   ["Saint Barthélemy"] = "BL",`
`   ["Saint Barthelemy"] = "BL",`
`   ["St. Barthélemy"] = "BL",`
`   ["St. Barthelemy"] = "BL",`
`   ["St Barthélemy"] = "BL",`
`   ["St Barthelemy"] = "BL",`
`   ["Bermuda"] = "BM",`
`   ["Brunei"] = "BN",`
`   ["Brunei Darussalam"] = "BN",`
`   ["Bolivia"] = "BO",`
`   ["Bolivia, Plurinational State of"] = "BO",`
`   ["Bonaire, Sint Eustatius and Saba"] = "BQ",`
`   ["Brazil"] = "BR",`
`   ["Bahamas"] = "BS",`
`   ["The Bahamas"] = "BS",`
`   ["the Bahamas"] = "BS",`
`   ["Bhutan"] = "BT",`
`   ["Bouvet Island"] = "BV",`
`   ["Botswana"] = "BW",`
`   ["Belarus"] = "BY",`
`   ["Belize"] = "BZ",`
`   ["Canada"] = "CA",`
`   ["Cocos (Keeling) Islands"] = "CC",`
`   ["Cocos Islands"] = "CC",`
`   ["Keeling Islands"] = "CC",`
`   ["Congo, the Democratic Republic of the"] = "CD",`
`   ["Democratic Republic of the Congo"] = "CD",`
`   ["DR Congo"] = "CD",`
`   ["Congo-Kinshasa"] = "CD",`
`   ["DROC"] = "CD",`
`   ["DRC"] = "CD",`
`   ["Central African Republic"] = "CF",`
`   ["CAR"] = "CF",`
`   ["Congo"] = "CG",`
`   ["Republic of the Congo"] = "CG",`
`   ["Congo Republic"] = "CG",`
`   ["Congo-Brazzaville"] = "CG",`
`   ["West Congo"] = "CG",`
`   ["Switzerland"] = "CH",`
`   ["Côte d'Ivoire"] = "CI",`
`   ["Ivory Coast"] = "CI",`
`   ["Cook Islands"] = "CK",`
`   ["Chile"] = "CL",`
`   ["Cameroon"] = "CM",`
`   ["China"] = "CN",`
`   ["PRC"] = "CN",`
`   ["People's Republic of China"] = "CN",`
`         ["中华人民共和国"] = "CN",`
`         ["中華人民共和國"] = "CN",`
`   ["Colombia"] = "CO",`
`   ["Costa Rica"] = "CR",`
`   ["Cuba"] = "CU",`
`   ["Cape Verde"] = "CV",`
`   ["Curaçao"] = "CW",`
`   ["Curacao"] = "CW",`
`   ["Christmas Island"] = "CX",`
`   ["Cyprus"] = "CY",`
`   ["Republic of Cyprus"] = "CY",`
`   ["Northern Cyprus"] = "CY", -- disputed`
`   ["Turkish Republic of Northern Cyprus"] = "CY", -- disputed`
`   ["Czech Republic"] = "CZ",`
`   ["Germany"] = "DE",`
`   ["德国"] = "DE",`
`       ["德國"] = "DE",`
`   ["Djibouti"] = "DJ",`
`   ["Denmark"] = "DK",`
`   ["Dominica"] = "DM",`
`   ["Dominican Republic"] = "DO",`
`   ["Algeria"] = "DZ",`
`   ["Ecuador"] = "EC",`
`   ["Estonia"] = "EE",`
`   ["Egypt"] = "EG",`
`   ["Western Sahara"] = "EH",`
`   ["Eritrea"] = "ER",`
`   ["Spain"] = "ES",`
`   ["Ethiopia"] = "ET",`
`   ["Finland"] = "FI",`
`   ["Fiji"] = "FJ",`
`   ["Falkland Islands (Malvinas)"] = "FK",`
`   ["Falklands"] = "FK",`
`   ["Falkland Islands"] = "FK",`
`   ["Malvinas"] = "FK",`
`   ["Malvinas Islands"] = "FK",`
`   ["Micronesia, Federated States of"] = "FM",`
`   ["Micronesia"] = "FM",`
`   ["Faroe Islands"] = "FO",`
`   ["France"] = "FR",`
`   ["Gabon"] = "GA",`
`   ["United Kingdom"] = "GB",`
`   ["the United Kingdom"] = "GB",`
`   ["U. K."] = "GB",`
`   ["U.K."] = "GB",`
`   ["the U.K."] = "GB",`
`   ["UK"] = "GB",`
`   ["the UK"] = "GB",`
`   ["Great Britain"] = "GB",`
`       ["英国"] = "GB",`
`       ["英國"] = "GB",`
`   ["England"] = "GB-ENG",`
`   ["Scotland"] = "GB-SCT",`
`   ["Wales"] = "GB-WLS",`
`   ["Northern Ireland"] = "GB-NIR",`
`   ["England and Wales"] = "GB-EAW",`
`   ["Grenada"] = "GD",`
`   ["Georgia"] = "GE",`
`   ["South Ossetia"] = "GE", -- disputed`
`   ["Tskhinvali Region"] = "GE", -- disputed`
`   ["Abkhazia"] = "GE-AB", -- disputed`
`   ["Republic of Abkhazia"] = "GE-AB", -- disputed`
`   ["French Guiana"] = "GF",`
`   ["Guernsey"] = "GG",`
`   ["Ghana"] = "GH",`
`   ["Gibraltar"] = "GI",`
`   ["Greenland"] = "GL",`
`   ["Gambia"] = "GM",`
`   ["Guinea"] = "GN",`
`   ["Guadeloupe"] = "GP",`
`   ["Equatorial Guinea"] = "GQ",`
`   ["Greece"] = "GR",`
`   ["South Georgia and the South Sandwich Islands"] = "GS",`
`   ["Guatemala"] = "GT",`
`   ["Guam"] = "GU",`
`   ["Guinea-Bissau"] = "GW",`
`   ["Guyana"] = "GY",`
`   ["Hong Kong"] = "HK",`
`   ["Heard Island and McDonald Islands"] = "HM",`
`   ["Heard and McDonald Islands"] = "HM",`
`   ["Honduras"] = "HN",`
`   ["Croatia"] = "HR",`
`   ["Haiti"] = "HT",`
`   ["Hungary"] = "HU",`
`   ["Indonesia"] = "ID",`
`   ["Ireland"] = "IE",`
`   ["Israel"] = "IL",`
`   ["Isle of Man"] = "IM",`
`   ["India"] = "IN",`
`   ["British Indian Ocean Territory"] = "IO",`
`   ["Iraq"] = "IQ",`
`   ["Iran, Islamic Republic of"] = "IR",`
`   ["Iran"] = "IR",`
`   ["Iceland"] = "IS",`
`   ["Italy"] = "IT",`
`   ["Jersey"] = "JE",`
`   ["Jamaica"] = "JM",`
`   ["Jordan"] = "JO",`
`   ["Japan"] = "JP",`
`   ["Kenya"] = "KE",`
`   ["Kyrgyzstan"] = "KG",`
`   ["Cambodia"] = "KH",`
`   ["Kiribati"] = "KI",`
`   ["Comoros"] = "KM",`
`   ["The Comoros"] = "KM",`
`   ["the Comoros"] = "KM",`
`   ["Saint Kitts and Nevis"] = "KN",`
`   ["St. Kitts and Nevis"] = "KN",`
`   ["St Kitts and Nevis"] = "KN",`
`   ["Korea, Democratic People's Republic of"] = "KP",`
`   ["Democratic People's Republic of Korea"] = "KP",`
`   ["North Korea"] = "KP",`
`   ["Korea, Republic of"] = "KR",`
`   ["Republic of Korea"] = "KR",`
`   ["South Korea"] = "KR",`
`   ["Kuwait"] = "KW",`
`   ["Cayman Islands"] = "KY",`
`   ["The Cayman Islands"] = "KY",`
`   ["the Cayman Islands"] = "KY",`
`   ["Kazakhstan"] = "KZ",`
`   ["Lao People's Democratic Republic"] = "LA",`
`   ["Laos"] = "LA",`
`   ["Lao"] = "LA",`
`   ["Lebanon"] = "LB",`
`   ["Saint Lucia"] = "LC",`
`   ["St. Lucia"] = "LC",`
`   ["St Lucia"] = "LC",`
`   ["Liechtenstein"] = "LI",`
`   ["Sri Lanka"] = "LK",`
`   ["Liberia"] = "LR",`
`   ["Lesotho"] = "LS",`
`   ["Lithuania"] = "LT",`
`   ["Luxembourg"] = "LU",`
`   ["Latvia"] = "LV",`
`   ["Libyan Arab Jamahiriya"] = "LY",`
`   ["Libya"] = "LY",`
`   ["Morocco"] = "MA",`
`   ["Monaco"] = "MC",`
`   ["Moldova, Republic of"] = "MD",`
`   ["Moldova"] = "MD",`
`   ["Transnistria"] = "MD", -- disputed`
`   ["Montenegro"] = "ME",`
`   ["Saint Martin (French part)"] = "MF",`
`   ["Saint Martin (France)"] = "MF",`
`   ["Collectivity of Saint Martin"] = "MF",`
`   ["Collectivity of St. Martin"] = "MF",`
`   ["Collectivity of St Martin"] = "MF",`
`   ["Saint-Martin"] = "MF",`
`   ["Madagascar"] = "MG",`
`   ["Marshall Islands"] = "MH",`
`   ["Macedonia"] = "MK",`
`   ["Mali"] = "ML",`
`   ["Myanmar"] = "MM",`
`   ["Burma"] = "MM",`
`   ["Mongolia"] = "MN",`
`   ["Macau"] = "MO",`
`   ["Macao"] = "MO",`
`   ["Northern Mariana Islands"] = "MP",`
`   ["Martinique"] = "MQ",`
`   ["Mauritania"] = "MR",`
`   ["Montserrat"] = "MS",`
`   ["Malta"] = "MT",`
`   ["Mauritius"] = "MU",`
`   ["Maldives"] = "MV",`
`   ["Malawi"] = "MW",`
`   ["Mexico"] = "MX",`
`   ["Malaysia"] = "MY",`
`   ["Mozambique"] = "MZ",`
`   ["Namibia"] = "NA",`
`   ["New Caledonia"] = "NC",`
`   ["Niger"] = "NE",`
`   ["Norfolk Island"] = "NF",`
`   ["Nigeria"] = "NG",`
`   ["Nicaragua"] = "NI",`
`   ["Netherlands"] = "NL",`
`   ["The Netherlands"] = "NL",`
`   ["the Netherlands"] = "NL",`
`   ["Norway"] = "NO",`
`   ["Nepal"] = "NP",`
`   ["Nauru"] = "NR",`
`   ["Niue"] = "NU",`
`   ["New Zealand"] = "NZ",`
`   ["Aotearoa"] = "NZ",`
`   ["Oman"] = "OM",`
`   ["Panama"] = "PA",`
`   ["Peru"] = "PE",`
`   ["French Polynesia"] = "PF",`
`   ["Papua New Guinea"] = "PG",`
`   ["Philippines"] = "PH",`
`   ["The Philippines"] = "PH",`
`   ["the Philippines"] = "PH",`
`   ["Pakistan"] = "PK",`
`   ["Poland"] = "PL",`
`   ["Saint Pierre and Miquelon"] = "PM",`
`   ["St. Pierre and Miquelon"] = "PM",`
`   ["St Pierre and Miquelon"] = "PM",`
`   ["Pitcairn"] = "PN",`
`   ["Puerto Rico"] = "PR",`
`   ["State of Palestine"] = "PS",`
`   ["Palestine"] = "PS",`
`   ["Portugal"] = "PT",`
`   ["Palau"] = "PW",`
`   ["Paraguay"] = "PY",`
`   ["Qatar"] = "QA",`
`   ["Réunion"] = "RE",`
`   ["Reunion"] = "RE",`
`   ["Romania"] = "RO",`
`   ["Serbia"] = "RS",`
`   ["Kosovo"] = "RS", -- disputed`
`   ["Russian Federation"] = "RU",`
`   ["Russia"] = "RU",`
`   ["Rwanda"] = "RW",`
`   ["Saudi Arabia"] = "SA",`
`   ["Solomon Islands"] = "SB",`
`   ["Seychelles"] = "SC",`
`   ["Sudan"] = "SD",`
`   ["Sweden"] = "SE",`
`   ["Singapore"] = "SG",`
`   ["Saint Helena, Ascension and Tristan da Cunha"] = "SH",`
`   ["Slovenia"] = "SI",`
`   ["Svalbard and Jan Mayen"] = "SJ",`
`   ["Slovakia"] = "SK",`
`   ["Sierra Leone"] = "SL",`
`   ["San Marino"] = "SM",`
`   ["Senegal"] = "SN",`
`   ["Somalia"] = "SO",`
`   ["Somaliland"] = "SO", -- disputed`
`   ["Suriname"] = "SR",`
`   ["South Sudan"] = "SS",`
`   ["São Tomé and Príncipe"] = "ST",`
`   ["Sao Tome and Principe"] = "ST",`
`   ["El Salvador"] = "SV",`
`   ["Sint Maarten"] = "SX",`
`   ["Saint Martin (Dutch part)"] = "SX",`
`   ["Saint Martin (Netherlands)"] = "SX",`
`   ["Syrian Arab Republic"] = "SY",`
`   ["Syria"] = "SY",`
`   ["Swaziland"] = "SZ",`
`   ["Turks and Caicos Islands"] = "TC",`
`   ["Chad"] = "TD",`
`   ["French Southern Territories"] = "TF",`
`   ["Togo"] = "TG",`
`   ["Thailand"] = "TH",`
`   ["Tajikistan"] = "TJ",`
`   ["Tokelau"] = "TK",`
`   ["Timor-Leste"] = "TL",`
`   ["East Timor"] = "TL",`
`   ["Turkmenistan"] = "TM",`
`   ["Tunisia"] = "TN",`
`   ["Tonga"] = "TO",`
`   ["Turkey"] = "TR",`
`   ["Trinidad and Tobago"] = "TT",`
`   ["Tuvalu"] = "TV",`
`   ["Taiwan"] = "TW",`
`   ["Republic of China"] = "TW",`
`   ["Tanzania, United Republic of"] = "TZ",`
`   ["Tanzania"] = "TZ",`
`   ["Ukraine"] = "UA",`
`   ["The Ukraine"] = "UA",`
`   ["the Ukraine"] = "UA",`
`   ["Uganda"] = "UG",`
`   ["United States Minor Outlying Islands"] = "UM",`
`   ["United States"] = "US",`
`   ["the United States"] = "US",`
`   ["United States of America"] = "US",`
`   ["the United States of America"] = "US",`
`   ["U. S."] = "US",`
`   ["U.S."] = "US",`
`   ["the U.S."] = "US",`
`   ["US"] = "US",`
`   ["the US"] = "US",`
`       ["美国"] = "US",`
`       ["美利坚合众国"] = "US",`
`       ["美國"] = "US",`
`       ["美利堅合眾國"] = "US",`
`   ["Uruguay"] = "UY",`
`   ["Uzbekistan"] = "UZ",`
`   ["Holy See (Vatican City State)"] = "VA",`
`   ["Holy See"] = "VA",`
`   ["Vatican City State"] = "VA",`
`   ["Vatican City"] = "VA",`
`   ["Saint Vincent and the Grenadines"] = "VC",`
`   ["St. Vincent and the Grenadines"] = "VC",`
`   ["St Vincent and the Grenadines"] = "VC",`
`   ["Venezuela, Bolivarian Republic of"] = "VE",`
`   ["Venezuela"] = "VE",`
`   ["Virgin Islands, British"] = "VG",`
`   ["British Virgin Islands"] = "VG",`
`   ["UK Virgin Islands"] = "VG",`
`   ["Virgin Islands of the United Kingdom"] = "VG",`
`   ["Virgin Islands of the UK"] = "VG",`
`   ["Virgin Islands, U. S."] = "VI",`
`   ["Virgin Islands, U.S."] = "VI",`
`   ["Virgin Islands, US"] = "VI",`
`   ["United States Virgin Islands"] = "VI",`
`   ["American Virgin Islands"] = "VI",`
`   ["U. S. Virgin Islands"] = "VI",`
`   ["U.S. Virgin Islands"] = "VI",`
`   ["US Virgin Islands"] = "VI",`
`   ["Virgin Islands of the United States"] = "VI",`
`   ["Virgin Islands of the U.S."] = "VI",`
`   ["Virgin Islands of the US"] = "VI",`
`   ["Vietnam"] = "VN",`
`   ["Viet Nam"] = "VN",`
`   ["Vanuatu"] = "VU",`
`   ["Wallis and Futuna"] = "WF",`
`   ["Samoa"] = "WS",`
`   ["Yemen"] = "YE",`
`   ["Mayotte"] = "YT",`
`   ["South Africa"] = "ZA",`
`   ["Zambia"] = "ZM",`
`   ["Zimbabwe"] = "ZW",`
`   ["ABW"] = "AW",`
`   ["AFG"] = "AF",`
`   ["AGO"] = "AO",`
`   ["AIA"] = "AI",`
`   ["ALA"] = "AX",`
`   ["ALB"] = "AL",`
`   ["AND"] = "AD",`
`   ["ARE"] = "AE",`
`   ["ARG"] = "AR",`
`   ["ARM"] = "AM",`
`   ["ASM"] = "AS",`
`   ["ATA"] = "AQ",`
`   ["ATF"] = "TF",`
`   ["ATG"] = "AG",`
`   ["AUS"] = "AU",`
`   ["AUT"] = "AT",`
`   ["AZE"] = "AZ",`
`   ["BDI"] = "BI",`
`   ["BEL"] = "BE",`
`   ["BEN"] = "BJ",`
`   ["BFA"] = "BF",`
`   ["BGD"] = "BD",`
`   ["BGR"] = "BG",`
`   ["BHR"] = "BH",`
`   ["BHS"] = "BS",`
`   ["BIH"] = "BA",`
`   ["BLM"] = "BL",`
`   ["BLR"] = "BY",`
`   ["BLZ"] = "BZ",`
`   ["BMU"] = "BM",`
`   ["BOL"] = "BO",`
`   ["BRA"] = "BR",`
`   ["BRB"] = "BB",`
`   ["BRN"] = "BN",`
`   ["BTN"] = "BT",`
`   ["BVT"] = "BV",`
`   ["BWA"] = "BW",`
`   ["CAF"] = "CF",`
`   ["CAN"] = "CA",`
`   ["CCK"] = "CC",`
`   ["CHE"] = "CH",`
`   ["CHL"] = "CL",`
`   ["CHN"] = "CN",`
`   ["CIV"] = "CI",`
`   ["CMR"] = "CM",`
`   ["COD"] = "CG",`
`   ["COG"] = "CG",`
`   ["COK"] = "CK",`
`   ["COL"] = "CO",`
`   ["COM"] = "KM",`
`   ["CRI"] = "CR",`
`   ["CUB"] = "CU",`
`   ["CUW"] = "CW",`
`   ["CXR"] = "CX",`
`   ["CYM"] = "KY",`
`   ["CYP"] = "CY",`
`   ["CZE"] = "CZ",`
`   ["DEU"] = "DE",`
`   ["DJI"] = "DJ",`
`   ["DMA"] = "DM",`
`   ["DNK"] = "DK",`
`   ["DOM"] = "DO",`
`   ["DZA"] = "DZ",`
`   ["ECU"] = "EC",`
`   ["EGY"] = "EG",`
`   ["ERI"] = "ER",`
`   ["ESH"] = "EH",`
`   ["ESP"] = "ES",`
`   ["EST"] = "EE",`
`   ["ETH"] = "ET",`
`   ["FIN"] = "FI",`
`   ["FJI"] = "FJ",`
`   ["FLK"] = "FK",`
`   ["FRA"] = "FR",`
`   ["FRO"] = "FO",`
`   ["FSM"] = "FM",`
`   ["GAB"] = "GA",`
`   ["GBR"] = "GB",`
`   ["GEO"] = "GE",`
`   ["GGY"] = "GG",`
`   ["GHA"] = "GH",`
`   ["GIB"] = "GI",`
`   ["GIN"] = "GN",`
`   ["GLP"] = "GP",`
`   ["GMB"] = "GM",`
`   ["GNB"] = "GW",`
`   ["GNQ"] = "GQ",`
`   ["GRC"] = "GR",`
`   ["GRD"] = "GD",`
`   ["GRL"] = "GL",`
`   ["GTM"] = "GT",`
`   ["GUF"] = "GF",`
`   ["GUM"] = "GU",`
`   ["GUY"] = "GY",`
`   ["HKG"] = "HK",`
`   ["HMD"] = "HM",`
`   ["HND"] = "HN",`
`   ["HRV"] = "HR",`
`   ["HTI"] = "HT",`
`   ["HUN"] = "HU",`
`   ["IDN"] = "ID",`
`   ["IMN"] = "IM",`
`   ["IND"] = "IN",`
`   ["IOT"] = "IO",`
`   ["IRL"] = "IE",`
`   ["IRN"] = "IR",`
`   ["IRQ"] = "IQ",`
`   ["ISL"] = "IS",`
`   ["ISR"] = "IL",`
`   ["ITA"] = "IT",`
`   ["JAM"] = "JM",`
`   ["JEY"] = "JE",`
`   ["JOR"] = "JO",`
`   ["JPN"] = "JP",`
`   ["KAZ"] = "KZ",`
`   ["KEN"] = "KE",`
`   ["KGZ"] = "KG",`
`   ["KHM"] = "KH",`
`   ["KIR"] = "KI",`
`   ["KNA"] = "KN",`
`   ["KWT"] = "KW",`
`   ["LAO"] = "LA",`
`   ["LBN"] = "LB",`
`   ["LBR"] = "LR",`
`   ["LBY"] = "LY",`
`   ["LCA"] = "LC",`
`   ["LIE"] = "LI",`
`   ["LKA"] = "LK",`
`   ["LSO"] = "LS",`
`   ["LTU"] = "LT",`
`   ["LUX"] = "LU",`
`   ["LVA"] = "LV",`
`   ["MAC"] = "MO",`
`   ["MAF"] = "MF",`
`   ["MAR"] = "MA",`
`   ["MCO"] = "MC",`
`   ["MDA"] = "MD",`
`   ["MDG"] = "MG",`
`   ["MDV"] = "MV",`
`   ["MEX"] = "MX",`
`   ["MHL"] = "MH",`
`   ["MKD"] = "MK",`
`   ["MLI"] = "ML",`
`   ["MLT"] = "MT",`
`   ["MMR"] = "MM",`
`   ["MNE"] = "ME",`
`   ["MNG"] = "MN",`
`   ["MNP"] = "MP",`
`   ["MOZ"] = "MZ",`
`   ["MRT"] = "MR",`
`   ["MSR"] = "MS",`
`   ["MTQ"] = "MQ",`
`   ["MUS"] = "MU",`
`   ["MWI"] = "MW",`
`   ["MYS"] = "MY",`
`   ["MYT"] = "YT",`
`   ["NAM"] = "NA",`
`   ["NCL"] = "NC",`
`   ["NER"] = "NE",`
`   ["NFK"] = "NF",`
`   ["NGA"] = "NG",`
`   ["NIC"] = "NI",`
`   ["NIU"] = "NU",`
`   ["NLD"] = "NL",`
`   ["NOR"] = "NO",`
`   ["NPL"] = "NP",`
`   ["NRU"] = "NR",`
`   ["NZL"] = "NZ",`
`   ["OMN"] = "OM",`
`   ["PAK"] = "PK",`
`   ["PAN"] = "PA",`
`   ["PCN"] = "PN",`
`   ["PER"] = "PE",`
`   ["PHL"] = "PH",`
`   ["PLW"] = "PW",`
`   ["PNG"] = "PG",`
`   ["POL"] = "PL",`
`   ["PRI"] = "PR",`
`   ["PRT"] = "PT",`
`   ["PRY"] = "PY",`
`   ["PSE"] = "PS",`
`   ["PYF"] = "PF",`
`   ["QAT"] = "QA",`
`   ["REU"] = "RE",`
`   ["ROU"] = "RO",`
`   ["RUS"] = "RU",`
`   ["RWA"] = "RW",`
`   ["SAU"] = "SA",`
`   ["SDN"] = "SD",`
`   ["SEN"] = "SN",`
`   ["SGP"] = "SG",`
`   ["SGS"] = "GS",`
`   ["SJM"] = "SJ",`
`   ["SLB"] = "SB",`
`   ["SLE"] = "SL",`
`   ["SLV"] = "SV",`
`   ["SMR"] = "SM",`
`   ["SOM"] = "SO",`
`   ["SPM"] = "PM",`
`   ["SRB"] = "RS",`
`   ["SSD"] = "SS",`
`   ["STP"] = "ST",`
`   ["SUR"] = "SR",`
`   ["SVK"] = "SK",`
`   ["SVN"] = "SI",`
`   ["SWE"] = "SE",`
`   ["SWZ"] = "SZ",`
`   ["SXM"] = "SX",`
`   ["SYC"] = "SC",`
`   ["SYR"] = "SY",`
`   ["TCA"] = "TC",`
`   ["TCD"] = "TD",`
`   ["TGO"] = "TG",`
`   ["THA"] = "TH",`
`   ["TJK"] = "TJ",`
`   ["TKL"] = "TK",`
`   ["TKM"] = "TM",`
`   ["TLS"] = "TL",`
`   ["TON"] = "TO",`
`   ["TTO"] = "TT",`
`   ["TUN"] = "TN",`
`   ["TUR"] = "TR",`
`   ["TUV"] = "TV",`
`   ["TWN"] = "TW",`
`   ["TZA"] = "TZ",`
`   ["UGA"] = "UG",`
`   ["UKR"] = "UA",`
`   ["UMI"] = "UM",`
`   ["URY"] = "UY",`
`   ["USA"] = "US",`
`   ["UZB"] = "UZ",`
`   ["VAT"] = "VA",`
`   ["VCT"] = "VC",`
`   ["VEN"] = "VE",`
`   ["VNM"] = "VN",`
`   ["VUT"] = "VU",`
`   ["WLF"] = "WF",`
`   ["WSM"] = "WS",`
`   ["YEM"] = "YE",`
`   ["ZAF"] = "ZA",`
`   ["ZMB"] = "ZM",`
`   ["ZWE"] = "ZW"`
`   }`

\--Identify Chinese
(http://www.cnitblog.com/kenlistian/archive/2008/10/15/50292.aspx)
function CheckChinese(s)

`   local ret = ''`
`   local f = '[%z\1-\127\194-\244][\128-\191]*'`
`   for v in s:gfind(f) do`
`       if(#v ~= 1)`
`       then`
`          ret = ret .. v`
`       end`
`   end`
`   return ret`

end

function p.main(frame)

`   local country = mw.ustring.gsub(mw.ustring.toNFC(frame.args[1] or ''), '^%s*(.-)%s*$', '%1')`
`   local match1 = ''`
`   if country and country ~= '' then`
`       match1 = mw.ustring.match(country, "Flag of the ([^\.]*)") or mw.ustring.match(country, "Flag of ([^\.]*)") or mw.ustring.match(country, "^[Tt]he %A*(%u[%a%(%)%.' %-]+)") or mw.ustring.match(country, "(%u[%a%(%)%.' %-]+)") or CheckChinese(country) or ""`
`       if (match1 == "Image") or (match1 == "File") then`
`           country = mw.ustring.gsub(country, match1, "")`
`           match1 = mw.ustring.match(country, "[%|%[](%u[%a%(%)%.' %-]+)") or ""`
`       end`
`       if mw.ustring.match(match1, "^%d*x?%d+px$") then`
`           country = mw.ustring.gsub(country, match1, "")`
`           match1 = mw.ustring.match(country, "%[(%u[%a%(%)%.' %-]+)") or ""`
`       end`
`   end`
`   local code = countries[match1] or countries[mw.ustring.gsub(match1, " %(.*%)$", "")] or countries[mw.ustring.gsub(match1, ",.*$", "")] or countries[mw.ustring.gsub(match1, " %(.*$", "")]`
`   if not code then`
`       if match1 ~= '' and mw.title.new('Template:ISO 3166 code ' .. match1).exists then`
`           code = frame:expandTemplate{ title = 'Template:ISO 3166 code ' .. match1 }`
`       else`
`           if frame.args.nocat and frame.args.nocat == 'true' then`
`               return ''`
`           end`
`           local ns = mw.title.getCurrentTitle().namespace`
`           if ns == 0 then`
`               return ''`
`           else`
`               return ''`
`           end`
`       end`
`   end`
`   local subdivision = mw.ustring.gsub(mw.ustring.toNFC(frame.args[2] or ''), '^%s*(.-)%s*$', '%1')`
`   if not subdivision or subdivision == '' then return code end`
`   local countrytables = {`
`       ["AD"] = true,`
`       ["AE"] = true,`
`       ["AF"] = true,`
`       ["AG"] = true,`
`       ["AL"] = true,`
`       ["AM"] = true,`
`       ["AO"] = true,`
`       ["AR"] = true,`
`       ["AT"] = true,`
`       ["AU"] = true,`
`       ["AZ"] = true,`
`       ["BA"] = true,`
`       ["BB"] = true,`
`       ["BD"] = true,`
`       ["BE"] = true,`
`       ["BF"] = true,`
`       ["BG"] = true,`
`       ["BH"] = true,`
`       ["BI"] = true,`
`       ["BJ"] = true,`
`       ["BN"] = true,`
`       ["BO"] = true,`
`       ["BQ"] = true,`
`       ["BR"] = true,`
`       ["BS"] = true,`
`       ["BT"] = true,`
`       ["BW"] = true,`
`       ["BY"] = true,`
`       ["BZ"] = true,`
`       ["CA"] = true,`
`       ["CD"] = true,`
`       ["CF"] = true,`
`       ["CG"] = true,`
`       ["CH"] = true,`
`       ["CI"] = true,`
`       ["CL"] = true,`
`       ["CM"] = true,`
`       ["CN"] = true,`
`       ["CO"] = true,`
`       ["CR"] = true,`
`       ["CU"] = true,`
`       ["CV"] = true,`
`       ["CY"] = true,`
`       ["CZ"] = true,`
`       ["DE"] = true,`
`       ["DJ"] = true,`
`       ["DK"] = true,`
`       ["DM"] = true,`
`       ["DO"] = true,`
`       ["DZ"] = true,`
`       ["EC"] = true,`
`       ["EE"] = true,`
`       ["EG"] = true,`
`       ["ER"] = true,`
`       ["ES"] = true,`
`       ["ET"] = true,`
`       ["FI"] = true,`
`       ["FJ"] = true,`
`       ["FM"] = true,`
`       ["FR"] = true,`
`       ["GA"] = true,`
`       ["GB"] = true,`
`       ["GD"] = true,`
`       ["GE"] = true,`
`       ["GH"] = true,`
`       ["GL"] = true,`
`       ["GM"] = true,`
`       ["GN"] = true,`
`       ["GQ"] = true,`
`       ["GR"] = true,`
`       ["GT"] = true,`
`       ["GW"] = true,`
`       ["GY"] = true,`
`       ["HN"] = true,`
`       ["HR"] = true,`
`       ["HT"] = true,`
`       ["HU"] = true,`
`       ["ID"] = true,`
`       ["IE"] = true,`
`       ["IL"] = true,`
`       ["IN"] = true,`
`       ["IQ"] = true,`
`       ["IR"] = true,`
`       ["IS"] = true,`
`       ["IT"] = true,`
`       ["JM"] = true,`
`       ["JO"] = true,`
`       ["JP"] = true,`
`       ["KE"] = true,`
`       ["KG"] = true,`
`       ["KH"] = true,`
`       ["KI"] = true,`
`       ["KM"] = true,`
`       ["KN"] = true,`
`       ["KP"] = true,`
`       ["KR"] = true,`
`       ["KW"] = true,`
`       ["KZ"] = true,`
`       ["LA"] = true,`
`       ["LB"] = true,`
`       ["LC"] = true,`
`       ["LI"] = true,`
`       ["LK"] = true,`
`       ["LR"] = true,`
`       ["LS"] = true,`
`       ["LT"] = true,`
`       ["LU"] = true,`
`       ["LV"] = true,`
`       ["LY"] = true,`
`       ["MA"] = true,`
`       ["MC"] = true,`
`       ["MD"] = true,`
`       ["ME"] = true,`
`       ["MG"] = true,`
`       ["MH"] = true,`
`       ["MK"] = true,`
`       ["ML"] = true,`
`       ["MM"] = true,`
`       ["MN"] = true,`
`       ["MR"] = true,`
`       ["MT"] = true,`
`       ["MU"] = true,`
`       ["MV"] = true,`
`       ["MW"] = true,`
`       ["MX"] = true,`
`       ["MY"] = true,`
`       ["MZ"] = true,`
`       ["NA"] = true,`
`       ["NE"] = true,`
`       ["NG"] = true,`
`       ["NI"] = true,`
`       ["NL"] = true,`
`       ["NO"] = true,`
`       ["NP"] = true,`
`       ["NR"] = true,`
`       ["NZ"] = true,`
`       ["OM"] = true,`
`       ["PA"] = true,`
`       ["PE"] = true,`
`       ["PG"] = true,`
`       ["PH"] = true,`
`       ["PK"] = true,`
`       ["PL"] = true,`
`       ["PS"] = true,`
`       ["PT"] = true,`
`       ["PW"] = true,`
`       ["PY"] = true,`
`       ["QA"] = true,`
`       ["RO"] = true,`
`       ["RS"] = true,`
`       ["RU"] = true,`
`       ["RW"] = true,`
`       ["SA"] = true,`
`       ["SB"] = true,`
`       ["SC"] = true,`
`       ["SD"] = true,`
`       ["SE"] = true,`
`       ["SG"] = true,`
`       ["SH"] = true,`
`       ["SI"] = true,`
`       ["SK"] = true,`
`       ["SL"] = true,`
`       ["SM"] = true,`
`       ["SN"] = true,`
`       ["SO"] = true,`
`       ["SR"] = true,`
`       ["SS"] = true,`
`       ["ST"] = true,`
`       ["SV"] = true,`
`       ["SY"] = true,`
`       ["SZ"] = true,`
`       ["TD"] = true,`
`       ["TG"] = true,`
`       ["TH"] = true,`
`       ["TJ"] = true,`
`       ["TL"] = true,`
`       ["TM"] = true,`
`       ["TN"] = true,`
`       ["TO"] = true,`
`       ["TR"] = true,`
`       ["TT"] = true,`
`       ["TV"] = true,`
`       ["TW"] = true,`
`       ["TZ"] = true,`
`       ["UA"] = true,`
`       ["UG"] = true,`
`       ["UM"] = true,`
`       ["US"] = true,`
`       ["UY"] = true,`
`       ["UZ"] = true,`
`       ["VC"] = true,`
`       ["VE"] = true,`
`       ["VN"] = true,`
`       ["VU"] = true,`
`       ["WF"] = true,`
`       ["WS"] = true,`
`       ["YE"] = true,`
`       ["ZA"] = true,`
`       ["ZM"] = true,`
`       ["ZW"] = true,`
`       }`
`   local match2 = mw.ustring.match(subdivision, "Flag of the ([^\.]*)") or mw.ustring.match(subdivision, "Flag of ([^\.]*)") or mw.ustring.match(subdivision, "[Tt]he %A*([ǁ'‘ʻ]?%u[%aZ̧z̄'‘‘ %.%,%-]+[%a%.'%d]+)") or mw.ustring.match(subdivision, "([ǁ'‘ʻ]?%u[%aZ̧z̄'‘‘ %.%,%-]+[%a%.'%d]+)") or ""`
`   if (match2 == "Image") or (match2 == "File") then`
`       subdivision = mw.ustring.gsub(subdivision, match2, "")`
`       match2 = mw.ustring.match(subdivision, "[\|\[]([ǁ'‘ʻ]?%u[%aZ̧z̄'‘ʻ %.%,%-]+[%a%.'%d]+)") or ""`
`   end`
`   if mw.ustring.match(match2, "^%d*x?%d+px$") then`
`       subdivision = mw.ustring.gsub(subdivision, match2, "")`
`       match2 = mw.ustring.match2(subdivision, "%[([ǁ'‘ʻ]?%u[%aZ̧z̄'‘ʻ %.%,%-]+[%a%.'%d]+)") or ""`
`   end`
`   local code1 = mw.ustring.sub(code, 1, 2)`
`   if countrytables[code1] then`
`       local tmp = mw.loadData('Module:Country extract/' .. code1)`
`       local code2 = tmp[match2] or tmp[mw.ustring.gsub(match2, " %(.*%)$", "")] or tmp[mw.ustring.gsub(match2, ",.*$", "")] or tmp[mw.ustring.gsub(match2, " %(.*$", "")]`
`       if code2 then return code2 end`
`       `
`       local legacytemplate = 'Template:ISO 3166 code ' .. match1`
`       if mw.title.new(legacytemplate).exists then`
`           tmp = nil`
`           for k, v in ipairs({`
`               frame:expandTemplate{ title = legacytemplate, args = { mw.ustring.gsub(match2, " %(.*%)$", "") } },`
`               frame:expandTemplate{ title = legacytemplate, args = { mw.ustring.gsub(match2, ",.*$", "") } },`
`               frame:expandTemplate{ title = legacytemplate, args = { mw.ustring.gsub(match2, " %(.*$", "") } },`
`               frame:expandTemplate{ title = legacytemplate, args = { match2 } }`
`           }) do`
`               if v ~= code and v ~= '' then`
`                   tmp = v`
`                   break`
`               end`
`           end`
`           if tmp then return tmp end`
`       end`
`       if frame.args.nocat and frame.args.nocat == 'true' then`
`           return code`
`       end`
`       local ns = mw.title.getCurrentTitle().namespace`
`       if ns == 0 then`
`           return code .. ''`
`       else`
`           return code .. ''`
`       end`
`   end`
`   return code`

end

return p

[Category:使用未识别国名的页面](https://zh.wikipedia.org/wiki/Category:使用未识别国名的页面 "wikilink")
[Category:使用未识别国名的页面](https://zh.wikipedia.org/wiki/Category:使用未识别国名的页面 "wikilink")
[Category:使用未识别国家或行政区名称的页面](https://zh.wikipedia.org/wiki/Category:使用未识别国家或行政区名称的页面 "wikilink")
[Category:使用未识别国家或行政区名称的页面](https://zh.wikipedia.org/wiki/Category:使用未识别国家或行政区名称的页面 "wikilink")