local fs = require('efmls-configs.fs')

local linter = 'bashate'
local command = string.format('%s -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '-:%l:%c: %t%m' },
  rootMarkers = {},
}
