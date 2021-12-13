local fs = require('efmls-configs.fs')

local formatter = 'clang-format'
local command = string.format('%s ${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
