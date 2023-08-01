local fs = require('efmls-configs.fs')

local formatter = 'forge'
local command = string.format('%s fmt --raw -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { 'foundry.toml' },
}
