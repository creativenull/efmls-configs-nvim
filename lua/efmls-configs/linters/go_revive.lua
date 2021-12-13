local fs = require('efmls-configs.fs')

local linter = 'revive'
local command = string.format('%s -formatter unix', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %m' },
  rootMarkers = {},
}
