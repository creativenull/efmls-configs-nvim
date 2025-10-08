# efmls-configs-nvim

<a href="https://dotfyle.com/plugins/creativenull/efmls-configs-nvim">
  <img src="https://dotfyle.com/plugins/creativenull/efmls-configs-nvim/shield" alt="Configs on dotfyle">
</a>

An unofficial collection of linters and formatters configured for [efm-langserver][efm-langserver] for neovim.

## Supported linters and formatters

[doc/SUPPORTED_LIST.md](./doc/SUPPORTED_LIST.md)

## Features

- Out-of-box configurations for 90+ tools (linters and formatters)
- Intelligently detect tools installed project-wide or system-wide - works only for node/npm, php/composer and
  ruby/bundler (additional support for other build tools coming soon, welcome any contributions)
- `:checkhealth` integration for status check

## Documentation

Documentation can be accessed via [`:help efmls-configs`](./doc/efmls-configs.txt) or [further below](#setup).

## Requirements

- [Neovim >= 0.7][neovim]
- [efm-langserver][efm-langserver] installed globally. If using [mason.nvim](https://github.com/williamboman/mason.nvim)
  then install with `:MasonInstall efm`.

## Installation

Install with your favorite plugin manager or just use builtin packages.

### lazy.nvim

```lua
{
  'creativenull/efmls-configs-nvim',
  version = 'v1.x.x', -- version is optional, but recommended
  dependencies = { 'neovim/nvim-lspconfig' }, -- not required if using nvim >= 0.11
}
```

### vim-plug

```vim
Plug 'neovim/nvim-lspconfig' " not required if using nvim >= 0.11
Plug 'creativenull/efmls-configs-nvim', { 'tag': 'v1.*' } " tag is optional, but recommended
```

## Setup

See also `:help efmls-configs-setup` to view docs inside neovim.

To get started, make a `languages` table that will define configurations for the language of your choice. Or use the
defaults provided by this plugin.

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
-- check doc/SUPPORTED_LIST.md for the supported languages
--
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

-- If using nvim >= 0.11 then use the following
vim.lsp.config('efm', vim.tbl_extend('force', efmls_config, {
  cmd = { 'efm-langserver' },

  -- Pass your custom lsp config below like on_attach and capabilities
  --
  -- on_attach = on_attach,
  -- capabilities = capabilities,
}))

-- If using nvim <= 0.10 then use the following
require('lspconfig').efm.setup(vim.tbl_extend('force', efmls_config, {
  -- Pass your custom lsp config below like on_attach and capabilities
  --
  -- on_attach = on_attach,
  -- capabilities = capabilities,
}))
```

### Default Configurations

See also `:help efmls-configs-defaults` to view docs inside neovim.

Default configurations are an opt-in feature. To see all the configurations provided by default go to
[`doc/SUPPORTED_LIST.md`](./doc/SUPPORTED_LIST.md).

You can use a list of defaults provided by this plugin, in-case you don't want to specify configuration
for each language.

```lua
local languages = require('efmls-configs.defaults').languages()
```

To add additional tools which are not provided by default you can extend via `vim.tbl_extend()`. This can also be used
as a way to override defaults.

```lua
local languages = require('efmls-configs.defaults').languages()
languages = vim.tbl_extend('force', languages, {
  -- Custom languages, or override existing ones
  html = {
    require('efmls-configs.formatters.prettier'),
  },
})
```

### Tips and Tricks

#### Format on save

There are couple ways you can format your code on save.

1. Register an autocmd to run format on save:

```lua
local lsp_fmt_group = vim.api.nvim_create_augroup('LspFormattingGroup', {})
vim.api.nvim_create_autocmd('BufWritePost', {
  group = lsp_fmt_group,
  callback = function(ev)
    local efm = vim.lsp.get_active_clients({ name = 'efm', bufnr = ev.buf })

    if vim.tbl_isempty(efm) then
      return
    end

    vim.lsp.buf.format({ name = 'efm' })
  end,
})
```

2. If you do not want to write and maintain the code above, then you can rely on a plugin like
[lukas-reineke/lsp-format.nvim][lsp-format] which makes it easier to format on save.

## Troubleshooting

See also `:help efmls-configs-issues` to view docs inside neovim.

Always run `:checkhealth` to see if there are any issue, when you get no response from the linter or formatter
as you expected.

If you get "no executable found" issues in `:checkhealth`, this means that the linter or formatter was not found in the
provided filepath. Ensure that it is installed globally or in a valid filepath.

For nodejs/npm, php/composer, ruby/bundler: check if the linter or formatter is installed in your node_modules (npm),
vendor (composer/bundler) project folder, or installed globally.

### Mason setup issue (`:help efmls-configs-mason`)

If you use mason, then you don't need to add anything extra for efmls-configs for it to work. But if you are having
problems setting up then check the following:

1. Make sure you call mason `setup()` before `vim.lsp.config('efm', {...})` (if using nvim 0.10 and below, then make sure it's before lspconfig `setup()`)
2. Run `:!which <tool>` to check if the path is provided by mason

## Alternatives

- ALE - [https://github.com/dense-analysis/ale](https://github.com/dense-analysis/ale)
- diagnostic-languageserver - [https://github.com/iamcco/diagnostic-languageserver](https://github.com/iamcco/diagnostic-languageserver)
- guard.nvim - [https://github.com/nvimdev/guard.nvim](https://github.com/nvimdev/guard.nvim)
- nvim-lint - [https://github.com/mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)
- formatter.nvim - [https://github.com/mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)

## Credits

Credits goes to the following projects for inspiration:

- [efm-langserver][efm-langserver] for this awesome language server to provide an interface to run linters/formatters
  through a LSP protocol
- [ALE][ale] for a huge list of linters/formatters to look through and add them in here

[efm-langserver]: https://github.com/mattn/efm-langserver
[schema-file]: https://github.com/mattn/efm-langserver/blob/master/schema.json
[ale]: https://github.com/dense-analysis/ale
[nvim-lsp]: https://neovim.io/doc/user/lsp.html
[neovim]: https://github.com/neovim/neovim
[lspconfig]: https://github.com/neovim/nvim-lspconfig
[lsp-format]: https://github.com/lukas-reineke/lsp-format.nvim
