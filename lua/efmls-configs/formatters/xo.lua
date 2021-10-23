local fs = require('efmls-configs.fs')

local formatter = 'xo'
local bin = fs.get_executable(formatter, fs.Scope.NODE)
local args = '--fix --stdin'
local cmd = string.format('%s %s', bin, args)

return {
  formatCommand = cmd,
  formatStdin = true,
}
