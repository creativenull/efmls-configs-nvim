local fs = require('efmls-configs.fs')

local formatter = 'dotnet'
local command = string.format('%s format ${ROOT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = false,
}
