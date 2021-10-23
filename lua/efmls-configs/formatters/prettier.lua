local fs = require('efmls-configs.fs')

local formatter = 'prettier'
local bin = fs.get_executable(formatter, fs.Scope.NODE)
local args = '--stdin --stdin-filepath ${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  formatCommand = cmd,
  formatStdin = true,
}
