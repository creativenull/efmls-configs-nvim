local fs = require('efmls-configs.fs')

local linter = 'alex'
local bin = fs.get_executable(linter, fs.Scope.NODE)
local args = '--stdin'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '%r%l:%c-%r %terror %m', '%r%l:%c-%r %tarning %m' },
  rootMarkers = { 'package.json' },
}
