}}} \]}}}

</li>

</ul>

<h2>

</h2>

{{\#if:

`| `

<li>

</li>

}}{{\#ifeq: {{\#if:|}} | Main Page

`| `

<li>

[Register for an account](https://zh.wikipedia.org/wiki/Wikipedia:Why_create_an_account? "wikilink") if you don't already have one

</li>

<li>

Visit the [Sandbox](https://zh.wikipedia.org/wiki/Wikipedia:Sandbox "wikilink") to make test edits

</li>

<li>

Check out the [Tutorial](https://zh.wikipedia.org/wiki/Wikipedia:Tutorial "wikilink") to learn more about editing

</li>

<li>

[Report errors on the Main Page](https://zh.wikipedia.org/wiki/Wikipedia:Main_Page/Errors "wikilink")

</li>

`| {{#ifeq: {{#if:``|``}} | Template`
`   | {{#switch:`
`        {{#ifexist: ``/doc`
`         | doc`
`        }}{{#ifexist: ``/sandbox`
`         | sandbox`
`        }}`
`      | doc = `

<li>

</li>

`      | sandbox = `

<li>

</li>

`      | docsandbox = `

<li>

</li>

`     }}`
`  }}{{#ifexist: `
`   | {{#ifeq: `` | `
`      |`
`      | {{#if: `
`         | `

<li>

</li>

<li>

</li>

`        }}`
`     }}`
`   | {{#if: `
`      |`

<li>

</li>

`    }}`
`  }}{{#ifexist: `
`   | {{#ifeq: `` | `
`      |`
`      | `

<li>

</li>

`     }}`
`  }}`

{{\#if: ||

<li>

</li>

}}

</li>

}}

</ul>

<div style="text-align:center; margin:auto;">

{{\#if:

`|{{#ifexist: `
`   |{{#ifeq: `` | `
`      |`
`      |`
`   }}`
` }}`

}} {{\#if: ||  }}

</div>

}} }}