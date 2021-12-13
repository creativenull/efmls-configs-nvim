local fs = require('efmls-configs.fs')

local linter = 'cpplint'
local command = string.format('%s ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l: %m' },
  rootMarkers = {},
}
