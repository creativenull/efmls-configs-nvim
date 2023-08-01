local fs = require('efmls-configs.fs')

local linter = 'stylelint'
local args = '--no-color --formatter compact --stdin --stdin-filename ${INPUT}'
local command = string.format('%s %s', fs.executable(linter, fs.Scope.NODE), args)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#: line %l, col %c, %trror - %m', '%.%#: line %l, col %c, %tarning - %m' },
  rootMarkers = { '.stylelintrc' },
}
