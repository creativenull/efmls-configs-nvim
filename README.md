# efmls-configs-nvim

<a href="https://dotfyle.com/plugins/creativenull/efmls-configs-nvim">
  <img src="https://dotfyle.com/plugins/creativenull/efmls-configs-nvim/shield" alt="Configs on dotfyle">
</a>

An unofficial collection of linters and formatters configured for [efm-langserver][efm-langserver] to work with the
built-in [nvim-lsp][nvim-lsp]. Works only for Neovim >= 0.5.

## Supported linters and formatters

Check out [SUPPORTED_LIST.md](./doc/SUPPORTED_LIST.md)

## Features

+ Out-of-box configurations for 70+ linters & formatters
+ Intelligently detect tools installed project-wide or system-wide - works only for node/npm, php/composer and
  ruby/bundler (additional support for other build tools coming soon)
+ Use `:checkhealth` for a quick diagnostic on tools, to check if tool is available
+ Ability to customize configurations for your specific project use-cases (see [Advanced Setup](#advanced-configuration-setup))

## Vim Docs

Documentation can be accessed via [`:help efmls-configs`](./doc/efmls-configs.txt) or [further below](#documentation).

## Requirements

+ [Neovim 0.5 and up][neovim]
+ [nvim-lspconfig][lspconfig]
+ [efm-langserver][efm-langserver], installed globally - follow instructions on the repo

## Installation

Install with your favorite plugin manager or just use builtin packages.

### lazy.nvim

```lua
{
  'creativenull/efmls-configs-nvim',
  version = 'v0.2.x', -- tag is optional
  dependencies = { 'neovim/nvim-lspconfig' },
}
```

### packer.nvim

```lua
use {
  'creativenull/efmls-configs-nvim',
  tag = 'v0.2.*', -- tag is optional
  requires = { 'neovim/nvim-lspconfig' },
}
```

### vim-plug

```vim
Plug 'neovim/nvim-lspconfig'
Plug 'creativenull/efmls-configs-nvim', { 'tag': 'v0.2.*' } " tag is optional
```

## Documentation

### Setup

See also `:help efmls-configs-setup` to view inside neovim.

#### Step 1

You need to first initialize the plugin with the `init()` function, this is where you can pass your LSP options like
`on_attach`, `capabilities`, `init_options`,  etc.

```lua
local function on_attach(client)
  print('Attached to ' .. client.name)
end

local efmls = require 'efmls-configs'
efmls.init {
  -- Your custom attach function
  on_attach = on_attach,

  -- Enable formatting provided by efm langserver
  init_options = {
    documentFormatting = true,
  },
}
```

#### Step 2

Finally, register the linters and formatters you want to run on the specific filetypes with the `setup()` function.
Below is an example to setup eslint and prettier to work with a `javascript` filetype.

```lua
local eslint = require 'efmls-configs.linters.eslint'
local prettier = require 'efmls-configs.formatters.prettier'
efmls.setup {
  javascript = {
    linter = eslint,
    formatter = prettier,
  },
}
```

### Default Configuration

See also `:help efmls-configs-defaults` to view inside neovim.

A default configuration for the supported filetypes is provided but not activated by default.

To activate the default configuration you can pass the `default_config` flag as true in the init function. Below are
the default values for `init()`:

```lua
efmls.init {
  -- Use a list of default configurations
  -- set by this plugin
  -- (Default: false)
  default_config = false,
}

efmls.setup()
```

You will still need to call the `setup()` after `init()` for the changes to take effect. You can still pass your custom
configurations to `setup()` as show in the [Setup section](#setup) and it will override any default configuration set
by `default_config` if it's the same filetype.

### Advanced Configuration Setup

See also `:help efmls-configs-advanced` to view inside neovim.

If you want to change some settings that are not provided in the default config, you can change them with `vim.tbl_extend`.
These configs take the same keys referenced in the [efm-langserver schema file][schema-file] in json format, aka
`camelCase`.

```lua
local eslint = require 'efmls-configs.linters.eslint'
eslint = vim.tbl_extend('force', eslint, {
  prefix = 'new eslint prefix',
  lintCommand = 'eslint --format visualstudio --stdin',
})

efmls.setup {
  javascript = { linter = eslint },
}
```

## Implementation Details (TODO)

+ [ ] Testing

## Credits

Credits goes to the following projects for inspiration:

+ [efm-langserver][efm-langserver] - for the awesome language server to provide linters/formatters through a LSP protocol
+ [ale][ale] - for a huge list of supported linters/formatters to look through

[efm-langserver]: https://github.com/mattn/efm-langserver
[schema-file]: https://github.com/mattn/efm-langserver/blob/master/schema.json
[ale]: https://github.com/dense-analysis/ale
[nvim-lsp]: https://neovim.io/doc/user/lsp.html
[neovim]: https://github.com/neovim/neovim
[lspconfig]: https://github.com/neovim/nvim-lspconfig
