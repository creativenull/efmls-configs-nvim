local fs = require('efmls-configs.fs')

local formatter = 'perlimports'
local args = '--read-stdin --filename ${INPUT}'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { '.git' },
}
