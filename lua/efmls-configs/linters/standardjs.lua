local fs = require('efmls-configs.fs')

local linter = 'standard'
local bin = fs.get_executable(linter, fs.Scope.NODE)
local args = '--stdin'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %m' },
  rootMarkers = { 'package.json' },
}
