local fs = require('efmls-configs.fs')

local formatter = 'dfmt'
local command = string.format('%s -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
