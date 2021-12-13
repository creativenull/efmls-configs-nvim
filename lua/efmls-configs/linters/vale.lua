local fs = require('efmls-configs.fs')

local linter = 'vale'
local command = string.format('%s --output=line ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l:%c:%m' },
  rootMarkers = { '.vale.ini' },
}
