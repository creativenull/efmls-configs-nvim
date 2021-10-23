local fs = require('efmls-configs.fs')

local linter = 'textlint'
local bin = fs.get_executable(linter, fs.Scope.NODE)
local args = '--no-color --format compact --stdin --stdin-filename ${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '%.%#: line %l, col %c, %trror - %m', '%.%#: line %l, col %c, %tarning - %m' },
  rootMarkers = { '.textlintrc', '.textlintrc.js', '.textlintrc.json', '.textlintrc.yml', '.textlintrc.yaml' },
}
