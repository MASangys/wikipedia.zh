**Vala**是一門[物件導向的](https://zh.wikipedia.org/wiki/物件導向 "wikilink")[程式語言](https://zh.wikipedia.org/wiki/程式語言 "wikilink")，由[編譯器](../Page/編譯器.md "wikilink")產生[C語言代碼和使用](https://zh.wikipedia.org/wiki/C語言 "wikilink")[GObject](../Page/GObject.md "wikilink")系統，允许在[Gnome运行时库的基础上使用一些现代的编程技巧](https://zh.wikipedia.org/wiki/Gnome "wikilink")。通过使用[GLib](../Page/GLib.md "wikilink")和[GObject](../Page/GObject.md "wikilink")，Vala提供了动态类型系统和补助内存管理的功能。



## Vala 语言特点或优势

**1、语法兼容C\#和Java，表达能力强，生产力高**

有C\#/Java 的强大表达能力，又有原生编译的性能和速度，更有接地气的独特特性；

[面向 Java 开发者的Vala 特性介绍](https://wiki.gnome.org/Projects/Vala/ValaForJavaProgrammers) [面向 C\# 开发者的 Vala 特性介绍](https://wiki.gnome.org/Projects/Vala/ValaForCSharpProgrammers)

**2、内存所有权和使用引用计数管理，内存使用安全无烦恼**

**3、支持接口：支持抽象接口，也支持接口实现**

接口实现类似于PHP traits 和 JavaScript 的mixin的功能；

**4、点分名字空间支持大型应用开发**

在 [KangarooDB](https://dbkangaroo.github.io/) 应用中，已经用 Vala 开发了210个源码模块，还有 Vala 编译器就是一个最典型的大型应用；

**5、语言级别的正则表达式支持**

正则表达式给予了开发者强大的力量，在代码中无处不在，越用越熟练。

顺便推荐好工具： <https://regex101.com/>

**6、有C的速度和良好的互操作性支持**

可以生成C头文件和C代码并获得全平台支持，也可以Vala与C混合编译。

**7、强大且成熟的类库支持（官方支持约250个库）**

基于GLib的强大类库体系，有工业级成熟度的各种库和GUI框架。

默认基于 GObject 的对象系统，也支持构建自己的单根对象体系。

**8、有丰富且完善的文档支持（valadoc.org）也有大量开源项目可供参考学习**

**9、有多种语言服务器【LSP】实现，支持各种编辑器和IDE**

<https://gitlab.gnome.org/esodan/gvls>

<https://github.com/benwaffle/vala-language-server>

**10、Gnome 和 Elementary OS官方语言，并获得IBM公司研究机构采用**

有大型机构和大公司采用 Vala 能给予普通开发者更大的信心加持，相信有更多开发者成为 Vala 语言用户；

## 支持工具

集成开发环境（IDE）：

[Visual Studio Code](../Page/Visual_Studio_Code.md "wikilink")（Extension: Vala Code / Vala Language Client + Vala Grammar）

[GNOME_Builder](../Page/GNOME_Builder.md "wikilink")


\== 示范代码 == 一个简单的“[Hello world](https://zh.wikipedia.org/wiki/Hello_world "wikilink")”程序：

``` vala
void main () {
    print ("Hello World\n");
}
```

更完整的一个版本，表现了**Vala**的一些[面向对象的特性](../Page/面向对象程序设计.md "wikilink")：

``` vala
class Sample : Object {
    void run () {
        stdout.printf ("Hello World\n");
    }

    static void main (string[] args) {
        var sample = new Sample ();
        sample.run ();
    }
}
```

Vala 接口代码案例（带有默认实现）

``` vala
using Gtk;
using Kangaroo.Illuminate.Contracts.Database;
using Kangaroo.Illuminate.Foundation;

namespace Kangaroo.Gui.Contracts
{
    public interface IMetaLoader : GLib.Object {
        public abstract IConnection connection { get; }

        public virtual void fill_model_with_type(Gtk.ListStore model, DbMetaType meta_type)
        {
            Gtk.TreeIter tree_iter;
            GLib.Value cell_data_value;

            model.clear();
            model.append (out tree_iter);
            cell_data_value = GLib.Value(Type.STRING);
            cell_data_value.set_string("");
            model.set_value(tree_iter, 0, cell_data_value);

            string[] sql_meta_array = connection.inspector().support(meta_type);
            foreach (var meta_value in sql_meta_array) {
                model.append (out tree_iter);
                cell_data_value = GLib.Value(typeof(string));
                cell_data_value.set_string(meta_value);
                model.set_value(tree_iter, 0, cell_data_value);
            }
        }

        public virtual async void fill_model_with_sql(Gtk.ListStore model, string sql, int column = 0)
        {
            string str_value;
            Gtk.TreeIter tree_iter;
            GLib.Value cell_data_value;

            try {
                model.clear();
                model.append (out tree_iter);
                cell_data_value = GLib.Value(Type.STRING);
                cell_data_value.set_string("");
                model.set_value(tree_iter, 0, cell_data_value);

                Gda.DataModel data_model = yield connection.execute_as_model(sql);
                for (int index = 0; index < data_model.get_n_rows(); index++) {
                    str_value = data_model.get_value_at(column, index).get_string();

                    model.append (out tree_iter);
                    cell_data_value = GLib.Value(Type.STRING);
                    cell_data_value.set_string(str_value);
                    model.set_value(tree_iter, 0, cell_data_value);
                }
            } catch (Error e) {
                LoggingService.error(null, "query data failed: %s.", e.message);
            }
        }

        public virtual void fill_list_with_type(Gtk.ComboBoxText combobox, DbMetaType meta_type)
        {
            combobox.remove_all();
            combobox.append_text("");

            string[] sql_meta_array = connection.inspector().support(meta_type);
            foreach (var meta_value in sql_meta_array) {
                combobox.append_text(meta_value);
            }
        }

        public virtual async void fill_list_with_sql(Gtk.ComboBoxText combobox, string sql, int column = 0)
        {
            combobox.remove_all();
            combobox.append_text("");

            try {
                string str_value;
                Gda.DataModel data_model = yield connection.execute_as_model(sql);
                for (int index = 0; index < data_model.get_n_rows(); index++) {
                    str_value = data_model.get_value_at(column, index).get_string();
                    combobox.append_text(str_value);
                }
            } catch (Error e) {
                LoggingService.error(null, "query data failed: %s.", e.message);
            }
        }
    }
}
```


\== 外部链接 ==

  - [The Vala Programming Language](http://live.gnome.org/Vala), on GNOME Live\!
  - Vala 语言书籍《Introducing Vala Programming》 （[Apress](https://www.apress.com/gp/book/9781484253793) / [Amazon](https://www.amazon.com/Introduction-Vala-Programming-Boost-Productivity/dp/1983202347)）
  - [面向 Java 开发者的Vala 特性介绍](https://wiki.gnome.org/Projects/Vala/ValaForJavaProgrammers)
  - [面向 C\# 开发者的 Vala 特性介绍](https://wiki.gnome.org/Projects/Vala/ValaForCSharpProgrammers)
  - [Benchmark of Vala versus C\# and C](http://code.google.com/p/vala-benchmarks/)
  - [Vala 语言编程规范（Geary版）](https://wiki.gnome.org/Apps/Geary/CodingConventions)
  - Vala 的语言服务器（Language Server Protocol）项目： [VLS](https://github.com/benwaffle/vala-language-server)， [GVLS](https://gitlab.gnome.org/esodan/gvls)
  - Vala 语言社区： [The Vala community on GitHub](https://github.com/vala-lang)
  - [Vala 语言案例列表](https://wiki.gnome.org/Projects/Vala/Documentation#Projects_Developed_in_Vala)
  - [Vala 语言开发的数据库管理工具： KangarooDB](https://dbkangaroo.github.io/)
  - [Vala 语言库：官方库](https://github.com/GNOME/vala/tree/mainline/vapi)
  - [Vala 语言库：第三方库](https://github.com/GNOME/vala-extra-vapis/)

[Category:面向对象的编程语言](https://zh.wikipedia.org/wiki/Category:面向对象的编程语言 "wikilink") [Category:C語言家族](https://zh.wikipedia.org/wiki/Category:C語言家族 "wikilink")