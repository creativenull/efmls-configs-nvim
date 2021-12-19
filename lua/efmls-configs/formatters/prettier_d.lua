local fs = require('efmls-configs.fs')

local formatter = 'prettierd'
local command = string.format('%s ${INPUT}', fs.executable(formatter, fs.Scope.NODE))

return {
  formatCommand = command,
  formatStdin = true,
}
