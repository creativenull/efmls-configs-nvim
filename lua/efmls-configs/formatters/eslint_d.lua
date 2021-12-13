local fs = require('efmls-configs.fs')

local formatter = 'eslint_d'
local args = '--fix-to-std --stdin --stdin-filename ${INPUT}'
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = true,
}
