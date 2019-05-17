/\*

`* 取自 oldid=45922506`
`* @name Link Translator`
`*`
`* 操作帮助文档：https://zh.wikipedia.org/wiki/User:和平奮鬥救地球/link-ts`
`*`
`* 由才女`[`User:Liangent最初设计`](https://zh.wikipedia.org/wiki/User:Liangent "wikilink")
`* 由`[`User:Kovl修改`](https://zh.wikipedia.org/wiki/User:Kovl "wikilink")` v2015-2-6-7-52`
`* 由`[`User:Panintelize`](https://zh.wikipedia.org/wiki/User:Panintelize "wikilink")` 再修改 v2016-02-06`
`* 由`[`User:和平奮鬥救地球`](https://zh.wikipedia.org/wiki/User:和平奮鬥救地球 "wikilink")` 撰写帮助文档 v2016-06-08`
`*`
`* Logs：`
`* 又被`[`User:逆襲的天邪鬼重新改造`](https://zh.wikipedia.org/wiki/User:逆襲的天邪鬼 "wikilink")` v2016-11-31`
`* 用兒童不宜的方式支援了VisualEditor的原始碼2017模式 v2017-02-08`
`*`
`* 依存程式：`[`User:逆襲的天邪鬼/js/EditorAPIs.js`](https://zh.wikipedia.org/wiki/User:逆襲的天邪鬼/js/EditorAPIs.js "wikilink")
`*`
`* 参见：`
`* * `[`User:Artoria2e5/link-ts.js`](https://zh.wikipedia.org/wiki/User:Artoria2e5/link-ts.js "wikilink")
`* * `[`en:User:逆襲的天邪鬼/link-ts.js`](https://zh.wikipedia.org/wiki/en:User:逆襲的天邪鬼/link-ts.js "wikilink")
`*/`

//

```

mw.loader.using(['jquery.ui.dialog', 'jquery.ui.progressbar']).then(function () {
    'use strict';

    var LTUI;
    switch (mw.config.get('wgUserLanguage')) {
        case 'zh':
        case 'zh-cn':
        case 'zh-hans':
        case 'zh-my':
        case 'zh-sg':
            LTUI = {
                Translate:              '翻译',
                TranslateLinks:         '翻译链接',
                LinkTranslator:         '链接翻译器',
                TLTitle:                '自动翻译来自语言维基百科文本中的链接',
                SourceLanguageCode:     '目标维基的语言代码：',
                OriginalLink:           '原链接：',
                NOLINKINPAGE:           '此页没有链接',
                Done:                   '完成',
                NoVE:                   'link-ts不支持可视化模式，请切换到源代码模式。',
                EditMessage:            '[[User:逆襲的天邪鬼/js/link-ts.js|翻译]]外文链接',

                // OPTION
                SelectedTextOnly:       '只处理选中文本',
                IfFound:                '如果找到对应中文条目的话——',
                KeepOriginalText2:      '以原文显示蓝链（[[中文|Original Text]]）',
                CommentOriginalLink:    '注释原链接',
                IfNotFound:             '否则的话——',
                UseLangLink:            '转成跨语言链接（即{{tsl}}或{{link-xx}}）',
                UseTsl:                 '使用{{tsl}}而非{{link-xx}}',
                KeepOriginalText:       '以原文显示绿链（{{tsl|en|Orin||Orin text}}）',
                MarkWrongPage:          '如果不转成跨语言链接，而且（在原文或中文）属于红链，那么把它标记出来',

                // STATUS
                PARSEFAILED:            '解析失败',
                ERROR:                  '错误',
                NOLINK:                 '没有链接',
                MULTIPLELINK:           '多个连接',
                PAGESAME:               '页面相同',
                PAGEDIFF:               '页面不同',
                DONTEXIST:              '页面不存在',
            };
            break;
        default:
            LTUI = {
                Translate:              '翻譯',
                TranslateLinks:         '翻譯連結',
                LinkTranslator:         '連結翻譯器',
                TLTitle:                '自動翻譯來自其他語言維基百科文本中的連結',
                SourceLanguageCode:     '目標維基的語言代碼：',
                OriginalLink:           '原連結：',
                NOLINKINPAGE:           '此頁沒有任何連結',
                Done:                   '完成',
                NoVE:                   'link-ts不支援視覺化模式，請切換到原始碼模式。',
                EditMessage:            '[[User:逆襲的天邪鬼/js/link-ts.js|翻譯]]外文連結',

                // OPTION
                SelectedTextOnly:       '只處理選中文本',
                IfFound:                '如果找到對應中文條目的話——',
                KeepOriginalText2:      '以原文顯示藍連（[[中文|Original Text]]）',
                CommentOriginalLink:    '註釋原連結',
                IfNotFound:             '否則的话——',
                UseLangLink:            '轉成跨語言連結（即{{tsl}}或{{link-xx}}）',
                UseTsl:                 '使用{{tsl}}而非{{link-xx}}',
                KeepOriginalText:       '以原文顯示綠連（{{tsl|en|Orin||Orin text}}）',
                MarkWrongPage:          '如果不轉成跨語言連結，而且（在原文或中文）屬於紅連，那麼把它標記出來',

                // STATUS
                PARSEFAILED:            '解析失敗',
                ERROR:                  '錯誤',
                NOLINK:                 '沒有連結',
                MULTIPLELINK:           '多個連結',
                PAGESAME:               '頁面相同',
                PAGEDIFF:               '頁面不同',
                DONTEXIST:              '頁面不存在',
            };
    }

    var LTConf = {
        SourceLanguageCode:     'en',
        KeepOriginalText:       'checked', // 'checked' OR ''
        KeepOriginalText2:      'checked',
        CommentOriginalLink:    '',
        UseLangLink:            'checked',
        UseTsl:                 'checked',
        SelectedTextOnly:       'checked',
        MarkWrongPage:          'checked',
    };


    // variables
    var currentJobid = 0;
    var LDSB = '__LEFT_DOUBLE_SQUARE_BRACKETS__';
    var EXEConf;

    /**
     * 调用维基百科API来转换条目标题
     */
    var callApi = function (options) {
        var links = options.links || [];
        var callback = options.callback || (function () {});
        var failure = options.failure || (function () {});
        var lang = options.lang || 'en';
        var tolang = options.tolang || mw.config.get('wgContentLanguage');
        var jobid = options.jobid || currentJobid;

        // 标题去重，同时将这些标题分组，因为API只允许一次性最多提交50个标题
        var map = {};
        var i;
        for (i=0; i<links.length; i++) {
            map[links[i]] = true;
        }

        var queue = [];
        var queue2 = [];
        var m = 0, n = 0;
        for (var j in map) {
            queue.push(j);
            m++;
            if (m === 50) {
                m = 0;
                queue2.push(queue);
                queue = [];
                n++;
            }
        }
        if (queue.length > 0) {
            queue2.push(queue);
            n++;
        }

        // 开始处理
        var stop = false;
        var langlinks = {};

        var done = function (data) {
            if (data.query) {
                // 獲取原來的標題
                var orinTitle = {};
                var convert = function (arr) {
                    if (arr) {
                        for (var i=0; i<arr.length; i++) {
                            if (orinTitle[arr[i].from]) {
                                orinTitle[arr[i].to] = orinTitle[arr[i].from];
                            } else {
                                orinTitle[arr[i].to] = arr[i].from;
                            }
                        }
                    }
                };
                convert(data.query.normalized);
                convert(data.query.redirects);

                // 標明翻譯情況
                var pages = data.query.pages;
                for (var pageid in pages) {
                    var page = pages[pageid];
                    var title = page.title;
                    if (orinTitle[title]) {
                        title = orinTitle[title];
                    }

                    if (page.missing !== undefined) {
                        // 页面不存在
                        langlinks[title] = undefined;
                    } else if (page.langlinks) {
                        langlinks[title] = page.langlinks[0]['*'];
                    } else {
                        // 没有对应条目
                        langlinks[title] = null;
                    }
                }
            }

            n--;
            if (n === 0 && !stop) {
                callback(langlinks);
            }
        };

        var error = function (jqXHR, textStatus, errorThrown) {
            stop = true;
            if (jobid === currentJobid) {
                failure(langlinks);
            }
        };

        var process = function (links) {
            if (jobid !== currentJobid) {
                stop = true;
                return;
            }

            $.ajax({
                data: {
                    action: 'query',
                    prop: 'langlinks',
                    lllang: tolang,
                    format: 'json',
                    redirects: true,
                    lllimit: 50,
                    titles: links.join('|'),
                },
                dataType: 'jsonp',
                type: 'POST',
                url: 'https://' + lang + '.wikipedia.org/w/api.php',
                success: done,
                error: error,
            });
        };

        for (i=0; i<queue2.length && !stop; i++) {
            process(queue2[i]);
        }
    };

    /**
     * 根据要求，将跨语言链接变成普通链接、{{tsl}}或{{link}}。Category会被特殊处理。
     */
    var makeLink = function (options) {
        var link = options.link || { target: '', display: '' };
        var lang = options.lang || '';
        var newTarget = options.newTarget;
        var output = '';

        if (!link) {
            return '';
        }

        var makeNormalLink = function (target, display) {
            if (target === display || display === '') {
                return LDSB + target + ']]';
            } else {
                return LDSB + target + '|' + display + ']]';
            }
        };

        // 禁止把页面分类变成跨语言链接，或者在其后面附加文字（除非是[Category:XXX|*]那种）
        if (link.target.toLowerCase().indexOf('category:') === 0) {
            options.useLangLink = false;
            options.keepOriginalText2 = (link.display !== '' && link.display !== link.target);
        }

        if (newTarget === null) {
            // 没有对应中文条目
            if (options.useLangLink) {
                if (options.useTsl) {
                    if (options.keepOriginalText) {
                        return '{{tsl|' + lang + '|' + link.target + '||' + link.display + '}}';
                    } else {
                        return '{{tsl|' + lang + '|' + link.target + '|}}';
                    }
                } else {
                    if (options.keepOriginalText) {
                        return '{{link-' + lang + '||' + link.target + '|' + link.display + '}}';
                    } else {
                        return '{{link-' + lang + '||' + link.target + '}}';
                    }
                }
            } else {
                if (options.markWrongPage) {
                    return '<!-- ' + LTUI.NOLINK + ' -->' + makeNormalLink(link.target, link.display);
                } else {
                    return makeNormalLink(link.target, link.display);
                }
            }
        } else if (newTarget === undefined) {
            // 页面不存在
            if (options.markWrongPage) {
                return '<!-- ' + LTUI.DONTEXIST + ' -->' + makeNormalLink(link.target, link.display);
            } else {
                return makeNormalLink(link.target, link.display);
            }
        } else {
            if (options.keepOriginalText2) {
                output = makeNormalLink(newTarget, link.display || link.target);
            } else {
                output = makeNormalLink(newTarget, '');
            }
        }

        if (options.commentOriginalLink) {
            output = '<!-- ' + makeNormalLink(link.target, link.display) + ' -->' + output;
        }

        return output;
    };

    /**
     * 开始进行处理
     */
    var processLinks = function (event) {
        var jobid = currentJobid;

        EXEConf = {
            KeepOriginalText:       $('#linktranslator-keep-original').prop('checked'),
            KeepOriginalText2:      $('#linktranslator-keep-original2').prop('checked'),
            CommentOriginalLink:    $('#linktranslator-comment-link').prop('checked'),
            UseLangLink:            $('#linktranslator-lang-link').prop('checked'),
            UseTsl:                 $('#linktranslator-tsl').prop('checked'),
            SelectedTextOnly:       $('#linktranslator-selected-text').prop('checked'),
            MarkWrongPage:          $('#linktranslator-markwrongpage').prop('checked'),
        };

        LTConf.SourceLanguageCode = $('#linktranslator-source-lang').val();

        var wikitext = wikitextEditor.text;
        if (EXEConf.SelectedTextOnly) {
            wikitext = wikitextEditor.selectionText;
        }

        var links = wikitext.match(/(\[\[)(?!\:?.?.?\:)(?!Image:)(?!File:)(.+?)(\|.+?)?(\]\])/g);

        if (links === null) {
            $('#linktranslator').text(LTUI.NOLINKINPAGE);
            return;
        } else {
            $('#linktranslator').dialog( 'option', 'position', { my: 'top', at: 'top'} );
            $('#linktranslator').html('<div id="linktranslator-progressbar"></div>');
            $('#linktranslator-progressbar').progressbar();
        }

        // 整合各links
        var realLinks = [];
        var links2 = [];
        for (var i=0; i<links.length; i++) {
            var link = links[i].slice(2, -2);

            var linktarget = link;
            var linkdisplay = link;

            var idx = link.indexOf('|');
            if (idx !== -1) {
                linktarget = link.substring(0, idx);
                linkdisplay = link.substring(idx + 1);
            }
            // 通常情況下外文維基的錨點到中文維基就沒用了
            idx = linktarget.indexOf('#');
            if (idx !== -1) {
                linktarget = link.substring(0, idx);
            }
            $('#linktranslator').append('<div id="linktranslator-item-' + i + '"></div>');
            $('#linktranslator-item-' + i).text(links[i] + ' -> ')
                .append('<span class="linktranslator-item-newlink">...</span>');

            realLinks.push(linktarget);
            links2.push({ target: linktarget, display: linkdisplay });
        }

        var apiCallback = function (langlinks) {
            var code = wikitext + '';

            for (var i=0; i<links2.length; i++) {
                var link = links2[i];

                // 处理文内链接
                var linkCode = makeLink({
                    link: link,
                    newTarget: langlinks[link.target],
                    lang: LTConf.SourceLanguageCode,
                    useLangLink: EXEConf.UseLangLink,
                    useTsl: EXEConf.UseTsl,
                    keepOriginalText: EXEConf.KeepOriginalText,
                    keepOriginalText2: EXEConf.KeepOriginalText2,
                    commentOriginalLink: EXEConf.CommentOriginalLink,
                    markWrongPage: EXEConf.MarkWrongPage,
                });

                //mark on dialogue
                $('#linktranslator-item-' + i + ' .linktranslator-item-newlink').text(linkCode.replace(new RegExp(LDSB, 'g'), '[[')).css('color', '#0645ad');

                if (langlinks[link.target] === null) {
                    // 没有对应中文条目
                    $('#linktranslator-item-' + i + ' .linktranslator-item-newlink').css('color', '#00af89');
                    if (!EXEConf.UseLangLink) {
                        $('#linktranslator-item-' + i + ' .linktranslator-item-newlink').text(LTUI.NOLINK);
                    }
                } else if (langlinks[link.target] === undefined) {
                    // 页面不存在
                    $('#linktranslator-item-' + i + ' .linktranslator-item-newlink').text(LTUI.DONTEXIST).css('color', '#ba0000');
                } else if (langlinks[link.target] === link) {
                    $('#linktranslator-item-' + i + ' .linktranslator-item-newlink').text(LTUI.PAGESAME);
                }

                // only replacing the first is ok, we will run this many times
                code = code.replace(links[i], linkCode);
            }

            return code.replace(new RegExp(LDSB, 'g'), '[[');
        };

        // 开始处理
        // 过去是一个条目调用一次API，现在是一次性处理全部，所以滚动条已经没有意义。
        // var respcount = 0;
        callApi({
            links: realLinks,
            lang: LTConf.SourceLanguageCode,
            jobid: jobid,
            callback: function (langlinks) {
                if (jobid !== currentJobid) {
                    return;
                }

                var newtext = apiCallback(langlinks);

                //$('#linktranslator-progressbar').progressbar('value', respcount * 100 / links.length);
                $('#linktranslator-progressbar').progressbar('value', 100);
                $('#linktranslator').prepend('<div id="linktranlator-done"><strong>' + LTUI.Done + '</strong></div>');

                if (EXEConf.SelectedTextOnly) {
                    wikitextEditor.selectionText = newtext;
                } else {
                    wikitextEditor.text = newtext;
                }
                if (!wikitextEditor.summary) {
                    wikitextEditor.summary = LTUI.EditMessage;
                }

                // 針對VE進行Hack
                wikitextEditor.keepSelection = false;
            },
            failure: function (langlinks) {
                $('#linktranslator').prepend('<div id="linktranlator-done" style="color:red;"><strong>' + LTUI.ERROR + '</strong></div>');
            },
        });
    };

    // clear previous button
    $('#wpLinktranslator').remove();

    var callDialog = function (event) {
        if (event && event.preventDefault) {
            event.preventDefault();
        }
        $('#linktranslator').remove();

        if (wikitextEditor.mode === 'visual') {
            alert(LTUI.NoVE);
            return;
        }

        // 針對VE進行Hack
        wikitextEditor.keepSelection = true;

        if (wikitextEditor.selectionText.length > 0) {
            LTConf.SelectedTextOnly = 'checked';
        } else {
            LTConf.SelectedTextOnly = '';
        }

        $('<div id="linktranslator" title="' + LTUI.LinkTranslator + '">' +
            '<label for="linktranslator-source-lang">' + LTUI.SourceLanguageCode + '</label> ' +
            '<input id="linktranslator-source-lang" value="' + LTConf.SourceLanguageCode + '" type="text" /><br><br>' +
            '<input type="checkbox" id="linktranslator-selected-text" ' + LTConf.SelectedTextOnly + '/> ' +
            '<label for="linktranslator-selected-text">' + LTUI.SelectedTextOnly + '</label><br>' +
            '<br>' + LTUI.IfFound + '<br><br>' +
            '<input type="checkbox" id="linktranslator-comment-link" ' + LTConf.CommentOriginalLink + '/> ' +
            '<label for="linktranslator-comment-link">' + LTUI.CommentOriginalLink + '</label><br>' +
            '<input type="checkbox" id="linktranslator-keep-original2" ' + LTConf.KeepOriginalText2 + '/> ' +
            '<label for="linktranslator-keep-original2">' + LTUI.KeepOriginalText2 + '</label><br>' +
            '<br>' + LTUI.IfNotFound + '<br><br>' +
            '<input type="checkbox" id="linktranslator-lang-link" ' + LTConf.UseLangLink + '/> ' +
            '<label for="linktranslator-lang-link">' + LTUI.UseLangLink + '</label><br>' +
            '<input type="checkbox" id="linktranslator-tsl" ' + LTConf.UseTsl + '/> ' +
            '<label for="linktranslator-tsl">' + LTUI.UseTsl + '</label><br>' +
            '<input type="checkbox" id="linktranslator-keep-original" ' + LTConf.KeepOriginalText + '/> ' +
            '<label for="linktranslator-keep-original">' + LTUI.KeepOriginalText + '</label><br>' +
            '<input type="checkbox" id="linktranslator-markwrongpage" ' + LTConf.MarkWrongPage + '/> ' +
            '<label for="linktranslator-markwrongpage">' + LTUI.MarkWrongPage + '</label><br>'
        ).dialog({
            modal: false,
            close: function() {
                currentJobid++;
            },
            width: 500,
            buttons: [
                {
                    text: LTUI.Translate,
                    click: function () {
                        $('#linktranslator').dialog('option', 'buttons', []);
                        processLinks();
                    }
                }
            ]
        });
    };


    // 設法支援各路編輯器
    mw.hook('editorapi.ready').add(function () {
        if (['wikitext', 'wikEd', 'codemirror'].indexOf(wikitextEditor.mode) !== -1) {
            $('#wpLinktranslator').remove();
            $('#wpLinktranslatorFUCK').remove();
            var FUCKYOU = $('#wpDiffWidget').length > 0;
            if (FUCKYOU) {
                $('#wpDiffWidget').after('<span id="wpLinktranslatorFUCK" aria-disabled="false" class="oo-ui-widget oo-ui-widget-enabled oo-ui-inputWidget oo-ui-buttonElement oo-ui-buttonElement-framed oo-ui-labelElement oo-ui-buttonInputWidget"><input id="wpLinktranslator" value="' + LTUI.TranslateLinks + '" title="' + LTUI.TLTitle + '" type="button" class="oo-ui-inputWidget-input oo-ui-buttonElement-button"/></span>');
            } else {
                $('#wpDiff').after('\n<input id="wpLinktranslator" value="' + LTUI.TranslateLinks + '" title="' + LTUI.TLTitle + '" type="button"/>');
            }
            $('#wpLinktranslator').click(callDialog);
        }
        $('#p-link-ts').remove();
        $(mw.util.addPortletLink('p-cactions', '#', LTUI.TranslateLinks, 'p-link-ts')).click(callDialog);

        currentJobid++;
        try {
            $('#linktranslator').dialog('close');
        } catch (ex) {

        }
    });
    mw.loader.load('https://zh.wikipedia.org/w/index.php?title=MediaWiki:Gadget-EditorAPIs.js&action=raw&ctype=text/javascript');
});

//
```

//

[Category:维基脚本](https://zh.wikipedia.org/wiki/Category:维基脚本 "wikilink")