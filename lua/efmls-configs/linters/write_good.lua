local fs = require('efmls-configs.fs')

local linter = 'write-good'
local bin = fs.get_executable(linter, fs.Scope.NODE)
local args = '${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = false,
  lintFormats = { '%m on line %l at column %c' },
  rootMarkers = {},
}
