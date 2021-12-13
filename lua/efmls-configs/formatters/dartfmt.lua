local fs = require('efmls-configs.fs')

local formatter = 'dart'
local command = string.format('%s format --output show', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
