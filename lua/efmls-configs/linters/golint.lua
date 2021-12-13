local fs = require('efmls-configs.fs')

local linter = 'golint'
local command = string.format('%s -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %m' },
  rootMarkers = {},
}
