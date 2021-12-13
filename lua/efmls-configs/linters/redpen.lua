local fs = require('efmls-configs.fs')

local linter = 'redpen'
local command = string.format('%s ${FILENAME}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l: %m' },
  rootMarkers = {},
}
