-- Metadata
-- languages: css,scss,sass,less
-- url: https://github.com/stylelint/stylelint

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'stylelint'
local args = '--no-color --formatter compact --stdin --stdin-filename ${INPUT}'
local command = string.format('%s %s', fs.executable(linter, fs.Scope.NODE), args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#: line %l, col %c, %trror - %m', '%.%#: line %l, col %c, %tarning - %m' },
  rootMarkers = { '.stylelintrc' },
}
