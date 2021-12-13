local fs = require('efmls-configs.fs')

local linter = 'mcs'
local command = string.format('%s -unsafe --parse ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#(%l,%c): %trror %m', '%.%#(%l,%c): %tarning %m' },
  rootMarkers = {},
}
