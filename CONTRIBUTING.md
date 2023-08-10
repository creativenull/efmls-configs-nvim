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

## Add a tool to `default_config` option

Users that use the `default_config` (`:help efmls-configs-defaults`) follow the tools registered in `lua/efmls-configs/defaults.json`.
If you want to add a tool for a language that is not defined, then this json file is the place to add them.

The linter/formatter name you add should match the filename in the `lua/efmls-configs/linters`/`lua/efmls-configs/formatters`
directory. For example, adding eslint to an html filetype. The following values in the `linters` property should match
`lua/efmls-configs/linters/eslint.lua`.

```json
{
  "defaults": [
    {
      "languages": ["html"],
      "linters": ["eslint"]
    }
  ]
}
```

## Auto-generating Documentation

Never touch the [`doc/SUPPORTED_LIST.md`](./doc/SUPPORTED_LIST.md)to add documentation for the tool you've add, to
create documentation for run the following:

```sh
deno task gen
```
