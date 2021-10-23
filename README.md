# efmls-configs-nvim

An unofficial collection of linters and formatters configured for [efm-langserver][efm-langserver] to work with the
builtin [nvim-lsp][nvim-lsp]. Have a look at the [currently supported linters/formatters](#language-support-todo).

Current Status: __Alpha__

Note, given the current status, things are prone to break. I would highly encourage you create an issue with good
reproduction steps in order to properly debug.

## Features

+ Out-of-box configurations for your linter/formatter with options for customization.
+ Intelligently detect linter/formatter tools installed globally or within the project (currently supports node npm, php composer, and ruby bundler).
+ Provide both errors and warnings where possible by default.

## Requirements

+ [neovim 0.5 and up][neovim]
+ [nvim-lspconfig][lspconfig]
+ [efm-langserver][efm-langserver], installed globally - follow instructions on the repo

## Installation

Install with your favorite plugin manager or just use builtin `packages`.

### vim-plug

```vim
Plug 'neovim/nvim-lspconfig'
Plug 'creativenull/efmls-configs-nvim'
```

### packer.nvim

```lua
use { 'creativenull/efmls-configs-nvim', requires = { 'neovim/nvim-lspconfig' } }
```

### Builtin `package` (`:help packages`)

Here is an how to install this plugin for Linux/MacOS machines:

```sh
git clone https://github.com/creativenull/efmls-configs-nvim.git ~/.local/share/nvim/site/pack/creativenull/start/efmls-configs-nvim
```

## Setup

You need to first initialize the plugin with the `init()`, this is where you pass your LSP options like `on_attach`,
`capabilities`, etc.

```lua
local function on_attach(client)
  print('Attached to ' .. client.name)
end

local efmls = require 'efmls-configs'
efmls.init {
  -- Your custom attach function
  on_attach = on_attach,

  -- You may also want to enable document formatting
  -- to enable formatting via LSP
  init_options = {
    documentFormatting = true,
  },
}
```

Finally, register the linters and formatters you want to run on the specific filetypes with the `setup()` function.
Below is an example to setup eslint and prettier to work with a `javascript` filetype.

```lua
local eslint = require 'efmls-configs.linters.eslint'
local pretter = require 'efmls-configs.formatters.prettier'
efmls.setup {
  javascript = {
    linter = eslint,
    formatter = prettier,
  },
}
```

## Implementation Details (TODO)

+ [ ] Tests to ensure proper linter/formatter config
+ [ ] Tests to run separate linters/formatters a docker container

## Language Support (TODO)

Languages to support, list based on ALE with LSP servers omitted:

+ Ada
  + [ ] [gcc](https://gcc.gnu.org)
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
  + [ ] [gcc](https://gcc.gnu.org)
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
  + [ ] [csc](http://www.mono-project.com/docs/about-mono/languages/csharp/)  see:`help ale-cs-csc` for details and configuration
  + [X] [dotnet-format](https://github.com/dotnet/format)
  + [X] [mcs](http://www.mono-project.com/docs/about-mono/languages/csharp/) see:`help ale-cs-mcs` for details
  + [ ] [mcsc](http://www.mono-project.com/docs/about-mono/languages/csharp/)  see:`help ale-cs-mcsc` for details and configuration
  + [X] [uncrustify](https://github.com/uncrustify/uncrustify)
+ C++ (filetype cpp)
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
  + [ ] [clj-kondo](https://github.com/borkdude/clj-kondo)
  + [ ] [joker](https://github.com/candid82/joker)
+ CloudFormation
  + [ ] [cfn-python-lint](https://github.com/awslabs/cfn-python-lint)
+ CMake
  + [ ] [cmake-format](https://github.com/cheshirekow/cmake_format)
  + [ ] [cmakelint](https://github.com/richq/cmake-lint)
+ CoffeeScript
  + [ ] [coffeelint](https://www.npmjs.com/package/coffeelint)
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
+ Cython (pyrex filetype)
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
  + [ ] [gcc](https://gcc.gnu.org/)
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
  + [ ] [hhast](https://github.com/hhvm/hhast)  (see `:help ale-integration-hack`)
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
  + [ ] [deno](https://deno.land/)
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
  + [ ] [merlin](https://github.com/the-lambda-church/merlin) see `:help ale-ocaml-merlin` for configuration instructions
  + [ ] [ocamlformat](https://github.com/ocaml-ppx/ocamlformat)
  + [ ] [ocp-indent](https://github.com/OCamlPro/ocp-indent)
+ OpenApi
  + [ ] [ibm_validator](https://github.com/IBM/openapi-validator)
  + [X] [prettier](https://github.com/prettier/prettier)
  + [ ] [yamllint](https://yamllint.readthedocs.io/)
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
  + [X] [phan](https://github.com/phan/phan) see `:help ale-php-phan` to instructions
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
  + [ ] [merlin](https://github.com/the-lambda-church/merlin) see `:help ale-reasonml-ols` for configuration instructions
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
  + [ ] [rpmlint](https://github.com/rpm-software-management/rpmlint)  (see `:help ale-integration-spec`)
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
  + [ ] [cargo](https://github.com/rust-lang/cargo)  (see `:help ale-integration-rust` for configuration instructions)
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

## Credits

Credits goes to the following projects for inspiration:

+ [efm-langserver][efm-langserver] - for the awesome language server to provide linters/formatters through a LSP protocol
+ [ale][ale] - for a huge list of supported linters/formatters to look through

[efm-langserver]: https://github.com/mattn/efm-langserver
[ale]: https://github.com/dense-analyses/ale
[nvim-lsp]: https://neovim.io/doc/user/lsp.html
[neovim]: https://github.com/neovim/neovim
[lspconfig]: https://github.com/neovim/nvim-lspconfig
