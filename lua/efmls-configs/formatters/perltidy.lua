local fs = require('efmls-configs.fs')

local formatter = 'perltidy'
local command = string.format('%s --quiet', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { '.git' },
}
