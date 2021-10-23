local fs = require('efmls-configs.fs')

local linter = 'phpcbf'
local bin = fs.get_executable(linter, fs.Scope.COMPOSER)
local args = '-'
local cmd = string.format('%s %s', bin, args)

return {
  formatCommand = cmd,
  formatStdin = true,
}
