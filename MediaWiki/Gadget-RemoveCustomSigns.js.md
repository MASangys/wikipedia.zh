/\*

`   消灭中文维基个性签名 by 逆襲的天邪鬼`
`   取自 oldid=45750493`

`   用法：在`[`Special:MyPage/common.js中加入`](https://zh.wikipedia.org/wiki/Special:MyPage/common.js "wikilink")
`   mw.loader.load('`<https://zh.wikipedia.org/w/index.php?title=User:逆襲的天邪鬼/js/NoPersonalSigns.js&action=raw&ctype=text/javascript>`');`

`   如何自定义规则：`
`   不告诉你。`
`*/`

$(function () {

`   var wgServer = mw.config.get('wgServer');`

`   // 有汰渍，没污渍`
`   // 不过呢我不白送，你得自己去大润发买`
`   var blackListMode = false;`
`   var blackList = [];`
`   var tide = {};`
`   var omo = {};`

`   var normalizeName = function (name) {`
`       return name.replace(/_/g, ' ');`
`   };`

`   var isIP = function (name) {`
`       return name.match('^\\d+\\.\\d+\\.\\d+\\.\\d+$') !== null || `
`           name.match('^[0-9a-fA-F]+:[0-9a-fA-F:]+$') !== null;`
`   };`

`   var isNew = {};`

`   var findUserName = function (node) {`
`       if (node !== null && node.nodeType === 1) {`
`           if (node.tagName === 'A') {`
`               var href = node.href;`

`               var match = href.match(wgServer + '/w(/index\\.php\\?.*?title=|iki/)(User:|User_talk:|Special:Contributions/|Special:%E7%94%A8%E6%88%B7%E8%B4%A1%E7%8C%AE/)([^/]*?)($|\\?|&|#)');`
`               if (match && match[3]) {`
`                   var name = normalizeName(decodeURI(match[3]));`

`                   if (node.className.indexOf('new') !== -1) {`
`                       if (href.indexOf('User_talk:') !== -1) {`
`                           isNew['User talk:' + name] = true;`
`                       } else if (href.indexOf('User:') !== -1) {`
`                           isNew['User:' + name] = true;`
`                       }`
`                   }`

`                   return name;`
`               }`
`           } else {`
`               var child = node.firstChild;`
`               while (child) {`
`                   var n = findUserName(child);`
`                   if (n !== null) {`
`                       return n;`
`                   }`
`                   child = child.nextSibling;`
`               }`

`           }`
`       }`
`       return null;`
`   };`

`   var killSigns = function (node) {`
`       // 确定用户名`
`       var curNode = node.previousSibling;`
`       var lastValidNode = null;`
`       var username = null;`
`       var noTideOMO = null;`
`       var i;`
`       while (curNode) {`
`           var n = findUserName(curNode);`
`           if (n !== null) {`
`               if (username === null) {`
`                   username = n;`
`               }`
`               if (n.toLowerCase() === username.toLowerCase()) {`
`                   lastValidNode = curNode;`
`               }`
`           }`
`           curNode = curNode.previousSibling;`
`       }`
`       `
`       // 判断是否为黑名单名字`
`       if (lastValidNode === null || (blackListMode && blackList.indexOf(username.toLowerCase()) === -1)) {`
`           return;`
`       }`

`       // 如果是自荐做什么事情的话那么再放宽点`
`       if (lastValidNode.previousSibling && lastValidNode.previousSibling.textContent === '提名') {`
`           curNode = lastValidNode;`
`           for (i=0; i<5; i++) {`
`               if (curNode.nextSibling) {`
`                   curNode = curNode.nextSibling;`
`               }`
`           }`
`           noTideOMO = curNode;`
`           while (curNode) {`
`               var n = findUserName(curNode);`
`               if (n !== null) {`
`                   if (n.toLowerCase() === username.toLowerCase()) {`
`                       lastValidNode = curNode;`
`                       break;`
`                   }`
`               }`
`               curNode = curNode.nextSibling;`
`           }`
`       }`

`       if (isIP(username)) {`
`           return;`
`       }`

`       // 格杀勿论`
`       var nodes = [];`
`       curNode = lastValidNode;`
`       var rubbishindex = 1, postfix = '';`
`       while (tide[username.toLowerCase() + postfix]) {             // 使用汰渍洗衣粉强力清洗`
`           var rubbish = tide[username.toLowerCase() + postfix];`
`           for (i=0; i<rubbish.length; i++) {`
`               if (curNode.previousSibling !== null && curNode.previousSibling.tagName === rubbish[i] && curNode.previousSibling !== noTideOMO) {`
`                   curNode = curNode.previousSibling;`
`                   rubbishindex = 0;`
`               } else {`
`                   curNode = lastValidNode;`
`                   break;`
`               }`
`           }`
`           if (rubbishindex === 0) {`
`               break;`
`           }`
`           rubbishindex++;`
`           postfix = '#' + rubbishindex;`
`       }`
`       while (curNode !== node) {`
`           nodes.push(curNode);`
`           curNode = curNode.nextSibling;`
`       }`
`       for (i = 0; i<nodes.length; i++) {`
`           nodes[i].remove();`
`       }`

`       // 换成干净的链接`
`       var x = document.createElement('a');`
`       var y = document.createElement('a');`

`       x.text = username;`
`       y.text = '留言';`
`       x.className = 'userlink';`
`       y.className = 'userlink';`
`       x.href = '/wiki/User:' + username;`
`       y.href = '/wiki/User_talk:' + username;`

`       if (isNew['User:' + username]) {`
`           x.className += ' new';`
`       }`
`       if (isNew['User talk:' + username]) {`
`           y.className += ' new';`
`       }`

`       node.parentNode.insertBefore(x, node);`
`       node.parentNode.insertBefore(document.createTextNode('（'), node);`
`       node.parentNode.insertBefore(y, node);`
`       node.parentNode.insertBefore(document.createTextNode('）'), node);`

`       if (node.textContent.indexOf('）') === 0) {`
`           node.textContent = node.textContent.substr(1);`
`       }`
`       if (node.textContent.indexOf(')') === 0) {`
`           node.textContent = node.textContent.substr(1);`
`       }`

`       // 使用奥妙全自动洗衣液，清除顽固污渍`
`       if (omo.OMO && omo.OMO[username]) {`
`           var rubbish2 = omo.OMO[username];`
`           var prev = x.previousSibling;`
`           for (var r = 0; r<rubbish2.length; r++) {`
`               var reg = new RegExp(rubbish2[r], 'g');`
`               node.textContent = node.textContent.replace(reg, '');`
`               if (prev) {`
`                   prev.textContent = prev.textContent.replace(reg, '');`
`               }`
`           }`
`       }`
`   };`

`   var replace_text = function (node, search, callback) {`
`       if (node.nodeType === 3) {`
`           value = node.nodeValue;`
`           matches = value.match(search);`
`    `
`           if (matches !== null) {`
`               callback(node);`
`           }`
`       } else {`
`           var children = [], child = node.firstChild;`
`           while (child) {`
`               children[children.length] = child;`
`               child = child.nextSibling;`
`           }`
`    `
`           for (var i = 0; i < children.length; i++) {`
`               replace_text(children[i], search, callback);`
`           }`
`       }`
`   };`

`   var start = function () {`
`       if (blackList) {`
`           for (var i = 0; i < blackList.length; i++) {`
`               blackList[i] = normalizeName(blackList[i]).toLowerCase();`
`           }`
`       }`
`       replace_text(document.getElementById('bodyContent'), /(\d{4})年(\d{1,2})月(\d{1,2})日 `\([一二三四五六日]\)` (\d\d):(\d\d) `\(UTC\)`/g, killSigns);`
`   };`

`   // 加载个性化配置`
`   $.get(mw.config.get('wgScript') + '?title=User:' + mw.config.get('wgUserName') + '/NoPersonalSigns-rules.js&action=raw&ctype=text/javascript').then(function (data) {`
`       eval(data);`
`       if (window.NoPersonalSigns) {`
`           blackListMode = window.NoPersonalSigns.blackListMode || false;`
`           blackList = window.NoPersonalSigns.blackList || [];`
`           tide = window.NoPersonalSigns.tide || {};`
`           omo = window.NoPersonalSigns.omo || {};`
`       }`
`   }).always(function () {`
`       start();`
`   });`

});