# Supported Linters & Formatters

Please create an Pull Request if you see any mismatched documentation or typos.

## Default Configurations

Here is a list of languages that are automatically set and configured when `default_config` is enabled. For information
on how to set `default_config` check the docs:
[`:help efmls-configs-defaults`](https://github.com/creativenull/efmls-configs-nvim#default-configuration-help-efmls-configs-defaults).

| **Filetype** | **Default Linter** | **Default Formatter** |
|--------------|--------------------|-----------------------|
| CSS/SASS/SCSS/LESS | [`stylelint`](#css) | [`prettier`](#css) |
| Go | [`golangci_lint`](#go) | |
| HTML | [`stylelint`](#html) | [`prettier`](#html) |
| JavaScript/JSX | [`eslint`](#javascript) | [`prettier`](#javascript) |
| Lua | [`luacheck`](#lua) | [`stylua`](#lua) |
| PHP | [`phpcs`](#php) | [`phpcbf`](#php) |
| Python | [`flake8`](#python) | [`autopep8`](#python) |
| Ruby | [`reek`](#ruby) | |
| TypeScript/TSX | [`eslint`](#typescript) | [`prettier`](#typescript) |
| Vim | [`vint`](#vim) | |

## Linter & Formatter Configurations

Below are the supported linters and formatters that are configured to run with efm-langserver. You can access
the table of contents of this document on the left hand corner of the file, in github (Or just a simple <kbd>Ctrl</kbd> + <kbd>F</kbd>
to search). Copy the `require` code into your `setup()` function (See example code:
[`:help efmls-configs-setup`](https://github.com/creativenull/efmls-configs-nvim#setup-help-efmls-configs-setup)).

### Ada

[gcc](https://gcc.gnu.org)

```lua
local gcc = require 'efmls-configs.linters.gcc'
```

### Ansible

[ansible-lint](https://github.com/willthames/ansible-lint)

```lua
local ansible = require 'efmls-configs.linters.ansible'
```

### AsciiDoc

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[languagetool](https://languagetool.org/)

```lua
local languagetool = require 'efmls-configs.linters.languagetool'
```


[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[redpen](http://redpen.cc/)

```lua
local redpen = require 'efmls-configs.linters.redpen'
```

[textlint](https://textlint.github.io/)

```lua
local textlint = require 'efmls-configs.linters.textlint'
```

[vale](https://github.com/ValeLint/vale)

```lua
local vale = require 'efmls-configs.linters.vale'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### ASM

[gcc](https://gcc.gnu.org)

```lua
local gcc = require 'efmls-configs.linters.gcc'
```

### Bash

[bashate](https://github.com/openstack/bashate)

```lua
local bashate = require 'efmls-configs.linters.bashate'
```

[shellcheck](https://www.shellcheck.net/)

```lua
local shellcheck = require 'efmls-configs.linters.shellcheck'
```

[shfmt](https://github.com/mvdan/sh)

```lua
local shfmt = require 'efmls-configs.formatters.shfmt'
```

### Bats

[shellcheck](https://www.shellcheck.net/)

```lua
local shellcheck = require 'efmls-configs.linters.shellcheck'
```

### Bourne Shell

[shellcheck](https://www.shellcheck.net/)

```lua
local shellcheck = require 'efmls-configs.linters.shellcheck'
```

[shfmt](https://github.com/mvdan/sh)

```lua
local shfmt = require 'efmls-configs.formatters.shfmt'
```

### C

[astyle](http://astyle.sourceforge.net/)

```lua
local astyle = require 'efmls-configs.formatters.astyle'
```

[clang-format](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang = require 'efmls-configs.linters.clang'
```

[clangtidy](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clangtidy = require 'efmls-configs.linters.clangtidy'
```

[cppcheck](http://cppcheck.sourceforge.net)

```lua
local cppcheck = require 'efmls-configs.linters.cppcheck'
```

[cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)

```lua
local cpplint = require 'efmls-configs.linters.cpplint'
```

[flawfinder](https://www.dwheeler.com/flawfinder/)

```lua
local flawfinder = require 'efmls-configs.linters.flawfinder'
```

[gcc](https://gcc.gnu.org/)

```lua
local gcc = require 'efmls-configs.linters.gcc'
```

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### C#

[dotnet-format](https://github.com/dotnet/format)

```lua
local dotnet = require 'efmls-configs.formatters.dotnet'
```

[mcs](http://www.mono-project.com/docs/about-mono/languages/csharp/)

```lua
local mcs = require 'efmls-configs.linters.mcs'
```

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### C++

[astyle](http://astyle.sourceforge.net/)

```lua
local astyle = require 'efmls-configs.formatters.astyle'
```

[clang-format](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang_format = require 'efmls-configs.formatters.clang_format'
```

[clangtidy](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clangtidy = require 'efmls-configs.linters.clangtidy'
```

[clazy](https://github.com/KDE/clazy)

```lua
local clazy = require 'efmls-configs.linters.clazy'
```

[cppcheck](http://cppcheck.sourceforge.net)

```lua
local cppcheck = require 'efmls-configs.linters.cppcheck'
```

[cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)

```lua
local cpplint = require 'efmls-configs.linters.cpplint'
```

[flawfinder](https://www.dwheeler.com/flawfinder/)

```lua
local flawfinder = require 'efmls-configs.linters.flawfinder'
```

[gcc](https://gcc.gnu.org/)

```lua
local gcc = require 'efmls-configs.linters.gcc'
```

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### CSS

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require 'efmls-configs.linters.stylelint'
```

### Clojure

[clj-kondo](https://github.com/borkdude/clj-kondo)

```lua
local clj_kondo = require 'efmls-configs.linters.clj_kondo'
```

[joker](https://github.com/candid82/joker)

```lua
local joker = require 'efmls-configs.linters.joker'
local joker_fmt = require 'efmls-configs.formatters.joker'
```

### CoffeeScript

[eslint](http://eslint.org/)

Note: `eslint-plugin-coffee` or a similar eslint plugin will be required to run eslint on coffeescript files.

```
local eslint = require 'efmls-configs.linters.eslint'
```

### D

[dfmt](https://github.com/dlang-community/dfmt)

```lua
local dfmt = require 'efmls-configs.formatters.dfmt'
```

[dmd](https://dlang.org/dmd-linux.html)

```lua
local dmd = require 'efmls-configs.linters.dmd'
```

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### Dart

[dart-format](https://github.com/dart-lang/sdk/tree/master/utils/dartfmt)

```lua
local dart_format = require 'efmls-configs.formatters.dart_format'
```

[dartanalyzer](https://github.com/dart-lang/sdk/tree/master/pkg/analyzer_cli)

```lua
local dartanalyzer = require 'efmls-configs.linters.dartanalyzer'
```

### Fountain

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

### Go

[goimports](https://godoc.org/golang.org/x/tools/cmd/goimports)

```lua
local goimports = require 'efmls-configs.formatters.goimports'
```

[golangci-lint](https://github.com/golangci/golangci-lint)

```lua
local golangci = require 'efmls-configs.linters.golangci'
```

[golines](https://github.com/segmentio/golines)

```lua
local golines = require 'efmls-configs.formatters.golines'
```

[golint](https://godoc.org/github.com/golang/lint)

```lua
local golint = require 'efmls-configs.linters.golint'
```

[revive](https://github.com/mgechev/revive)

```lua
local revive = require 'efmls-configs.linters.go_revive'
```

[staticcheck](https://github.com/dominikh/go-tools/tree/master/cmd/staticcheck)

```lua
local staticcheck = require 'efmls-configs.linters.staticcheck'
```

### GraphQL

[eslint](http://eslint.org/)

```lua
local eslint = require 'efmls-configs.linters.eslint'
```

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

### HTML

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Java

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### JavaScript

[eslint](http://eslint.org/)

```lua
local eslint = require 'efmls-configs.linters.eslint'
```

[eslint_d](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require 'efmls-configs.linters.eslint_d'
local eslint_d_fmt = require 'efmls-configs.formatters.eslint_d'
```

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

[prettier-eslint](https://github.com/prettier/prettier-eslint-cli)

```lua
local prettier_eslint = require 'efmls-configs.formatters.prettier_eslint'
```

[prettier-standard](https://github.com/sheerun/prettier-standard)

```lua
local prettier_standard = require 'efmls-configs.formatters.prettier_standard'
```

[standard](http://standardjs.com/)

```lua
local standard = require 'efmls-configs.linters.js_standard'
local standard_fmt = require 'efmls-configs.formatters.js_standard'
```

[xo](https://github.com/sindresorhus/xo)

```lua
local xo = require 'efmls-configs.linters.xo'
local xo_fmt = require 'efmls-configs.formatters.xo'
```

### JSON

[eslint](http://eslint.org/)

```lua
local eslint = require 'efmls-configs.linters.eslint'
```

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

### JSON5

[eslint](http://eslint.org/)

```lua
local eslint = require 'efmls-configs.linters.eslint'
```

### JSONC

[eslint](http://eslint.org/)

```lua
local eslint = require 'efmls-configs.linters.eslint'
```

### LaTeX

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[redpen](http://redpen.cc/)

```lua
local redpen = require 'efmls-configs.linters.redpen'
```

[textlint](https://textlint.github.io/)

```lua
local textlint = require 'efmls-configs.linters.textlint'
```

[vale](https://github.com/ValeLint/vale)

```lua
local vale = require 'efmls-configs.linters.vale'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Less

[stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require 'efmls-configs.linters.stylelint'
```

### Lua

[lua-format](https://github.com/Koihik/LuaFormatter)

```lua
local lua = require 'efmls-configs.formatters.lua'
```

[luacheck](https://github.com/mpeterv/luacheck)

```lua
local luacheck = require 'efmls-configs.linters.luacheck'
```

[stylua](https://github.com/johnnymorganz/stylua)

```lua
local stylua = require 'efmls-configs.formatters.stylua'
```

### Mail

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[languagetool](https://languagetool.org/)

```lua
local languagetool = require 'efmls-configs.linters.languagetool'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[vale](https://github.com/ValeLint/vale)

```lua
local vale = require 'efmls-configs.linters.vale'
```

### Markdown

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[languagetool](https://languagetool.org/)

```lua
local languagetool = require 'efmls-configs.linters.languagetool'
```

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[redpen](http://redpen.cc/)

```lua
local redpen = require 'efmls-configs.linters.redpen'
```

[textlint](https://textlint.github.io/)

```lua
local textlint = require 'efmls-configs.linters.textlint'
```

[vale](https://github.com/ValeLint/vale)

```lua
local vale = require 'efmls-configs.linters.vale'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Objective-C

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### Objective-C++

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### OpenApi

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

### Pawn

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### PHP

[phan](https://github.com/phan/phan)

```lua
local phan = require 'efmls-configs.linters.phan'
```

[php -l](https://secure.php.net/)

```lua
local php  = require 'efmls-configs.linters.php '
```

[php-cs-fixer](http://cs.sensiolabs.org/)

```lua
local php_cs_fixer = require 'efmls-configs.formatters.php_cs_fixer'
```

[phpcbf](https://github.com/squizlabs/PHP_CodeSniffer)

```lua
local phpcbf = require 'efmls-configs.formatters.phpcbf'
```

[phpcs](https://github.com/squizlabs/PHP_CodeSniffer)

```lua
local phpcs = require 'efmls-configs.linters.phpcs'
```

[phpstan](https://github.com/phpstan/phpstan)

```lua
local phpstan = require 'efmls-configs.linters.phpstan'
```

[psalm](https://getpsalm.org)

```lua
local psalm = require 'efmls-configs.linters.psalm'
```

### PO

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Pod

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Python

[autopep8](https://github.com/hhatto/autopep8)

```lua
local autopep8 = require 'efmls-configs.formatters.autopep8'
```

[black](https://github.com/ambv/black)

```lua
local black = require 'efmls-configs.formatters.black'
```

[flake8](http://flake8.pycqa.org/en/latest/)

```lua
local flake8 = require 'efmls-configs.linters.flake8'
```

[pylint](https://www.pylint.org/)

```lua
local pylint = require 'efmls-configs.linters.pylint'
```

[vulture](https://github.com/jendrikseipp/vulture)

```lua
local vulture = require 'efmls-configs.linters.vulture'
```

[yapf](https://github.com/google/yapf)

```lua
local yapf = require 'efmls-configs.formatters.yapf'
```

### Re:VIEW

[redpen](http://redpen.cc/)

```lua
local redpen = require 'efmls-configs.linters.redpen'
```

### reStructuredText

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[redpen](http://redpen.cc/)

```lua
local redpen = require 'efmls-configs.linters.redpen'
```

[textlint](https://textlint.github.io/)

```lua
local textlint = require 'efmls-configs.linters.textlint'
```

[vale](https://github.com/ValeLint/vale)

```lua
local vale = require 'efmls-configs.linters.vale'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Ruby

[debride](https://github.com/seattlerb/debride)

```lua
local debride = require 'efmls-configs.linters.debride'
```

[prettier](https://github.com/prettier/plugin-ruby)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

[rubocop](https://github.com/bbatsov/rubocop)

```lua
local rubocop = require 'efmls-configs.linters.rubocop'
```

[sorbet](https://github.com/sorbet/sorbet)

```lua
local sorbet = require 'efmls-configs.linters.sorbet'
```

### Sass

[stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require 'efmls-configs.linters.stylelint'
```

### SCSS

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

[stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require 'efmls-configs.linters.stylelint'
```

### Stylus

[stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require 'efmls-configs.linters.stylelint'
```

### SugarSS

[stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require 'efmls-configs.linters.stylelint'
```

### Svelte

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

### Texinfo

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Text

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[languagetool](https://languagetool.org/)

```lua
local languagetool = require 'efmls-configs.linters.languagetool'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[redpen](http://redpen.cc/)

```lua
local redpen = require 'efmls-configs.linters.redpen'
```

[textlint](https://textlint.github.io/)

```lua
local textlint = require 'efmls-configs.linters.textlint'
```

[vale](https://github.com/ValeLint/vale)

```lua
local vale = require 'efmls-configs.linters.vale'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### TypeScript

[eslint](http://eslint.org/)

```lua
local eslint = require 'efmls-configs.linters.eslint'
```

[eslint_d](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require 'efmls-configs.linters.eslint_d'
local eslint_d_fmt = require 'efmls-configs.formatters.eslint_d'
```

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

[prettier_d](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require 'efmls-configs.formatters.prettier_d'
```

[standard](http://standardjs.com/)

```lua
local standard = require 'efmls-configs.linters.standardjs'
local standard_fmt = require 'efmls-configs.formatters.standardjs'
```

### VALA

[uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require 'efmls-configs.formatters.uncrustify'
```

### Vim

[vint](https://github.com/Kuniwak/vint)

```lua
local vint = require 'efmls-configs.linters.vint'
```

### Vim help

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### Vue

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

### XHTML

[alex](https://github.com/wooorm/alex)

```lua
local alex = require 'efmls-configs.linters.alex'
```

[proselint](http://proselint.com/)

```lua
local proselint = require 'efmls-configs.linters.proselint'
```

[write-good](https://github.com/btford/write-good)

```lua
local write_good = require 'efmls-configs.linters.write_good'
```

### YAML

[prettier](https://github.com/prettier/prettier)

```lua
local prettier = require 'efmls-configs.formatters.prettier'
```

## Linters and Formatters to be Supported (TODO)

Languages to support, list based on ALE with LSP servers omitted:

+ Ada
  + [X] [gcc](https://gcc.gnu.org)
  + [ ] [gnatpp](https://docs.adacore.com/gnat_ugn-docs/html/gnat_ugn/gnat_ugn/gnat_utility_programs.html#the-gnat-pretty-printer-gnatpp)
+ Ansible
  + [X] [ansible-lint](https://github.com/willthames/ansible-lint)
+ AsciiDoc
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [languagetool](https://languagetool.org/)
  + [X] [proselint](http://proselint.com/)
  + [X] [redpen](http://redpen.cc/)
  + [X] [textlint](https://textlint.github.io/)
  + [X] [vale](https://github.com/ValeLint/vale)
  + [X] [write-good](https://github.com/btford/write-good)
+ ASM
  + [X] [gcc](https://gcc.gnu.org)
+ Awk
  + [ ] [gawk](https://www.gnu.org/software/gawk/)
+ Bash
  + [X] [bashate](https://github.com/openstack/bashate)
  + [ ] shell [-n flag](https://www.gnu.org/software/bash/manual/bash.html#index-set)
  + [X] [shellcheck](https://www.shellcheck.net/)
  + [X] [shfmt](https://github.com/mvdan/sh)
+ Bats
  + [X] [shellcheck](https://www.shellcheck.net/)
+ Bazel
  + [ ] [buildifier](https://github.com/bazelbuild/buildtools)
+ BibTeX
  + [ ] [bibclean](http://ftp.math.utah.edu/pub/bibclean/)
+ Bourne Shell
  + [ ] shell [-n flag](http://linux.die.net/man/1/sh)
  + [X] [shellcheck](https://www.shellcheck.net/)
  + [X] [shfmt](https://github.com/mvdan/sh)
+ C
  + [X] [astyle](http://astyle.sourceforge.net/)
  + [X] [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
  + [X] [clangtidy](http://clang.llvm.org/extra/clang-tidy/)
  + [X] [cppcheck](http://cppcheck.sourceforge.net)
  + [X] [cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)
  + [X] [flawfinder](https://www.dwheeler.com/flawfinder/)
  + [X] [gcc](https://gcc.gnu.org/)
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ C#
  + [ ] [csc](http://www.mono-project.com/docs/about-mono/languages/csharp/)
  + [X] [dotnet-format](https://github.com/dotnet/format)
  + [X] [mcs](http://www.mono-project.com/docs/about-mono/languages/csharp/)
  + [ ] [mcsc](http://www.mono-project.com/docs/about-mono/languages/csharp/)
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ C++
  + [X] [astyle](http://astyle.sourceforge.net/)
  + [X] [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
  + [ ] [clangcheck](http://clang.llvm.org/docs/ClangCheck.html)
  + [X] [clangtidy](http://clang.llvm.org/extra/clang-tidy/)
  + [X] [clazy](https://github.com/KDE/clazy)
  + [X] [cppcheck](http://cppcheck.sourceforge.net)
  + [X] [cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)
  + [X] [flawfinder](https://www.dwheeler.com/flawfinder/)
  + [X] [gcc](https://gcc.gnu.org/)
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ Chef
  + [ ] [cookstyle](https://docs.chef.io/cookstyle.html)
  + [ ] [foodcritic](http://www.foodcritic.io/)
+ Clojure
  + [x] [clj-kondo](https://github.com/borkdude/clj-kondo)
  + [x] [joker](https://github.com/candid82/joker)
+ CloudFormation
  + [ ] [cfn-python-lint](https://github.com/awslabs/cfn-python-lint)
+ CMake
  + [ ] [cmake-format](https://github.com/cheshirekow/cmake_format)
  + [ ] [cmakelint](https://github.com/richq/cmake-lint)
+ CoffeeScript
  + [x] [eslint](https://eslint.org)
  + [x] ~~[coffeelint](https://www.npmjs.com/package/coffeelint)~~
+ Crystal
  + [ ] [ameba](https://github.com/veelenga/ameba)
  + [ ] [crystal](https://crystal-lang.org/)
+ CSS
  + [ ] [csslint](http://csslint.net/)
  + [ ] [fecs](http://fecs.baidu.com/)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [X] [stylelint](https://github.com/stylelint/stylelint)
+ Cucumber
  + [ ] [cucumber](https://cucumber.io/)
+ CUDA
  + [ ] [clangd](https://clang.llvm.org/extra/clangd.html)
  + [ ] [nvcc](http://docs.nvidia.com/cuda/cuda-compiler-driver-nvcc/index.html)
+ Cypher
  + [ ] [cypher-lint](https://github.com/cleishm/libcypher-parser)
+ Cython
  + [ ] [cython](http://cython.org/)
+ D
  + [X] [dfmt](https://github.com/dlang-community/dfmt)
  + [X] [dmd](https://dlang.org/dmd-linux.html)
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ Dafny
  + [ ] [dafny](https://rise4fun.com/Dafny)
+ Dart
  + [X] [dart-format](https://github.com/dart-lang/sdk/tree/master/utils/dartfmt)
  + [X] [dartanalyzer](https://github.com/dart-lang/sdk/tree/master/pkg/analyzer_cli)
+ desktop
  + [ ] [desktop-file-validate](https://www.freedesktop.org/wiki/Software/desktop-file-utils/)
+ Dhall
  + [ ] [dhall-format](https://github.com/dhall-lang/dhall-lang)
  + [ ] [dhall-freeze](https://github.com/dhall-lang/dhall-lang)
  + [ ] [dhall-lint](https://github.com/dhall-lang/dhall-lang)
+ Dockerfile
  + [ ] [dockerfile_lint](https://github.com/projectatomic/dockerfile_lint)
  + [ ] [hadolint](https://github.com/hadolint/hadolint)
+ Elixir
  + [ ] [credo](https://github.com/rrrene/credo)
  + [ ] [dialyxir](https://github.com/jeremyjh/dialyxir)
  + [ ] [dogma](https://github.com/lpil/dogma)
  + [ ] [mix](https://hexdocs.pm/mix/Mix.html)
+ Elm
  + [ ] [elm-format](https://github.com/avh4/elm-format)
  + [ ] [elm-make](https://github.com/elm/compiler)
+ Erb
  + [ ] [erb](https://apidock.com/ruby/ERB)
  + [ ] [erblint](https://github.com/Shopify/erb-lint)
  + [ ] [erubi](https://github.com/jeremyevans/erubi)
  + [ ] [erubis](https://github.com/kwatch/erubis)
  + [ ] [ruumba](https://github.com/ericqweinstein/ruumba)
+ Erlang
  + [ ] [SyntaxErl](https://github.com/ten0s/syntaxerl)
  + [ ] [dialyzer](http://erlang.org/doc/man/dialyzer.html)
  + [ ] [elvis](https://github.com/inaka/elvis)
  + [ ] [erlc](http://erlang.org/doc/man/erlc.html)
  + [ ] [erlfmt](https://github.com/WhatsApp/erlfmt)
+ Fish
  + [ ] fish [-n flag](https://linux.die.net/man/1/fish)
  + [ ] [fish_indent](https://fishshell.com/docs/current/cmds/fish_indent.html)
+ Fortran
  + [ ] [fortran-linter](https://github.com/cphyc/fortran-linter)
+ Fountain
  + [X] [proselint](http://proselint.com/)
+ FusionScript
  + [ ] [fusion-lint](https://github.com/RyanSquared/fusionscript)
+ Git Commit Messages
  + [ ] [gitlint](https://github.com/jorisroovers/gitlint)
+ GLSL
  + [ ] [glslang](https://github.com/KhronosGroup/glslang)
+ Go
  + [X] [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports)
  + [X] [golangci-lint](https://github.com/golangci/golangci-lint)
  + [X] [golines](https://github.com/segmentio/golines)
  + [X] [golint](https://godoc.org/github.com/golang/lint)
  + [X] [revive](https://github.com/mgechev/revive)
  + [X] [staticcheck](https://github.com/dominikh/go-tools/tree/master/cmd/staticcheck)
+ GraphQL
  + [X] [eslint](http://eslint.org/)
  + [ ] [gqlint](https://github.com/happylinks/gqlint)
  + [X] [prettier](https://github.com/prettier/prettier)
+ Hack
  + [ ] [hack](http://hacklang.org/)
  + [ ] [hackfmt](https://github.com/facebook/hhvm/tree/master/hphp/hack/hackfmt)
  + [ ] [hhast](https://github.com/hhvm/hhast)
+ Haml
  + [ ] [haml-lint](https://github.com/brigade/haml-lint)
+ Handlebars
  + [ ] [ember-template-lint](https://github.com/rwjblue/ember-template-lint)
+ Haskell
  + [ ] [brittany](https://github.com/lspitzner/brittany)
  + [ ] [cabal-ghc](https://www.haskell.org/cabal/)
  + [ ] [floskell](https://github.com/ennocramer/floskell)
  + [ ] [ghc](https://www.haskell.org/ghc/)
  + [ ] [ghc-mod](https://github.com/DanielG/ghc-mod)
  + [ ] [hdevtools](https://hackage.haskell.org/package/hdevtools)
  + [ ] [hfmt](https://github.com/danstiner/hfmt)
  + [ ] [hie](https://github.com/haskell/haskell-ide-engine)
  + [ ] [hindent](https://hackage.haskell.org/package/hindent)
  + [ ] [hlint](https://hackage.haskell.org/package/hlint)
  + [ ] [ormolu](https://github.com/tweag/ormolu)
  + [ ] [stack-build](https://haskellstack.org/)
  + [ ] [stack-ghc](https://haskellstack.org/)
  + [ ] [stylish-haskell](https://github.com/jaspervdj/stylish-haskell)
+ HCL
  + [ ] [terraform-fmt](https://github.com/hashicorp/terraform)
+ HTML
  + [X] [alex](https://github.com/wooorm/alex)
  + [ ] [fecs](http://fecs.baidu.com/)
  + [ ] [html-beautify](https://beautifier.io/)
  + [ ] [htmlhint](http://htmlhint.com/)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [X] [proselint](http://proselint.com/)
  + [ ] [tidy](http://www.html-tidy.org/)
  + [X] [write-good](https://github.com/btford/write-good)
+ Idris
  + [ ] [idris](http://www.idris-lang.org/)
+ Inko
  + [ ] [inko](https://inko-lang.org/)
+ ISPC
  + [ ] [ispc](https://ispc.github.io/)
+ Java
  + [ ] [PMD](https://pmd.github.io/)
  + [ ] [checkstyle](http://checkstyle.sourceforge.net)
  + [ ] [google-java-format](https://github.com/google/google-java-format)
  + [ ] [javac](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ JavaScript
  + [X] [eslint](http://eslint.org/)
  + [ ] [fecs](http://fecs.baidu.com/)
  + [ ] [flow](https://flowtype.org/)
  + [ ] [jscs](https://jscs-dev.github.io/)
  + [ ] [jshint](http://jshint.com/)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [X] [prettier-eslint](https://github.com/prettier/prettier-eslint-cli)
  + [X] [prettier-standard](https://github.com/sheerun/prettier-standard)
  + [X] [standard](http://standardjs.com/)
  + [X] [xo](https://github.com/sindresorhus/xo)
+ JSON
  + [X] [eslint](http://eslint.org/)
  + [ ] [fixjson](https://github.com/rhysd/fixjson)
  + [ ] [jq](https://stedolan.github.io/jq/)
  + [ ] [jsonlint](https://github.com/zaach/jsonlint)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [ ] [spectral](https://github.com/stoplightio/spectral)
+ JSON5
  + [X] [eslint](http://eslint.org/)
+ JSONC
  + [X] [eslint](http://eslint.org/)
+ Jsonnet
  + [ ] [jsonnet-lint](https://jsonnet.org/learning/tools.html)
  + [ ] [jsonnetfmt](https://jsonnet.org/learning/tools.html)
+ Kotlin
  + [ ] [kotlinc](https://kotlinlang.org)
  + [ ] [ktlint](https://ktlint.github.io)
+ LaTeX
  + [X] [alex](https://github.com/wooorm/alex)
  + [ ] [chktex](http://www.nongnu.org/chktex/)
  + [ ] [lacheck](https://www.ctan.org/pkg/lacheck)
  + [X] [proselint](http://proselint.com/)
  + [X] [redpen](http://redpen.cc/)
  + [ ] [texlab](https://texlab.netlify.com)
  + [X] [textlint](https://textlint.github.io/)
  + [X] [vale](https://github.com/ValeLint/vale)
  + [X] [write-good](https://github.com/btford/write-good)
+ Less
  + [ ] [lessc](https://www.npmjs.com/package/less)
  + [ ] [prettier](https://github.com/prettier/prettier)
  + [X] [stylelint](https://github.com/stylelint/stylelint)
+ LLVM
  + [ ] [llc](https://llvm.org/docs/CommandGuide/llc.html)
+ Lua
  + [X] [lua-format](https://github.com/Koihik/LuaFormatter)
  + [ ] [luac](https://www.lua.org/manual/5.1/luac.html)
  + [X] [luacheck](https://github.com/mpeterv/luacheck)
  + [ ] [luafmt](https://github.com/trixnz/lua-fmt)
  + [X] [stylua](https://github.com/johnnymorganz/stylua)
+ Mail
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [languagetool](https://languagetool.org/)
  + [X] [proselint](http://proselint.com/)
  + [X] [vale](https://github.com/ValeLint/vale)
+ Make
  + [ ] [checkmake](https://github.com/mrtazz/checkmake)
+ Markdown
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [languagetool](https://languagetool.org/)
  + [ ] [markdownlint](https://github.com/DavidAnson/markdownlint)
  + [ ] [mdl](https://github.com/mivok/markdownlint)
  + [ ] [pandoc](https://pandoc.org)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [X] [proselint](http://proselint.com/)
  + [X] [redpen](http://redpen.cc/)
  + [ ] [remark-lint](https://github.com/wooorm/remark-lint)
  + [X] [textlint](https://textlint.github.io/)
  + [X] [vale](https://github.com/ValeLint/vale)
  + [X] [write-good](https://github.com/btford/write-good)
+ MATLAB
  + [ ] [mlint](https://www.mathworks.com/help/matlab/ref/mlint.html)
+ Mercury
  + [ ] [mmc](http://mercurylang.org)
+ NASM
  + [ ] [nasm](https://www.nasm.us/)
+ Nim
  + [ ] [nim check](https://nim-lang.org/docs/nimc.html)
  + nimpretty
+ nix
  + [ ] [nix-instantiate](http://nixos.org/nix/manual/#sec-nix-instantiate)
  + [ ] [nixfmt](https://github.com/serokell/nixfmt)
  + [ ] [nixpkgs-fmt](https://github.com/nix-community/nixpkgs-fmt)
+ nroff
  + [ ] [alex](https://github.com/wooorm/alex)
  + [ ] [proselint](http://proselint.com/)
  + [ ] [write-good](https://github.com/btford/write-good)
+ Objective-C
  + [X] [clang](http://clang.llvm.org/)
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ Objective-C++
  + [X] [clang](http://clang.llvm.org/)
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ OCaml
  + [ ] [merlin](https://github.com/the-lambda-church/merlin)
  + [ ] [ocamlformat](https://github.com/ocaml-ppx/ocamlformat)
  + [ ] [ocp-indent](https://github.com/OCamlPro/ocp-indent)
+ OpenApi
  + [ ] [ibm_validator](https://github.com/IBM/openapi-validator)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [x] [yamllint](https://yamllint.readthedocs.io/)
+ Pascal
  + [ ] [ptop](https://www.freepascal.org/tools/ptop.var)
+ Pawn
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ Perl
  + [ ] [perl -c](https://perl.org/)
  + [ ] [perl-critic](https://metacpan.org/pod/Perl::Critic)
  + [ ] [perltidy](https://metacpan.org/pod/distribution/Perl-Tidy/bin/perltidy)
+ Perl6
  + [ ] [perl6 -c](https://perl6.org)
+ PHP
  + [X] [phan](https://github.com/phan/phan)
  + [X] [php -l](https://secure.php.net/)
  + [X] [php-cs-fixer](http://cs.sensiolabs.org/)
  + [X] [phpcbf](https://github.com/squizlabs/PHP_CodeSniffer)
  + [X] [phpcs](https://github.com/squizlabs/PHP_CodeSniffer)
  + [ ] [phpmd](https://phpmd.org)
  + [X] [phpstan](https://github.com/phpstan/phpstan)
  + [X] [psalm](https://getpsalm.org)
  + [ ] [tlint](https://github.com/tightenco/tlint)
+ PO
  + [X] [alex](https://github.com/wooorm/alex)
  + [ ] [msgfmt](https://www.gnu.org/software/gettext/manual/html_node/msgfmt-Invocation.html)
  + [X] [proselint](http://proselint.com/)
  + [X] [write-good](https://github.com/btford/write-good)
+ Pod
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [proselint](http://proselint.com/)
  + [X] [write-good](https://github.com/btford/write-good)
+ Pony
  + [ ] [ponyc](https://github.com/ponylang/ponyc)
+ PowerShell
  + [ ] [powershell](https://github.com/PowerShell/PowerShell)
  + [ ] [psscriptanalyzer](https://github.com/PowerShell/PSScriptAnalyzer)
+ Prolog
  + [ ] [swipl](https://github.com/SWI-Prolog/swipl-devel)
+ proto
  + [ ] [protoc-gen-lint](https://github.com/ckaznocha/protoc-gen-lint)
  + [ ] [protolint](https://github.com/yoheimuta/protolint)
+ Pug
  + [ ] [pug-lint](https://github.com/pugjs/pug-lint)
+ Puppet
  + [ ] [puppet](https://puppet.com)
  + [ ] [puppet-lint](https://puppet-lint.com)
+ PureScript
  + [ ] [purs-tidy](https://github.com/natefaubion/purescript-tidy)
  + [ ] [purty](https://gitlab.com/joneshf/purty)
+ Python
  + [ ] [autoflake](https://github.com/myint/autoflake)
  + [ ] [autoimport](https://lyz-code.github.io/autoimport/)
  + [X] [autopep8](https://github.com/hhatto/autopep8)
  + [ ] [bandit](https://github.com/PyCQA/bandit)
  + [X] [black](https://github.com/ambv/black)
  + [X] [flake8](http://flake8.pycqa.org/en/latest/)
  + [ ] [flakehell](https://github.com/flakehell/flakehell)
  + [ ] [isort](https://github.com/timothycrosley/isort)
  + [ ] [mypy](http://mypy-lang.org/)
  + [ ] [prospector](https://github.com/PyCQA/prospector)
  + [ ] [pycodestyle](https://github.com/PyCQA/pycodestyle)
  + [ ] [pydocstyle](https://www.pydocstyle.org/)
  + [ ] [pyflakes](https://github.com/PyCQA/pyflakes)
  + [ ] [pylama](https://github.com/klen/pylama)
  + [X] [pylint](https://www.pylint.org/)
  + [ ] [pyre](https://github.com/facebook/pyre-check)
  + [ ] [reorder-python-imports](https://github.com/asottile/reorder_python_imports)
  + [X] [vulture](https://github.com/jendrikseipp/vulture)
  + [X] [yapf](https://github.com/google/yapf)
+ QML
  + [ ] [qmlfmt](https://github.com/jesperhh/qmlfmt)
  + [ ] [qmllint](https://github.com/qt/qtdeclarative/tree/5.11/tools/qmllint)
+ R
  + [ ] [lintr](https://github.com/jimhester/lintr)
  + [ ] [styler](https://github.com/r-lib/styler)
+ Racket
  + [ ] [raco](https://docs.racket-lang.org/raco/)
+ Re:VIEW
  + [X] [redpen](http://redpen.cc/)
+ ReasonML
  + [ ] [merlin](https://github.com/the-lambda-church/merlin)
  + [ ] [refmt](https://github.com/reasonml/reason-cli)
+ reStructuredText
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [proselint](http://proselint.com/)
  + [X] [redpen](http://redpen.cc/)
  + [ ] [rstcheck](https://github.com/myint/rstcheck)
  + [X] [textlint](https://textlint.github.io/)
  + [X] [vale](https://github.com/ValeLint/vale)
  + [X] [write-good](https://github.com/btford/write-good)
+ Robot
  + [ ] [rflint](https://github.com/boakley/robotframework-lint)
+ RPM spec
  + [ ] [rpmlint](https://github.com/rpm-software-management/rpmlint)
+ Ruby
  + [ ] [brakeman](http://brakemanscanner.org/)
  + [X] [debride](https://github.com/seattlerb/debride)
  + [X] [prettier](https://github.com/prettier/plugin-ruby)
  + [ ] [rails_best_practices](https://github.com/flyerhzm/rails_best_practices)
  + [ ] [reek](https://github.com/troessner/reek)
  + [X] [rubocop](https://github.com/bbatsov/rubocop)
  + [ ] [ruby](https://www.ruby-lang.org)
  + [ ] [rufo](https://github.com/ruby-formatter/rufo)
  + [X] [sorbet](https://github.com/sorbet/sorbet)
  + [ ] [standardrb](https://github.com/testdouble/standard)
+ Rust
  + [ ] [cargo](https://github.com/rust-lang/cargo)
  + [ ] [rustc](https://www.rust-lang.org/)
  + [ ] [rustfmt](https://github.com/rust-lang-nursery/rustfmt)
+ Salt
  + [ ] [salt-lint](https://github.com/warpnet/salt-lint)
+ Sass
  + [ ] [sass-lint](https://www.npmjs.com/package/sass-lint)
  + [X] [stylelint](https://github.com/stylelint/stylelint)
+ Scala
  + [ ] [fsc](https://www.scala-lang.org/old/sites/default/files/linuxsoft_archives/docu/files/tools/fsc.html)
  + [ ] [metals](https://scalameta.org/metals/)
  + [ ] [sbtserver](https://www.scala-sbt.org/1.x/docs/sbt-server.html)
  + [ ] [scalac](http://scala-lang.org)
  + [ ] [scalafmt](https://scalameta.org/scalafmt/)
  + [ ] [scalastyle](http://www.scalastyle.org)
+ SCSS
  + [X] [prettier](https://github.com/prettier/prettier)
  + [ ] [sass-lint](https://www.npmjs.com/package/sass-lint)
  + [ ] [scss-lint](https://github.com/brigade/scss-lint)
  + [X] [stylelint](https://github.com/stylelint/stylelint)
+ Slim
  + [ ] [slim-lint](https://github.com/sds/slim-lint)
+ SML
  + [ ] [smlnj](http://www.smlnj.org/)
+ Solidity
  + [ ] [solc](https://solidity.readthedocs.io/)
  + [ ] [solhint](https://github.com/protofire/solhint)
  + [ ] [solium](https://github.com/duaraghav8/Solium)
+ SQL
  + [ ] [pgformatter](https://github.com/darold/pgFormatter)
  + [ ] [sql-lint](https://github.com/joereynolds/sql-lint)
  + [ ] [sqlfmt](https://github.com/jackc/sqlfmt)
  + [ ] [sqlformat](https://github.com/andialbrecht/sqlparse)
  + [ ] [sqlint](https://github.com/purcell/sqlint)
+ Stylus
  + [X] [stylelint](https://github.com/stylelint/stylelint)
+ SugarSS
  + [X] [stylelint](https://github.com/stylelint/stylelint)
+ Svelte
  + [X] [prettier](https://github.com/prettier/prettier)
+ Swift
  + [ ] [Apple swift-format](https://github.com/apple/swift-format)
  + [ ] [swiftformat](https://github.com/nicklockwood/SwiftFormat)
  + [ ] [swiftlint](https://github.com/realm/SwiftLint)
+ systemd
  + [ ] [systemd-analyze](https://www.freedesktop.org/software/systemd/man/systemd-analyze.html)
+ Tcl
  + [ ] [nagelfar](http://nagelfar.sourceforge.net)
+ Terraform
  + [ ] [terraform](https://github.com/hashicorp/terraform)
  + [ ] [terraform-fmt-fixer](https://github.com/hashicorp/terraform)
  + [ ] [tflint](https://github.com/wata727/tflint)
+ Texinfo
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [proselint](http://proselint.com/)
  + [X] [write-good](https://github.com/btford/write-good)
+ Text
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [languagetool](https://languagetool.org/)
  + [X] [proselint](http://proselint.com/)
  + [X] [redpen](http://redpen.cc/)
  + [X] [textlint](https://textlint.github.io/)
  + [X] [vale](https://github.com/ValeLint/vale)
  + [X] [write-good](https://github.com/btford/write-good)
+ Thrift
  + [ ] [thrift](http://thrift.apache.org/)
  + [ ] [thriftcheck](https://github.com/pinterest/thriftcheck)
+ TypeScript
  + [X] [eslint](http://eslint.org/)
  + [ ] [fecs](http://fecs.baidu.com/)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [X] [standard](http://standardjs.com/)
  + typecheck
+ V
  + [ ] [vfmt](https://github.com/vlang/v/)
+ VALA
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
  + [ ] [vala_lint](https://github.com/vala-lang/vala-lint)
+ Verilog
  + [ ] [hdl-checker](https://pypi.org/project/hdl-checker)
  + [ ] [iverilog](https://github.com/steveicarus/iverilog)
  + [ ] [verilator](http://www.veripool.org/projects/verilator/wiki/Intro)
  + [ ] [vlog](https://www.mentor.com/products/fv/questa/)
  + [ ] [xvlog](https://www.xilinx.com/products/design-tools/vivado.html)
  + [ ] [yosys](http://www.clifford.at/yosys/)
+ VHDL
  + [ ] [ghdl](https://github.com/ghdl/ghdl)
  + [ ] [vcom](https://www.mentor.com/products/fv/questa/)
  + [ ] [xvhdl](https://www.xilinx.com/products/design-tools/vivado.html)
+ Vim
  + [X] [vint](https://github.com/Kuniwak/vint)
+ Vim help
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [proselint](http://proselint.com/)
  + [X] [write-good](https://github.com/btford/write-good)
+ Vue
  + [X] [prettier](https://github.com/prettier/prettier)
+ XHTML
  + [X] [alex](https://github.com/wooorm/alex)
  + [X] [proselint](http://proselint.com/)
  + [X] [write-good](https://github.com/btford/write-good)
+ XML
  + [ ] [xmllint](http://xmlsoft.org/xmllint.html)
+ YAML
  + [ ] [circleci](https://circleci.com/docs/2.0/local-cli)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [ ] [spectral](https://github.com/stoplightio/spectral)
  + [ ] [swaglint](https://github.com/byCedric/swaglint)
  + [ ] [yamlfix](https://lyz-code.github.io/yamlfix)
  + [ ] [yamllint](https://yamllint.readthedocs.io/)
