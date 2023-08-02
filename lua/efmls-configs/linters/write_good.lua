-- Metadata
-- languages: misc
-- url: https://github.com/btford/write-good

local fs = require('efmls-configs.fs')

local linter = 'write-good'
local command = string.format('%s ${INPUT}', fs.executable(linter, fs.Scope.NODE))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%m on line %l at column %c' },
  rootMarkers = {},
}
