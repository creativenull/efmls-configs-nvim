local fs = require('efmls-configs.fs')

local linter = 'standard'
local bin = fs.get_executable(linter, fs.Scope.NODE)
local args = '--fix --stdin'
local cmd = string.format('%s %s', bin, args)

return {
  formatCommand = cmd,
  formatStdin = true,
}
