//Gary King, "User:Gary King/comments in local time.js," Wikipedia, The
Free Encyclopedia,
<http://en.wikipedia.org/w/index.php?title=User:Gary_King/comments_in_local_time.js&oldid=281324481>
(accessed May 28, 2009).

CommentsInLocalTime = (function() {

`   // mw.config.get('wgCanonicalNamespace') = unsafeWindow.mw.config.get('wgCanonicalNamespace')`

`   /*`
`       Settings`
`   */`
`   if (typeof(LocalComments) == 'undefined')`
`       LocalComments = {};`

`   if (typeof(LocalComments.dateFormat) == 'undefined')`
`   {`
`       // Deprecated: LocalizeConfig`
`       if (typeof(LocalizeConfig) != 'undefined' && typeof(LocalizeConfig.dateFormat) != 'undefined' && LocalizeConfig.dateFormat != '')`
`           LocalComments.dateFormat = LocalizeConfig.dateFormat;`
`       else`
`           LocalComments.dateFormat = 'ymd';`
`   }`

`   if (typeof(LocalComments.timeFirst) == 'undefined')`
`       LocalComments.timeFirst = false;`

`   if (typeof(LocalComments.dateDifference) == 'undefined')`
`       LocalComments.dateDifference = true;`
`   if (typeof(LocalComments.twentyFourHours) == 'undefined')`
`       LocalComments.twentyFourHours = false;`
`   if (typeof(LocalComments.dayOfWeek) == 'undefined')`
`       LocalComments.dayOfWeek = true;`
`   if (typeof(LocalComments.disablePages) !== 'function')`
`       LocalComments.disablePages = function(){ return false; };`
`   /*`
`       End Settings`
`   */`

`   if (mw.config.get('wgCanonicalNamespace') == '' || mw.config.get('wgCanonicalNamespace') == 'MediaWiki' || mw.config.get('wgCanonicalNamespace') == 'Special' || LocalComments.disablePages())`
`       return;`

`   var disabled_urls = new Array('action=history'), unique_url = false, wikiPreview = new Array('action=edit', 'action=submit');`
`   for (var i = 0; i < disabled_urls.length; i++)`
`   {`
`       if (document.location.href.indexOf(disabled_urls[i]) != -1)`
`           return;`
`   }`

`   for (var i = 0; i < wikiPreview.length; i++)`
`   {`
`       if (document.location.href.indexOf(wikiPreview[i]) != -1)`
`           unique_url = 'wikiPreview';`
`   }`

`   var element_id = unique_url ? unique_url : 'bodyContent';`
`   replace_text(document.getElementById(element_id), /(\d{4})年(\d{1,2})月(\d{1,2})日 `\([一二三四五六日]\)` (\d\d):(\d\d) `\(UTC\)`/g, adjust_time);`

function add_leading_zero(number) {

`   if (number < 10)`
`       number = '0' + number;`
`   return number;`

}

function adjust_time(original_timestamp, old_year, old_month,
old_day, old_hour, old_minute, offset) {

`   var today = new Date(), yesterday = new Date(), tomorrow = new Date();`
`   yesterday.setDate(yesterday.getDate() - 1);`
`   tomorrow.setDate(tomorrow.getDate() + 1);`

`   // set the date entered`
`   var time = new Date();`
`   time.setUTCFullYear(old_year, old_month - 1, old_day);`
`   time.setUTCHours(old_hour);`
`   time.setUTCMinutes(old_minute);`

`   // determine the time offset`
`   var utc_offset = -1 * time.getTimezoneOffset() / 60;`
`   if (utc_offset >= 0)`
`       utc_offset = '+' + utc_offset;`
`   else`
`       utc_offset = '−' + Math.abs(utc_offset);`

`   // set the date bits to output`
`   var year = time.getFullYear(), month = add_leading_zero(time.getMonth() + 1);`
`   var day = time.getDate();`
`   var hour = parseInt(time.getHours()), minute = add_leading_zero(time.getMinutes());`

`   // output am or pm depending on the date and user config settings`
`   ampm = '';`
`   if (!LocalComments.twentyFourHours) {`
`       ampm = hour <= 11 ? ' am' : ' pm';`
`       if (hour > 12) {`
`           hour -= 12;`
`       } else if (hour === 0) {`
`           hour = 12;`
`       }`
`   }`

`   // return 'today' or 'yesterday' if that is the case`
`   if (year == today.getFullYear() && month == add_leading_zero(today.getMonth() + 1) && day == today.getDate())`
`       var date = '今天';`
`   else if (year == yesterday.getFullYear() && month == add_leading_zero(yesterday.getMonth() + 1) && day == yesterday.getDate())`
`       var date = '昨天';`
`   else if (year == tomorrow.getFullYear() && month == add_leading_zero(tomorrow.getMonth() + 1) && day == tomorrow.getDate())`
`       var date = '明天';`
`   else`
`   {`
`       // calculate day of week`
`       day_names = new Array('星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六');`
`       day_of_the_week = day_names[time.getDay()];`

`       if (LocalComments.dateDifference)`
`       {`
`           // calculate time difference from today and the timestamp`
`           today = new Date(today.getYear(), today.getMonth(), today.getDate());`
`           time = new Date(time.getYear(), time.getMonth(), time.getDate());`

`           milliseconds_ago = today.getTime() - time.getTime();`
`           days_ago = Math.round(milliseconds_ago / 1000 / 60 / 60 / 24);`

`           var difference, difference_word = '', last = '';`
`           if (today.valueOf() >= time.valueOf())`
`           {`
`               difference = new Date(today.valueOf() - time.valueOf());`
`               difference_word = '前';`
`               if (days_ago <= 7)`
`                   last = '';`
`           }`
`           else`
`           {`
`               difference = new Date(time.valueOf() - today.valueOf());`
`               difference_word = wgULS('后', '後');`
`               if (days_ago >= -7)`
`                   last = '下';`
`           }`
`           var descriptive_difference = [];`

`           if (difference.getYear() - 70 > 0)`
`           {`
`               var years_ago = (difference.getYear() - 70) + '年';`
`               descriptive_difference.push(years_ago);`
`           }`
`           if (difference.getMonth() > 0)`
`           {`
`               var months_ago = difference.getMonth() + wgULS('个月', '個月');`
`               descriptive_difference.push(months_ago);`
`           }`
`           if (difference.getDate() > 0)`
`           {`
`               var new_days_ago = difference.getDate() - 1 + '日';`
`               descriptive_difference.push(new_days_ago);`
`           }`

`           descriptive_difference = ' (' + descriptive_difference.join('') + difference_word + ')';`
`       }`
`       else`
`       {`
`           descriptive_difference = '';`
`           last = '';`
`       }`

`       // format the date according to user preferences`
`       var formatted_date = '', month_name = convert_number_to_month(time.getMonth()), month = time.getMonth() + 1;`

`       switch (LocalComments.dateFormat.toLowerCase())`
`       {`
`           case 'ymd':`
`               formatted_date = year + '年' + add_leading_zero(month) + '月' + add_leading_zero(day) + '日';`
`               break;`
`           case 'dmy':`
`               formatted_date = day + ' ' + month_name + ' ' + year;`
`               break;`
`           case 'mdy':`
`               formatted_date = month_name + ' ' + day + ', ' + year;`
`               break;`
`           default:`
`               formatted_date = year + '-' + month + '-' + add_leading_zero(day);`
`       }`

`       var date = '';`
`       if (LocalComments.dayOfWeek)`
`       {`
`           date = formatted_date + ', ' + last + day_of_the_week + descriptive_difference;`
`       }`
`       else date = formatted_date + ', ' + descriptive_difference;`
`   }`

`   var time = add_leading_zero(hour) + ':' + minute + ' ' + ampm;`

`   if (LocalComments.timeFirst)`
`       var return_date = time + ', ' + date + ' (UTC' + utc_offset + ')';`
`   else`
`       var return_date = date + ', ' + time + ' (UTC' + utc_offset + ')';`

`   return return_date;`

}

function convert_month_to_number(month) {

`  var output = new Date(month + ' 1, 2001');`
`  return output.getMonth();`

}

function convert_number_to_month(number) {

`   var month = new Array('一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月');`
`   return month[number];`

}

function replace_text(node, search, replace) {

`   if (node.nodeType == 3)`
`   {`
`       value = node.nodeValue;`
`       matches = value.match(search);`

`       if (matches != null)`
`       {`
`           node_parent_node = node.parentNode;`
`           old_node = node;`
`           // old_node_list = node.parentNode.childNodes;`

`           new_node = document.createDocumentFragment();`

`           var after_match = value;`

`           for (match = 0; match < matches.length; match++)`
`           {`
`               var position = after_match.search(search);`
`               var length = matches[match].toString().length;`
`               var before_match = after_match.substring(0, position);`
`               after_match = after_match.substring(position + length);`

`               first_span = document.createElement('span');            `
`               first_span.setAttribute('style', 'font-size: 85%; white-space: nowrap;');`

`               second_span = document.createElement('span');`
`               second_span.setAttribute('class', 'localcomments');`
`               second_span.setAttribute('title', matches[match]);`
`               second_span.appendChild(document.createTextNode(matches[match].toString().replace(search, replace)));`

`               first_span.appendChild(second_span);`

`               new_node.appendChild(document.createTextNode(before_match));`
`               new_node.appendChild(first_span);`

`               // new_node_list = new_node.childNodes;`
`               // old_node_list = new_node_list;`
`           }`

`           new_node.appendChild(document.createTextNode(after_match));`
`           node_parent_node.replaceChild(new_node, old_node);`
`       }`
`   }`
`   else`
`   {`
`       var children = [], child = node.firstChild;`
`       while (child)`
`       {`
`           children[children.length] = child;`
`           child = child.nextSibling;`
`       }`

`       for (var child = 0; child < children.length; child++)`
`           replace_text(children[child], search, replace);`
`   }`

}

});

checkScript = function() {

`   if (window.location.href.indexOf('&disable=loco') === -1) {`
`       CommentsInLocalTime();`
`   }`

}

runScript = function() {

`   mw.hook('wikipage.content').add( function ( $content ) {`
`       setTimeout("checkScript();", 0);`
`   });`
`   $(window).load(function() {`
`       checkScript();`
`   });`

};

if (typeof waitForScripts === 'function') {

`   waitForScripts(runScript);`

} else {

`   runScript();`

}