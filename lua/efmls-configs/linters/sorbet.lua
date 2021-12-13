local fs = require('efmls-configs.fs')

local linter = 'sorbet'
local command = string.format('%s typecheck --color never ${INPUT}', fs.executable('srb', fs.Scope.BUNDLE))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l: %m' },
  rootMarkers = {},
}
