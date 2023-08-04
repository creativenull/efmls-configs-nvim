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

`textlint` [https://textlint.github.io/](https://textlint.github.io/)

```lua
local textlint = require('efmls-configs.linters.textlint')
```

`languagetool` [https://languagetool.org/](https://languagetool.org/)

```lua
local languagetool = require('efmls-configs.linters.languagetool')
```

`alex` [https://alexjs.com/](https://alexjs.com/)

```lua
local alex = require('efmls-configs.linters.alex')
```

`write_good` [https://github.com/btford/write-good](https://github.com/btford/write-good)

```lua
local write_good = require('efmls-configs.linters.write_good')
```

`redpen` [http://redpen.cc/](http://redpen.cc/)

```lua
local redpen = require('efmls-configs.linters.redpen')
```

`proselint` [http://proselint.com/](http://proselint.com/)

```lua
local proselint = require('efmls-configs.linters.proselint')
```

`vale` [https://github.com/ValeLint/vale](https://github.com/ValeLint/vale)

```lua
local vale = require('efmls-configs.linters.vale')
```

### C

#### Linters

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.linters.clang_tidy')
```

`cppcheck` [http://cppcheck.sourceforge.net](http://cppcheck.sourceforge.net)

```lua
local cppcheck = require('efmls-configs.linters.cppcheck')
```

`flawfinder` [https://www.dwheeler.com/flawfinder/](https://www.dwheeler.com/flawfinder/)

```lua
local flawfinder = require('efmls-configs.linters.flawfinder')
```

`gcc` [https://gcc.gnu.org/](https://gcc.gnu.org/)

```lua
local gcc = require('efmls-configs.linters.gcc')
```

`cpplint` [https://github.com/google/styleguide/tree/gh-pages/cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)

```lua
local cpplint = require('efmls-configs.linters.cpplint')
```

#### Formatters

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.formatters.clang_tidy')
```

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`astyle` [http://astyle.sourceforge.net/](http://astyle.sourceforge.net/)

```lua
local astyle = require('efmls-configs.formatters.astyle')
```

`clang_format` [https://clang.llvm.org/docs/ClangFormat.html](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang_format = require('efmls-configs.formatters.clang_format')
```

### C++

#### Linters

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.linters.clang_tidy')
```

`cppcheck` [http://cppcheck.sourceforge.net](http://cppcheck.sourceforge.net)

```lua
local cppcheck = require('efmls-configs.linters.cppcheck')
```

`gcc` [https://gcc.gnu.org/](https://gcc.gnu.org/)

```lua
local gcc = require('efmls-configs.linters.gcc')
```

`clazy` [https://github.com/KDE/clazy](https://github.com/KDE/clazy)

```lua
local clazy = require('efmls-configs.linters.clazy')
```

`cpplint` [https://github.com/google/styleguide/tree/gh-pages/cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)

```lua
local cpplint = require('efmls-configs.linters.cpplint')
```

#### Formatters

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.formatters.clang_tidy')
```

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`astyle` [http://astyle.sourceforge.net/](http://astyle.sourceforge.net/)

```lua
local astyle = require('efmls-configs.formatters.astyle')
```

`clang_format` [https://clang.llvm.org/docs/ClangFormat.html](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang_format = require('efmls-configs.formatters.clang_format')
```

### Javascript

#### Linters

`js_standard` [http://standardjs.com/](http://standardjs.com/)

```lua
local js_standard = require('efmls-configs.linters.js_standard')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.linters.fecs')
```

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.linters.xo')
```

`eslint` [http://eslint.org/](http://eslint.org/)

```lua
local eslint = require('efmls-configs.linters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.linters.eslint_d')
```

#### Formatters

`js_standard` [http://standardjs.com/](http://standardjs.com/)

```lua
local js_standard = require('efmls-configs.formatters.js_standard')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier_eslint` [https://github.com/prettier/prettier-eslint](https://github.com/prettier/prettier-eslint)

```lua
local prettier_eslint = require('efmls-configs.formatters.prettier_eslint')
```

`prettier_standard` [https://github.com/sheerun/prettier-standard](https://github.com/sheerun/prettier-standard)

```lua
local prettier_standard = require('efmls-configs.formatters.prettier_standard')
```

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.formatters.xo')
```

`eslint` [https://eslint.org](https://eslint.org)

```lua
local eslint = require('efmls-configs.formatters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.formatters.eslint_d')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Go

#### Linters

`staticcheck` [https://github.com/dominikh/go-tools/tree/master/cmd/staticcheck](https://github.com/dominikh/go-tools/tree/master/cmd/staticcheck)

```lua
local staticcheck = require('efmls-configs.linters.staticcheck')
```

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`golint` [https://godoc.org/github.com/golang/lint](https://godoc.org/github.com/golang/lint)

```lua
local golint = require('efmls-configs.linters.golint')
```

`golangci_lint` [https://github.com/golangci/golangci-lint](https://github.com/golangci/golangci-lint)

```lua
local golangci_lint = require('efmls-configs.linters.golangci_lint')
```

`go_revive` [https://github.com/mgechev/revive](https://github.com/mgechev/revive)

```lua
local go_revive = require('efmls-configs.linters.go_revive')
```

#### Formatters

`gofmt` [https://pkg.go.dev/cmd/gofmt](https://pkg.go.dev/cmd/gofmt)

```lua
local gofmt = require('efmls-configs.formatters.gofmt')
```

`golines` [https://github.com/segmentio/golines](https://github.com/segmentio/golines)

```lua
local golines = require('efmls-configs.formatters.golines')
```

`goimports` [https://godoc.org/golang.org/x/tools/cmd/goimports](https://godoc.org/golang.org/x/tools/cmd/goimports)

```lua
local goimports = require('efmls-configs.formatters.goimports')
```

### Sh

#### Linters

`shellcheck` [https://www.shellcheck.net/](https://www.shellcheck.net/)

```lua
local shellcheck = require('efmls-configs.linters.shellcheck')
```

#### Formatters

`shfmt` [https://github.com/mvdan/sh](https://github.com/mvdan/sh)

```lua
local shfmt = require('efmls-configs.formatters.shfmt')
```

### Bash

#### Linters

`shellcheck` [https://www.shellcheck.net/](https://www.shellcheck.net/)

```lua
local shellcheck = require('efmls-configs.linters.shellcheck')
```

`bashate` [https://github.com/openstack/bashate](https://github.com/openstack/bashate)

```lua
local bashate = require('efmls-configs.linters.bashate')
```

#### Formatters

`shfmt` [https://github.com/mvdan/sh](https://github.com/mvdan/sh)

```lua
local shfmt = require('efmls-configs.formatters.shfmt')
```

### Python

#### Linters

`flake8` [http://flake8.pycqa.org/en/latest/](http://flake8.pycqa.org/en/latest/)

```lua
local flake8 = require('efmls-configs.linters.flake8')
```

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`pylint` [https://www.pylint.org/](https://www.pylint.org/)

```lua
local pylint = require('efmls-configs.linters.pylint')
```

`vulture` [https://github.com/jendrikseipp/vulture](https://github.com/jendrikseipp/vulture)

```lua
local vulture = require('efmls-configs.linters.vulture')
```

#### Formatters

`black` [https://github.com/ambv/black](https://github.com/ambv/black)

```lua
local black = require('efmls-configs.formatters.black')
```

`yapf` [https://github.com/google/yapf](https://github.com/google/yapf)

```lua
local yapf = require('efmls-configs.formatters.yapf')
```

`autopep8` [https://github.com/hhatto/autopep8](https://github.com/hhatto/autopep8)

```lua
local autopep8 = require('efmls-configs.formatters.autopep8')
```

### Php

#### Linters

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`phpstan` [https://github.com/phpstan/phpstan](https://github.com/phpstan/phpstan)

```lua
local phpstan = require('efmls-configs.linters.phpstan')
```

`phpcs` [https://github.com/squizlabs/PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)

```lua
local phpcs = require('efmls-configs.linters.phpcs')
```

`phan` [https://github.com/phan/phan](https://github.com/phan/phan)

```lua
local phan = require('efmls-configs.linters.phan')
```

`php` [https://secure.php.net/](https://secure.php.net/)

```lua
local php = require('efmls-configs.linters.php')
```

`psalm` [https://getpsalm.org](https://getpsalm.org)

```lua
local psalm = require('efmls-configs.linters.psalm')
```

#### Formatters

`php_cs_fixer` [https://github.com/PHP-CS-Fixer/PHP-CS-Fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer)

```lua
local php_cs_fixer = require('efmls-configs.formatters.php_cs_fixer')
```

`pint` [https://github.com/laravel/pint](https://github.com/laravel/pint)

```lua
local pint = require('efmls-configs.formatters.pint')
```

`phpcbf` [https://github.com/squizlabs/PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)

```lua
local phpcbf = require('efmls-configs.formatters.phpcbf')
```

### Html

#### Linters

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

#### Formatters

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Ruby

#### Linters

`debride` [https://github.com/seattlerb/debride](https://github.com/seattlerb/debride)

```lua
local debride = require('efmls-configs.linters.debride')
```

`rubocop` [https://github.com/bbatsov/rubocop](https://github.com/bbatsov/rubocop)

```lua
local rubocop = require('efmls-configs.linters.rubocop')
```

`reek` [https://github.com/troessner/reek](https://github.com/troessner/reek)

```lua
local reek = require('efmls-configs.linters.reek')
```

`sorbet` [https://github.com/sorbet/sorbet](https://github.com/sorbet/sorbet)

```lua
local sorbet = require('efmls-configs.linters.sorbet')
```

### Yaml

#### Linters

`ansible_lint` [https://github.com/willthames/ansible-lint](https://github.com/willthames/ansible-lint)

```lua
local ansible_lint = require('efmls-configs.linters.ansible_lint')
```

`yamllint` [https://yamllint.readthedocs.io/](https://yamllint.readthedocs.io/)

```lua
local yamllint = require('efmls-configs.linters.yamllint')
```

### Lua

#### Linters

`luacheck` [https://github.com/mpeterv/luacheck](https://github.com/mpeterv/luacheck)

```lua
local luacheck = require('efmls-configs.linters.luacheck')
```

#### Formatters

`lua_format` [https://github.com/Koihik/LuaFormatter](https://github.com/Koihik/LuaFormatter)

```lua
local lua_format = require('efmls-configs.formatters.lua_format')
```

`stylua` [https://github.com/johnnymorganz/stylua](https://github.com/johnnymorganz/stylua)

```lua
local stylua = require('efmls-configs.formatters.stylua')
```

### Solidity

#### Linters

`slither` [https://github.com/crytic/slither](https://github.com/crytic/slither)

```lua
local slither = require('efmls-configs.linters.slither')
```

`solhint` [https://github.com/protofire/solhint](https://github.com/protofire/solhint)

```lua
local solhint = require('efmls-configs.linters.solhint')
```

#### Formatters

`forge_fmt` [https://github.com/foundry-rs/foundry/tree/master/forge](https://github.com/foundry-rs/foundry/tree/master/forge)

```lua
local forge_fmt = require('efmls-configs.formatters.forge_fmt')
```

### Crystal

#### Linters

`ameba` [https://github.com/veelenga/ameba](https://github.com/veelenga/ameba)

```lua
local ameba = require('efmls-configs.linters.ameba')
```

### Clojure

#### Linters

`joker` [https://github.com/candid82/joker](https://github.com/candid82/joker)

```lua
local joker = require('efmls-configs.linters.joker')
```

`clj_kondo` [https://github.com/borkdude/clj-kondo](https://github.com/borkdude/clj-kondo)

```lua
local clj_kondo = require('efmls-configs.linters.clj_kondo')
```

#### Formatters

`joker` [https://github.com/candid82/joker](https://github.com/candid82/joker)

```lua
local joker = require('efmls-configs.formatters.joker')
```

### C#

#### Linters

`mcs` [http://www.mono-project.com/docs/about-mono/languages/csharp/](http://www.mono-project.com/docs/about-mono/languages/csharp/)

```lua
local mcs = require('efmls-configs.linters.mcs')
```

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`dotnet_format` [https://github.com/dotnet/format](https://github.com/dotnet/format)

```lua
local dotnet_format = require('efmls-configs.formatters.dotnet_format')
```

### Dart

#### Linters

`dartanalyzer` [https://github.com/dart-lang/sdk/tree/master/pkg/analyzer_cli](https://github.com/dart-lang/sdk/tree/master/pkg/analyzer_cli)

```lua
local dartanalyzer = require('efmls-configs.linters.dartanalyzer')
```

#### Formatters

`dartfmt` [https://github.com/dart-lang/sdk/tree/master/utils/dartfmt](https://github.com/dart-lang/sdk/tree/master/utils/dartfmt)

```lua
local dartfmt = require('efmls-configs.formatters.dartfmt')
```

### Css

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Scss

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Sass

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Less

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Vim

#### Linters

`vint` [https://github.com/ValeLint/vale](https://github.com/ValeLint/vale)

```lua
local vint = require('efmls-configs.linters.vint')
```

### D

#### Linters

`dmd` [https://dlang.org/dmd-linux.html](https://dlang.org/dmd-linux.html)

```lua
local dmd = require('efmls-configs.linters.dmd')
```

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

`dfmt` [https://github.com/dlang-community/dfmt](https://github.com/dlang-community/dfmt)

```lua
local dfmt = require('efmls-configs.formatters.dfmt')
```

### Typescript

#### Linters

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.linters.xo')
```

`eslint` [http://eslint.org/](http://eslint.org/)

```lua
local eslint = require('efmls-configs.linters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.linters.eslint_d')
```

#### Formatters

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier_eslint` [https://github.com/prettier/prettier-eslint](https://github.com/prettier/prettier-eslint)

```lua
local prettier_eslint = require('efmls-configs.formatters.prettier_eslint')
```

`prettier_standard` [https://github.com/sheerun/prettier-standard](https://github.com/sheerun/prettier-standard)

```lua
local prettier_standard = require('efmls-configs.formatters.prettier_standard')
```

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.formatters.xo')
```

`eslint` [https://eslint.org](https://eslint.org)

```lua
local eslint = require('efmls-configs.formatters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.formatters.eslint_d')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Docker

#### Linters

`hadolint` [https://github.com/hadolint/hadolint](https://github.com/hadolint/hadolint)

```lua
local hadolint = require('efmls-configs.linters.hadolint')
```

### Fish

#### Linters

`fish` [https://linux.die.net/man/1/fish](https://linux.die.net/man/1/fish)

```lua
local fish = require('efmls-configs.linters.fish')
```

#### Formatters

`fish_indent` [https://fishshell.com/docs/current/cmds/fish_indent.html](https://fishshell.com/docs/current/cmds/fish_indent.html)

```lua
local fish_indent = require('efmls-configs.formatters.fish_indent')
```

### Nix

#### Linters

`statix` [https://github.com/NerdyPepper/statix](https://github.com/NerdyPepper/statix)

```lua
local statix = require('efmls-configs.linters.statix')
```

#### Formatters

`nixfmt` [https://github.com/serokell/nixfmt](https://github.com/serokell/nixfmt)

```lua
local nixfmt = require('efmls-configs.formatters.nixfmt')
```

### Java

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Objective-c

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Objective-c++

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Pawn

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Vala

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Json

#### Formatters

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

### Markdown

#### Formatters

`cbfmt` [https://github.com/lukas-reineke/cbfmt](https://github.com/lukas-reineke/cbfmt)

```lua
local cbfmt = require('efmls-configs.formatters.cbfmt')
```

### Terraform

#### Formatters

`terraform_fmt` [https://github.com/hashicorp/terraform](https://github.com/hashicorp/terraform)

```lua
local terraform_fmt = require('efmls-configs.formatters.terraform_fmt')
```

### Rust

#### Formatters

`rustfmt` [https://github.com/rust-lang-nursery/rustfmt](https://github.com/rust-lang-nursery/rustfmt)

```lua
local rustfmt = require('efmls-configs.formatters.rustfmt')
```

