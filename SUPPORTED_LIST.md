<!-- DO NOT MODIFY THIS FILE. AUTO-GENERATED USING `deno run gen` -->

# Supported Linters & Formatters

Please create an Pull Request if you see any mismatched documentation or typos.

## Default Configurations

Here is a list of languages that are automatically set and configured when `default_config` is enabled. For information
on how to set `default_config` check the docs:
[`:help efmls-configs-defaults`](https://github.com/creativenull/efmls-configs-nvim#default-configuration-help-efmls-configs-defaults).

| **Filetype** | **Default Linter** | **Default Formatter** |
|--------------|--------------------|-----------------------|
| CSS/SCSS/LESS/SASS | `stylelint` | `prettier` |
| Javascript/Typescript | `eslint` | `prettier` |
| Go | `golangci_lint` |  |
| Html |  | `prettier` |
| Lua | `luacheck` | `stylua` |
| Php | `phpcs` | `phpcbf` |
| Python | `flake8` | `autopep8` |
| Ruby | `reek` |  |
| Vim | `vint` |  |

## Linters

### `js_standard`

```lua
local js_standard = require("efmls-configs.linters.js_standard")
```

### `slither`

```lua
local slither = require("efmls-configs.linters.slither")
```

### `golint`

```lua
local golint = require("efmls-configs.linters.golint")
```

### `pylint`

```lua
local pylint = require("efmls-configs.linters.pylint")
```

### `proselint`

```lua
local proselint = require("efmls-configs.linters.proselint")
```

### `redpen`

```lua
local redpen = require("efmls-configs.linters.redpen")
```

### `ameba`

```lua
local ameba = require("efmls-configs.linters.ameba")
```

### `php`

```lua
local php = require("efmls-configs.linters.php")
```

### `psalm`

```lua
local psalm = require("efmls-configs.linters.psalm")
```

### `phpstan`

```lua
local phpstan = require("efmls-configs.linters.phpstan")
```

### `flake8`

```lua
local flake8 = require("efmls-configs.linters.flake8")
```

### `write_good`

```lua
local write_good = require("efmls-configs.linters.write_good")
```

### `cppcheck`

```lua
local cppcheck = require("efmls-configs.linters.cppcheck")
```

### `mcs`

```lua
local mcs = require("efmls-configs.linters.mcs")
```

### `clang_tidy`

```lua
local clang_tidy = require("efmls-configs.linters.clang_tidy")
```

### `stylelint`

```lua
local stylelint = require("efmls-configs.linters.stylelint")
```

### `flawfinder`

```lua
local flawfinder = require("efmls-configs.linters.flawfinder")
```

### `dmd`

```lua
local dmd = require("efmls-configs.linters.dmd")
```

### `hadolint`

```lua
local hadolint = require("efmls-configs.linters.hadolint")
```

### `dartanalyzer`

```lua
local dartanalyzer = require("efmls-configs.linters.dartanalyzer")
```

### `phpcs`

```lua
local phpcs = require("efmls-configs.linters.phpcs")
```

### `go_revive`

```lua
local go_revive = require("efmls-configs.linters.go_revive")
```

### `solhint`

```lua
local solhint = require("efmls-configs.linters.solhint")
```

### `reek`

```lua
local reek = require("efmls-configs.linters.reek")
```

### `clazy`

```lua
local clazy = require("efmls-configs.linters.clazy")
```

### `vale`

```lua
local vale = require("efmls-configs.linters.vale")
```

### `shellcheck`

```lua
local shellcheck = require("efmls-configs.linters.shellcheck")
```

### `phan`

```lua
local phan = require("efmls-configs.linters.phan")
```

### `clj_kondo`

```lua
local clj_kondo = require("efmls-configs.linters.clj_kondo")
```

### `fish`

```lua
local fish = require("efmls-configs.linters.fish")
```

### `alex`

```lua
local alex = require("efmls-configs.linters.alex")
```

### `staticcheck`

```lua
local staticcheck = require("efmls-configs.linters.staticcheck")
```

### `xo`

```lua
local xo = require("efmls-configs.linters.xo")
```

### `statix`

```lua
local statix = require("efmls-configs.linters.statix")
```

### `rubocop`

```lua
local rubocop = require("efmls-configs.linters.rubocop")
```

### `eslint`

```lua
local eslint = require("efmls-configs.linters.eslint")
```

### `cpplint`

```lua
local cpplint = require("efmls-configs.linters.cpplint")
```

### `yamllint`

```lua
local yamllint = require("efmls-configs.linters.yamllint")
```

### `joker`

```lua
local joker = require("efmls-configs.linters.joker")
```

### `fecs`

```lua
local fecs = require("efmls-configs.linters.fecs")
```

### `textlint`

```lua
local textlint = require("efmls-configs.linters.textlint")
```

### `vint`

```lua
local vint = require("efmls-configs.linters.vint")
```

### `bashate`

```lua
local bashate = require("efmls-configs.linters.bashate")
```

### `eslint_d`

```lua
local eslint_d = require("efmls-configs.linters.eslint_d")
```

### `sorbet`

```lua
local sorbet = require("efmls-configs.linters.sorbet")
```

### `ansible_lint`

```lua
local ansible_lint = require("efmls-configs.linters.ansible_lint")
```

### `djlint`

```lua
local djlint = require("efmls-configs.linters.djlint")
```

### `golangci_lint`

```lua
local golangci_lint = require("efmls-configs.linters.golangci_lint")
```

### `gcc`

```lua
local gcc = require("efmls-configs.linters.gcc")
```

### `languagetool`

```lua
local languagetool = require("efmls-configs.linters.languagetool")
```

### `debride`

```lua
local debride = require("efmls-configs.linters.debride")
```

### `luacheck`

```lua
local luacheck = require("efmls-configs.linters.luacheck")
```

### `vulture`

```lua
local vulture = require("efmls-configs.linters.vulture")
```

## Formatters

### `pint`

```lua
local pint = require("efmls-configs.formatters.pint")
```

### `prettier_standard`

```lua
local prettier_standard = require("efmls-configs.formatters.prettier_standard")
```

### `cbfmt`

```lua
local cbfmt = require("efmls-configs.formatters.cbfmt")
```

### `js_standard`

```lua
local js_standard = require("efmls-configs.formatters.js_standard")
```

### `lua_format`

```lua
local lua_format = require("efmls-configs.formatters.lua_format")
```

### `gofmt`

```lua
local gofmt = require("efmls-configs.formatters.gofmt")
```

### `dotnet_format`

```lua
local dotnet_format = require("efmls-configs.formatters.dotnet_format")
```

### `rustfmt`

```lua
local rustfmt = require("efmls-configs.formatters.rustfmt")
```

### `php_cs_fixer`

```lua
local php_cs_fixer = require("efmls-configs.formatters.php_cs_fixer")
```

### `clang_tidy`

```lua
local clang_tidy = require("efmls-configs.formatters.clang_tidy")
```

### `dfmt`

```lua
local dfmt = require("efmls-configs.formatters.dfmt")
```

### `shfmt`

```lua
local shfmt = require("efmls-configs.formatters.shfmt")
```

### `black`

```lua
local black = require("efmls-configs.formatters.black")
```

### `goimports`

```lua
local goimports = require("efmls-configs.formatters.goimports")
```

### `terraform_fmt`

```lua
local terraform_fmt = require("efmls-configs.formatters.terraform_fmt")
```

### `nixfmt`

```lua
local nixfmt = require("efmls-configs.formatters.nixfmt")
```

### `prettier_d`

```lua
local prettier_d = require("efmls-configs.formatters.prettier_d")
```

### `phpcbf`

```lua
local phpcbf = require("efmls-configs.formatters.phpcbf")
```

### `golines`

```lua
local golines = require("efmls-configs.formatters.golines")
```

### `stylua`

```lua
local stylua = require("efmls-configs.formatters.stylua")
```

### `autopep8`

```lua
local autopep8 = require("efmls-configs.formatters.autopep8")
```

### `astyle`

```lua
local astyle = require("efmls-configs.formatters.astyle")
```

### `xo`

```lua
local xo = require("efmls-configs.formatters.xo")
```

### `dartfmt`

```lua
local dartfmt = require("efmls-configs.formatters.dartfmt")
```

### `uncrustify`

```lua
local uncrustify = require("efmls-configs.formatters.uncrustify")
```

### `eslint`

```lua
local eslint = require("efmls-configs.formatters.eslint")
```

### `joker`

```lua
local joker = require("efmls-configs.formatters.joker")
```

### `fecs`

```lua
local fecs = require("efmls-configs.formatters.fecs")
```

### `prettier_eslint`

```lua
local prettier_eslint = require("efmls-configs.formatters.prettier_eslint")
```

### `eslint_d`

```lua
local eslint_d = require("efmls-configs.formatters.eslint_d")
```

### `forge_fmt`

```lua
local forge_fmt = require("efmls-configs.formatters.forge_fmt")
```

### `fish_indent`

```lua
local fish_indent = require("efmls-configs.formatters.fish_indent")
```

### `yapf`

```lua
local yapf = require("efmls-configs.formatters.yapf")
```

### `prettier`

```lua
local prettier = require("efmls-configs.formatters.prettier")
```

### `clang_format`

```lua
local clang_format = require("efmls-configs.formatters.clang_format")
```

