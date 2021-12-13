local fs = require('efmls-configs.fs')

local formatter = 'astyle'
local command = string.format('%s --stdin=${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
