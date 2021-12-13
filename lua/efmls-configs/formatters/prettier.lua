local fs = require('efmls-configs.fs')

local formatter = 'prettier'
local command = string.format('%s --stdin --stdin-filepath ${INPUT}', fs.get_executable(formatter, fs.Scope.NODE))

return {
  formatCommand = command,
  formatStdin = true,
}
