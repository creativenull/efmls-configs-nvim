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

## Documentation

Documentation can be accessed via [`:help efmls-configs`](./doc/efmls-configs.txt) or [further below](#setup).

## Requirements

+ [Neovim >= 0.5][neovim]
+ [nvim-lspconfig][lspconfig]
+ [efm-langserver][efm-langserver], installed globally - follow instructions on the repo

## Installation

Install with your favorite plugin manager or just use builtin packages.

### lazy.nvim

```lua
{
  'creativenull/efmls-configs-nvim',
  version = 'v1.x.x', -- version is optional, but recommended
  dependencies = { 'neovim/nvim-lspconfig' },
}
```

### packer.nvim

```lua
use {
  'creativenull/efmls-configs-nvim',
  tag = 'v1.*', -- tag is optional, but recommended
  requires = { 'neovim/nvim-lspconfig' },
}
```

### vim-plug

```vim
Plug 'neovim/nvim-lspconfig'
Plug 'creativenull/efmls-configs-nvim', { 'tag': 'v1.*' } " tag is optional, but recommended
```

## Setup

See also `:help efmls-configs-setup` to view inside neovim.

To get started, make a `languages` table that define the linters/formatters for the language. Or use the defaults provided
by this plugin if you don't want to list for each language.

```lua
-- Register linters and formatters per language
local eslint = require('efmls-configs.linters.eslint')
local prettier = require('efmls-configs.formatters.prettier')
local stylua = require('efmls-configs.formatters.stylua')
local languages = {
  typescript = { eslint, prettier },
  lua = { stylua },
}

-- Or use the defaults provided by this plugin
-- check doc/SUPPORTED_LIST.md for all the defaults provided
-- local languages = require('efmls-configs.defaults').languages()

local efmls_config = {
  filetypes = vim.tbl_keys(languages),
  settings = {
    rootMarkers = { '.git/' },
    languages = languages,
  },
  init_options = {
    documentFormatting = true,
    documentRangeFormatting = true,
  },
}

require('lspconfig').efm.setup(vim.tbl_extend('force', efmls_config, {
  -- Pass your cutom config below like on_attach and capabilities
  -- on_attach = on_attach,
  -- capabilities = capabilities,
}))
```

## Default Configuration

See also `:help efmls-configs-defaults` to view docs inside neovim.

Default configurations are an opt-in feature. To see all the configurations provided by default go to [`doc/SUPPORTED_LIST.md`](./doc/SUPPORTED_LIST.md).

You can use a list of defaults provided by this plugin, in-case you don't want to specify configuration
for each language.

```lua
local languages = require('efmls-configs.defaults').languages()
```

To extend and add additional tools or to override existing defaults registered:

```lua
local languages = require('efmls-configs.defaults').languages()
languages = vim.tbl_extend('force', languages, {
  -- you custom languages, or overrides
  html = {
    require('efmls-configs.formatters.prettier')
  }
})
```

## Credits

Credits goes to the following projects for inspiration:

+ [efm-langserver][efm-langserver] - for the awesome language server to provide linters/formatters through a LSP protocol
+ [ale][ale] - for a huge list of supported linters/formatters to look through

[efm-langserver]: https://github.com/mattn/efm-langserver
[schema-file]: https://github.com/mattn/efm-langserver/blob/master/schema.json
[ale]: https://github.com/dense-analyses/ale
[nvim-lsp]: https://neovim.io/doc/user/lsp.html
[neovim]: https://github.com/neovim/neovim
[lspconfig]: https://github.com/neovim/nvim-lspconfig
