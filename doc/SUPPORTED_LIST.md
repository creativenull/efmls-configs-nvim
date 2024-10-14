<!-- DO NOT MODIFY THIS FILE. AUTO-GENERATED USING `deno run gen` -->

# Supported Linters & Formatters

Please create an Pull Request if you see any mismatched documentation or typos.

## Default Configurations

Here is a list of languages that are automatically set and configured when you call `languages()`. For more information
check the docs: [`:help efmls-configs-defaults`](../README.md#default-configurations).

| **Filetype** | **Default Linter** | **Default Formatter** |
|--------------|--------------------|-----------------------|
| CSS/SCSS/LESS/SASS | `stylelint` | `prettier` |
| JavaScript/JSX TypeScript/TSX | `eslint` | `prettier` |
| Go | `golangci_lint` |  |
| HTML |  | `prettier` |
| Lua | `luacheck` | `stylua` |
| Nix |  | `alejandra` |
| PHP | `phpcs` | `phpcbf` |
| Python | `flake8` | `autopep8` |
| Ruby | `reek` |  |
| VIM | `vint` |  |
| Blade |  | `blade_formatter` |
| Proto | `buf` | `buf` |

## Languages

Below are the supported linters and formatters that are configured to run with efm-langserver. You can access
the table of contents of this document on the left hand corner of the file, in github (Or just a simple <kbd>Ctrl</kbd> + <kbd>F</kbd>
to search, <kbd>Cmd</kbd> + <kbd>F</kbd> if on Mac OS). See example code: [`:help efmls-configs-setup`](../README.md#setup).

### Misc (Text, LaTeX, Markdown, RST, etc)

#### Linters

`alex` [https://alexjs.com/](https://alexjs.com/)

```lua
local alex = require('efmls-configs.linters.alex')
```

`codespell` [https://github.com/codespell-project/codespell](https://github.com/codespell-project/codespell)

```lua
local codespell = require('efmls-configs.linters.codespell')
```

`cspell` [https://github.com/streetsidesoftware/cspell](https://github.com/streetsidesoftware/cspell)

```lua
local cspell = require('efmls-configs.linters.cspell')
```

`languagetool` [https://languagetool.org/](https://languagetool.org/)

```lua
local languagetool = require('efmls-configs.linters.languagetool')
```

`proselint` [http://proselint.com/](http://proselint.com/)

```lua
local proselint = require('efmls-configs.linters.proselint')
```

`redpen` [http://redpen.cc/](http://redpen.cc/)

```lua
local redpen = require('efmls-configs.linters.redpen')
```

`textlint` [https://textlint.github.io/](https://textlint.github.io/)

```lua
local textlint = require('efmls-configs.linters.textlint')
```

`vale` [https://github.com/ValeLint/vale](https://github.com/ValeLint/vale)

```lua
local vale = require('efmls-configs.linters.vale')
```

`write_good` [https://github.com/btford/write-good](https://github.com/btford/write-good)

```lua
local write_good = require('efmls-configs.linters.write_good')
```

### HTML

#### Linters

`markuplint` [https://markuplint.dev/](https://markuplint.dev/)

```lua
local markuplint = require('efmls-configs.linters.markuplint')
```

### JSON

#### Linters

`jsonlint` [https://github.com/zaach/jsonlint](https://github.com/zaach/jsonlint)

```lua
local jsonlint = require('efmls-configs.linters.jsonlint')
```

### Bash

#### Linters

`bashate` [https://github.com/openstack/bashate](https://github.com/openstack/bashate)

```lua
local bashate = require('efmls-configs.linters.bashate')
```

`shellcheck` [https://www.shellcheck.net/](https://www.shellcheck.net/)

```lua
local shellcheck = require('efmls-configs.linters.shellcheck')
```

#### Formatters

`beautysh` [https://github.com/illvart/beautysh-action](https://github.com/illvart/beautysh-action)

```lua
local beautysh = require('efmls-configs.formatters.beautysh')
```

`shfmt` [https://github.com/mvdan/sh](https://github.com/mvdan/sh)

```lua
local shfmt = require('efmls-configs.formatters.shfmt')
```

### Blade

#### Formatters

`blade_formatter` [https://github.com/shufo/blade-formatter](https://github.com/shufo/blade-formatter)

```lua
local blade_formatter = require('efmls-configs.formatters.blade_formatter')
```

### C#

#### Linters

`mcs` [http://www.mono-project.com/docs/about-mono/languages/csharp/](http://www.mono-project.com/docs/about-mono/languages/csharp/)

```lua
local mcs = require('efmls-configs.linters.mcs')
```

#### Formatters

`dotnet_format` [https://github.com/dotnet/format](https://github.com/dotnet/format)

```lua
local dotnet_format = require('efmls-configs.formatters.dotnet_format')
```

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### C++

#### Linters

`clang_format` [https://clang.llvm.org/docs/ClangFormat.html](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang_format = require('efmls-configs.linters.clang_format')
```

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.linters.clang_tidy')
```

`clazy` [https://github.com/KDE/clazy](https://github.com/KDE/clazy)

```lua
local clazy = require('efmls-configs.linters.clazy')
```

`cppcheck` [http://cppcheck.sourceforge.net](http://cppcheck.sourceforge.net)

```lua
local cppcheck = require('efmls-configs.linters.cppcheck')
```

`cpplint` [https://github.com/google/styleguide/tree/gh-pages/cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)

```lua
local cpplint = require('efmls-configs.linters.cpplint')
```

`gcc` [https://gcc.gnu.org/](https://gcc.gnu.org/)

```lua
local gcc = require('efmls-configs.linters.gcc')
```

#### Formatters

`astyle` [http://astyle.sourceforge.net/](http://astyle.sourceforge.net/)

```lua
local astyle = require('efmls-configs.formatters.astyle')
```

`clang_format` [https://clang.llvm.org/docs/ClangFormat.html](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang_format = require('efmls-configs.formatters.clang_format')
```

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.formatters.clang_tidy')
```

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### C

#### Linters

`clang_format` [https://clang.llvm.org/docs/ClangFormat.html](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang_format = require('efmls-configs.linters.clang_format')
```

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.linters.clang_tidy')
```

`cppcheck` [http://cppcheck.sourceforge.net](http://cppcheck.sourceforge.net)

```lua
local cppcheck = require('efmls-configs.linters.cppcheck')
```

`cpplint` [https://github.com/google/styleguide/tree/gh-pages/cpplint](https://github.com/google/styleguide/tree/gh-pages/cpplint)

```lua
local cpplint = require('efmls-configs.linters.cpplint')
```

`flawfinder` [https://www.dwheeler.com/flawfinder/](https://www.dwheeler.com/flawfinder/)

```lua
local flawfinder = require('efmls-configs.linters.flawfinder')
```

`gcc` [https://gcc.gnu.org/](https://gcc.gnu.org/)

```lua
local gcc = require('efmls-configs.linters.gcc')
```

#### Formatters

`astyle` [http://astyle.sourceforge.net/](http://astyle.sourceforge.net/)

```lua
local astyle = require('efmls-configs.formatters.astyle')
```

`clang_format` [https://clang.llvm.org/docs/ClangFormat.html](https://clang.llvm.org/docs/ClangFormat.html)

```lua
local clang_format = require('efmls-configs.formatters.clang_format')
```

`clang_tidy` [http://clang.llvm.org/extra/clang-tidy/](http://clang.llvm.org/extra/clang-tidy/)

```lua
local clang_tidy = require('efmls-configs.formatters.clang_tidy')
```

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Clojure

#### Linters

`clj_kondo` [https://github.com/borkdude/clj-kondo](https://github.com/borkdude/clj-kondo)

```lua
local clj_kondo = require('efmls-configs.linters.clj_kondo')
```

`joker` [https://github.com/candid82/joker](https://github.com/candid82/joker)

```lua
local joker = require('efmls-configs.linters.joker')
```

#### Formatters

`cljstyle` [https://github.com/greglook/cljstyle](https://github.com/greglook/cljstyle)

```lua
local cljstyle = require('efmls-configs.formatters.cljstyle')
```

`joker` [https://github.com/candid82/joker](https://github.com/candid82/joker)

```lua
local joker = require('efmls-configs.formatters.joker')
```

### Cmake

#### Linters

`cmake_lint` [https://github.com/cheshirekow/cmake_format](https://github.com/cheshirekow/cmake_format)

```lua
local cmake_lint = require('efmls-configs.linters.cmake_lint')
```

#### Formatters

`gersemi` [https://github.com/BlankSpruce/gersemi](https://github.com/BlankSpruce/gersemi)

```lua
local gersemi = require('efmls-configs.formatters.gersemi')
```

### Crystal

#### Linters

`ameba` [https://github.com/veelenga/ameba](https://github.com/veelenga/ameba)

```lua
local ameba = require('efmls-configs.linters.ameba')
```

### Csh

#### Formatters

`beautysh` [https://github.com/illvart/beautysh-action](https://github.com/illvart/beautysh-action)

```lua
local beautysh = require('efmls-configs.formatters.beautysh')
```

### Css

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.formatters.stylelint')
```

### D

#### Linters

`dmd` [https://dlang.org/dmd-linux.html](https://dlang.org/dmd-linux.html)

```lua
local dmd = require('efmls-configs.linters.dmd')
```

#### Formatters

`dfmt` [https://github.com/dlang-community/dfmt](https://github.com/dlang-community/dfmt)

```lua
local dfmt = require('efmls-configs.formatters.dfmt')
```

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
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

### Docker

#### Linters

`hadolint` [https://github.com/hadolint/hadolint](https://github.com/hadolint/hadolint)

```lua
local hadolint = require('efmls-configs.linters.hadolint')
```

### Elixir

#### Formatters

`mix` [https://hexdocs.pm/mix/Mix.html](https://hexdocs.pm/mix/Mix.html)

```lua
local mix = require('efmls-configs.formatters.mix')
```

### Fennel

#### Formatters

`fnlfmt` [https://git.sr.ht/~technomancy/fnlfmt](https://git.sr.ht/~technomancy/fnlfmt)

```lua
local fnlfmt = require('efmls-configs.formatters.fnlfmt')
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

### Gitcommit

#### Linters

`gitlint` [https://jorisroovers.com/gitlint/latest/](https://jorisroovers.com/gitlint/latest/)

```lua
local gitlint = require('efmls-configs.linters.gitlint')
```

### Go

#### Linters

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`go_revive` [https://github.com/mgechev/revive](https://github.com/mgechev/revive)

```lua
local go_revive = require('efmls-configs.linters.go_revive')
```

`golangci_lint` [https://github.com/golangci/golangci-lint](https://github.com/golangci/golangci-lint)

```lua
local golangci_lint = require('efmls-configs.linters.golangci_lint')
```

`golint` [https://godoc.org/github.com/golang/lint](https://godoc.org/github.com/golang/lint)

```lua
local golint = require('efmls-configs.linters.golint')
```

`staticcheck` [https://github.com/dominikh/go-tools/tree/master/cmd/staticcheck](https://github.com/dominikh/go-tools/tree/master/cmd/staticcheck)

```lua
local staticcheck = require('efmls-configs.linters.staticcheck')
```

#### Formatters

`gofmt` [https://pkg.go.dev/cmd/gofmt](https://pkg.go.dev/cmd/gofmt)

```lua
local gofmt = require('efmls-configs.formatters.gofmt')
```

`gofumpt` [https://github.com/mvdan/gofumpt](https://github.com/mvdan/gofumpt)

```lua
local gofumpt = require('efmls-configs.formatters.gofumpt')
```

`goimports` [https://godoc.org/golang.org/x/tools/cmd/goimports](https://godoc.org/golang.org/x/tools/cmd/goimports)

```lua
local goimports = require('efmls-configs.formatters.goimports')
```

`golines` [https://github.com/segmentio/golines](https://github.com/segmentio/golines)

```lua
local golines = require('efmls-configs.formatters.golines')
```

### Haskell

#### Formatters

`fourmolu` [https://github.com/fourmolu/fourmolu](https://github.com/fourmolu/fourmolu)

```lua
local fourmolu = require('efmls-configs.formatters.fourmolu')
```

### Html

#### Linters

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

#### Formatters

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

### Java

#### Formatters

`google_java_format` [https://github.com/google/google-java-format](https://github.com/google/google-java-format)

```lua
local google_java_format = require('efmls-configs.formatters.google_java_format')
```

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Javascript

#### Linters

`eslint` [http://eslint.org/](http://eslint.org/)

```lua
local eslint = require('efmls-configs.linters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.linters.eslint_d')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.linters.fecs')
```

`js_standard` [http://standardjs.com/](http://standardjs.com/)

```lua
local js_standard = require('efmls-configs.linters.js_standard')
```

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.linters.xo')
```

#### Formatters

`biome` [https://biomejs.dev/](https://biomejs.dev/)

```lua
local biome = require('efmls-configs.formatters.biome')
```

`deno_fmt` [https://docs.deno.com/runtime/manual/tools/formatter](https://docs.deno.com/runtime/manual/tools/formatter)

```lua
local deno_fmt = require('efmls-configs.formatters.deno_fmt')
```

`dprint` [https://dprint.dev/](https://dprint.dev/)

```lua
local dprint = require('efmls-configs.formatters.dprint')
```

`eslint` [https://eslint.org](https://eslint.org)

```lua
local eslint = require('efmls-configs.formatters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.formatters.eslint_d')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`js_standard` [http://standardjs.com/](http://standardjs.com/)

```lua
local js_standard = require('efmls-configs.formatters.js_standard')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier_eslint` [https://github.com/prettier/prettier-eslint](https://github.com/prettier/prettier-eslint)

```lua
local prettier_eslint = require('efmls-configs.formatters.prettier_eslint')
```

`prettier_standard` [https://github.com/sheerun/prettier-standard](https://github.com/sheerun/prettier-standard)

```lua
local prettier_standard = require('efmls-configs.formatters.prettier_standard')
```

`rome` [https://github.com/rome/tools](https://github.com/rome/tools)

```lua
local rome = require('efmls-configs.formatters.rome')
```

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.formatters.xo')
```

### Javascriptreact

#### Formatters

`deno_fmt` [https://docs.deno.com/runtime/manual/tools/formatter](https://docs.deno.com/runtime/manual/tools/formatter)

```lua
local deno_fmt = require('efmls-configs.formatters.deno_fmt')
```

### Json

#### Linters

`jq` [https://jqlang.github.io/jq/](https://jqlang.github.io/jq/)

```lua
local jq = require('efmls-configs.linters.jq')
```

#### Formatters

`biome` [https://biomejs.dev/](https://biomejs.dev/)

```lua
local biome = require('efmls-configs.formatters.biome')
```

`dprint` [https://dprint.dev/](https://dprint.dev/)

```lua
local dprint = require('efmls-configs.formatters.dprint')
```

`fixjson` [https://github.com/rhysd/fixjson](https://github.com/rhysd/fixjson)

```lua
local fixjson = require('efmls-configs.formatters.fixjson')
```

`jq` [https://jqlang.github.io/jq/](https://jqlang.github.io/jq/)

```lua
local jq = require('efmls-configs.formatters.jq')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`rome` [https://github.com/rome/tools](https://github.com/rome/tools)

```lua
local rome = require('efmls-configs.formatters.rome')
```

### Jsonc

#### Formatters

`biome` [https://biomejs.dev/](https://biomejs.dev/)

```lua
local biome = require('efmls-configs.formatters.biome')
```

### Ksh

#### Formatters

`beautysh` [https://github.com/illvart/beautysh-action](https://github.com/illvart/beautysh-action)

```lua
local beautysh = require('efmls-configs.formatters.beautysh')
```

### Less

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.formatters.stylelint')
```

### Lua

#### Linters

`luacheck` [https://github.com/mpeterv/luacheck](https://github.com/mpeterv/luacheck)

```lua
local luacheck = require('efmls-configs.linters.luacheck')
```

`selene` [https://kampfkarren.github.io/selene/](https://kampfkarren.github.io/selene/)

```lua
local selene = require('efmls-configs.linters.selene')
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

### Make

#### Linters

`checkmake` [https://github.com/mrtazz/checkmake](https://github.com/mrtazz/checkmake)

```lua
local checkmake = require('efmls-configs.linters.checkmake')
```

### Markdown

#### Linters

`markdownlint` [https://github.com/DavidAnson/markdownlint](https://github.com/DavidAnson/markdownlint)

```lua
local markdownlint = require('efmls-configs.linters.markdownlint')
```

#### Formatters

`cbfmt` [https://github.com/lukas-reineke/cbfmt](https://github.com/lukas-reineke/cbfmt)

```lua
local cbfmt = require('efmls-configs.formatters.cbfmt')
```

`dprint` [https://dprint.dev/](https://dprint.dev/)

```lua
local dprint = require('efmls-configs.formatters.dprint')
```

`mdformat` [https://mdformat.readthedocs.io/](https://mdformat.readthedocs.io/)

```lua
local mdformat = require('efmls-configs.formatters.mdformat')
```

### Nix

#### Linters

`statix` [https://github.com/NerdyPepper/statix](https://github.com/NerdyPepper/statix)

```lua
local statix = require('efmls-configs.linters.statix')
```

#### Formatters

`alejandra` [https://github.com/kamadorueda/alejandra](https://github.com/kamadorueda/alejandra)

```lua
local alejandra = require('efmls-configs.formatters.alejandra')
```

`nixfmt` [https://github.com/serokell/nixfmt](https://github.com/serokell/nixfmt)

```lua
local nixfmt = require('efmls-configs.formatters.nixfmt')
```

### Objective-c++

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

### Pawn

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Php

#### Linters

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`phan` [https://github.com/phan/phan](https://github.com/phan/phan)

```lua
local phan = require('efmls-configs.linters.phan')
```

`php` [https://secure.php.net/](https://secure.php.net/)

```lua
local php = require('efmls-configs.linters.php')
```

`phpcs` [https://github.com/squizlabs/PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)

```lua
local phpcs = require('efmls-configs.linters.phpcs')
```

`phpstan` [https://github.com/phpstan/phpstan](https://github.com/phpstan/phpstan)

```lua
local phpstan = require('efmls-configs.linters.phpstan')
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

`phpcbf` [https://github.com/squizlabs/PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)

```lua
local phpcbf = require('efmls-configs.formatters.phpcbf')
```

`pint` [https://github.com/laravel/pint](https://github.com/laravel/pint)

```lua
local pint = require('efmls-configs.formatters.pint')
```

### Proto

#### Linters

`buf` [https://github.com/bufbuild/buf](https://github.com/bufbuild/buf)

```lua
local buf = require('efmls-configs.linters.buf')
```

#### Formatters

`buf` [https://github.com/bufbuild/buf](https://github.com/bufbuild/buf)

```lua
local buf = require('efmls-configs.formatters.buf')
```

`protolint` [https://github.com/yoheimuta/protolint](https://github.com/yoheimuta/protolint)

```lua
local protolint = require('efmls-configs.formatters.protolint')
```

### Python

#### Linters

`djlint` [https://djlint.com/](https://djlint.com/)

```lua
local djlint = require('efmls-configs.linters.djlint')
```

`flake8` [http://flake8.pycqa.org/en/latest/](http://flake8.pycqa.org/en/latest/)

```lua
local flake8 = require('efmls-configs.linters.flake8')
```

`mypy` [https://mypy-lang.org/](https://mypy-lang.org/)

```lua
local mypy = require('efmls-configs.linters.mypy')
```

`pylint` [https://www.pylint.org/](https://www.pylint.org/)

```lua
local pylint = require('efmls-configs.linters.pylint')
```

`ruff` [https://github.com/astral-sh/ruff](https://github.com/astral-sh/ruff)

```lua
local ruff = require('efmls-configs.linters.ruff')
```

`vulture` [https://github.com/jendrikseipp/vulture](https://github.com/jendrikseipp/vulture)

```lua
local vulture = require('efmls-configs.linters.vulture')
```

#### Formatters

`autopep8` [https://github.com/hhatto/autopep8](https://github.com/hhatto/autopep8)

```lua
local autopep8 = require('efmls-configs.formatters.autopep8')
```

`black` [https://github.com/ambv/black](https://github.com/ambv/black)

```lua
local black = require('efmls-configs.formatters.black')
```

`isort` [https://pycqa.github.io/isort/](https://pycqa.github.io/isort/)

```lua
local isort = require('efmls-configs.formatters.isort')
```

`ruff` [https://github.com/astral-sh/ruff](https://github.com/astral-sh/ruff)

```lua
local ruff = require('efmls-configs.formatters.ruff')
```

`ruff_sort` [https://github.com/astral-sh/ruff](https://github.com/astral-sh/ruff)

```lua
local ruff_sort = require('efmls-configs.formatters.ruff_sort')
```

`yapf` [https://github.com/google/yapf](https://github.com/google/yapf)

```lua
local yapf = require('efmls-configs.formatters.yapf')
```

### Roslyn

#### Formatters

`dprint` [https://dprint.dev/](https://dprint.dev/)

```lua
local dprint = require('efmls-configs.formatters.dprint')
```

### Ruby

#### Linters

`debride` [https://github.com/seattlerb/debride](https://github.com/seattlerb/debride)

```lua
local debride = require('efmls-configs.linters.debride')
```

`reek` [https://github.com/troessner/reek](https://github.com/troessner/reek)

```lua
local reek = require('efmls-configs.linters.reek')
```

`rubocop` [https://github.com/bbatsov/rubocop](https://github.com/bbatsov/rubocop)

```lua
local rubocop = require('efmls-configs.linters.rubocop')
```

`sorbet` [https://github.com/sorbet/sorbet](https://github.com/sorbet/sorbet)

```lua
local sorbet = require('efmls-configs.linters.sorbet')
```

### Rust

#### Formatters

`dprint` [https://dprint.dev/](https://dprint.dev/)

```lua
local dprint = require('efmls-configs.formatters.dprint')
```

`rustfmt` [https://github.com/rust-lang-nursery/rustfmt](https://github.com/rust-lang-nursery/rustfmt)

```lua
local rustfmt = require('efmls-configs.formatters.rustfmt')
```

### Sass

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.formatters.stylelint')
```

### Scala

#### Formatters

`scalafmt` [https://scalameta.org/scalafmt/](https://scalameta.org/scalafmt/)

```lua
local scalafmt = require('efmls-configs.formatters.scalafmt')
```

### Scss

#### Linters

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.linters.stylelint')
```

#### Formatters

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`stylelint` [https://github.com/stylelint/stylelint](https://github.com/stylelint/stylelint)

```lua
local stylelint = require('efmls-configs.formatters.stylelint')
```

### Sh

#### Linters

`shellcheck` [https://www.shellcheck.net/](https://www.shellcheck.net/)

```lua
local shellcheck = require('efmls-configs.linters.shellcheck')
```

#### Formatters

`beautysh` [https://github.com/illvart/beautysh-action](https://github.com/illvart/beautysh-action)

```lua
local beautysh = require('efmls-configs.formatters.beautysh')
```

`shellharden` [https://github.com/anordal/shellharden](https://github.com/anordal/shellharden)

```lua
local shellharden = require('efmls-configs.formatters.shellharden')
```

`shfmt` [https://github.com/mvdan/sh](https://github.com/mvdan/sh)

```lua
local shfmt = require('efmls-configs.formatters.shfmt')
```

### Slim

#### Linters

`slim_lint` [https://github.com/sds/slim-lint](https://github.com/sds/slim-lint)

```lua
local slim_lint = require('efmls-configs.linters.slim_lint')
```

### Sml

#### Formatters

`smlfmt` [https://github.com/shwestrick/smlfmt](https://github.com/shwestrick/smlfmt)

```lua
local smlfmt = require('efmls-configs.formatters.smlfmt')
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

### Sql

#### Linters

`sqlfluff` [https://github.com/sqlfluff/sqlfluff](https://github.com/sqlfluff/sqlfluff)

```lua
local sqlfluff = require('efmls-configs.linters.sqlfluff')
```

#### Formatters

`sql-formatter` [https://github.com/sql-formatter-org/sql-formatter](https://github.com/sql-formatter-org/sql-formatter)

```lua
local sql-formatter = require('efmls-configs.formatters.sql-formatter')
```

`sqlfluff` [https://github.com/sql-formatter-org/sql-formatter](https://github.com/sql-formatter-org/sql-formatter)

```lua
local sqlfluff = require('efmls-configs.formatters.sqlfluff')
```

### Swift

#### Linters

`swiftlint` [https://github.com/realm/SwiftLint](https://github.com/realm/SwiftLint)

```lua
local swiftlint = require('efmls-configs.linters.swiftlint')
```

#### Formatters

`swiftformat` [https://github.com/nicklockwood/SwiftFormat](https://github.com/nicklockwood/SwiftFormat)

```lua
local swiftformat = require('efmls-configs.formatters.swiftformat')
```

### Terraform

#### Formatters

`terraform_fmt` [https://github.com/hashicorp/terraform](https://github.com/hashicorp/terraform)

```lua
local terraform_fmt = require('efmls-configs.formatters.terraform_fmt')
```

### Tex

#### Linters

`chktex` [https://www.nongnu.org/chktex/](https://www.nongnu.org/chktex/)

```lua
local chktex = require('efmls-configs.linters.chktex')
```

#### Formatters

`latexindent` [https://github.com/cmhughes/latexindent.pl](https://github.com/cmhughes/latexindent.pl)

```lua
local latexindent = require('efmls-configs.formatters.latexindent')
```

### Toml

#### Formatters

`dprint` [https://dprint.dev/](https://dprint.dev/)

```lua
local dprint = require('efmls-configs.formatters.dprint')
```

`taplo` [https://github.com/tamasfe/taplo](https://github.com/tamasfe/taplo)

```lua
local taplo = require('efmls-configs.formatters.taplo')
```

### Typescript

#### Linters

`eslint` [http://eslint.org/](http://eslint.org/)

```lua
local eslint = require('efmls-configs.linters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.linters.eslint_d')
```

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.linters.xo')
```

#### Formatters

`biome` [https://biomejs.dev/](https://biomejs.dev/)

```lua
local biome = require('efmls-configs.formatters.biome')
```

`deno_fmt` [https://docs.deno.com/runtime/manual/tools/formatter](https://docs.deno.com/runtime/manual/tools/formatter)

```lua
local deno_fmt = require('efmls-configs.formatters.deno_fmt')
```

`dprint` [https://dprint.dev/](https://dprint.dev/)

```lua
local dprint = require('efmls-configs.formatters.dprint')
```

`eslint` [https://eslint.org](https://eslint.org)

```lua
local eslint = require('efmls-configs.formatters.eslint')
```

`eslint_d` [https://github.com/mantoni/eslint_d.js](https://github.com/mantoni/eslint_d.js)

```lua
local eslint_d = require('efmls-configs.formatters.eslint_d')
```

`fecs` [http://fecs.baidu.com/](http://fecs.baidu.com/)

```lua
local fecs = require('efmls-configs.formatters.fecs')
```

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`prettier_d` [https://github.com/fsouza/prettierd](https://github.com/fsouza/prettierd)

```lua
local prettier_d = require('efmls-configs.formatters.prettier_d')
```

`prettier_eslint` [https://github.com/prettier/prettier-eslint](https://github.com/prettier/prettier-eslint)

```lua
local prettier_eslint = require('efmls-configs.formatters.prettier_eslint')
```

`prettier_standard` [https://github.com/sheerun/prettier-standard](https://github.com/sheerun/prettier-standard)

```lua
local prettier_standard = require('efmls-configs.formatters.prettier_standard')
```

`rome` [https://github.com/rome/tools](https://github.com/rome/tools)

```lua
local rome = require('efmls-configs.formatters.rome')
```

`xo` [https://github.com/sindresorhus/xo](https://github.com/sindresorhus/xo)

```lua
local xo = require('efmls-configs.formatters.xo')
```

### Typescriptreact

#### Formatters

`deno_fmt` [https://docs.deno.com/runtime/manual/tools/formatter](https://docs.deno.com/runtime/manual/tools/formatter)

```lua
local deno_fmt = require('efmls-configs.formatters.deno_fmt')
```

### Typst

#### Formatters

`prettypst` [https://github.com/antonWetzel/prettypst](https://github.com/antonWetzel/prettypst)

```lua
local prettypst = require('efmls-configs.formatters.prettypst')
```

`typstfmt` [https://github.com/astrale-sharp/typstfmt](https://github.com/astrale-sharp/typstfmt)

```lua
local typstfmt = require('efmls-configs.formatters.typstfmt')
```

`typstyle` [https://github.com/Enter-tainer/typstyle](https://github.com/Enter-tainer/typstyle)

```lua
local typstyle = require('efmls-configs.formatters.typstyle')
```

### Vala

#### Formatters

`uncrustify` [https://github.com/uncrustify/uncrustify](https://github.com/uncrustify/uncrustify)

```lua
local uncrustify = require('efmls-configs.formatters.uncrustify')
```

### Vim

#### Linters

`vint` [https://github.com/ValeLint/vale](https://github.com/ValeLint/vale)

```lua
local vint = require('efmls-configs.linters.vint')
```

### Yaml

#### Linters

`actionlint` [https://github.com/rhysd/actionlint](https://github.com/rhysd/actionlint)

```lua
local actionlint = require('efmls-configs.linters.actionlint')
```

`ansible_lint` [https://github.com/willthames/ansible-lint](https://github.com/willthames/ansible-lint)

```lua
local ansible_lint = require('efmls-configs.linters.ansible_lint')
```

`yamllint` [https://yamllint.readthedocs.io/](https://yamllint.readthedocs.io/)

```lua
local yamllint = require('efmls-configs.linters.yamllint')
```

#### Formatters

`prettier` [https://github.com/prettier/prettier](https://github.com/prettier/prettier)

```lua
local prettier = require('efmls-configs.formatters.prettier')
```

`yq` [https://github.com/mikefarah/yq](https://github.com/mikefarah/yq)

```lua
local yq = require('efmls-configs.formatters.yq')
```

### Zsh

#### Formatters

`beautysh` [https://github.com/illvart/beautysh-action](https://github.com/illvart/beautysh-action)

```lua
local beautysh = require('efmls-configs.formatters.beautysh')
```

