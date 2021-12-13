local fs = require('efmls-configs.fs')

local formatter = 'xo'
local command = string.format('%s --fix --stdin', fs.executable(formatter, fs.Scope.NODE))

return {
  formatCommand = command,
  formatStdin = true,
}
