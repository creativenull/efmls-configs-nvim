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

## Languages

Below are the supported linters and formatters that are configured to run with efm-langserver. You can access
the table of contents of this document on the left hand corner of the file, in github (Or just a simple <kbd>Ctrl</kbd> + <kbd>F</kbd>
to search). Copy the `require` code into your `setup()` function (See example code:
[`:help efmls-configs-setup`](https://github.com/creativenull/efmls-configs-nvim#setup-help-efmls-configs-setup)).

### Misc

#### Linters

`textlint`

```lua
local textlint = require('efmls-configs.linters.textlint')
```

`languagetool`

```lua
local languagetool = require('efmls-configs.linters.languagetool')
```

`alex`

```lua
local alex = require('efmls-configs.linters.alex')
```

`write_good`

```lua
local write_good = require('efmls-configs.linters.write_good')
```

`redpen`

```lua
local redpen = require('efmls-configs.linters.redpen')
```

`proselint`

```lua
local proselint = require('efmls-configs.linters.proselint')
```

`vale`

```lua
local vale = require('efmls-configs.linters.vale')
```

### C

#### Linters

`clang_tidy`

```lua
local clang_tidy = require('efmls-configs.linters.clang_tidy')
```

`cppcheck`

```lua
local cppcheck = require('efmls-configs.linters.cppcheck')
```

`flawfinder`

```lua
local flawfinder = require('efmls-configs.linters.flawfinder')
```

`gcc`

```lua
local gcc = require('efmls-configs.linters.gcc')
```

`cpplint`

```lua
local cpplint = require('efmls-configs.linters.cpplint')
```

#### Formatters

`clang_tidy`

```lua
local clang_tidy = require('efmls-configs.formatters.clang_tidy')
```

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`astyle`

```lua
local astyle = require('efmls-configs.formatters.astyle')
```

`clang_format`

```lua
local clang_format = require('efmls-configs.formatters.clang_format')
```

### C++

#### Linters

`clang_tidy`

```lua
local clang_tidy = require('efmls-configs.linters.clang_tidy')
```

`cppcheck`

```lua
local cppcheck = require('efmls-configs.linters.cppcheck')
```

`gcc`

```lua
local gcc = require('efmls-configs.linters.gcc')
```

`clazy`

```lua
local clazy = require('efmls-configs.linters.clazy')
```

`cpplint`

```lua
local cpplint = require('efmls-configs.linters.cpplint')
```

#### Formatters

`clang_tidy`

```lua
local clang_tidy = require('efmls-configs.formatters.clang_tidy')
```

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`astyle`

```lua
local astyle = require('efmls-configs.formatters.astyle')
```

`clang_format`

```lua
local clang_format = require('efmls-configs.formatters.clang_format')
```

### Javascript

#### Linters

`js_standard`

```lua
local js_standard = require('efmls-configs.linters.js_standard')
```

`fecs`

```lua
local fecs = require('efmls-configs.linters.fecs')
```

`xo`

```lua
local xo = require('efmls-configs.linters.xo')
```

`eslint`

```lua
local eslint = require('efmls-configs.linters.eslint')
```

`eslint_d`

```lua
local eslint_d = require('efmls-configs.linters.eslint_d')
```

#### Formatters

`js_standard`

```lua
local js_standard = require('efmls-configs.formatters.js_standard')
```

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs`

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier_eslint`

```lua
local prettier_eslint = require('efmls-configs.formatters.prettier_eslint')
```

`prettier_standard`

```lua
local prettier_standard = require('efmls-configs.formatters.prettier_standard')
```

`xo`

```lua
local xo = require('efmls-configs.formatters.xo')
```

`eslint`

```lua
local eslint = require('efmls-configs.formatters.eslint')
```

`eslint_d`

```lua
local eslint_d = require('efmls-configs.formatters.eslint_d')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Go

#### Linters

`staticcheck`

```lua
local staticcheck = require('efmls-configs.linters.staticcheck')
```

`djlint`

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`golint`

```lua
local golint = require('efmls-configs.linters.golint')
```

`golangci_lint`

```lua
local golangci_lint = require('efmls-configs.linters.golangci_lint')
```

`go_revive`

```lua
local go_revive = require('efmls-configs.linters.go_revive')
```

#### Formatters

`gofmt`

```lua
local gofmt = require('efmls-configs.formatters.gofmt')
```

`golines`

```lua
local golines = require('efmls-configs.formatters.golines')
```

`goimports`

```lua
local goimports = require('efmls-configs.formatters.goimports')
```

### Sh

#### Linters

`shellcheck`

```lua
local shellcheck = require('efmls-configs.linters.shellcheck')
```

#### Formatters

`shfmt`

```lua
local shfmt = require('efmls-configs.formatters.shfmt')
```

### Bash

#### Linters

`shellcheck`

```lua
local shellcheck = require('efmls-configs.linters.shellcheck')
```

`bashate`

```lua
local bashate = require('efmls-configs.linters.bashate')
```

#### Formatters

`shfmt`

```lua
local shfmt = require('efmls-configs.formatters.shfmt')
```

### Python

#### Linters

`flake8`

```lua
local flake8 = require('efmls-configs.linters.flake8')
```

`djlint`

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`pylint`

```lua
local pylint = require('efmls-configs.linters.pylint')
```

`vulture`

```lua
local vulture = require('efmls-configs.linters.vulture')
```

#### Formatters

`black`

```lua
local black = require('efmls-configs.formatters.black')
```

`yapf`

```lua
local yapf = require('efmls-configs.formatters.yapf')
```

`autopep8`

```lua
local autopep8 = require('efmls-configs.formatters.autopep8')
```

### Php

#### Linters

`djlint`

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`phpstan`

```lua
local phpstan = require('efmls-configs.linters.phpstan')
```

`phpcs`

```lua
local phpcs = require('efmls-configs.linters.phpcs')
```

`phan`

```lua
local phan = require('efmls-configs.linters.phan')
```

`php`

```lua
local php = require('efmls-configs.linters.php')
```

`psalm`

```lua
local psalm = require('efmls-configs.linters.psalm')
```

#### Formatters

`php_cs_fixer`

```lua
local php_cs_fixer = require('efmls-configs.formatters.php_cs_fixer')
```

`pint`

```lua
local pint = require('efmls-configs.formatters.pint')
```

`phpcbf`

```lua
local phpcbf = require('efmls-configs.formatters.phpcbf')
```

### Html

#### Linters

`djlint`

```lua
local djlint = require('efmls-configs.linters.djlint')
```

#### Formatters

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs`

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Ruby

#### Linters

`debride`

```lua
local debride = require('efmls-configs.linters.debride')
```

`rubocop`

```lua
local rubocop = require('efmls-configs.linters.rubocop')
```

`reek`

```lua
local reek = require('efmls-configs.linters.reek')
```

`sorbet`

```lua
local sorbet = require('efmls-configs.linters.sorbet')
```

### Yaml

#### Linters

`ansible_lint`

```lua
local ansible_lint = require('efmls-configs.linters.ansible_lint')
```

`yamllint`

```lua
local yamllint = require('efmls-configs.linters.yamllint')
```

### Lua

#### Linters

`luacheck`

```lua
local luacheck = require('efmls-configs.linters.luacheck')
```

#### Formatters

`lua_format`

```lua
local lua_format = require('efmls-configs.formatters.lua_format')
```

`stylua`

```lua
local stylua = require('efmls-configs.formatters.stylua')
```

### Solidity

#### Linters

`slither`

```lua
local slither = require('efmls-configs.linters.slither')
```

`solhint`

```lua
local solhint = require('efmls-configs.linters.solhint')
```

#### Formatters

`forge_fmt`

```lua
local forge_fmt = require('efmls-configs.formatters.forge_fmt')
```

### Crystal

#### Linters

`ameba`

```lua
local ameba = require('efmls-configs.linters.ameba')
```

### Clojure

#### Linters

`joker`

```lua
local joker = require('efmls-configs.linters.joker')
```

`clj_kondo`

```lua
local clj_kondo = require('efmls-configs.linters.clj_kondo')
```

#### Formatters

`joker`

```lua
local joker = require('efmls-configs.formatters.joker')
```

### C#

#### Linters

`mcs`

```lua
local mcs = require('efmls-configs.linters.mcs')
```

#### Formatters

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`dotnet_format`

```lua
local dotnet_format = require('efmls-configs.formatters.dotnet_format')
```

### Dart

#### Linters

`dartanalyzer`

```lua
local dartanalyzer = require('efmls-configs.linters.dartanalyzer')
```

#### Formatters

`dartfmt`

```lua
local dartfmt = require('efmls-configs.formatters.dartfmt')
```

### Css

#### Linters

`stylelint`

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs`

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Scss

#### Linters

`stylelint`

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Sass

#### Linters

`stylelint`

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Less

#### Linters

`stylelint`

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Vim

#### Linters

`vint`

```lua
local vint = require('efmls-configs.linters.vint')
```

### D

#### Linters

`dmd`

```lua
local dmd = require('efmls-configs.linters.dmd')
```

#### Formatters

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`dfmt`

```lua
local dfmt = require('efmls-configs.formatters.dfmt')
```

### Typescript

#### Linters

`xo`

```lua
local xo = require('efmls-configs.linters.xo')
```

`eslint`

```lua
local eslint = require('efmls-configs.linters.eslint')
```

`eslint_d`

```lua
local eslint_d = require('efmls-configs.linters.eslint_d')
```

#### Formatters

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs`

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier_eslint`

```lua
local prettier_eslint = require('efmls-configs.formatters.prettier_eslint')
```

`prettier_standard`

```lua
local prettier_standard = require('efmls-configs.formatters.prettier_standard')
```

`xo`

```lua
local xo = require('efmls-configs.formatters.xo')
```

`eslint`

```lua
local eslint = require('efmls-configs.formatters.eslint')
```

`eslint_d`

```lua
local eslint_d = require('efmls-configs.formatters.eslint_d')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Docker

#### Linters

`hadolint`

```lua
local hadolint = require('efmls-configs.linters.hadolint')
```

### Fish

#### Linters

`fish`

```lua
local fish = require('efmls-configs.linters.fish')
```

#### Formatters

`fish_indent`

```lua
local fish_indent = require('efmls-configs.formatters.fish_indent')
```

### Nix

#### Linters

`statix`

```lua
local statix = require('efmls-configs.linters.statix')
```

#### Formatters

`nixfmt`

```lua
local nixfmt = require('efmls-configs.formatters.nixfmt')
```

### Java

#### Formatters

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Objective-c

#### Formatters

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Objective-c++

#### Formatters

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Pawn

#### Formatters

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Vala

#### Formatters

`uncrustify`

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Json

#### Formatters

`prettier_d`

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier`

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Markdown

#### Formatters

`cbfmt`

```lua
local cbfmt = require('efmls-configs.formatters.cbfmt')
```

### Terraform

#### Formatters

`terraform_fmt`

```lua
local terraform_fmt = require('efmls-configs.formatters.terraform_fmt')
```

### Rust

#### Formatters

`rustfmt`

```lua
local rustfmt = require('efmls-configs.formatters.rustfmt')
```

