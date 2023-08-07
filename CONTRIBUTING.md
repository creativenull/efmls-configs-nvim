# Contributing

## Requirements

- [stylua](https://github.com/JohnnyMorganz/StyLua) - for formatting
- [deno](https://deno.land/) - for documentation generation

## Add a tool (linter/formatter)

1. Read thru the efm-langserver readme and the schema to understand the structure. Additionally, you can go thru the
`linters/*.lua`/`formatters/*.lua` files to see examples and copy and paste the code and adjust them.

2. Add the metadata information above the file so that we can generate documentation for it. To end the metadata info,
  you must add a blank line after. Again follow the examples in any `linters/*.lua`/`formatters/*.lua` files.

```lua
-- Metadata
-- languages: langA,langB,langC
-- url: http://example.com


```

## Auto-generating Documentation

To create documentation for [`doc/SUPPORTED_LIST.md`](./doc/SUPPORTED_LIST.md) run the following:

```sh
deno task gen
```
