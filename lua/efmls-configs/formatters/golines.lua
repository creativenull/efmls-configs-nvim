local fs = require('efmls-configs.fs')

local formatter = 'golines'
local command = string.format('%s', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
