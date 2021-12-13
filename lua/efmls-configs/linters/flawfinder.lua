local fs = require('efmls-configs.fs')

local linter = 'flawfinder'
local command = string.format('%s --singleline --dataonly ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c:%.%#[%n] %m' },
  rootMarkers = {},
}
