local fs = require('efmls-configs.fs')

local formatter = 'eslint_d'
local bin = fs.get_executable(formatter, fs.Scope.NODE)
local args = '--fix-to-std --stdin --stdin-filename ${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  formatCommand = cmd,
  formatStdin = true,
}
