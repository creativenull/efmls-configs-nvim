-- Metadata
-- languages: JSON
-- url: https://github.com/zaach/jsonlint

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'jsonlint'
local args = '--sort-keys --compact'
local command = string.format('%s %s', fs.executable(linter, fs.Scope.NODE), args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { 'line %l, col %c, %m' },
  rootMarkers = { '.jsonlintrc' },
}
