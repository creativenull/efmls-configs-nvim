local fs = require('efmls-configs.fs')

local formatter = 'pint'
local args = '${INPUT}'
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.COMPOSER), args)

return {
  formatCommand = command,
  formatStdin = false,
}
