local fs = require('efmls-configs.fs')

local formatter = 'uncrustify'
local command = string.format('%s -q ${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = false,
}
