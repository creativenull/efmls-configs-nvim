local fs = require('efmls-configs.fs')

local formatter = 'shfmt'
local command = string.format('%s -filename ${INPUT} -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
