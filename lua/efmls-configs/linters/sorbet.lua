-- Metadata
-- languages: ruby
-- url: https://github.com/sorbet/sorbet

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'sorbet'
local command = string.format('%s typecheck --color never ${INPUT}', fs.executable('srb', fs.Scope.BUNDLE))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l: %m' },
  rootMarkers = {},
}
