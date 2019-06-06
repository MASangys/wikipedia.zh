**React**（又名**React.js**或**ReactJS**）是一款用于构建[用户界面的](../Page/用户界面.md "wikilink")[JavaScript函式庫](../Page/JavaScript函式庫.md "wikilink")\[1\]，其由[Facebook及社区开发者与公司共同维护](../Page/Facebook.md "wikilink")。\[2\]\[3\]\[4\]

作为一款快速收集数据并渲染为[HTML视图的](../Page/HTML.md "wikilink")[前端框架](https://zh.wikipedia.org/wiki/前端 "wikilink")，React同样适合作为[单页应用或手机应用的基础框架](../Page/单页应用.md "wikilink")。但因为获取数据只是网页开发的第一步，所以开发者通常需要额外的库来进行、[路由和与](../Page/Web应用框架.md "wikilink")[应用程序接口交互](../Page/应用程序接口.md "wikilink")。\[5\]\[6\]

[JavaScript分析服务](../Page/JavaScript.md "wikilink")[Libscore的数据表明](https://zh.wikipedia.org/wiki/Libscore "wikilink")，React正被[Netflix](../Page/Netflix.md "wikilink")、[Imgur](../Page/Imgur.md "wikilink")、[Bleacher
Report](https://zh.wikipedia.org/wiki/Bleacher_Report "wikilink")、[Feedly](../Page/Feedly.md "wikilink")、[Airbnb](https://zh.wikipedia.org/wiki/Airbnb "wikilink")、[SeatGeek](https://zh.wikipedia.org/wiki/SeatGeek "wikilink")、[HelloSign等诸多网站的主页使用](https://zh.wikipedia.org/wiki/HelloSign "wikilink")。\[7\]

## 历史

React由Facebook软件工程师乔丹·沃克（Jordan
Walke）创造，其理念受到[PHP](../Page/PHP.md "wikilink")
[HTML组件框架](../Page/HTML.md "wikilink")的影响。\[8\]React于2011年首次部署于Facebook的新闻源上；一年后又部署在[Instagram.com上](../Page/Instagram.md "wikilink")。\[9\]2013年5月，乔丹·沃克在JSConf
US正式将其开源。

, which enables native [Android](../Page/Android.md "wikilink"),
[iOS](../Page/IOS.md "wikilink"), and
[UWP](../Page/通用Windows平台.md "wikilink") development with React,
was announced at Facebook's React.js Conf in February 2015 and
open-sourced in March 2015.

On April 18, 2017, Facebook announced , a new core algorithm of React
framework library for building [user
interfaces](https://zh.wikipedia.org/wiki/user_interface "wikilink").\[10\]
React Fiber was to become the foundation of any future improvements and
feature development of the React framework.\[11\]

On April 19, 2017, React 360 V1.0.0 was released to the public.\[12\]
This allowed developers with experience using react to jump into VR
development.

On September 26, 2017, React 16.0 was released to the public.\[13\]

On February 16, 2019, React 16.8 was released to the public.\[14\] The
release introduced React Hooks\[15\].

## Basic usage

The following is a rudimentary example of React usage in HTML with
[JSX](../Page/React.md "wikilink") and JavaScript.

``` html numberLines
<div id="myReactApp"></div>

<script type="text/babel">
  class Greeter extends React.Component {
    render() {
      return <h1>{this.props.greeting}</h1>
    }
  }

  ReactDOM.render(<Greeter greeting="Hello World!" />, document.getElementById('myReactApp'));
</script>
```

The `Greeter` class is a React component that accepts a property
`greeting`. The `ReactDOM.render` method creates an instance of the
`Greeter` component, sets the `greeting` property to `'Hello World'` and
inserts the rendered component as a child element to the DOM element
with id `myReactApp`.

When displayed in a web browser the result will be

``` html
<div id="myReactApp">
  <h1>Hello World!</h1>
</div>
```

## Notable features

### One-way data binding with props

Properties (commonly, *props*) are passed to a component from the parent
component. Components receive props as a single set of immutable
values\[16\] (a JavaScript object).

### Stateful components

States hold values throughout the component and can be passed to child
components through props:

``` js numberLines
class ParentComponent extends React.Component {
  state = { color: 'green' };
  render() {
    return (
      <ChildComponent color={this.state.color} />
    );
  }
}
```

### Virtual DOM

Another notable feature is the use of a "virtual [Document Object
Model](../Page/文档对象模型.md "wikilink")", or "virtual DOM". React creates
an in-memory data-structure cache, computes the resulting differences,
and then updates the browser's displayed DOM efficiently.\[17\] This
allows the programmer to write code as if the entire page is rendered on
each change, while the React libraries only render subcomponents that
actually change.

### Lifecycle methods

Lifecycle methods are [hooks](../Page/钩子编程.md "wikilink") which allow
execution of code at set points during the component's lifetime.

  - `shouldComponentUpdate` allows the developer to prevent unnecessary
    re-rendering of a component by returning false if a render is not
    required.
  - `componentDidMount` is called once the component has 'mounted' (the
    component has been created in the user interface, often by
    associating it with a [DOM](../Page/文档对象模型.md "wikilink") node).
    This is commonly used to trigger data loading from a remote source
    via an [API](../Page/应用程序接口.md "wikilink").
  - `componentWillUnmount` is called immediately before the component is
    torn down or 'unmounted'. This is commonly used to clear resource
    demanding dependencies to the component that will not simply be
    removed with the unmounting of the component (e.g. removing any
    'setInterval()' instances that are related to the component, or an
    'eventListener' set on the 'document' because of the presence of the
    component)
  - `render` is the most important lifecycle method and the only
    required one in any component. It is usually called every time the
    component's state is updated, reflecting changes in the user
    interface.

### JSX

JSX (JavaScript XML) is an extension to the JavaScript language
syntax.\[18\] Similar in appearance to HTML, JSX provides a way to
structure component rendering using syntax familiar to many developers.
React components are typically written using JSX, although they do not
have to be (components may also be written in pure JavaScript). JSX is
similar to another extension syntax created by Facebook for PHP, .

An example of JSX code:

``` js numberLines
class App extends React.Component {
  render() {
    return (
      <div>
        <p>Header</p>
        <p>Content</p>
        <p>Footer</p>
      </div>
    );
  }
}
```

  - Nested elements

Multiple elements on the same level need to be wrapped in a single
container element such as the `<div>` element shown above, or returned
as an array\[19\].

  - Attributes

JSX provides a range of element attributes designed to mirror those
provided by HTML. Custom attributes can also be passed to the
component\[20\]. All attributes will be received by the component as
props.

  - JavaScript expressions

JavaScript expressions (but not statements) can be used inside JSX with
curly brackets `{}`:

``` js
  <h1>{10+1}</h1>
```

The example above will render

``` html
  <h1>11</h1>
```

  - Conditional statements

[If–else statements](https://zh.wikipedia.org/wiki/條件運算式 "wikilink")
cannot be used inside JSX but conditional expressions can be used
instead. The example below will render `{ i === 1 ? 'true' : 'false' }`
as the string `'true'` because `i` is equal to 1.

``` js numberLines
class App extends React.Component {
  render() {
    const i = 1;
    return (
      <div>
        <h1>{ i === 1 ? 'true' : 'false' }</h1>
      </div>
    );
  }
}
```

The above will render:

``` html
<div>
  <h1>true</h1>
</div>
```

Functions and JSX can be used in conditionals:

``` js+genshitext numberLines
class App extends React.Component {
  render() {
    const sections = [1, 2, 3];
    return (
      <div>
        {sections.length > 0 && sections.map(n => (
            /* 'key' is used by react to keep track of list items and their changes */
            <div key={"section-" + n}>Section {n}</div>
        ))}
      </div>
    );
  }
}
```

The above will render:

``` html
<div>
  <div>Section 1</div>
  <div>Section 2</div>
  <div>Section 3</div>
</div>
```

Code written in JSX requires conversion with a tool such as
[Babel](../Page/Babel_\(編譯器\).md "wikilink") before it can be understood
by web browsers.\[21\] This processing is generally performed during a
[software build](https://zh.wikipedia.org/wiki/軟體組建 "wikilink") process
before the application is
[deployed](https://zh.wikipedia.org/wiki/软件部署 "wikilink").

### Architecture beyond HTML

The basic architecture of React applies beyond rendering HTML in the
browser. For example, Facebook has dynamic charts that render to
`<canvas>` tags,\[22\] and Netflix and
[PayPal](../Page/PayPal.md "wikilink") use universal loading to render
identical HTML on both the server and client.\[23\]\[24\]

## Common idioms

React does not attempt to provide a complete 'application framework'. It
is designed specifically for building user interfaces\[25\] and
therefore does not include many of the tools some developers might
consider necessary to build an application. This allows the choice of
whichever libraries the developer prefers to accomplish tasks such as
performing network access or local data storage. Common patterns of
usage have emerged as the library matures.

### Use of the Flux architecture

To support React's concept of unidirectional data flow (which might be
contrasted with [AngularJS's](../Page/Angular.md "wikilink")
bidirectional flow), the Flux architecture represents an alternative to
the popular [model-view-controller](../Page/MVC.md "wikilink")
architecture. Flux features *actions* which are sent through a central
*dispatcher* to a *store*, and changes to the store are propagated back
to the view\[26\]. When used with React, this propagation is
accomplished through component properties.

Flux can be considered a variant of the [observer
pattern](../Page/观察者模式.md "wikilink")\[27\].

A React component under the Flux architecture should not directly modify
any props passed to it, but should be passed callback functions that
create *actions* which are sent by the dispatcher to modify the store.
The action is an object whose responsibility is to describe what has
taken place: for example, an action describing one user 'following'
another might contain a user id, a target user id, and the type
`USER_FOLLOWED_ANOTHER_USER`\[28\]. The stores (which can be thought of
as models) can alter themselves in response to actions received from the
dispatcher.

This pattern is sometimes expressed as "properties flow down, actions
flow up". Many implementations of Flux have been created since its
inception, perhaps the most well-known being
[Redux](../Page/Redux_\(JavaScript函式庫\).md "wikilink") which features a
single store, often called a .\[29\]

## Future development

Project status can be tracked via the core team discussion forum.\[30\]
However, major changes to React go through the Future of React
repository issues and [pull
requests](https://zh.wikipedia.org/wiki/分散式版本控制 "wikilink").\[31\]\[32\]
This enables the React community to provide feedback on new potential
features, experimental APIs and JavaScript syntax improvements.

### Sub projects

The status of the React sub-projects used to be available in the project
wiki.\[33\]

### Facebook Contributor License Agreement (CLA)

Facebook requires contributors to React to sign the Facebook
.\[34\]\[35\]

## Criticism

A criticism of React is that it has high memory (RAM) requirements,
since it uses the concept of a "Virtual DOM". This is where "a
representation of a UI is kept in memory and synced with the 'real' DOM
by a library such as ReactDOM".\[36\] As well, due to its Virtual DOM
abstraction, React versions including 16 work poorly with the browser's
built-in component model\[37\], and thus with alternative libraries
which rely on browser standards to implement their components.

## Licensing controversy

The initial public release of React in May 2013 used a standard [Apache
License 2.0](../Page/Apache许可证.md "wikilink"). In October 2014, React
0.12.0 replaced this with a [3-clause BSD
license](../Page/BSD许可证.md "wikilink") and added a separate
PATENTS text file that permits usage of any Facebook patents related to
the software:\[38\]

> The license granted hereunder will terminate, automatically and
> without notice, for anyone that makes any claim (including by filing
> any lawsuit, assertion or other action) alleging (a) direct, indirect,
> or contributory infringement or inducement to infringe any patent: (i)
> by Facebook or any of its subsidiaries or affiliates, whether or not
> such claim is related to the Software, (ii) by any party if such claim
> arises in whole or in part from any software, product or service of
> Facebook or any of its subsidiaries or affiliates, whether or not such
> claim is related to the Software, or (iii) by any party relating to
> the Software; or (b) that any right in any patent claim of Facebook is
> invalid or unenforceable.

This unconventional clause caused some controversy and debate in the
React user community, because it could be interpreted to empower
Facebook to revoke the license in many scenarios, for example, if
Facebook sues the licensee prompting them to take "other action" by
publishing the action on a blog or elsewhere. Many expressed concerns
that Facebook could unfairly exploit the termination clause or that
integrating React into a product might complicate a startup company's
future acquisition.\[39\]

Based on community feedback, Facebook updated the patent grant in April
2015 to be less ambiguous and more permissive:\[40\]

> The license granted hereunder will terminate, automatically and
> without notice, if you (or any of your subsidiaries, corporate
> affiliates or agents) initiate directly or indirectly, or take a
> direct financial interest in, any Patent Assertion: (i) against
> Facebook or any of its subsidiaries or corporate affiliates, (ii)
> against any party if such Patent Assertion arises in whole or in part
> from any software, technology, product or service of Facebook or any
> of its subsidiaries or corporate affiliates, or (iii) against any
> party relating to the Software. \[...\] A "Patent Assertion" is any
> lawsuit or other action alleging direct, indirect, or contributory
> infringement or inducement to infringe any patent, including a
> cross-claim or counterclaim.\[41\]

The [Apache Software Foundation](../Page/Apache软件基金会.md "wikilink")
considered this licensing arrangement to be incompatible with its
licensing policies, as it "passes along risk to downstream consumers of
our software imbalanced in favor of the licensor, not the licensee,
thereby violating our Apache legal policy of being a universal donor",
and "are not a subset of those found in the \[Apache License 2.0\], and
they cannot be sublicensed as \[Apache License 2.0\]".\[42\]. In August
2017, Facebook dismissed the Apache Foundation's downstream concerns and
refused to reconsider their license\[43\]\[44\]. The following month,
[WordPress](../Page/WordPress.md "wikilink") decided to switch their
Gutenberg and Calypso projects away from React.\[45\]

On September 23, 2017, Facebook announced that the following week, it
would re-license Flow, Jest, React, and Immutable.js under a standard
[MIT License](../Page/MIT許可證.md "wikilink"); the company stated that
React was "the foundation of a broad ecosystem of open source software
for the web", and that they did not want to "hold back forward progress
for nontechnical reasons."\[46\]

On September 26, 2017, React 16.0.0 was released with the MIT
license.\[47\] The MIT license change has also been backported to the
15.x release line with React 15.6.2.\[48\]

## See also

  - [AngularJS](../Page/Angular.md "wikilink")

  -
  - [Vue.js](../Page/Vue.js.md "wikilink")

  -
  -
## References

## External links

  -
  - [React Example](https://reactjsexample.com)

[Category:2015年软件](https://zh.wikipedia.org/wiki/Category:2015年软件 "wikilink")
[Category:AJAX](https://zh.wikipedia.org/wiki/Category:AJAX "wikilink")
[Category:Facebook軟體](https://zh.wikipedia.org/wiki/Category:Facebook軟體 "wikilink")
[Category:JavaScript网页框架](https://zh.wikipedia.org/wiki/Category:JavaScript网页框架 "wikilink")
[Category:富網路應用程式框架](https://zh.wikipedia.org/wiki/Category:富網路應用程式框架 "wikilink")
[Category:使用BSD许可证的软件](https://zh.wikipedia.org/wiki/Category:使用BSD许可证的软件 "wikilink")

1.

2.

3.

4.

5.

6.

7.

8.

9.

10.

11.

12. <https://github.com/facebook/react-360/releases>

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

36. <https://reactjs.org/docs/faq-internals.html>

37. <https://custom-elements-everywhere.com/>

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