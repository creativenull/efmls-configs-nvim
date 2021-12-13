local fs = require('efmls-configs.fs')

local formatter = 'phpcbf'
local command = string.format('%s -', fs.get_executable(formatter, fs.Scope.COMPOSER))

return {
  formatCommand = command,
  formatStdin = true,
}
