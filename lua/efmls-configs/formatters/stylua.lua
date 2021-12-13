local fs = require('efmls-configs.fs')

local formatter = 'stylua'
local command = string.format('%s --color Never -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { 'stylua.toml', '.stylua.toml' },
}
