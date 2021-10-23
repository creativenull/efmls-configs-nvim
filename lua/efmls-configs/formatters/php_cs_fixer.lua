local fs = require('efmls-configs.fs')

local linter = 'php-cs-fixer'
local bin = fs.get_executable(linter, fs.Scope.COMPOSER)
local args = 'fix --no-ansi --using-cache=no --quiet ${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  formatCommand = cmd,
  formatStdin = false,
}
